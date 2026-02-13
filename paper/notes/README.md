# Paper Notes (Supporting Derivations)

Longer derivations and technical computations that support `paper/main.md`.
These are **internal working notes**, not citable sources — but they may be
cross-referenced from manuscripts as "see supporting note".

## Relationship to Publication

Paper notes feed the **publication track** (P cycles). When preparing a
publishable version, the P cycle uses both the manuscript and its notes
to produce the final `.tex`/`.bib`. Notes contain the expansions, details,
and intermediate steps that the manuscript summarizes.

## Satellite Papers

Each satellite paper (`papers/*/`) has its own `notes/` directory for
paper-specific supporting material. The same lifecycle rules apply.

**When a satellite paper is discarded** (`git rm -r`), its notes can be:
1. **Destroyed** — if the content has no future use.
2. **Moved to main paper notes** — if relevant to the main manuscript.
3. **Appended to a notebook** — if the content has general research value
   but no specific publication target.

## Lifecycle Policy: 10-File Cap

Cap: **10 files** per notes directory (excluding README/.keep).

1. **Created** — extracted from a blackboard or produced during a C cycle.
   Supports a specific manuscript section or claim.
2. **Active** — referenced by at least one manuscript, may still be refined.
3. **Integrated** — content fully absorbed into a manuscript. Redundant.
4. **Retired** — `git rm` the note.

### When to delete

- A note whose key result appears in the manuscript is **integrated**: delete.
- A note untouched for 5+ cycles is likely stale: check, then delete.
- When creating a new note at the cap, retire the most integrated note first.

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

Use descriptive kebab-case names: `topic-subtopic.md`
