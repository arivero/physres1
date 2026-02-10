# Minimal inference pipeline for projected areal-rate tests

Goal: convert observable channels into source-frame \((\mathbf r,\mathbf v)\) needed for D1.5i tests.

## Scenario
Perturbed orbital target observed with:
1. astrometric direction \(\hat{\mathbf n}(t)\),
2. range proxy \(\rho(t)\) (direct ranging or tightly constrained distance fit),
3. line-of-sight velocity \(v_{\rm los}(t)=\dot\rho(t)\).

## Step 1: reconstruct object state in observer frame
\[
\mathbf r_{\rm obj}(t)=\rho(t)\,\hat{\mathbf n}(t),
\]
\[
\mathbf v_{\rm obj}(t)=\dot\rho(t)\,\hat{\mathbf n}(t)+\rho(t)\,\dot{\hat{\mathbf n}}(t).
\]

## Step 2: transform to source-relative frame
Given source ephemeris \((\mathbf r_{\rm src},\mathbf v_{\rm src})\):
\[
\mathbf r(t)=\mathbf r_{\rm obj}(t)-\mathbf r_{\rm src}(t),
\]
\[
\mathbf v(t)=\mathbf v_{\rm obj}(t)-\mathbf v_{\rm src}(t).
\]

## Step 3: compute projected areal observables
Choose model normal \(\mathbf n\) and clock convention.
\[
\dot A_{\mathbf n}(t)=\frac12\,\mathbf n\cdot(\mathbf r\times\mathbf v).
\]
\[
\boldsymbol\ell=\frac1m(\mathbf r\times\mathbf p),\quad \mathbf p=\gamma m\mathbf v,\quad
\frac{dA_{\mathbf n}}{d\tau}=\frac12\,\mathbf n\cdot\boldsymbol\ell.
\]

## Step 4: dynamic consistency channel
If force model \(\mathbf F(t)\) is specified:
\[
\mathcal T_{\mathbf n}(t):=
\frac{d}{dt}\big(\mathbf n\cdot\boldsymbol\ell\big)
-\frac1m\,\mathbf n\cdot(\mathbf r\times\mathbf F).
\]
Interpretation:
- \(\mathcal T_{\mathbf n}=0\): projected-torque consistency.
- Nonzero residual: model misspecification or postulate violation (within error bars).

## Step 5: minimum reporting bundle
For falsifiability-grade claim, report:
1. choice of \(\mathbf n\),
2. clock (\(t\) or \(\tau\)),
3. frame transformation details,
4. smoothing/differentiation method for \(\dot{\hat{\mathbf n}}\),
5. uncertainty propagation into \(\dot A_{\mathbf n}\), \(\mathbf n\cdot\boldsymbol\ell\), \(\mathcal T_{\mathbf n}\).

Without this bundle, projected areal-rate claims are underdetermined.

