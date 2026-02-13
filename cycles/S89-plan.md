# S89 Plan: SymPy verification of D4.1a semigroup normalization
Date: 2026-02-13

## Goal
Verify Derivation D4.1a (the claim that semigroup composition forces A(t) ∝ t^{-d/2}) using symbolic computation.

## Method
1. Set up the Gaussian convolution k_t * k_s in SymPy.
2. Verify the completing-the-square identity.
3. Confirm that A(t+s) = A(t)A(s)(ts/(t+s))^{d/2} and that A(t) = t^{-d/2} is the unique power-law solution.

## Also verify
- D6.2a step-halving control map: τ_2(a) = a/2 + 1/4, fixed point a* = 1/2.
- D6.2a-sg general b-refinement: τ_b(a) = a/b + (b-1)/(2b), semigroup law τ_b ∘ τ_c = τ_{bc}.
