# DX01 Plan: First divergent exploration cycle

Date: 2026-02-12

## Goal
Divergent exploration: surprise inventory, cross-thread probes, framing stress-tests. This is the first DX cycle (overdue per ~10-cycle cadence rule).

## Input
- `docs/anomalies.md` (currently empty — no prior anomalies recorded)
- `docs/research-state.md` (active threads 1–11)
- `docs/next-articles.md` (roadmap A–L)
- Main manuscript structure (Sections 1–10)

## Exploration targets
1. **Cross-thread connection: Newton impulse model ↔ symplectic integrator ↔ step-doubling**
   - Is the Section 3 impulse model literally a symplectic Euler scheme? If so, Section 8's step-doubling story applies to Section 3.
2. **Cross-thread connection: half-density composition ↔ step-doubling counterterms**
   - Both are "compose two steps, compare to one" checks. Are they the same phenomenon at different structural levels?
3. **Historical precursor: Berkeley's "The Analyst" (1734)**
   - Berkeley's critique of vanishing quantities is a historical precursor to the manuscript's "Zeno-style refinement paradox." Should it be cited?
4. **Dimension-selection asymmetry**
   - The half-density filter selects d=4 (conformal conjugation). Does the RG side also select a dimension?
5. **Framing stress-test: is RCP falsifiable?**
   - Can we state a concrete prediction or structural consequence of RCP that could be wrong?

## Allowed files
- `docs/research-state.md`
- `docs/next-articles.md`
- `docs/anomalies.md`
- `docs/research-log.md`
- `cycles/DX01-*.md`

## Forbidden files
- Manuscripts, bibliography, sources

## Expected outputs
- Populated `docs/anomalies.md` with any tensions found.
- Updated principle evolution log (if warranted).
- Spawned S, D-triage, or B cycles for promising leads.
