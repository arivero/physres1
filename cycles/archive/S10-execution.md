# S10 Execution

## Status
Completed.

## Work
1. Wrote/extended `blackboards/2026-02-10-half-densities-in-qft.md`:
   - propagators/Green functions as bi-half-density kernels on spacetime,
   - densitized fields \(\psi=|g|^{1/4}\phi\) as a scalarization gauge,
   - explicit coordinate formula for the conjugated kinetic operator and a short symmetry check,
   - BV/field-space half-density theme flagged as heuristic + queued for a later bibliography cycle if promoted.
2. Added `blackboards/2026-02-10-distribution-theory-for-extremals.md`:
   - \(\delta\) (evaluation) vs \(\delta'\) (derivative evaluation),
   - \(\delta(f)\) vs \(\delta(f')\) (zero-set vs stationary-set localization),
   - weak Euler–Lagrange as a distributional equality (jump/corner terms emerge automatically).

## Result
- The “half-density prioritary” stance extends cleanly into QFT on curved backgrounds via densitized fields and bi-half-density propagator kernels, with the metric half-density \(|g|^{1/4}|dx|^{1/2}\) acting as a concrete scalarization choice.
- The distribution toolbox note resolves a recurring ambiguity around “which delta” is meant when discussing extremals (evaluation delta, derivative-of-delta, or delta applied to a derivative constraint).

## Promotion Queue
1. `C34`: start `papers/half-density-qft/main.md` (wave-1 content: densitized scalar field + kernel semantics; BV as outlook only).
2. `C35`: add a short clarifier to `papers/delta-objects/main.md` distinguishing \(\delta(f')\) from \(\delta'\), and connect weak Euler–Lagrange to corner/jump terms.
