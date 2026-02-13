# C120 Plan: Promote S82 free-propagator computation into planck-area Section 4

Date: 2026-02-13

## Parent study
- `S82`: free-propagator composition closes the half-density normalization loop.

## Goal
Insert a new Derivation PA-D1.4a after PA-D1.4 in `papers/planck-area/main.md` Section 4. Shows the free-particle semigroup property as a concrete witness for half-density composition, with the three-way d/2 cancellation.

## Scope
- One insertion (~15–20 lines) in Section 4.
- No other sections modified.
- Rebuild .tex and .pdf.
- Guard checks: no cycle tags, no transcript mentions, no internal repo refs.

## Allowed files
- `papers/planck-area/main.md` (edit)
- `papers/planck-area/main.tex` (rebuild)
- `papers/planck-area/main.pdf` (rebuild)
- `cycles/C120-*.md`
