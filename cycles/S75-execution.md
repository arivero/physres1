# S75 Execution: Semigroup structure of the step-refinement control map

Date: 2026-02-12

## Summary
Computed the general refinement control map τ_b for the D6.2a toy ODE family and verified the semigroup law exactly.

## Results

### General formula
τ_b(a) = a/b + (b-1)/(2b)

- b=1: τ₁(a) = a (identity) ✓
- b=2: τ₂(a) = a/2 + 1/4 (matches D6.2a) ✓
- Fixed point: a* = 1/2 (independent of b) ✓

### Semigroup law
τ_b(τ_c(a)) = a/(bc) + (bc-1)/(2bc) = τ_{bc}(a) ✓

The composition law holds exactly at O(h²).

### Continuous limit
- Infinitesimal generator: β(a) = 1/2 - a (linear flow toward a* = 1/2)
- Finite flow: τ_{e^t}(a) = 1/2 + (a - 1/2)e^{-t} (exponential relaxation)
- a* = 1/2 is universally attractive: any ordering parameter converges to the exact-flow coefficient

### Interpretation
The step-refinement control map is a concrete, closed-form instance of RG semigroup structure. The "beta function" β(a) = 1/2 - a has a unique stable fixed point, and the approach to it is exponential — the ODE-level analogue of universality.

## Blackboard
`blackboards/2026-02-12-step-refinement-semigroup.md`

## Promotion candidate
A remark extending D6.2a to general b, stating τ_b(a), the semigroup law, and the continuous beta function. This converts the "RG semigroup" analogy from heuristic (H6.2) to derived.
