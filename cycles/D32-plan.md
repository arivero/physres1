# D32 Plan: Uniqueness of the action scale

Date: 2026-02-14

## Goal
Determine whether Proposition P4.2's action-dimensional constant κ is *universal* (same for all sectors) or could vary between different degrees of freedom, particle species, or subsystems.

## Novelty candidates (shortlist)
1. **Universality is forced:** Composition of coupled systems requires κ₁=κ₂ (new foundational result)
2. **Universality is assumed:** Decoupled sectors can have independent κ values (clarifies P4.2's scope)

## Decision criteria
- If universality is forced, this is a publishable foundational insight ("why ℏ is universal")
- If not forced, we clarify that P4.2 proves sector-wise necessity, not cross-sector universality
- Either answer is valuable; the question is sharp and answerable

## What Goes Where
- `D32` is triage: state the question, identify the minimal test case (two-particle system)
- Spawn `S286`: work out the two-particle free propagator with (κ₁, κ₂), check composition
- Blackboard slot: use next available (check `blackboards/` status)
- If universality is forced: draft remark for future C-cycle promotion

## Allowed files (edit/write)
- `cycles/D32-*.md`
- `cycles/index.md`
- `docs/research-log.md`

## Read-only references (if needed; never edit in D)
- `paper/main.md` lines 608-620 (Proposition P4.2)
- `paper/main.md` lines 584-608 (Derivation D4.1a - single particle)

## Forbidden files (do not edit)
- Manuscripts (no promotion yet)
- Bibliography
- `sources/`

## Expected spawns
- `S286`: Two-particle composition with (κ₁, κ₂)
  - Deliverable: Blackboard calculation showing whether composition forces κ₁=κ₂
  - Slot: next available in `blackboards/` (likely slot 3 or 4 after cleanup)
  - Scope: 1-2 pages, explicit free-particle tensor product

## Acceptance criteria
- Sharp question stated: "Does composition force universality of κ?"
- Test case identified: two-particle free system with independent κ values
- S286 spawned with clear deliverable
- Verdict criteri stated: composition closure succeeds with κ₁≠κ₂ → not forced; fails → forced
