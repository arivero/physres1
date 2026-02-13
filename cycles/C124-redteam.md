# C124 Red Team

Date: 2026-02-13

## Failure modes

### 1. Redundancy with Section 5.2
- Risk: reader may find RG-D1.2a redundant with the preceding text (same equation, different derivation route).
- Mitigation: the derivation explicitly connects to RG-P1.1 (semigroup) and RG-D1.7 (Schur complement), tying Sections 2, 5, and 6 together. This cross-referencing is the value-add, not the equation itself.

### 2. Sharp cutoff artifact
- Risk: using a sharp momentum cutoff may seem naive compared to more physical regulators.
- Mitigation: the beta function is scheme-independent for marginal couplings (only the log coefficient matters). Could add a one-line remark in Q79 if needed.
