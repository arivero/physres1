# C46 Plan: Add a Second D=4 Filter (Conformal Scalarization-Gauge Simplicity) to Planck-Area Draft

## Goal
Augment `papers/planck-area/main.md` with an independent “special dimension” filter that is *not* the H2.5 coupling sieve:
- in a conformal background \(g=e^{2\sigma}\delta\), the half-density conjugated Laplacian contains a \((\partial\sigma)^2\) term with coefficient \(D(4-D)/4\),
- hence at \(D=4\) that quadratic-gradient term cancels.

Frame it as a separate heuristic knob:
“simplicity of scalarization-gauge dependence of the kinetic operator” rather than “dimension-matching of a universal scale”.

## Scope
- Edit:
  - `papers/planck-area/main.md`
- Update logs:
  - `docs/research-log.md`
  - `cycles/index.md`
- No bibliography ingestion.

## Acceptance Tests
1. Planck-area draft contains a short subsection/heuristic stating the conformal half-density Laplacian formula and the \(D(4-D)/4\) cancellation at \(D=4\), with explicit caveats.
2. The text links to:
  - `papers/half-density-qft/main.md` (Derivation D1.3) and/or
  - `blackboards/2026-02-10-conformal-rescaling-and-half-density-laplacian-family.md`.
3. No conflation with the H2.5 coupling sieve: the draft explicitly says this is a different kind of filter.

