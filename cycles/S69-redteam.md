# S69 Red Team: derivation risks

Date: 2026-02-12

## Failure modes
- **"Novelty" is only renaming:**
  - The symplectic-Euler identification is well known (Nauenberg 1994). The novelty is the *cross-thread connection* within the manuscript, not the identification itself.
  - Mitigation: the promotion paragraph should cite Nauenberg (1994) and frame the observation as a structural bridge, not a new result.

- **Conservation argument subtlety:**
  - Claim: "symplectic maps preserve quadratic invariants." This is true for linear symplectic maps; for nonlinear ones, the statement needs care.
  - Mitigation: the blackboard note uses the direct calculation (D1.1 reproof) rather than relying on the general quadratic-invariant theorem. The symplectic perspective is presented as "adds structural context" rather than "proves the result."

- **Section 8 bridge oversells the analogy:**
  - Saying "symplectic corrections ↔ gauge-invariant counterterms" is a structural analogy, not a theorem.
  - Mitigation: label it as `Heuristic` in the promotion, not `Proposition`.
