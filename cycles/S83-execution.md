# S83 Execution: 2D delta resolvent — Van Vleck vs transmutation separation

Date: 2026-02-13

## Work done

Wrote blackboard note (`blackboards/2026-02-13-2d-delta-resolvent-half-density-separation.md`) that:

1. **Free resolvent as bi-half-density.** Wrote G₀(x,z;E) = -(m/2πℏ²)K₀(κ|x-z|) and showed [G₀] = length^{-2} = length^{-d} for d=2. As a bi-half-density, the resolvent is dimensionless (maps half-densities to half-densities).

2. **T-matrix carries transmutation scale.** T(E) = (2πℏ²/m)/(ln(κ/κ_*) + iπ/2), a scalar with [T] = length² = length^d. Contains the RG-invariant κ_* but no half-density weight.

3. **Structural separation.** In G = G₀ + G₀TG₀: the Van Vleck / half-density weight lives in G₀ (at endpoints), the transmutation scale lives in T (at the vertex). They multiply via Lippmann–Schwinger. Independent and complementary.

4. **Scalarization.** σ_* = κ_* |dx|^{1/2} is a dimensionless half-density. Scalar representative f = κ_*^{-2} · g is dimensionless. Scalarization constant = κ_*^{-d/2} = κ_*^{-1} for d=2 — a single power of the transmutation length, non-analytic in bare coupling.

5. **Connection to S82.** Same d/2 exponent in G₀'s dimension as in the free propagator's prefactor. T-matrix is the new dynamical ingredient that supplies the scalarization scale.

## Key result
PA-E5b's abstract claim is now concrete: Van Vleck (geometric, from free propagation) and transmutation (dynamical, from RG at vertex) separate cleanly in the Lippmann–Schwinger factorization. They combine multiplicatively. This addresses Open Problem #2 in the 2D delta model.

## Promotion candidate
A condensed version (sections 2–4) could become a new Remark PA-E5c in planck-area Section 3.3. Needs a C cycle.
