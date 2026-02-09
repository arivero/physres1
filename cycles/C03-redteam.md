# C03 Red Team

## Remaining Vulnerabilities
1. Distributional forcing is treated in a clean linear model; coupling to constraints and gauge fields is deferred.
2. The “extremal measures” discussion remains heuristic; no construction of a measure on path space is attempted yet.
3. Function-space assumptions for piecewise-smooth trajectories are sufficient for current derivations but can be sharpened in an appendix.

## Evidence Needed
1. `C04` should state composition assumptions carefully (semigroup/propagator law) to avoid circularity.
2. `C04` should make explicit where stationary-phase is legitimate and where it is only suggestive.
3. If the manuscript later uses corner conditions, add a short explicit derivation in an appendix or in `C03`.

## Next Cycle Patches
1. In `C04`, connect the exponential weighting to composition under concatenation using the discrete action \(S_N\).
2. Ensure ordering/discretization issues are acknowledged (see `[Rivero0302285]`) but not overclaimed.
3. Mark clearly which continuum path-integral statements are formal versus constructive.

## Closed Items
1. Dirac probes are now explicitly mollifier-based (no raw nonlinear delta insertions).
2. Impulse jump conditions are explicit and match the `C01` impulse scaffold.
3. Corner condition without impulse is now explicitly derived.
