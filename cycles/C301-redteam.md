# C301 Red Team

Date: 2026-02-14

## Failure modes

### 1. Claim overstates what's proven in the manuscript
**Objection:** The remark cites "standard convergence theory" but doesn't prove it.
**Mitigation:** The remark is explicitly scope-limited. It states what the standard theory guarantees (with O(h) error on Lipschitz domains) and what it doesn't cover (collision singularities). The full proof is in HLW06/HNW93 (standard numerical analysis textbooks). The manuscript's role is to connect that external result to the Newton polygonal construction, not to reprove the theorem.

### 2. Missing citation for the convergence theorem
**Objection:** Should cite Hairer-Lubich-Wanner explicitly.
**Mitigation:** Deferred to a future bibliography cycle. The claim is true and can be cited generically as "standard convergence theory"; adding the specific HLW06 citation is a B-cycle task, not a blocker for this C-cycle.

### 3. Regularization techniques mentioned but not explained
**Objection:** Kustaanheimo-Stiefel and Levi-Civita are named but not defined.
**Mitigation:** Appropriate for a remark. The point is to flag that regularization exists and is required at the singularity, not to derive it. Readers familiar with celestial mechanics will recognize the names; others get the structural message (collision requires special handling).

## Post-execution assessment
All three failure modes are acceptable trades for a remark-level addition. The promotion is substantive without overloading Section 3.
