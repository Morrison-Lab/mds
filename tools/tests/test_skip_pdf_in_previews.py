#!/usr/bin/env python3
"""Self-test for skip_pdf_in_previews.py.

Builds a tiny project and pins: a pull request without the label loses its pdf
blocks (project file and page front matter, the rest untouched); a pull request
with the label, a push, and `MDS_SKIP_PDF=0` change nothing; and a project with
no pdf block warns instead of claiming success.
"""

import json
import os
import subprocess
import sys
import tempfile
from pathlib import Path

SCRIPT = Path(__file__).resolve().parent.parent / "skip_pdf_in_previews.py"

PAGE = """---
title: "Functions"
format:
  html: default
  pdf:
    output-file: functions-handout.pdf
  docx:
    output-file: functions.docx
---

Body text.

  pdf:
    output-file: kept-in-body.pdf
"""

SHARED = """format:
  pdf:
    filters:
      - callouty
  html:
    toc: true
"""


def run(root: Path, env: dict) -> subprocess.CompletedProcess:
    # The script locates the project from its own path, so copy it under root.
    tools = root / "tools"
    tools.mkdir(exist_ok=True)
    (tools / SCRIPT.name).write_text(SCRIPT.read_text(encoding="utf-8"), encoding="utf-8")
    base = {k: v for k, v in os.environ.items() if not k.startswith(("GITHUB_", "MDS_"))}
    return subprocess.run(
        [sys.executable, str(tools / SCRIPT.name)],
        env={**base, **env},
        capture_output=True,
        text=True,
        check=True,
    )


def project(root: Path, page: str = PAGE, shared: str = SHARED) -> None:
    (root / "functions.qmd").write_text(page, encoding="utf-8")
    (root / "_quarto.yml").write_text(shared, encoding="utf-8")


def event(root: Path, labels: list) -> dict:
    path = root / "event.json"
    path.write_text(
        json.dumps({"pull_request": {"labels": [{"name": x} for x in labels]}}),
        encoding="utf-8",
    )
    return {"GITHUB_EVENT_NAME": "pull_request", "GITHUB_EVENT_PATH": str(path)}


def check(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def main() -> int:
    with tempfile.TemporaryDirectory() as tmp:
        root = Path(tmp)

        project(root)
        result = run(root, event(root, []))
        page = (root / "functions.qmd").read_text(encoding="utf-8")
        shared = (root / "_quarto.yml").read_text(encoding="utf-8")
        head = page.partition("\n---\n")[0]
        check("pdf:" not in head, "front matter still declares pdf")
        check("functions-handout.pdf" not in page, "the handout name survived")
        check("html: default" in head and "docx:" in head, "other formats were lost")
        check("kept-in-body.pdf" in page, "body text outside the front matter changed")
        check("pdf:" not in shared and "html:" in shared, "_quarto.yml not stripped correctly")
        check("removed the pdf format from 2 files" in result.stderr, result.stderr)

        project(root)
        run(root, event(root, ["preview:pdf"]))
        check((root / "functions.qmd").read_text(encoding="utf-8") == PAGE, "label did not keep pdf")

        run(root, {"GITHUB_EVENT_NAME": "push"})
        check((root / "functions.qmd").read_text(encoding="utf-8") == PAGE, "push dropped pdf")

        run(root, {**event(root, []), "MDS_SKIP_PDF": "0"})
        check((root / "functions.qmd").read_text(encoding="utf-8") == PAGE, "MDS_SKIP_PDF=0 ignored")

        project(root, page="---\ntitle: x\n---\n\nBody.\n", shared="project:\n  type: website\n")
        result = run(root, {"MDS_SKIP_PDF": "1"})
        check("found no pdf format to remove" in result.stderr, "no warning when nothing to strip")
    print("test_skip_pdf_in_previews: ok")
    return 0


if __name__ == "__main__":
    sys.exit(main())
