# S35 Execution: Concrete Reconstruction Pipeline

## Work Completed
- Built a minimal pipeline for a perturbed orbital target with astrometry + range + radial velocity:
  \[
  \mathbf r=\rho\,\hat{\mathbf n},\qquad
  \mathbf v=\dot\rho\,\hat{\mathbf n}+\rho\,\dot{\hat{\mathbf n}},
  \]
  where \(\hat{\mathbf n}(t)\) comes from astrometric direction, \(\rho(t)\) from ranging/parallax fit, and \(\dot\rho(t)\) from line-of-sight velocity.
- Added source-frame correction:
  \[
  \mathbf r_{\rm rel}=\mathbf r_{\rm obj}-\mathbf r_{\rm src},\qquad
  \mathbf v_{\rm rel}=\mathbf v_{\rm obj}-\mathbf v_{\rm src}.
  \]
- Connected reconstructed vectors to D1.5i observables:
  \[
  \dot A_{\mathbf n}=\frac12\,\mathbf n\cdot(\mathbf r_{\rm rel}\times\mathbf v_{\rm rel}),
  \quad
  \frac{dA_{\mathbf n}}{d\tau}=\frac12\,\mathbf n\cdot\boldsymbol\ell,
  \quad
  \mathcal T_{\mathbf n}:=\frac{d}{dt}(\mathbf n\cdot\boldsymbol\ell)-\frac1m\,\mathbf n\cdot(\mathbf r\times\mathbf F).
  \]
- Logged full stepwise procedure in `blackboards/2026-02-10-minimal-inference-pipeline-for-projected-areal-tests.md`.

## Result
The postulate is implementable with a concrete measurement stack; the critical non-negotiable is explicit frame/normal/clock declaration and source-motion subtraction.

