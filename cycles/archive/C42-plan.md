# C42 Plan

## Goal
Promote one stable sentence from S14 into the cornerstone manuscript: after `Derivation D4.1a`, note that the delta initial condition fixes the remaining normalization constant and forces \(\hbar\) into the prefactor (not only the phase).

## Scope
1. Micro-edit `paper/main.md` (one sentence).
2. Run the manuscript policy check: `rg -n 'C[0-9]{2}' paper/main.md`.
3. Update `docs/research-log.md` and `cycles/index.md`.

## Non-Goals
- No other manuscript edits.
- No bibliography ingestion.

## Acceptance Tests
1. `paper/main.md` gains exactly one sentence after D4.1a.
2. Cycle-label grep check passes.

