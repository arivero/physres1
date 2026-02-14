# S287 Execution: Curved-space composition test for P4.2 extension

Date: 2026-02-14

## Work performed
- Wrote the short-time kernel on a Riemannian manifold (M, g) using the DeWitt ansatz with Van Vleck-Morette determinant and Synge's world function.
- Set up the composition integral with Riemannian volume measure sqrt(|g|) d^d y.
- Evaluated the composition via stationary phase in geodesic normal coordinates centered at the midpoint y_* on the geodesic from x to z.
- Verified Van Vleck factorization: Delta^{1/2}(x,y_*) Delta^{1/2}(y_*,z) composes to Delta^{1/2}(x,z) through the stationary-phase Hessian, absorbing the sqrt(|g|) volume factor.
- Performed dimensional analysis confirming Delta(x,y) is purely geometric (metric-dependent, kappa-independent).
- Verified kappa power-counting: (2 pi kappa)^{-d} from two kernels times (2 pi kappa)^{d/2} from Gaussian = (2 pi kappa)^{-d/2}, identical to flat space.
- Checked all four P4.2 hypotheses (C, L, I, D) on curved M: all extend with natural modifications (Riemannian measure, Van Vleck prefactor, Riemannian delta).
- Confirmed kappa -> 0 and kappa -> infinity obstructions persist on curved M.

## Artifacts produced
- `blackboards/5.md`: Curved-space composition test (overwrites previous S283 heat-kernel witness)

## Commands run (if any)
```bash
# No computational commands; pure analytical derivation
```

## Result
**P4.2 extends cleanly to curved configuration spaces (Riemannian manifolds).**

The Van Vleck determinant Delta(x,y) is metric-dependent but kappa-independent. It composes correctly through stationary phase via the DeWitt-Morette composition law. The normalization exponent d/2 is forced by the same semigroup functional equation as on R^d. Curvature enters only at subleading order (O(R) in Seeley-DeWitt coefficients a_n), not in the leading kappa-counting.

The metric provides no escape route from kappa-necessity because:
1. Delta is dimensionless and geometric — cannot absorb [action] dimensions
2. sqrt(|g|) is absorbed into the Van Vleck composition, not into kappa
3. The identity limit (kernel -> delta_g) still requires non-degenerate Gaussian spreading (kappa != 0)
4. Dynamical content still requires non-trivial phase weighting (kappa != infinity)

Hypothesis (L) enriches to (L'): K = N(t) Delta^{1/2}(x,y) exp(c_0 S_cl), where Delta^{1/2} is a natural geometric prefactor. This is a refinement, not a weakening.

## Promotion candidate (pointer)
- Location: blackboards/5.md, sections 7-8 (Verdict + Hypothesis table)
- Promotable to paper/main.md as a Remark or extension of P4.2 (e.g., "Remark P4.2c: Curved-space extension")

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **no**
- The result was anticipated by the hypothesis in D30-plan.md (option 1: P4.2 extends cleanly). The key technical content is the explicit verification via Van Vleck composition law and the dimensional analysis showing no escape route.

## Spawned cycles
- `C_next`: (when ready) promote curved-space extension as Remark P4.2c into paper/main.md
- `B_next` (optional): anchor Van Vleck composition law (DeWitt-Morette 1976, Visser 1993) if load-bearing
