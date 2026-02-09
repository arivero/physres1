# C17 Plan

## Goal
Clarify the alternative to `H2.5` (analytic monomials in couplings): *dimensional transmutation* as a way to generate a scale that can supply the \(\text{length}^{d/2}\) normalization constant required by scalarization of half-densities.

## Scope
1. Add a short subsection to `papers/planck-area/main.md`:
   - state the “transmutation branch” (drop/relax `H2.5` analyticity),
   - show on one explicit model (2D delta) that a dimensionless coupling can generate a physical inverse-length \(\kappa_\*\) via RG,
   - and explain how a length/area scale (\(\kappa_\*^{-1}\), \(\kappa_\*^{-2}\) in \(d=4\)) can then play the role of the scalarization scale in `H2.4`.
2. Keep it modular: treat this as a *separate* route to a scale, not as support for the gravity-only sieve.

## Acceptance Tests
1. `papers/planck-area/main.md` gains one labeled `Heuristic` or `Example` making the transmutation route explicit and tied to the existing RG computation references.
2. `papers/planck-area/main.pdf` rebuilds without errors.

