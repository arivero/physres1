# C32 Plan

## Goal
Promote the `S09` point-interaction/half-density insight into the RG follow-up draft to strengthen the “RG is compatibility” narrative with a clean coordinate-free kernel statement.

## Scope
1. `papers/rg-fundamental/main.md`
   - Add a short labeled heuristic remark: point interaction as rank-one kernel \(g|0\rangle\langle0|\) and its bi-half-density delta form; emphasize scalarization conventions vs RG invariants.
2. `docs/research-log.md` / `cycles/index.md`
   - Record the promotion and update next action.

## Non-Goals
- No changes to `paper/main.md`.
- No new citations.

## Acceptance Tests
1. The added text is short (≤ a paragraph) and sits naturally near the delta-model section.
2. Guardrail: `rg -n 'C[0-9]{2}' paper/main.md` returns nothing.

