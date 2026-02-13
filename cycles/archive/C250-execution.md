# C250 Execution: Expand dirac-probes Section 4.4 + Add Example 3.1a

## Changes Made

### 1. Example 3.1a (after Theorem 3.1, line 68)
Added worked example showing that for a free particle, the corner condition
forces v⁺ = v⁻ (no genuine corner possible). Contrasts with the impulse
case. Introduces "soft junction" vs "hard junction" terminology.
+3 lines.

### 2. Section 4.4 expansion (lines 138-148)
Replaced the original 7-line section with a ~12-line expansion:
- Explicit polar decomposition of radial impulse (v_r jumps, θ̇ unchanged)
- Newton's Principia Prop. 1 parallelogram construction (A→B→C with cC∥BS)
- Equal-area identity as algebraic identity at each finite step
- Continuum limit via Lemma 3 → Kepler's second law
- Distributional Theorem 3.2 as modern underpinning of Newton's argument
+6 lines net (some lines replaced, some added).

### Q136 referee fixes applied
- Issue 2B (HIGH): "exactly, not as a limiting statement" → "algebraic identity
  at each polygon step, exact for any finite number of impulses"
- Issue 2A (MEDIUM): Added "adds a radial velocity component" to explain
  why cC ∥ BS follows from central impulse

## Diffstat
```
papers/dirac-probes-corners-impulses/main.md: +9 -3
```

## Line counts
- Before: 200 lines (199 + 1 trailing)
- After: 206 lines
- Compiled pages: TBD (was 4pp, estimated still 4-5pp, well under 6pp limit)
