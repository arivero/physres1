# S78 Execution: Van Vleck prefactor × transmutation scale in 2D delta

Date: 2026-02-12

## Summary
Analyzed the factorization structure of the full 2D delta kernel to determine how the Van Vleck half-density prefactor and the transmutation scale κ* interact.

## Work log
1. Wrote the free kernel K₀(x,z;t) in d = 2, identified the Van Vleck prefactor (m/t)^{d/2} as the half-density factor.
2. Wrote the full resolvent G(x,z;E) = G₀(x,z;E) + G₀(x,0;E)·T(E)·G₀(0,z;E) via Lippmann–Schwinger.
3. Identified the factorization: G₀ factors carry half-density weight in endpoint variables; T(E) is a scalar at the interaction point.
4. Rewrote T(E) in terms of κ* (the RG-invariant transmutation scale), confirming κ* enters only the scalar amplitude.
5. Connected to the hypothesis ladder: Van Vleck implements PA-H2.1 (half-density formulation), while κ*^{-1} serves as the scalarization constant (PA-H2.2–H2.4), placing the 2D delta in the transmutation branch (PA-H2.13, outside PA-H2.5).

## Key finding
**Structural separation**: The Van Vleck prefactor and the transmutation scale are complementary, not competing:
- Van Vleck carries the half-density *transformation law* (geometric, from coordinate changes).
- Transmutation provides the half-density *scalarization constant* (dynamical, from RG invariance).

They are structurally independent and combine multiplicatively in the full kernel.

## Outputs
- Blackboard: `blackboards/2026-02-12-van-vleck-transmutation-2d-delta.md`

## Spawned cycles
- Optional C: promote the "Van Vleck = geometric, κ* = dynamical" separation into PA-E5a or a new remark. Not urgent — the blackboard captures the result cleanly.
