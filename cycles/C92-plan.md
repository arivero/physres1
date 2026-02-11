# C92 Plan: Submission Hygiene — Remove Internal `PENDING` Operational Note

Date: 2026-02-11

## Goal
Remove the internal “`PENDING` local-PDF ingestion” operational note from `paper/main.md` so the manuscript reads cleanly as a standalone foundations-journal draft (no repo-process metadata in the rendered text). Rebuild the PDF.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Delete the single operational note line mentioning `PENDING` ingestion status.
- Rebuild `paper/main.tex` and `paper/main.pdf` (tracked artifacts).

Out of scope:
- Any bibliography/source changes.
- Any structural edits to the appendix narrative beyond removing the internal note.

## Allowed files
- `paper/main.md`
- `cycles/C92-*.md`
- (Tracked) `paper/main.tex`
- (Tracked) `paper/main.pdf`

## Forbidden files
- `blackboards/`, `paper/notes/`
- `paper/bibliography.md`, `sources/`
- `docs/`

## Acceptance criteria
- `rg -n 'PENDING' paper/main.md` returns no matches.
- Diffstat recorded in `cycles/C92-execution.md`.
- PDF rebuild succeeds.

