# S10 Plan

## Goal
Extend the “half-density prioritary” thread explicitly into QFT contexts, not just QM/statics, by studying:
1. propagators/Green functions as bi-half-density kernels on spacetime (especially in curved backgrounds),
2. densitized fields (absorbing \(\sqrt{|g|}\)) as a scalarization choice,
3. BV/BRST gauge fixing as an integration-of-(half-)densities story (structural, not fully proved).

## Scope
1. Write a dated blackboard note with:
   - the densitized-scalar-field computation (\(\phi \mapsto |g|^{1/4}\phi\)) showing how the kinetic operator becomes symmetric w.r.t. coordinate Lebesgue measure,
   - the corresponding “propagator kernel as bi-half-density” interpretation,
   - a short BV half-density remark as a candidate “new theme” for a follow-up paper.
2. Add a second short blackboard “toolbox” note clarifying distribution-theory deltas relevant for extremals:
   - \(\delta\) vs \(\delta'\) (derivative evaluation),
   - \(\delta(f)\) vs \(\delta(f')\) (zero-set vs stationary-set localization),
   - why weak Euler–Lagrange is naturally distributional.

## Non-Goals
- No manuscript edits in this cycle.
- No bibliography ingestion (but record a `B` queue if BV references are needed).

## Acceptance Tests
1. New blackboard note exists in `blackboards/` with at least one explicit computation.
2. Distribution-theory toolbox note exists in `blackboards/`.
3. The QFT note lists ≥2 concrete promotion candidates (existing drafts or a new paper).
