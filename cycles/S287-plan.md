# S287 Plan: Curved-space composition test for P4.2 extension

Date: 2026-02-14
Parent: D30
Track: Study (technical calculation)

## Goal
Test whether the semigroup composition law survives on a Riemannian manifold M, and whether P4.2's ℏ-necessity argument extends beyond ℝᵈ.

## Context from Haiku search (papers/)
**Extensive existing work** (agent a5a1410 findings):
- half-density-qft (§3–4): Riemannian manifold treatment, Van Vleck as geometric factor (HD-D4.4)
- planck-area: Van Vleck determinant as bi-half-density (PA-D1.4), flat-space composition forces d/2 (PA-D1.4a)
- main paper: curved kinetic operator benchmarks (D9.1d–e)

**Missing piece:** Explicit composition K₁⊗K₂ on curved M with metric volume integration.

## Specific task
Write the curved-space kernel composition:
```
K(x,z; t₁+t₂) = ∫_M K₁(x,y; t₁) K₂(y,z; t₂) √|g(y)| dⁿy
```

where K has Van Vleck prefactor Δ^{1/2}(x,y) and geodesic action S_cl.

**Key questions:**
1. Does the d/2 normalization exponent survive?
2. Is Van Vleck ℏ-independent (only metric-dependent)?
3. Do curvature corrections appear at leading order or subleading?
4. Can metric dependence provide a κ→0 or κ→∞ escape route?

## In scope
1. Write short-time kernel on curved M (use Synge's world function s(x,y))
2. Set up composition integral with metric volume √|g(y)|
3. Use geodesic normal coordinates at midpoint y to simplify
4. Determine if Van Vleck factorizes as Δ^{1/2}(x,y)Δ^{1/2}(y,z) → Δ^{1/2}(x,z)
5. Check if (Δt)^{-d/2} normalization is still forced
6. Verdict: P4.2 extends cleanly / fails / requires modification

## Out of scope
- Full heat-kernel expansion with all Seeley-DeWitt coefficients (just leading order)
- Caustic/Maslov-index corrections (assume no conjugate points)
- Proof of Van Vleck transport equation (assume it from HD-D4.4)

## Technical approach
Use geodesic normal coordinates centered at y:
- Metric: g_ij(y) = δ_ij + O(ξ²) where ξ = distance from y
- Van Vleck: Δ(x,y) = 1 + O(Riemann·ξ²)
- Composition should reduce to flat-space case at leading order

## Acceptance tests
1. Derive explicit composition formula on curved M
2. Show Van Vleck is metric-dependent but ℏ-independent (or find counterexample)
3. Confirm d/2 exponent forced by dimensional analysis (or show metric correction)
4. Write verdict for D30

## Blackboard target
Slot 5 (overwrite previous S208 Padé-Yukawa content per LRU)
