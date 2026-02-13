# C40 Plan

## Goal
Improve referee-friendliness of the cornerstone manuscript by adding a single pointer near `Derivation D4.3` to the explicit Schur-complement template note:
- `paper/notes/van-vleck-schur-complement.md`.

## Scope
1. Micro-edit `paper/main.md` (one sentence).
2. Run the manuscript-policy check: `rg -n 'C[0-9]{2}' paper/main.md`.
3. Update `docs/research-log.md` and `cycles/index.md`.

## Non-Goals
- No other prose edits.
- No new bibliography ingestion.

## Acceptance Tests
1. `paper/main.md` contains exactly one short pointer to the note near D4.3.
2. The cycle-label grep check passes (no cycle IDs in `paper/main.md`).

