# S216 Execution: Delta-Objects Expansion Study

## Findings

### 1. Why d/2 is universal (for Remark 2.1)
The d/2 exponent arises from the composition law for half-density kernels:
- K₁(x,z) ∈ |dx|^{1/2} ⊗ |dz|^{1/2}
- K₂(z,y) ∈ |dz|^{1/2} ⊗ |dy|^{1/2}
- Product: |dz|^{1/2} × |dz|^{1/2} = |dz| (full density, integrable)
- Result: (K₁ ∘ K₂)(x,y) ∈ |dx|^{1/2} ⊗ |dy|^{1/2} (half-density kernel)

The ε^{-d/2} prefactor in the near-diagonal identity kernel expansion
ensures this composition is compatible with regularized (mollified)
approximations.

### 2. Free particle distributional mechanics (for Example 3.4a)
For L = m/2 q̇², the EL expression is E[q] = -mq̈.
- Smooth q: mollifier ρ_ε localizes to E[q](t*) = -mq̈(t*) = 0
- Kinked q with Δv at t*: q̈ = (Δv)δ(t-t*) + smooth terms
  Sign: q̇ = v⁻ + (Δv)H(t-t*), so q̈ = (Δv)δ(t-t*). Positive Δv → positive delta.
  Forced equation mq̈ = Jδ gives mΔv = J.

## Output
Both items drafted for C251 promotion.
