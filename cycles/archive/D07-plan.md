# D07 Plan: Log publication-safety wave + refresh cycle board

Date: 2026-02-11

## Goal
Update durable project state after recent submission-hygiene waves, refresh the cycle board, and set the next bounded target (without editing manuscripts in this `D` cycle).

## Novelty candidates (shortlist)
1. Publication-safety hardening: remove repo-internal path references from dependent notes (treat them like standalone manuscripts).
2. Reader-friction trimming: small navigation/notation cues in the main paper that reduce early-symbol confusion without adding claims.
3. OA hardening (time-capped): one more lawful OA attempt for `[Dirac1933]` (otherwise keep `PENDING_LOCAL_PDF`).

## Decision criteria
- Improves submission/readability with minimal scope expansion.
- Adds no bibliography debt unless explicitly chosen.
- Keeps manuscripts free of repo metadata and cycle labels.

## Allowed files
- `docs/research-state.md`
- `docs/research-log.md`
- `cycles/D07-*.md`
- `cycles/index.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Expected spawns
- `C97` (optional): if a dependent note must be made fully standalone (inline minimal support or add standard citations).
- `B12` (optional): time-capped OA attempt for `[Dirac1933]`.
- `D08`: pick the next technical novelty thread and spawn a bounded `S` deliverable.

## Acceptance criteria
- Durable docs updated to reflect completed cycles and the current queue.
- `cycles/index.md` statuses + Next Action refreshed.

