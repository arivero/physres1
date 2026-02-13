# S36 Redteam: Failure Modes

## Failure Modes
1. **Derivative noise explosion:** numerical differentiation of \(\boldsymbol\ell(t)\) destabilizes \(\mathcal T_{\mathbf n}\).
2. **Ignored correlations:** treating \(\mathbf r,\mathbf v,\mathbf F\) errors as independent.
3. **Linearization bias:** non-Gaussian posteriors underrepresented by Jacobian method.

## Mitigations
1. Specify smoothing window and derivative estimator.
2. Keep full covariance blocks in \(\Sigma_x,\Sigma_z\).
3. Flag Monte Carlo validation as next-level method when needed.

