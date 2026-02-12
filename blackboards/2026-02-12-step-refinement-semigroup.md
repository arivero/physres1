# Step-refinement control map: semigroup structure and continuous limit

Date: 2026-02-12
Cycle: S75

## Motivation
D6.2a shows that step-halving (b=2) induces τ₂(a) = a/2 + 1/4 with fixed point a* = 1/2. The manuscript asserts this is "a clean micro-model" for RG semigroup structure (D6.0). S75 verifies this by computing τ_b for general b and checking the semigroup composition law.

## Setup

From D6.2a: the one-parameter family of one-step maps is
Φ_h^{(a)}(y) = y + hf(y) + a h² f'(y)[f(y)] + O(h³)

**General b-fold refinement**: compose b copies of Φ_{h/b}^{(a)}.

## Computation: general τ_b

After k compositions of Φ_{h/b}^{(a)}, the O(h²) coefficient of f'[f] accumulates as:
- Each new step contributes a from the ansatz, plus the chain-rule correction from expanding f at the shifted point
- Chain-rule contributions: 0 + 1 + 2 + ... + (k-1) = k(k-1)/2 (in units of (h/b)²)

After b steps, the total coefficient of h² f'[f] is:

[b(b-1)/2 + ba] · (1/b²) = (b-1)/(2b) + a/b

Therefore:

**τ_b(a) = a/b + (b-1)/(2b)**

### Checks
- b = 1: τ₁(a) = a + 0 = a ✓ (identity)
- b = 2: τ₂(a) = a/2 + 1/4 ✓ (matches D6.2a)
- Fixed point: a/b + (b-1)/(2b) = a ⟹ a(1 - 1/b) = (b-1)/(2b) ⟹ a* = 1/2 ✓ (for all b)

## Semigroup property: τ_b ∘ τ_c = τ_{bc}

τ_b(τ_c(a)) = τ_c(a)/b + (b-1)/(2b)
             = [a/c + (c-1)/(2c)]/b + (b-1)/(2b)
             = a/(bc) + (c-1)/(2bc) + (b-1)/(2b)

Common denominator 2bc:
= a/(bc) + (c-1)/(2bc) + c(b-1)/(2bc)
= a/(bc) + [(c-1) + c(b-1)]/(2bc)
= a/(bc) + (bc - 1)/(2bc)

And: τ_{bc}(a) = a/(bc) + (bc-1)/(2bc) ✓

**The semigroup law holds exactly: τ_b ∘ τ_c = τ_{bc}.**

## Continuous limit (infinitesimal refinement)

Set b = 1 + ε:

τ_{1+ε}(a) = a/(1+ε) + ε/(2(1+ε))
           ≈ a(1-ε) + ε/2 + O(ε²)
           = a - ε(a - 1/2)

The infinitesimal generator (beta function analogue):

β_τ(a) ≡ lim_{ε→0} [τ_{1+ε}(a) - a]/ε = -(a - 1/2) = 1/2 - a

This is a **linear flow** toward a* = 1/2 with unit rate. The finite solution:

τ_{e^t}(a) = 1/2 + (a - 1/2)e^{-t}

### Verification
τ_{e^t}(a) = a/e^t + (e^t - 1)/(2e^t) = ae^{-t} + 1/2 - e^{-t}/2 = 1/2 + (a-1/2)e^{-t} ✓

## Interpretation

| RG concept | Step-refinement analogue |
|-----------|------------------------|
| Coarse-graining semigroup | b → τ_b (b > 1) |
| Semigroup composition | τ_b ∘ τ_c = τ_{bc} |
| Beta function | β(a) = 1/2 - a |
| Fixed point (exact flow) | a* = 1/2 |
| RG flow | Exponential relaxation to a* |
| "Relevant" perturbation | δa ≡ a - 1/2 decays as e^{-t} |

The fixed point a* = 1/2 is **universally attractive**: any initial ordering parameter a flows to the exact-flow coefficient under iterated refinement. This is the ODE-level analogue of universality in RG: the large-scale (coarse) behavior is insensitive to the microscopic (fine-step) ordering choice.

## Connection to D6.0

D6.0 introduces the control map τ_b abstractly. D6.2a gives the b=2 instance. This computation shows the full semigroup structure closes exactly at the O(h²) level, with:
- General formula: τ_b(a) = a/b + (b-1)/(2b)
- Semigroup law: τ_b ∘ τ_c = τ_{bc}
- Continuous beta function: β(a) = 1/2 - a
- Universal attractor: a* = 1/2

## Promotion candidate
A remark extending D6.2a to general refinement factor, stating the semigroup law and the continuous beta function. This would make the "RG semigroup" analogy concrete rather than analogical.
