# C87 Execution: New Dependent Note — Fermionic Mediators and Contact/Boundary Limits

Date: 2026-02-10

## Summary
- Added new dependent note draft in `papers/fermionic-mediators-contact-limits/main.md` with:
  - boson vs fermion sourcing contrast,
  - Grassmann-source obstruction (anchored),
  - explicit contact matching witness,
  - controlled connection to point interactions / RG witnesses.

## Work log
- Created `papers/fermionic-mediators-contact-limits/main.md` with YAML frontmatter and bounded scope.
- Updated references section using `scripts/update_references.py` for the new paper only.
- Built `main.tex` and `main.pdf` for the new paper.

## Diffstat
paper-diffstat (cached): TOTAL +95 -0 (1 files)
  +95 -0 papers/fermionic-mediators-contact-limits/main.md

## Guard checks
- No cycle IDs leaked into `paper/main.md`:
  - `rg -n 'C[0-9]{2}' paper/main.md`

## Outputs
- Manuscript: `papers/fermionic-mediators-contact-limits/main.md`
- Build: `papers/fermionic-mediators-contact-limits/main.tex`, `papers/fermionic-mediators-contact-limits/main.pdf`

## Spawned cycles
- `Q45`: referee pass on this `C87`
