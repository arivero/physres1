# Observability criterion for projected areal-rate postulates

Goal: make D1.5h operational by stating when projected areal-rate claims are empirically testable.

## 1) Observable definition
Given source-frame \((\mathbf r,\mathbf v)\) and chosen unit normal \(\mathbf n\):
\[
\dot A_{\mathbf n}(t)=\frac12\,\mathbf n\cdot(\mathbf r\times\mathbf v).
\]
Using \(\mathbf p=\gamma m\mathbf v\), \(\boldsymbol\ell=(1/m)(\mathbf r\times\mathbf p)\):
\[
\frac{dA_{\mathbf n}}{d\tau}
=
\frac12\,\mathbf n\cdot\boldsymbol\ell.
\]

## 2) Dynamics vs kinematics
Kinematic identity:
\[
\frac{dA_{\mathbf n}}{d\tau}=\frac12\,\mathbf n\cdot\boldsymbol\ell.
\]
Dynamical evolution:
\[
\frac{d}{dt}\big(\mathbf n\cdot\boldsymbol\ell\big)
=
\frac{1}{m}\,\mathbf n\cdot(\mathbf r\times\mathbf F),
\]
for 3-force \(\mathbf F=d\mathbf p/dt\).

So "constant projected areal rate" is a dynamical statement equivalent to vanishing projected torque.

## 3) Minimal observability checklist
Projected areal-rate postulate is falsifiable only after specifying:

1. **Projection:** chosen \(\mathbf n\) (orbital normal, source spin axis, detector-frame axis, etc.).
2. **Clock:** \(t\)-based or \(\tau\)-based version.
3. **Reconstruction:** how \((\mathbf r,\mathbf v)\) are inferred in a source frame from observations.

Without these three items, the statement is underdetermined and not directly testable.

## 4) Practical interpretation
- Planar central branch: natural \(\mathbf n\), reduced ambiguity.
- Perturbed/non-planar branch: projection choice is part of model specification.
- Observable deviations are naturally encoded as projected torque signals.

