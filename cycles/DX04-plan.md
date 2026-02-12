# DX04 Plan: Post-S78 structural sweep — cross-thread audit and anomaly probe

Date: 2026-02-12

## Goal
Divergent exploration: look for surprises, cross-thread connections, and framing stress-tests — without editing manuscripts or committing to a specific production target.

## Surprise inventory
- S78 found that Van Vleck prefactor (geometric) and transmutation scale κ* (dynamical) are structurally independent, combining multiplicatively in the 2D delta kernel.
- No computation failures or unexpected results in the S76–S78 chain.
- Check `docs/anomalies.md` for accumulated signals → all entries resolved.

## Cross-thread probe
- Pick Thread 1 (main paper RG) + Thread 2 (Planck-area half-density scale).
- Expected connection: the transmutation scale κ*^{-1} should serve as the scalarization constant for half-density kernels.
- Can we write one equation or diagram relating quantities from both threads?

## Framing stress-test
- Does RCP v4 still account for everything?
- What is the hardest case?
- One way the framing could be wrong or incomplete.

## Candidate principle (if any)
- Check whether the three-level hierarchy merits a v5 update or is a structural prediction of v4.

## Allowed files
- `docs/research-state.md`, `docs/anomalies.md`, `docs/next-articles.md`, `docs/research-log.md`
- `cycles/DX04-*.md`, `cycles/index.md`

## Forbidden files
- Manuscripts, bibliography ledger, sources

## Expected spawns
- C116 (optional): promote S78 Van Vleck × transmutation separation into Planck-area draft.
