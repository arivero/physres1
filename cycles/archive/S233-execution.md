# S233 — Execution: Seeley-DeWitt hierarchy for counterterms

## Key structure

Heat kernel at coincidence:
  K(t;x,x) ~ (4πt)^{-D/2} Σ_{n≥0} a_n(x,x) t^n

Each coefficient a_n contributes to the propagator at coincidence:
  ∫₀^∞ t^{n-D/2} dt

Proper-time cutoff t_min = Λ^{-2}:
  ∫₀^{Λ^{-2}} t^{n-D/2} dt ~ Λ^{D-2-2n}  (for D-2-2n > 0)

## Counterterm hierarchy

| n | Seeley-DeWitt coeff | UV degree | D=4 behavior |
|---|---------------------|-----------|--------------|
| 0 | a₀ = 1 | Λ^{D-2} | Λ² (quadratic) |
| 1 | a₁ = (1/6-ξ)R | Λ^{D-4} | ln Λ (logarithmic) |
| 2 | a₂ (curvature²) | Λ^{D-6} | finite |
| n | a_n | Λ^{D-2-2n} | — |

In D=4: only n=0 (mass) and n=1 (wave function) counterterms
are UV divergent. This is the standard D=4 renormalizability count.

## Remark drafted

HD-D5.3a: 3 sentences connecting mass counterterm to derivative
counterterm through the t^n shift in the Seeley-DeWitt expansion.
