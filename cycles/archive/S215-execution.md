# S215 Execution: Newton Polygon Angular Momentum + Corner Example

## Findings

### 1. Newton's Principia Proposition 1 — The Polygon Construction

Newton's proof of the equal-area law (Kepler's second law) proceeds by discrete
impulse mechanics, making it a direct ancestor of the distributional framework
in the dirac-probes paper:

- A particle moves freely from A to B in time Δt, sweeping triangle SAB
- At B, a central impulse (toward center S) deflects velocity from inertial
  continuation Bc to actual C, with cC ∥ BS (parallelogram construction)
- Since c and C are equidistant from line SB, triangles SBc and SBC have the
  same area → Triangle SAB = Triangle SBC
- The construction repeats: equal areas are swept at every polygon step
- Key: the impulse is CENTRAL (directed toward S), so only the radial
  velocity component changes — angular momentum is preserved exactly

The continuum limit uses Newton's Lemma 3 (theory of ultimate ratios):
as N → ∞ and Δt → 0, polygon → smooth orbit, discrete equal-area → dA/dt = const.

### 2. Connection to Theorem 3.2

In polar coordinates, a central impulse J = J_r r̂ gives:
- v_r⁺ - v_r⁻ = J_r/m (radial velocity jumps)
- θ̇⁺ = θ̇⁻ (transverse velocity unchanged)
- L = mr²θ̇ preserved

This is exactly Theorem 3.2 applied to the radial component with zero
transverse impulse. The connection to Newton's polygon is that each vertex
of the polygon is an application of Theorem 3.2.

### 3. Corner Example (Example 3.1a)

For a free particle, the corner condition (Theorem 3.1) forces:
- mv⁺ = mv⁻, i.e., v⁺ = v⁻
- The "corner" must actually be smooth — no genuine kink is possible
- This is the homogeneous case of the impulse condition (J = 0)
- Contrast: impulse permits v⁺ ≠ v⁻ with controlled jump

## Output
Both items drafted for C250 promotion into dirac-probes paper:
- Section 4.4 expansion: +~14 lines (Newton polygon connection)
- Example 3.1a: +~7 lines (corner worked example after Theorem 3.1)
