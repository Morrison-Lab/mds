#!/usr/bin/env python3
"""Leave the PDF handouts and Word files out of a pull request's preview render.

The LaTeX handouts take most of the full render's time, and the 90-minute cap
on the preview build was reached twice on mds#435.
With the PDFs skipped, the preview of mds#443 still took 89 of its 90 minutes,
so the Word files are left out too.
Only the publish on `main` has to produce them.
Quarto cannot drop a declared format from a profile, and every page declares
`pdf` in its own front matter as well as `_quarto.yml`, so this `pre-render`
script removes the `pdf:` blocks from the working copy before Quarto reads them.

It acts only on a `pull_request` event, and skips each format whose label the
pull request lacks: `preview:pdf` keeps the PDFs, `preview:docx` the Word files;
everywhere else it does nothing, so `publish.yml` and local
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
DOCX_LABEL = "preview:docx"
# A `pdf:` or `docx:` key at the two-space indent of a `format:` map, and the
# lines that belong to it: blank lines, and anything indented deeper (comments
# included).
BLOCK_TAIL = r"[^\n]*\n(?:(?:[ \t]*\n)|(?:    [^\n]*\n))*"
PDF_BLOCK = re.compile(r"^  pdf:" + BLOCK_TAIL, re.M)
DOCX_BLOCK = re.compile(r"^  docx:" + BLOCK_TAIL, re.M)
# A top-level `format:` key left with no value, which Quarto rejects ("has empty
# value but it must instead be 'ansi'"): `_quarto.yml` declares only the pdf format.
EMPTY_FORMAT = re.compile(r"^format:[ \t]*\n(?:[ \t]*\n)*(?=[^ \t\n#]|\Z)", re.M)


# The formats a preview leaves out, each with the label that keeps it.
FORMATS = {"pdf": (PDF_BLOCK, LABEL), "docx": (DOCX_BLOCK, DOCX_LABEL)}


def formats_to_skip() -> list:
    """Return the names in FORMATS that this render should leave out."""
    forced = os.environ.get("MDS_SKIP_PDF")
    if forced in ("0", "1"):
        return list(FORMATS) if forced == "1" else []
    if os.environ.get("GITHUB_EVENT_NAME") != "pull_request":
        return []
    path = os.environ.get("GITHUB_EVENT_PATH")
    if not path or not Path(path).is_file():
        return []
    event = json.loads(Path(path).read_text(encoding="utf-8"))
    labels = {x["name"] for x in event.get("pull_request", {}).get("labels", [])}
    return [name for name, (_, label) in FORMATS.items() if label not in labels]


def strip_formats(text: str, names: list, front_matter_only: bool) -> str:
    """Remove the blocks of the formats `names` from `text`, or from its front matter only."""
    head, rest = text, ""
    if front_matter_only:
        if not text.startswith("---\n"):
            return text
        end = text.find("\n---\n", 4)
        if end == -1:
            return text
        head, rest = text[: end + 1], text[end + 1 :]
    for name in names:
        head = FORMATS[name][0].sub("", head)
    if not front_matter_only:
        head = EMPTY_FORMAT.sub("", head)
    return head + rest


def main() -> int:
    names = formats_to_skip()
    if not names:
        return 0
    shared = [ROOT / "_quarto.yml", ROOT / "_quarto-website.yml"]
    targets = [(p, False) for p in shared if p.is_file()] + [
        (p, True) for p in sorted(ROOT.glob("*.qmd"))
    ]
    changed = []
    for path, front in targets:
        old = path.read_text(encoding="utf-8")
        new = strip_formats(old, names, front)
        if new == old:
            continue
        st = path.stat()
        path.write_text(new, encoding="utf-8")
        # Keep the timestamp set from git, so `date: last-modified` shows the
        # commit date, not today.
        os.utime(path, (st.st_atime, st.st_mtime))
        changed.append(path.name)
    listed = " and ".join(names)
    if not changed:
        print(
            f"skip_pdf_in_previews: warning: found no {listed} format to remove",
            file=sys.stderr,
        )
        return 0
    print(
        f"skip_pdf_in_previews: removed the {listed} format from {len(changed)} files",
        file=sys.stderr,
    )
    # A page whose entry has another shape (`format: [html, pdf]`, a different
    # indent) would still render the format, silently.
    for path, front in targets:
        text = path.read_text(encoding="utf-8")
        if front:
            text = text.partition("\n---\n")[0] if text.startswith("---\n") else ""
        for name in names:
            if re.search(rf"^\s*({name}:|format:.*\b{name}\b)", text, re.M):
                print(
                    f"skip_pdf_in_previews: warning: {path.name} still mentions {name}",
                    file=sys.stderr,
                )
    return 0


if __name__ == "__main__":
    sys.exit(main())
