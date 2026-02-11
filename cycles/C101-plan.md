# C101 Plan: finite-step strength of Newton’s area law vs Noether

Date: 2026-02-11

## Goal
Promote a short clarification into the manuscript that Newton’s polygonal area conservation is stronger than the smooth Noether statement: the equal-area law holds exactly at finite refinement without invoking differentiability, while Noether’s angular-momentum conservation is the continuum/Lagrangian presentation of the same structure.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes): Section 4.3 equivalence discussion.

## Scope
In scope:
- Add a brief paragraph bridging the polygonal area invariant to the Noether charge, emphasizing the finite-step strength (piecewise-linear impulses) versus the smooth variational assumptions.

Out of scope:
- New derivations or re-ordering of Section 3.
- Any bibliography changes or new citations.
- Edits to follow-up manuscripts.

## Minimum promotion bar (preferably verbose)
One concise paragraph that states why the area-law statement is strictly stronger (it holds without smoothness or explicit symmetry assumptions) while remaining consistent with Noether in the smooth limit.

## Allowed files
- `paper/main.md`
- `cycles/C101-*.md`
- `cycles/index.md`
- `docs/research-log.md`

## Forbidden files
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`
- `papers/*/`

## Acceptance criteria
- Manuscript explicitly notes the finite-step strength of the Newton area law relative to the Noether angular-momentum conservation and keeps their equivalence in the smooth limit clear.
- Diffstat recorded in `cycles/C101-execution.md` (run `scripts/paper-diffstat.sh --cached` after staging).
- Guard check passes: no cycle IDs leaked into manuscripts.
