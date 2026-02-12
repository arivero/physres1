# S76 Red Team: Study failure modes

Date: 2026-02-12

## Failure modes

- **Algebra/sign mistakes in the RG invariant computation:**
  - Mitigation: both integrals (∫ da/(1/2-a) and ∫ dg/(-cg²)) are elementary and have standard closed forms. Cross-checked against the blackboard.

- **Hidden assumption: analyticity of beta function:**
  - Mitigation: explicitly stated that the criterion applies to analytic beta functions vanishing at g*. Non-analytic cases are flagged but not treated (physically irrelevant for perturbative beta functions).

- **Result is not promotable (too obvious):**
  - Mitigation: the point is the cross-thread clarification, not mathematical novelty. The blackboard records the structural boundary explicitly for future reference. Promotion is optional and low-priority.

- **Over-reading D6.2a-sg: it's a toy model, not a QFT statement:**
  - Mitigation: the analysis stays within the stated scope. D6.2a-sg is used as a witness for P6.2 (semigroup axioms), not as a proxy for QFT RG. The comparison with PA-D1.6a is about mathematical structure (linear vs nonlinear beta), not about physical content.
