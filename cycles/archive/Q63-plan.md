# Q63 Plan: Referee pass on C108 label-prefix rename

Date: 2026-02-12

## Parent cycle (required)
- `C108`: resolve claim-label namespace collision in companion papers

## Goal
Referee-pass the C108 mechanical rename (RG-/PA-/HD- prefixes) for completeness, consistency, and no broken cross-references.

## Allowed files
- `cycles/Q63-*.md` only
- One corrective fix to `papers/planck-area/main.md` if residual bare labels are found (Q-cycle correction of parent C's omission).

## Forbidden files
- `paper/main.md` (not touched by C108, must remain untouched)
- `blackboards/`, `paper/notes/`
- `paper/bibliography.md`, `sources/`

## Checklist
- All label definitions in rg-fundamental use `RG-` prefix.
- All label definitions in planck-area use `PA-` prefix.
- All label definitions in half-density-qft use `HD-` prefix.
- All inline cross-references within each paper use the correct prefix.
- Cross-paper references (planck-area → half-density-qft) use `HD-` prefix.
- No bare (unprefixed) label patterns remain in any companion paper.
- `paper/main.md` not modified.

## Acceptance criteria
- Zero residual bare labels across all three companion papers.
- Any corrections applied and recorded in execution log.
- Spawned follow-up cycles if needed, otherwise "clean — no follow-ups".
