# C30 Plan

## Goal
Promote the stable `S07` insight into the cornerstone manuscript: make explicit that
1. \(\delta(f')\) concentrates on critical points with weights \(1/|f''|\) (nondegenerate case),
2. stationary phase amplitudes carry \(1/\sqrt{|f''|}\) weights,
so “amplitudes are half-densities; probabilities are densities” is not just rhetoric.

## Scope
1. `paper/main.md`
   - Add a short addendum derivation/remark immediately after `Derivation D3.5` in Section 5.5.

2. `docs/research-log.md`
   - Add a dated entry recording the promotion.

3. `cycles/index.md`
   - Update status/next action.

## Non-Goals
- No new citations (this is standard distribution/stationary-phase calculus).
- No changes to dependent drafts in this cycle.

## Acceptance Tests
1. The added text is short (≤ ~10 lines) and does not derail Section 5.5.
2. `rg -n 'C[0-9]{2}' paper/main.md` returns nothing.

