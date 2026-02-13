# S89 SymPy Verifications of Key Derivations
Date: 2026-02-13

## Verification 1: D4.1a — Semigroup normalization forces t^{-d/2}

**Claim**: If k_t(u) = A(t) exp(im||u||²/(2ℏt)) and k_{t+s} = k_t * k_s, then A(t) ∝ t^{-d/2}.

**Method**: Completing the square in the convolution integral gives:
A(t+s) = A(t)·A(s)·(ts/(t+s))^{d/2}

Setting A(t) = t^α and solving:
(t+s)^α = t^α · s^α · (ts/(t+s))^{d/2}
⟹ (t+s)^{α+d/2} = (ts)^{α+d/2}
⟹ α + d/2 = 0 (for this to hold for all t,s > 0)
⟹ α = -d/2

**SymPy**: Verified LHS - RHS = 0 at α = -d/2. Ratio = 1. ✓

**Uniqueness**: The equation (t+s)^β = (ts)^β cannot hold for all t,s > 0 unless β = 0, because at t = s = 1 it gives 2^β = 1 while at t = 1, s = 3 it gives 4^β = 3^β. These are inconsistent for β ≠ 0.

## Verification 2: D6.2a — Step-halving control map

**Claim**: τ₂(a) = a/2 + 1/4 with fixed point a* = 1/2.

**SymPy**: Confirmed. τ₂(1/2) = 1/4 + 1/4 = 1/2. ✓

## Verification 3: D6.2a-sg — Semigroup law and beta function

**Claim**: τ_b(a) = a/b + (b-1)/(2b), satisfying τ_b ∘ τ_c = τ_{bc}.

**SymPy**:
- Semigroup check: τ_b(τ_c(a)) - τ_{bc}(a) = 0. ✓
- Fixed point: a* = 1/2 for all b. ✓
- Beta: τ_{1+ε}(a) - a = ε·(1/2 - a) + O(ε²). ✓

## Verification 4: D11.2 — 2D delta beta function and transmutation

**Claim**: β(g_R) = (m/πℏ²)g_R², and κ* is RG-invariant.

**SymPy**:
- β derived from cutoff-independence condition. ✓
- d/d(ln μ) [ln κ*²] = 0. ✓
- Scheme shift: κ*(C)² = e^C · κ*². ✓
