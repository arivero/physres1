# C05 Plan

## Goal
Present quantization as a controlled deformation of classical observables, and connect this algebraic deformation to the `C04` slicing/ordering ambiguity.

## Scope
1. Define the deformation family of products \( \star_\hbar \) on a classical observable algebra.
2. State and derive the first-order commutator-to-Poisson relation.
3. Connect path-integral discretization/ordering choices to equivalent deformation choices.
4. Clarify what is formal, what is strict, and what is only claimed asymptotically.

## Claims
1. A deformation product family \(f\star_\hbar g\) recovers pointwise multiplication at \(\hbar\to0\).
2. The scaled commutator \(\frac{1}{i\hbar}[f,g]_{\star_\hbar}\) recovers the Poisson bracket at leading order.
3. Different ordering/discretization choices correspond to deformation-equivalent quantizations with the same classical limit.

## Risks
1. Conflating formal deformation series with strict \(C^\ast\)-deformation constructions.
2. Writing bracket formulas without controlling dimensions and normalization conventions.
3. Overstating equivalence classes without identifying the scope (local/asymptotic versus global/operator-theoretic).

## Acceptance Tests
1. `paper/main.md` section 7 replaces the placeholder with explicit deformation definitions and at least one derivation.
2. Section 7 contains at least two equations including commutator-to-Poisson recovery.
3. Section 7 explicitly links discretization/ordering ambiguity from `C04` to deformation language.
4. Section 7 ends with a transition into `C06` renormalization as controlled refinement.
