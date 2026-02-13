# S76 Debate: Is the order-of-vanishing criterion complete?

Date: 2026-02-12

## Question
The analysis identifies β ~ (g - g*)^n at the fixed point, with n = 1 (linear) giving algebraic RG invariants and n ≥ 2 giving essential singularities. Is this criterion sharp, or are there edge cases?

## Working answer
The criterion is sharp for analytic beta functions vanishing at g*. If β(g) = c(g - g*)^n + O((g-g*)^{n+1}) with c ≠ 0 and n ≥ 1, then:
- n = 1: ∫ dg/β ~ ln(g - g*) → RG invariant is power-law.
- n ≥ 2: ∫ dg/β ~ 1/(g - g*)^{n-1} → RG invariant involves exp(const/(g-g*)^{n-1}).

For non-analytic β (e.g. β with essential singularity at g*), the classification is more subtle but physically irrelevant since perturbative beta functions are polynomial/analytic.

## Next check
A SymPy verification of the integral classification would be complete but is unnecessary given the elementary nature of the computation. If promoted, a numerical example (e.g. β = g² with one-loop running) could serve as a concrete witness.
