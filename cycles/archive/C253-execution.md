# C253 — Execution: HD-QFT expansion (flat-space propagator + mass counterterm)

## Insertions made
1. **Example HD-D4.3** (after line 158, Section 4): flat-space massless propagator
   G(x,y) = Γ(D/2-1)/((4π)^{D/2} |x-y|^{D-2}). Connects D/2 exponent in
   normalization to HD-D1.1a's approximate identity. In flat space G̃ = G.

2. **Remark HD-D5.3** (after line 200, Section 5): mass counterterm δm² · K_Id.
   UV divergence from heat kernel at coincidence: ∫₀^{Λ⁻²} t^{-D/2} dt ~ Λ^{D-2}
   for D>2. Same D/2 exponent controls both normalization and UV scaling.

## Q138 fixes applied
- Fix #1 (HIGH): `4\pi^{D/2}` → `(4\pi)^{D/2}` — missing parentheses in propagator
- Fix #2 (HIGH): Added "UV divergence arises from small proper times (large momenta
  k² ~ 1/t)" and "removes the divergent piece" to clarify cutoff direction
- Fix #3 (MEDIUM): "identified with" → "scales as" for ε ~ |x-y|² relationship

## Diffstat
paper-diffstat (cached): TOTAL +10 -0 (1 files)
  +10 -0 papers/half-density-qft/main.md

## Impact
234 → 244 lines (+10), stays at 5pp (6091 tok).
