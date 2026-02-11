# C95 Plan: Clarify reader-map symbol definitions + update future-work note

Date: 2026-02-11

## Goal
Reduce notation friction in the early “Reader map” by explicitly pointing to where the operator symbols are defined, and update the Future Work list to reflect that a compact navigation aid is now present.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Edit the Section 2.5 “Reader map” block to explicitly note where \(\mathcal C_t,\mathcal Q_\hbar,\mathcal R_\Lambda\) are defined (Appendix 10.3).
- Update Section 9.5 “Future Work” item (reader navigation) so it reflects the current manuscript state (upgrade-to-figure wording, not “missing feature” wording).
- Rebuild `paper/main.tex` and `paper/main.pdf`.

Out of scope:
- Any new technical claims or citations.
- Any bibliography/source work.

## Allowed files
- `paper/main.md`
- `cycles/C95-*.md`
- (If tracked) `paper/main.tex`, `paper/main.pdf`

## Forbidden files
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`
- `docs/`

## Acceptance criteria
- Reader map explicitly indicates where symbol definitions live (Appendix 10.3).
- Future Work no longer suggests a navigation aid is absent; it is phrased as an optional upgrade.
- Diffstat recorded in `cycles/C95-execution.md`.
- Guard check passes: no cycle IDs leaked into manuscripts.

