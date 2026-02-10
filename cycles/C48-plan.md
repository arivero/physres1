# C48 Plan: Add a Short “Operator-Simplicity D=4 Filter” Sidebar to the Cornerstone Paper

## Goal
Promote the invariant version of the conformal half-density Laplacian observation (S19) into `paper/main.md` as a short sidebar near the scalarization-gauge discussion:
- clearly marked as *optional* and *distinct* from the Planck-area scale sieve,
- explicitly scoped to conformal rescalings (operator-simplicity filter),
- links out to the detailed follow-up drafts/blackboards.

## Scope
- Edit:
  - `paper/main.md`
- Update logs:
  - `docs/research-log.md`
  - `cycles/index.md`
- No new bibliography ingestion.

## Acceptance Tests
1. `paper/main.md` gains a short remark (no more than ~1 paragraph + one displayed formula) explaining:
   - half-density conjugated Laplacian \(\widetilde\Delta=|g|^{1/4}\Delta_g|g|^{-1/4}\),
   - in \(g=e^{2\sigma}\bar g\) the \(|\nabla\sigma|^2\) coefficient is \(D(4-D)/4\) and cancels at \(D=4\),
   - this is an operator-simplicity filter (scale-neutral), distinct from the H2.5 sieve.
2. No cycle-label leakage: `rg -n 'C[0-9]{2}' paper/main.md` remains empty.

