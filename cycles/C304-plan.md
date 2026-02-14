# C304 Plan: Odd-d Parity Lemma to Planck-Area

Date: 2026-02-14

## Goal
Promote odd-d parity lemma and transmutation witness from blackboards/0.md (S284) to planck-area paper.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (no)
- `papers/planck-area/main.md` (yes)

## Scope
In scope:
- Add remark after PA-D1.3a explaining parity obstruction in detail
- Include parity lemma proof
- Include transmutation parity-blind route
- Include d=3 scattering-length witness
- Clarify "d=4 selected" precision statement

Out of scope:
- Full scale-supplier table (keep in blackboard for now)
- d=1, d=5 detailed discussion (already covered in blackboard)

## Minimum promotion bar (preferably verbose)
This cycle adds one substantial remark (Remark PA-D1.3b) containing ~10 lines of mathematical content: categorical parity obstruction proof, transmutation mechanism, and explicit witness. Meets promotion bar.

## Allowed files
- `paper/main.md`
- `papers/*/main.md`
- `cycles/Cxx-*.md`
- (If tracked) `paper/main.tex`, `paper/main.pdf`, `papers/*/main.tex`, `papers/*/main.pdf`

## Forbidden files
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`
- `docs/` (log work in `cycles/Cxx-execution.md` instead)

## Acceptance criteria
- At least one manuscript changed (substantively).
- Diffstat recorded in `cycles/Cxx-execution.md`.
- Guard check passes: no cycle IDs in manuscripts.

