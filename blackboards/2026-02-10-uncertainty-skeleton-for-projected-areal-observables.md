# Uncertainty skeleton for projected areal observables

Goal: add a minimal, reusable uncertainty scaffold for D1.5i/D1.5j observables.

## 1) Primary observable
\[
q:=\dot A_{\mathbf n}=\frac12\,\mathbf n\cdot(\mathbf r\times\mathbf v).
\]
First-order differential:
\[
\delta q=\frac12\,\mathbf n\cdot(\delta\mathbf r\times\mathbf v+\mathbf r\times\delta\mathbf v).
\]
If \(x=[\mathbf r,\mathbf v,\ldots]\) with covariance \(\Sigma_x\):
\[
\sigma_q^2\approx J_q\,\Sigma_x\,J_q^\top,\qquad
J_q=\frac{\partial q}{\partial x}.
\]

Useful block form:
\[
\frac{\partial q}{\partial \mathbf r}
=\frac12(\mathbf v\times\mathbf n),\qquad
\frac{\partial q}{\partial \mathbf v}
=\frac12(\mathbf n\times\mathbf r).
\]

## 2) Residual channel
\[
\mathcal T_{\mathbf n}:=
\frac{d}{dt}(\mathbf n\cdot\boldsymbol\ell)-\frac1m\,\mathbf n\cdot(\mathbf r\times\mathbf F).
\]
For augmented state \(z=[\mathbf r,\mathbf v,\mathbf F,\dot{\boldsymbol\ell},\ldots]\), covariance \(\Sigma_z\):
\[
\sigma_{\mathcal T}^2\approx J_{\mathcal T}\,\Sigma_z\,J_{\mathcal T}^\top,\qquad
J_{\mathcal T}=\frac{\partial \mathcal T_{\mathbf n}}{\partial z}.
\]

## 3) Practical cautions
1. \(\dot{\boldsymbol\ell}\) estimation is often the dominant noise source (smoothing choice must be reported).
2. Cross-covariances matter: \(\mathbf r,\mathbf v,\mathbf F\) are typically correlated.
3. Jacobian approximation is baseline; nonlinear checks (e.g. Monte Carlo) are upgrade path.

## 4) Minimal reporting add-on
When quoting \(\dot A_{\mathbf n}\) or \(\mathcal T_{\mathbf n}\), include:
- estimator choice for derivatives,
- covariance model \(\Sigma\),
- sensitivity/Jacobian summary.

