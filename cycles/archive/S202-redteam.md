# S202 — Red Team

## Checks
1. DeWitt-Schwinger expansion: standard, verified against Vassilevich 2003.
2. VVD transport equation: (∇_x^μ + ∇_y^μ) Δ^{1/2} = 0 — correct for
   geodesically convex neighborhoods.
3. Trace formula: Tr K(t) = ∫ K̃(t;x,x) d^D x — correct; follows from
   definition of K̃ and the relation √|g| d^D x = |g|^{1/2} d^D x.
4. a_1 = (1/6 - ξ)R: correct for P = -∇² + m² + ξR on scalars.
5. Context: expansion is for elliptic operators on Riemannian manifolds;
   Lorentzian QFT requires Wick rotation. This caveat should be noted in
   the promoted remark (done: "on a Riemannian (M,g)").
