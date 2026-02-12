# Odd-dimension obstruction for half-density integrality sieve

Date: 2026-02-12
Cycle: S79
Question: What happens to the PA-H2.5a integrality sieve (Derivation PA-D1.6) in odd dimensions?

## Setup

The half-density weight is length^{d/2}. Under PA-H2.5a, the scalarization constant must be a monomial C = Π g_i^{n_i} with integer exponents n_i. If coupling g_i has dimension [g_i] = length^{a_i}, then [C] = length^{Σ n_i a_i}. The Diophantine condition is:

$$\sum_i n_i a_i = \frac{d}{2}.$$

## Parity obstruction for odd d

For odd integer d, the target d/2 is a half-integer (e.g., 3/2, 5/2, 7/2, ...).

**Observation**: If all coupling dimensions {a_i} are integers, then Σ n_i a_i is always an integer (a sum of products of integers). An integer can never equal a half-integer.

Therefore: **for odd d, the integrality sieve PA-H2.5a has no solution if all admitted couplings have integer length dimensions.**

This is a *parity* obstruction — qualitatively different from the even-d failures (d = 6, 8, ...) where the target is an integer but no integer k satisfies the magnitude constraint.

## Enumeration for even d (gravity-only)

For even d with only G_d available, [G_d] = length^{d-2}, the condition is k(d-2) = d/2:

| d | d/2 | d-2 | k = d/(2(d-2)) | Integer? |
|---|-----|-----|-----------------|----------|
| 2 | 1   | 0   | undefined (G₂ dimensionless) | N/A |
| 4 | 2   | 2   | 1               | YES |
| 6 | 3   | 4   | 3/4             | No  |
| 8 | 4   | 6   | 2/3             | No  |
| 10| 5   | 8   | 5/8             | No  |

**d = 4 is the unique solution.** For even d ≥ 6, the obstruction is magnitude (k < 1). For d = 2, G₂ is dimensionless (no gravitational scale).

## Even d with gravity + cosmological constant

Adding Λ_d with [Λ_d] = length^{-2}, the condition becomes n(d-2) - 2m = d/2. Already analyzed in PA-E2: solutions exist for d divisible by 4 (n = 1, m = d/4 - 1). For d = 4: m = 0, reproducing PA-D1.3. For d = 8: m = 1, giving C ~ G₈ Λ₈. For d = 12: m = 2, etc. So the cosmological constant opens solutions in d = 4, 8, 12, ..., but d = 4 remains special as the only one not requiring Λ_d.

**For odd d**: n(d-2) - 2m is still an integer, so the parity obstruction persists regardless of Λ_d.

## Fermionic escape route (noted, not developed)

A Yukawa coupling g_Y in d dimensions has [g_Y] = length^{(d-4)/2}. For odd d, this is a half-integer. So if a half-integer-dimensional coupling is admitted, the sum Σ n_i a_i could be half-integer, potentially resolving the parity obstruction for odd d.

Example: in d = 3, [g_Y] = length^{-1/2}. The condition n₁ · 1 + n₂ · (-1/2) = 3/2 (using G₃ with a₁ = 1 and g_Y with a₂ = -1/2) becomes n₁ - n₂/2 = 3/2, i.e., 2n₁ - n₂ = 3. Solutions: (n₁, n₂) = (1, -1), (2, 1), etc. So G₃/g_Y or G₃² g_Y would work dimensionally.

This is a structural observation: **the parity obstruction for odd d is lifted if and only if at least one admitted coupling has a half-integer length dimension.** In the standard model landscape, fermionic (Yukawa) couplings are the natural source of such half-integer dimensions.

However: developing this fermionic escape route is outside the current scope (no Yukawa couplings appear in the gravity-only or gravity+Λ sieves that are the Planck-area draft's focus).

## Structural conclusion

The gravity-only integrality sieve (PA-D1.3 / PA-D1.6) excludes dimensions by three distinct mechanisms:

1. **Parity obstruction** (odd d): length^{d/2} has half-integer exponent; no monomial in integer-dimensional couplings can match. Categorical exclusion.
2. **Magnitude obstruction** (even d ≥ 6, gravity-only): k = d/(2(d-2)) < 1; no positive integer power of G_d suffices. The target is reachable in principle (integer exponent) but not by a monomial in G_d alone.
3. **Degenerate case** (d = 2): G₂ is dimensionless; gravity provides no scale.

d = 4 is the unique dimension where none of these obstructions applies.

## Implication for Planck-area draft open problem #3

Open problem #3 asks: "General-dimension analysis: clarify what replaces 'area' in odd dimensions and whether a universal normalization is still defensible."

Answer: In odd dimensions, **no monomial in standard (integer-dimensional) couplings can provide length^{d/2}**. The parity obstruction is categorical. This means:
- In odd d, the scalarization scale cannot come from the integrality sieve (PA-H2.5a) with standard couplings.
- The scale must come from either (a) the transmutation branch (PA-H2.13), (b) fractional powers of couplings, or (c) admitting half-integer-dimensional couplings.

The three-level hierarchy (PA-E5a) already handles this: transmutation (level 2) can supply a scale in any d via κ*^{-d/2}, bypassing the integrality sieve entirely. So in odd dimensions, if a universal scalarization scale exists, it must be transmutation-sourced (or involve non-standard coupling structures).
