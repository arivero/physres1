# Q63 Red Team: What a referee would attack in the C108 rename

Date: 2026-02-12

## Likely referee objections
- **"Are there other companion papers with label collisions?"**
  - Mitigation: C108-debate.md already audited all companion papers. `uncuttable-controlled-refinement` has no local labels. `delta-objects`, `relativistic-central-orbits`, `action-angle-indeterminacy`, `fermionic-mediators-contact-limits` have no labels. No additional fix needed.
- **"Could the prefix scheme break future cross-references?"**
  - Mitigation: the prefix scheme is documented in C108-plan.md. Future companion papers should adopt a prefix from the start. The main paper's labels remain unprefixed (canonical namespace), so cross-references from companions to main use section numbers and are unaffected.
- **"What about references from the main paper to companion labels?"**
  - Mitigation: the main paper (`paper/main.md`) does not reference companion labels by ID; it references companion papers by title/path. No breakage possible.
