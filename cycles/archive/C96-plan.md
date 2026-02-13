# C96 Plan: Remove repo-internal path references from the half-density QFT note

Date: 2026-02-11

## Goal
Make `papers/half-density-qft/main.md` more publication-safe by removing repo-internal file path references (e.g. `paper/...`, `blackboards/...`) while keeping the technical content unchanged.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (no)
- `papers/half-density-qft/main.md` (yes)

## Scope
In scope:
- Replace explicit repo file-path references in the abstract and body with publication-safe wording (e.g. “main manuscript”, “companion note”).
- Remove “see `blackboards/...`” pointers when the remark is already self-contained.
- Rebuild `papers/half-density-qft/main.tex` and `papers/half-density-qft/main.pdf`.

Out of scope:
- Any new technical claims, citations, or bibliography/source work.
- Edits to other manuscripts.

## Allowed files
- `papers/half-density-qft/main.md`
- `cycles/C96-*.md`
- (If tracked) `papers/half-density-qft/main.tex`, `papers/half-density-qft/main.pdf`

## Forbidden files
- `paper/main.md`
- other `papers/*/main.md`
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`
- `docs/`

## Acceptance criteria
- No repo-internal path references remain in `papers/half-density-qft/main.md`.
- Diffstat recorded in `cycles/C96-execution.md`.
- Guard check passes: no cycle IDs leaked into manuscripts.

