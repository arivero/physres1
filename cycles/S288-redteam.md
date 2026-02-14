# Sxx Red Team: <study failure modes>

Date: YYYY-MM-DD

## Failure modes
- Algebra/sign mistakes:
  - Mitigation: run a symbolic check; add a toy numeric sanity check.
- Hidden assumptions (domain, boundary conditions, regularity):
  - Mitigation: state hypotheses explicitly; downgrade claim if unsure.
- Result is not promotable:
  - Mitigation: rewrite as a concise lemma/remark with scope disclaimer.

