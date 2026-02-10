# B02 Plan

## Goal
Add a modern, OA-stable reference that explicitly states the semiclassical (Van Vleck) propagator prefactor formula, to support `paper/main.md` `Derivation D4.3` beyond the heritage attribution anchor `[VanVleck1928Correspondence]`.

## Scope
1. `paper/bibliography.md`
   - Add a new source key for a modern OA reference that states the Van Vleck propagator and/or Van Vleck determinant/density explicitly.
   - Update DOI audit + OA status.

2. `paper/main.md`
   - Add the new citation key at `Derivation D4.3`.

3. `docs/research-log.md` and `cycles/index.md`
   - Record the cycle and refresh next action.

## Acceptance Tests
1. `paper/main.md` `Derivation D4.3` cites one modern (non-1928) source that states the Van Vleck prefactor formula explicitly.
2. The source is OA-first (otherwise marked `PENDING`).
3. Guardrail: `rg -n 'C[0-9]{2}' paper/main.md` returns nothing.

