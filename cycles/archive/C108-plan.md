# C108 Plan: Resolve claim-label namespace collision in companion papers

Date: 2026-02-12

## Goal
Add paper-specific prefixes to all claim labels in companion papers to prevent ambiguity when papers are read together at submission time. Issue flagged in Q59 and tracked in research-state.md thread 9.

## Prefix scheme
- `rg-fundamental` → `RG-` (e.g., RG-P1.1, RG-D1.1, RG-H1.1)
- `planck-area` → `PA-` (e.g., PA-P1.1, PA-D1.1, PA-H1.1)
- `half-density-qft` → `HD-` (e.g., HD-D1.1)

Main paper (`paper/main.md`) labels remain unprefixed — they are the canonical namespace.

## Target manuscripts (must edit >=1)
- `papers/rg-fundamental/main.md` (33 labels)
- `papers/planck-area/main.md` (~65 labels + inline cross-references)
- `papers/half-density-qft/main.md` (7 labels)

## Forbidden files
- `paper/main.md` (no changes needed — labels unprefixed by design)
