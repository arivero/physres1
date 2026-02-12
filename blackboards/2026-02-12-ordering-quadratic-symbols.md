# Ordering ambiguity for quadratic symbols: extending Section 10.2

Date: 2026-02-12
Cycle: S74

## Motivation
Section 10.2 works out Q_W(fp) - Q_L(fp) = -iℏ/2 f'(q̂) for the linear symbol A = f(q)p. Thread 6 asks to extend to richer symbol families. The quadratic case A = f(q)p² is physically important: it is the kinetic energy with position-dependent mass (1D curved space).

## Setup

Classical symbol: A(q,p) = f(q)p², smooth f.

**Left ordering:**
Q_L(A) = f(q̂)p̂²

**Weyl ordering** (via symmetric ordering of f(q)p²):
Q_W(fp²) = ¼(f(q̂)p̂² + 2p̂ f(q̂) p̂ + p̂² f(q̂))

## Computation

Using [p̂, f(q̂)] = -iℏ f'(q̂):

**Term 1:** f(q̂)p̂² = fp̂²

**Term 2:** p̂ f p̂ = (fp̂ - iℏf')p̂ = fp̂² - iℏ f'p̂

**Term 3:** p̂² f = p̂(fp̂ - iℏf') = (fp̂ - iℏf')p̂ - iℏ(f'p̂ - iℏf'')
         = fp̂² - iℏf'p̂ - iℏf'p̂ - ℏ²f'' = fp̂² - 2iℏf'p̂ - ℏ²f''

**Sum:** fp̂² + 2(fp̂² - iℏf'p̂) + (fp̂² - 2iℏf'p̂ - ℏ²f'')
       = 4fp̂² - 4iℏf'p̂ - ℏ²f''

**Weyl ordering:**
Q_W(fp²) = fp̂² - iℏf'p̂ - ¼ℏ²f''

## Result

$$
Q_W(fp^2) - Q_L(fp^2) = -i\hbar f'(\hat q)\hat p - \tfrac{1}{4}\hbar^2 f''(\hat q)
$$

### Structure of the correction

| Order | Term | Type |
|-------|------|------|
| O(ℏ)  | -iℏ f'(q̂) p̂ | First-order differential operator |
| O(ℏ²) | -¼ℏ² f''(q̂) | Multiplication operator (potential) |

Compare with the linear case (Section 10.2):

| Symbol | Q_W - Q_L | Highest O(ℏ) |
|--------|-----------|---------------|
| f(q)p  | -iℏ/2 f' | O(ℏ), multiplication |
| f(q)p² | -iℏ f'p̂ - ¼ℏ² f'' | O(ℏ), differential + O(ℏ²), multiplication |

**Key observation:** the quadratic symbol generates a **differential** O(ℏ) correction (not just a multiplication operator), plus an additional O(ℏ²) potential term. The correction hierarchy matches the degree of the momentum polynomial: degree n in p produces corrections up to O(ℏ^n).

## Cross-check: kernel representation

From the Weyl kernel formula:
⟨x|Q_W(fp²)|y⟩ = f((x+y)/2) · (-ℏ²)δ''(x-y)

⟨x|Q_L(fp²)|y⟩ = f(x) · (-ℏ²)δ''(x-y)

Difference uses f((x+y)/2) - f(x) = f'(x)(y-x)/2 + f''(x)(y-x)²/8 + ...

With distributional identities:
- (y-x)δ''(x-y) = 2δ'(x-y)   [integration by parts]
- (y-x)²δ''(x-y) = 2δ(x-y)   [integration by parts twice]

So: [f'(x)/2 · 2δ'(x-y) + f''(x)/8 · 2δ(x-y)](-ℏ²)
  = -ℏ²f'(x)δ'(x-y) - ¼ℏ²f''(x)δ(x-y)

The first term is the kernel of -iℏf'(q̂) · (-iℏ∂/∂x) = -iℏf'p̂. ✓
The second term is the kernel of -¼ℏ²f''(q̂). ✓

Both methods agree.

## Physical application: position-dependent mass

For f(q) = 1/m(q) (kinetic energy p²/m):

Q_W(p²/m) = (1/m)p̂² + iℏ(m'/m²)p̂ - ¼ℏ²(1/m)''

where (1/m)' = -m'/m² and (1/m)'' = (2m'² - m m'')/m³.

The **Laplace-Beltrami operator** in 1D with metric g = m(q) is:
Δ_{LB} = m^{-1/2} ∂_q (m^{-1/2} ∂_q) = (1/m)∂² - (m'/(2m²))∂

In operator form: Δ_{LB} → (1/m)p̂² + iℏ m'/(2m²) p̂

Comparing:
- Weyl: (1/m)p̂² + iℏ(m'/m²)p̂ - ¼ℏ²(2m'² - mm'')/m³
- Laplace-Beltrami: (1/m)p̂² + iℏ(m'/(2m²))p̂

The O(ℏ) first-derivative terms differ by a factor of 2. This is exactly the ordering ambiguity: different quantization prescriptions for the same classical kinetic energy differ at O(ℏ) in the first-derivative coefficient.

## Connection to half-density formulation

The half-density conjugated Laplacian (from HD-D1.3 / S72):
ΔHD = m^{1/4} Δ_{LB} m^{-1/4}

eliminates the first-derivative term entirely (in 1D). This is the half-density "resolution" of the ordering ambiguity for kinetic operators: the half-density Laplacian is a natural second-order operator with **no first-derivative term** in the scalar picture.

In the conformal/curved-space setting (D dimensions), this corresponds to the conjugation ∣g∣^{1/4} Δ_g ∣g∣^{-1/4}, which is the operator studied in S72/C109/HD-D1.3a.

## Summary

1. The quadratic symbol f(q)p² extends Section 10.2 cleanly: the ordering correction has O(ℏ) differential + O(ℏ²) potential structure.
2. For position-dependent mass, different orderings (left, Weyl, Laplace-Beltrami) differ in the coefficient of the first-derivative O(ℏ) term.
3. The half-density conjugation selects the unique ordering with no first-derivative term, providing a geometric resolution of the ordering ambiguity for kinetic operators.
4. This connects thread 6 (ordering/discretization) back to thread 2b (half-densities in QFT): the half-density formalism is not just a normalization convenience; it resolves a genuine physical ambiguity in operator ordering.

## Promotion candidate
A remark extending D9.1 to the quadratic case, connecting to the half-density resolution.
