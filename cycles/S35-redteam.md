# S35 Redteam: Failure Modes

## Failure Modes
1. **Frame mismatch:** object and source states reconstructed in inconsistent reference frames.
2. **Implicit smoothing bias:** numerical differentiation of noisy astrometry distorts \(\dot{\hat{\mathbf n}}\).
3. **Overconfident residuals:** torque residual interpreted without uncertainty propagation.

## Mitigations
1. Enforce explicit source-frame transformation step.
2. Use consistent smoothing/differentiation and report kernel/fit choices.
3. Carry uncertainties into \(\dot A_{\mathbf n}\), \(\boldsymbol\ell\), and residual \(\mathcal T_{\mathbf n}\).

