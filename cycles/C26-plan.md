# C26 Plan

## Goal
Promote the `S04` delta-contact convention-map results into `papers/rg-fundamental/main.md` so the \(d=2\) and \(d=3\) contact-interaction computations are self-contained about measures/normalizations and about which constants are scheme dependent.

## Scope
1. `papers/rg-fundamental/main.md`
   - Add a short “convention map” subsection that states the repo’s definitions of \(I_d(E;\Lambda)\) and \(T(E;\Lambda)\), and quotes the \(d=2\) (log) and \(d=3\) (linear + \(ik\)) asymptotics in these conventions.
   - Add one explicit sentence linking the boundary-condition length \(R\) and the \(2e^{-\gamma}\) factor to finite-subtraction scheme dependence (rescaling of the RG-invariant scale).
   - Refresh Section 7’s forward queue by removing items completed by `B01`/`S04`.

2. `docs/research-log.md`
   - Add a short entry recording the promotion.

## Non-Goals
- No new bibliography search/ingest in this cycle.
- No new changes to the cornerstone manuscript `paper/main.md`.

## Acceptance Tests
1. `papers/rg-fundamental/main.md` contains the convention-map subsection and scheme-constant clarification.
2. The forward queue no longer asks for the already-completed “convention map” study and no longer lists the already-ingested Manuel–Tarrach 2D delta reference as “to ingest”.
3. No cycle IDs appear in `paper/main.md` (guardrail: `rg -n 'C[0-9]{2}' paper/main.md`).

