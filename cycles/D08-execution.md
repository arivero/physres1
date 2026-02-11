# D08 Execution: Half-density conjugation of the Laplacian in a conformal class (the D=4 cancellation witness)

Date: 2026-02-11

## Decision
- Chosen target: verify and document the conformal expansion of \(\widetilde\Delta:=|g|^{1/4}\Delta_g|g|^{-1/4}\) and the \(D(4-D)\) cancellation in the \((\partial\sigma)^2\) term.
- Why now: it is already referenced in the half-density QFT note and can be made fully reproducible with a bounded symbolic check and a clear “no over-interpretation” disclaimer.

## One-sentence novelty claim (non-manuscript)
In a conformally flat metric \(g_{\mu\nu}=e^{2\sigma}\delta_{\mu\nu}\), the conjugated operator \(|g|^{1/4}\Delta_g|g|^{-1/4}\) acting on a scalar field admits an explicit closed-form expansion whose \((\partial\sigma)^2\) coefficient is proportional to \(D(4-D)\), vanishing at \(D=4\).

## Scope disclaimer (non-manuscript)
This is a worked simplification in one natural metric class; it is **not** (by itself) a claim of fundamental four-dimensionality, conformal invariance, or a quantum anomaly statement.

## Updates made
- `docs/research-state.md`: no change (tracked via `cycles/index.md` + `docs/research-log.md` for now).
- `docs/research-log.md`: add a dated entry recording the target selection and spawned cycles.
- `cycles/index.md`: mark `D08` completed and update next actions.

## Spawned cycles
- `S65`: “SymPy check for the conformal half-density Laplacian expansion” (deliverable: a blackboard note with code + output).
- `C97` (optional): “Make the half-density QFT note standalone by inlining minimal support and tightening the D=4 remark.”
