# S07 Plan

## Goal
Study the “delta on critical points” object that appears naturally when insisting on stationarity of action, and express it cleanly in the half-density-first language:
1. \(\delta(f')\) as a density supported on critical points,
2. its canonical half-density “square root” as a distributional half-density supported on the same set,
3. how this matches the stationary-phase prefactor weights \(1/\sqrt{|\det f''|}\) in finite dimensions.

This is intended as a clean bridge to the cornerstone paper’s thesis “quantum theory appears naturally once you try to enforce stationary extremes of action”, without citing any conversation transcript.

## Scope
1. Write a dated blackboard note with:
   - the identity \(\delta(\varphi(x))=\sum_i \delta(x-x_i)/|\varphi'(x_i)|\) in the nondegenerate case,
   - the specialization \(\delta(f'(x))=\sum_i \delta(x-x_i)/|f''(x_i)|\),
   - the half-density version \(\delta^{1/2}_{f}\sim \sum_i \delta_{x_i}/\sqrt{|f''(x_i)|}\,|dx|^{1/2}\),
   - a short stationary-phase comparison showing the same weights appear.

## Non-Goals
- No Lean formalization yet (keep it light).
- No manuscript edits in this cycle.
- No bibliography work (DNS/network currently blocks `B02`).

## Acceptance Tests
1. New blackboard note exists in `blackboards/` with explicit formulas and a clear “what is canonical” vs “what is convention” separation.
2. The note lists ≥2 promotion candidates (one for `paper/main.md`, one for a follow-up draft or notes).

