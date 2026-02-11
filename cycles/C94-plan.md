# C94 Plan: Add a reader map for the refinement-compatibility chain

Date: 2026-02-11

## Goal
Promote the S64 reader-navigation block into `paper/main.md` so readers can locate the three compatibilities (partition/representation/scale) early in the manuscript.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Insert a compact boxed “Reader map” block at the end of Section 2.5 (before the transition to Section 3).
- (Optional) Align the Appendix 10.3 bridge bullets to use the same \(\mathcal C_t,\mathcal Q_\hbar,\mathcal R_\Lambda\) symbols.
- Rebuild `paper/main.tex` and `paper/main.pdf`.

Out of scope:
- Adding new technical claims, new citations, or new bibliography work.

## Minimum promotion bar (preferably verbose)
Add a paragraph-level navigation block (not a micro-edit).

## Allowed files
- `paper/main.md`
- `cycles/C94-*.md`
- (If tracked) `paper/main.tex`, `paper/main.pdf`

## Forbidden files
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`
- `docs/`

## Acceptance criteria
- Reader map is present and PDF-safe (no wide tables).
- Diffstat recorded in `cycles/C94-execution.md`.
- Guard check passes: no cycle IDs in manuscripts.

