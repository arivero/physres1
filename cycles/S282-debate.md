# S282 Debate: Is the Itô correction the "right" witness for the discretization ambiguity?

Date: 2026-02-14

## Question
The Itô correction (1/2) g g' dt is a well-known result. Does recomputing it in the N-impulse language add anything to the project, or is this just restating standard stochastic calculus?

## Working answer
The value is not in the formula itself but in the **dictionary**: the explicit mapping between the project's alpha-discretization parameter (Section 6.3, Derivation D4.1b) and the stochastic integral convention. This dictionary:
1. Shows that the ordering ambiguity O(hbar) and the Itô correction O(Dt) have the same structural origin: the cost of shifting the evaluation point within an increment whose fluctuations scale as O(sqrt(Dt)).
2. Connects the impulse-work formula of Remark 3.2a (Delta H = J * v_bar) directly to the Stratonovich convention, making the variational origin of the midpoint choice concrete.
3. Provides an explicit scope boundary: this is a **convention dictionary**, not a claim about nature. The path integral is not "really" stochastic.

## Next check
Verify that the dictionary extends cleanly to multi-dimensional or phase-space versions (should be straightforward for additive components; multiplicative case needs the matrix Itô correction (1/2) sum_j g^i_j partial_k g^k_j). Not needed for the current cycle but relevant for potential promotion.
