# C93 Plan: Submission-Readiness Cleanup (Remove “Continuation” Editorial Language + Add One Attribution Anchor)

Date: 2026-02-11

## Goal
Implement `Q49` referee notes by removing remaining editorial/versioning language in Appendix 10 (“continuation” phrasing) so `paper/main.md` reads as a standalone submission. While touching the manuscript, add one lightweight attribution anchor for the standard \(e^{im\phi}\) separation-of-variables statement in the central-potential remark.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Rewrite the following as neutral standalone-paper language (no technical changes):
  - Section 10 title “(Continuation Stages)”
  - The sentence introducing Section 10 as “continuation appendices”
  - Appendix 10.3 intro phrase “replaces the earlier continuation version”
  - Appendix 10.4 heading “Continuation Outcome” and first sentence
- Add `[TongQMLectures]` as a lightweight attribution anchor in `Remark D4.2b`.
- Run `python3.12 scripts/update_references.py paper/main.md` and rebuild `paper/main.tex` / `paper/main.pdf`.

Out of scope:
- Any restructuring of arguments, new claims, or bibliography ledger edits.

## Allowed files
- `paper/main.md`
- `cycles/C93-*.md`
- (Tracked) `paper/main.tex`
- (Tracked) `paper/main.pdf`

## Forbidden files
- `blackboards/`, `paper/notes/`
- `paper/bibliography.md`, `sources/`
- `docs/`

## Acceptance criteria
- No “continuation” editorial language remains in Appendix 10 headings/intro sentences.
- Diffstat recorded in `cycles/C93-execution.md`.
- Guard checks pass (no cycle IDs; no transcript references).

