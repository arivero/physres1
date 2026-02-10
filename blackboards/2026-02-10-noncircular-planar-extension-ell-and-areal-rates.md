# Non-circular planar extension: \(\ell\), \(dA/dt\), \(dA/d\tau\)

Goal: test whether the S31 minimal-structure rule (fix \(\ell\), derived clock rates) is circular-only or kinematic for general planar trajectories.

## Setup
Planar trajectory in source frame with polar coordinates \((r,\phi)\):
\[
\mathbf v=\dot r\,\hat{\mathbf r}+r\dot\phi\,\hat{\boldsymbol\phi},
\qquad
v_\perp=r\dot\phi.
\]
Relativistic 3-momentum \(\mathbf p=\gamma m\mathbf v\), \(\gamma=(1-v^2/c^2)^{-1/2}\).

Specific angular momentum scalar:
\[
\ell:=\frac1m|\mathbf r\times\mathbf p|
=\frac1m|\mathbf r\times(\gamma m\mathbf v)|
=\gamma r v_\perp
=\gamma r^2\dot\phi.
\]

## Areal rates
Coordinate-time areal rate:
\[
\frac{dA}{dt}=\frac12 r^2\dot\phi=\frac{r v_\perp}{2}
=\frac{\ell}{2\gamma}.
\]
Proper-time areal rate (same frame slicing):
\[
\frac{dA}{d\tau}=\gamma\frac{dA}{dt}=\frac{\ell}{2}.
\]

## Conclusion
For general planar motion (circular or not), fixing \(\ell\) is equivalent to fixing proper-time areal rate; coordinate-time areal rate differs by \(1/\gamma\). This is a force-independent kinematic identity and supports carrying the S31 rule beyond circular orbits in the current branch.

