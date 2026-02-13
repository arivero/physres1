# S222 — Red Team

## Transport equation dimensional check
- Δ^{1/2}: dimensionless (volume ratio)
- s(x,y): dimension [length²]
- ∇^μ s: dimension [length] (raised index)
- ∇_μ(Δ^{1/2} ∇^μ s): divergence of a vector density → dimensionless
- D·Δ^{1/2}: dimensionless
Consistent. ✓

## Mellin integral check
∫₀^∞ (4πt)^{-D/2} e^{-m²t} dt = (4π)^{-D/2} m^{D-2} Γ(1-D/2)
- For D=4: Γ(-1) diverges → UV divergence. Correct.
- Relationship: Γ(1-D/2) and Γ(D/2-1) are related by
  reflection formula. The remark avoids the detailed formula, saying
  only "converts t^{-D/2} into Γ(D/2-1)". This is imprecise but
  not wrong — the prefactor (4π)^{-D/2} carries through. Acceptable
  for a synthesis remark.
