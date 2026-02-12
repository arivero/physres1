# C108 Red Team: Label rename failure modes

Date: 2026-02-12

## Failure modes
- Missing an inline cross-reference (label definition renamed but a bare reference left unprefixed):
  - Mitigation: grep for remaining bare `[^A-][PDHRE]\d\.\d` patterns in each companion. The planck-area file had the most inline refs (~50); all were updated individually.
  - Residual risk: low — the remaining bare patterns were systematically addressed.
- Breaking a cross-paper reference (e.g., planck-area referencing half-density-qft D1.3):
  - Mitigation: identified one cross-reference (planck-area line 154 → half-density-qft D1.3) and updated it to HD-D1.3.
- Accidentally prefixing a reference to the main paper's labels:
  - Mitigation: the main paper's labels were never touched (confirmed by git diff). Cross-references from companion papers to the main paper use section numbers (not label IDs) and are unaffected.
