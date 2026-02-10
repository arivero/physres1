# S54 Plan: Control Map \(\tau\) Formalization via Step-Halving (Toy ODE)

## Goal
Produce a derivation-first internal note that makes the "control map \(\tau_b\)" idea concrete:
compare two half-steps to one full step and read off the induced parameter flow \(\tau_b\) on method coefficients (a clean RG-like witness).

## Tasks
1. Write an internal note in `paper/notes/` defining a one-parameter family of one-step maps \(\Phi_h^{(a)}\).
2. Compute the step-halving coarse-graining map \(H(\Phi_h)=\Phi_{h/2}\circ\Phi_{h/2}\) to \(O(h^2)\).
3. Extract the induced control map \(\tau_2(a)\) and its fixed point.
4. Record a minimal promotion target for `C80` (one short derivation block in Section 8.4).

## Acceptance Tests
- Algebra is explicit and correct to \(O(h^2)\).
- Clear interpretation: \(\tau\) is a compatibility choice; failure of closure forces new terms (counterterms).

