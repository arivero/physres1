# S38 Execution: Correlated/High-Noise Robustness Scan

## Work Completed
- Built a correlated covariance family \(\Sigma_s=(sL_0)(sL_0)^\top\) for \(x=[\mathbf r,\mathbf v]\).
- Compared linear Jacobian uncertainty vs Monte Carlo uncertainty for
  \[
  q=\frac12\,\mathbf n\cdot(\mathbf r\times\mathbf v)
  \]
  over \(s\in\{1.0,1.5,2.0,2.5,3.0,3.5,4.0\}\).
- Recorded reproducible command, setup, and numeric table in:
  - `blackboards/2026-02-10-correlated-noise-threshold-scan-for-projected-areal-rate.md`.

## Key Numeric Outcome
- Relative mismatch \(|\sigma_{\rm MC}-\sigma_{\rm lin}|/\sigma_{\rm lin}|\) rises from \(0.505\%\) at \(s=1.0\) to \(6.311\%\) at \(s=4.0\).
- The "few-percent" crossing occurs around \(s\approx3\) in this toy setup.

## Result
The D1.5l trigger is validated as a practical regime detector: mild uncertainty/correlation supports linear propagation, while stronger correlated uncertainty pushes the error model into nonlinear territory.

## Next Spawn
- `C65`: add one concise manuscript qualifier that the nonlinear-trigger threshold is regime-dependent and controlled by uncertainty/correlation scale.
