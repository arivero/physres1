# S38 Plan: Correlated/High-Noise Robustness Scan

## Goal
Stress-test the D1.5k/l linear uncertainty baseline against nonlinear propagation under correlated and higher-noise settings.

## Scope
1. Define one reproducible correlated covariance family \(\Sigma_s\).
2. Compare \(\sigma_{q,\rm lin}\) and \(\sigma_{q,\rm MC}\) across a noise-scale sweep.
3. Extract a practical interpretation for when D1.5l trigger activates.

## Acceptance Tests
- Reproducible command and parameterization.
- Numeric sweep where mismatch behavior across regimes is visible.
- Clear promotion candidate for the next `C` cycle.
