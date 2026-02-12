# D15 Red Team: housekeeping risks

Date: 2026-02-12

## Failure modes
- "Novelty" is only renaming:
  - Not applicable (D15 is housekeeping, not a novelty cycle).
- Reconstructed diffstat may be inaccurate:
  - Mitigation: used `git diff` against the exact commit hash. Numbers may differ slightly from what `scripts/paper-diffstat.sh --cached` would have reported at staging time (the script counts only manuscript files and may apply different filtering), but the git-diff reconstruction is the best available retroactive approximation.
- Setting a precedent for retroactive log editing:
  - Mitigation: D15 is explicitly scoped to metadata-only backfill of audit fields. The debate log records the reasoning.
