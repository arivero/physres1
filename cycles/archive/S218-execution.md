# S218 — Execution: HD-QFT expansion targets study

## Summary
Subagent studied two expansion targets for the half-density QFT paper:

### Topic 1: Flat-space massless propagator (Section 4)
- G(x,y) = Γ(D/2-1)/(4π^{D/2} |x-y|^{D-2})
- D/2 in denominator directly mirrors ε^{-D/2} normalization from HD-D1.1a
- In flat space |g|=1 so G̃ = G: bi-half-density kernel coincides with scalar kernel
- Singularity |x-y|^{2-D} has same scaling as ε^{-D/2} with ε ~ |x-y|²
- Best placed as Example HD-D4.3 after the general kernel formula (line 158)

### Topic 2: Mass counterterm scaling (Section 5)
- Mass counterterm δm² · K_Id: scalar multiple of canonical identity kernel
- UV scaling via heat kernel: G(x,x) = ∫₀^∞ K(t;x,x) dt, K ~ (4πt)^{-D/2}
- Proper-time cutoff t_min = Λ⁻² gives ∫₀^{Λ⁻²} t^{-D/2} dt ~ Λ^{D-2}
- The D/2 exponent governs both normalization and UV divergence
- Best placed as Remark HD-D5.3 after the multiplication counterterm statement (line 193)

## Caveats noted
- Γ(D/2-1) singular at D=2 (logarithmic case)
- ε ~ |x-y|² is heuristic; rigorous connection via heat kernel integral
- Mass counterterm scaling is dimensional analysis; finite parts scheme-dependent
