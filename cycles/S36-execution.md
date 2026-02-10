# S36 Execution: Uncertainty Skeleton for \(\dot A_{\mathbf n}\) and \(\mathcal T_{\mathbf n}\)

## Work Completed
- Defined first-order covariance propagation for projected areal observable:
  \[
  q:=\dot A_{\mathbf n}=\frac12\,\mathbf n\cdot(\mathbf r\times\mathbf v),
  \qquad
  \sigma_q^2 \approx J_q\,\Sigma_x\,J_q^\top,
  \]
  with \(x\) the reconstructed state vector and \(J_q=\partial q/\partial x\).
- Gave explicit differential form:
  \[
  \delta q=\frac12\,\mathbf n\cdot(\delta\mathbf r\times\mathbf v+\mathbf r\times\delta\mathbf v),
  \]
  which yields Jacobian blocks directly.
- Added residual-channel template:
  \[
  \mathcal T_{\mathbf n}=
  \frac{d}{dt}(\mathbf n\cdot\boldsymbol\ell)-\frac1m\,\mathbf n\cdot(\mathbf r\times\mathbf F),
  \qquad
  \sigma_{\mathcal T}^2\approx J_{\mathcal T}\,\Sigma_z\,J_{\mathcal T}^\top
  \]
  for augmented state \(z\) including force-model terms and time-derivative estimates.
- Logged formulas and practical cautions in `blackboards/2026-02-10-uncertainty-skeleton-for-projected-areal-observables.md`.

## Result
The branch now has a consistent uncertainty scaffold: linear Jacobian propagation for both primary projected observable and torque residual, with explicit reminder that derivative-estimation noise can dominate \(\sigma_{\mathcal T}\).

