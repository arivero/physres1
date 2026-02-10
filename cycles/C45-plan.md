# C45 Plan: Promote S16 Conformal Half-Density Laplacian into Half-Density QFT Draft

## Goal
Promote the checked S16 computation into `papers/half-density-qft/main.md` as a worked example that:
- explicitly expands the conjugated kinetic operator in a conformally flat background,
- highlights the D=4 cancellation of the \((\partial\sigma)^2\) term (as an observation within the conformal class),
- keeps interpretation modest and links to the S16 blackboard note for details.

## Scope
- Edit:
  - `papers/half-density-qft/main.md`
- Update logs:
  - `docs/research-log.md`
  - `cycles/index.md`
- No new bibliography ingestion.

## Acceptance Tests
1. `papers/half-density-qft/main.md` gains a short derivation/example with the explicit formula for \(\widetilde\Delta\) in \(g_{\mu\nu}=e^{2\sigma}\delta_{\mu\nu}\).
2. The D=4 simplification is stated with proper caveats (“in this conformal ansatz”).
3. The new text points to `blackboards/2026-02-10-half-density-laplacian-conformal-metric.md` for the SymPy check and derivation details.

