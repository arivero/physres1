# C110 Plan: Add Nauenberg 2018 citation to H1.2

Date: 2026-02-12

## Goal
Update Heuristic H1.2 in paper/main.md to cite [Nauenberg2018GraphicalMethod] alongside [Nauenberg1994SymplecticNewton], per B17 findings.

## Rationale
B17 found that the "symplectic Euler integrator" language in H1.2 matches Nauenberg's 2018 paper more closely than the 1994 paper. The 1994 paper uses "canonical/symplectic mapping" (historical priority); the 2018 paper explicitly uses "first-order symplectic integrator" in modern numerical-analysis terminology. Citing both is academically honest.

## Scope
Single-line edit: add `[Nauenberg2018GraphicalMethod]` after the existing `[Nauenberg1994SymplecticNewton]` citation in H1.2.

## Allowed files
- `paper/main.md`
- `cycles/C110-*.md`

## Forbidden files
- `paper/bibliography.md` (already updated in B17)
- `papers/*/main.md` (no companion paper changes needed)

## Acceptance criteria
- H1.2 cites both Nauenberg papers.
- Diffstat: +1 -1 (single line changed).
- Guard checks pass (no cycle tags, no conv_patched).
