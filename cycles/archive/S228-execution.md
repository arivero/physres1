# S228 — Execution: ζ-function determinant study

## Outcome
Standard spectral theory. Heat-kernel trace Tr K(t) has small-t expansion:
  Tr K(t) ~ (4πt)^{-D/2} Σ_{n≥0} a_n t^n

The Mellin transform gives the ζ-function:
  ζ_P(s) = Γ(s)^{-1} ∫₀^∞ t^{s-1} Tr K(t) dt

Pole structure: simple poles at s = D/2 - n for n = 0, 1, 2, ...
All poles are at half-integer points determined by D/2.

At s=0: ζ_P(0) = (4π)^{-D/2} a_{D/2} (for even D, no zero modes).
Functional determinant: det P = exp(-ζ'_P(0)) — finite, coordinate-free.

In half-density framework: Tr K(t) = ∫_M K̃(t;x,x) d^D x is intrinsic
since K̃ = |g|^{1/4} K |g|^{1/4} absorbs the metric volume factor.

All results standard, sourced from [Vassilevich2003] (already in paper bibliography).
