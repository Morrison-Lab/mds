#!/usr/bin/env python3
"""Leave the PDF handouts out of a pull request's preview render.

The LaTeX handouts take most of the full render's time, and the 90-minute cap
on the preview build was reached twice on mds#435.
Only the publish on `main` has to produce them.
Quarto cannot drop a declared format from a profile, and every page declares
`pdf` in its own front matter as well as `_quarto.yml`, so this `pre-render`
script removes the `pdf:` blocks from the working copy before Quarto reads them.

It acts only on a `pull_request` event whose pull request lacks the label
`preview:pdf`; everywhere else it does nothing, so `publish.yml` and local
renders still build the handouts.
Set `MDS_SKIP_PDF=1` to force the handouts off, or `MDS_SKIP_PDF=0` to force
them on.
Rewriting the `pdf:` blocks modifies the working copy, so set `MDS_SKIP_PDF=1`
only in a throwaway checkout.
"""

import json
import os
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
LABEL = "preview:pdf"
# A `pdf:` key at the two-space indent of a `format:` map, and the lines that
# belong to it: blank lines, and anything indented deeper (comments included).
PDF_BLOCK = re.compile(r"^  pdf:[^\n]*\n(?:(?:[ \t]*\n)|(?:    [^\n]*\n))*", re.M)


def skip_requested() -> bool:
    forced = os.environ.get("MDS_SKIP_PDF")
    if forced in ("0", "1"):
        return forced == "1"
    if os.environ.get("GITHUB_EVENT_NAME") != "pull_request":
        return False
    path = os.environ.get("GITHUB_EVENT_PATH")
    if not path or not Path(path).is_file():
        return False
    event = json.loads(Path(path).read_text(encoding="utf-8"))
    labels = {x["name"] for x in event.get("pull_request", {}).get("labels", [])}
    return LABEL not in labels


def strip_pdf(text: str, front_matter_only: bool) -> str:
    """Remove the `pdf:` blocks from `text`, or from its front matter only."""
    if not front_matter_only:
        return PDF_BLOCK.sub("", text)
    if not text.startswith("---\n"):
        return text
    end = text.find("\n---\n", 4)
    if end == -1:
        return text
    head, rest = text[: end + 1], text[end + 1 :]
    return PDF_BLOCK.sub("", head) + rest


def main() -> int:
    if not skip_requested():
        return 0
    shared = ROOT / "_quarto.yml"
    targets = ([(shared, False)] if shared.is_file() else []) + [
        (p, True) for p in sorted(ROOT.glob("*.qmd"))
    ]
    changed = []
    for path, front in targets:
        old = path.read_text(encoding="utf-8")
        new = strip_pdf(old, front)
        if new == old:
            continue
        st = path.stat()
        path.write_text(new, encoding="utf-8")
        # Keep the timestamp set from git, so `date: last-modified` shows the
        # commit date, not today.
        os.utime(path, (st.st_atime, st.st_mtime))
        changed.append(path.name)
    if not changed:
        print(
            "skip_pdf_in_previews: warning: found no pdf format to remove",
            file=sys.stderr,
        )
        return 0
    print(
        f"skip_pdf_in_previews: removed the pdf format from {len(changed)} files",
        file=sys.stderr,
    )
    # A page whose pdf entry has another shape (`format: [html, pdf]`, a
    # different indent) would still render a handout, silently.
    for path, front in targets:
        text = path.read_text(encoding="utf-8")
        if front:
            text = text.partition("\n---\n")[0] if text.startswith("---\n") else ""
        if re.search(r"^\s*(pdf:|format:.*\bpdf\b)", text, re.M):
            print(
                f"skip_pdf_in_previews: warning: {path.name} still mentions pdf",
                file=sys.stderr,
            )
    return 0


if __name__ == "__main__":
    sys.exit(main())
