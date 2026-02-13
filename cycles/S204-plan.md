# S204 — Plan

## Goal
Verify that the half-density conjugation potential V = |∇ω|²_g − Δ_g ω
(with ω = ¼ ln|g|) evaluates to (1/6)R at leading curvature order in
Riemannian normal coordinates — dimension-independently — and that this
matches conformal coupling ξ_conf = (D−2)/(4(D−1)) only at D=4.

This would extend the conformal-class result HD-D1.3 (where D(4−D)(∂σ)²
cancels at D=4) to a general-metric statement, addressing open question #1
from `docs/motivations.md`.

## Scope
- Riemannian normal coordinate expansion of |g|, ω, ∇ω, Δ_g ω
- Evaluate V at the center point to leading curvature order
- Solve ξ_conf = 1/6 for D
- SymPy verification
- Blackboard note in `blackboards/`

## Acceptance tests
1. SymPy confirms V(0) = (1/6)R to leading curvature order
2. Analytical argument is clean and self-contained
3. The D=4 selection is a consequence of matching half-density potential
   with conformal coupling, not of conformal-class assumptions
