# C02 Red Team

## Remaining Vulnerabilities
1. Euler-Lagrange is stated under classical smoothness; weak-solution extension is deferred to `C03`.
2. The fundamental lemma is stated in a clean continuous form; distribution-valued forces and rough paths need separate treatment.
3. Boundary-term handling is standard but should be expanded for mixed boundary conditions in later cycles.
4. Energy conservation is recorded for autonomous \(\mathcal L\); field-theory generalization is deferred.
5. `Heuristic H2.1` references distributional probes; full rigor still pending in `C03`.

## Evidence Needed
1. `C03` must provide weak-form derivation with test-function spaces and mollifier convergence assumptions.
2. `C03` must explicitly forbid undefined products of singular distributions without regularization.
3. `C04` should formalize composition law assumptions leading to exponential weighting.

## Next Cycle Patches
1. Add weak Euler-Lagrange formulation and point-supported probe handling in `C03`.
2. Separate rigor-level labels for each singular-step claim (`Proposition` vs `Heuristic`).
3. Tie distributional stationarity back to `C02` boundary assumptions.

## Closed Items
1. `C01` -> `C02` bridge is now explicit via `Proposition P2.1`.
2. Action additivity is now explicit as pre-bridge to composition formalism.
3. Discrete action notation now matches the refinement definition used earlier.
