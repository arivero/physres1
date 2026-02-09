# C18 Plan

## Goal
Extend `papers/rg-fundamental/main.md` so the 2D delta computation sits inside a clear “contact interactions across dimensions” picture: explain the 1D and 3D cases (and why their RG/fixed-point structures differ).

## Scope
1. Add a new subsection to `papers/rg-fundamental/main.md` summarizing:
   - dimensional analysis of \(g\,\delta^{(d)}\) (canonical dimension of \(g\)),
   - 3D: power divergence, scattering length, and (optionally) the unitarity fixed point in a dimensionless coupling parameterization,
   - 1D: full-line contact interactions as boundary conditions/U(2) family and the resulting richer fixed-point set (as in [BoyaRivero1994Contact]).
2. Keep the core thesis intact: RG = compatibility under refinement/coarse-graining; differences across dimensions are a clean witness.

## Acceptance Tests
1. `papers/rg-fundamental/main.md` gains one new labeled subsection covering 1D and 3D explicitly (not just a citation).
2. `papers/rg-fundamental/main.pdf` rebuilds without errors.

