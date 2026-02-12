# Paper Notes (Supporting Derivations)

Longer derivations and technical computations that support `paper/main.md` or
follow-up drafts. These are **internal working notes**, not citable sources in
the bibliography—but they may be cross-referenced from manuscripts as "see
supporting note".

## Lifecycle Policy: 10-Notebook Cap

Like blackboards, notebooks have a finite life. Cap: **10 files** (excluding
this README). Lifecycle stages:

1. **Created** — a derivation is extracted from a blackboard or produced during
   a C-cycle. It supports a specific manuscript section or claim.
2. **Active** — the note is referenced by at least one manuscript and may still
   be refined.
3. **Integrated** — the essential content has been fully absorbed into a
   manuscript (inline derivation, appendix, or footnote). The note is now
   redundant.
4. **Retired** — delete the note. If the manuscript carries the content, the
   note adds no value.

### When to delete

- A note whose key result appears verbatim (or in improved form) in a
  manuscript appendix or section body is **integrated** and should be deleted.
- A note that has not been touched or referenced in 5+ cycles is likely stale;
  check whether its content was silently absorbed, then delete.
- When creating a new note and the cap is reached, retire the most fully
  integrated note first.

## Current Notes

| File | Supports | Status |
|------|----------|--------|
| `rivero-ode-0302285-simple.md` | Sections 3, 7, 8 (preprint bridge) | Active |
| `van-vleck-schur-complement.md` | Section 6, 10 (semiclassical kernels) | Active |
| `weak-euler-lagrange-jump-conditions.md` | Section 5 (distributional EOM) | Active |
| `half-density-kernel-normalization.md` | Section 6 (kernel composition) | Active |
| `control-map-tau-step-halving.md` | Section 8 (RG witnesses) | Active |
| `compare-at-fixed-ruler-control-map-tau.md` | Section 8 (D6.0 restatement) | Active |

## Naming

Use descriptive kebab-case names (no date prefix needed—these are longer-lived
than blackboards):
- `topic-subtopic.md`
