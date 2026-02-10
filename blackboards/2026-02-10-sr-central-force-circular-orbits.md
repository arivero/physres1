# SR Central-Force Circular Orbits for \(F=K/r^q\) (Inverse-Square Special Case)

Date: 2026-02-10

Purpose: re-derive the SR circular-orbit constraints for a power-law central force without relying on transcript text, and isolate the inverse-square simplification \(v=K/L\) and the angular-momentum bound \(L>K/c\).

## 1) Kinematic identities (SR)
Let a particle of rest mass \(m\) move in a circle of radius \(r\) with speed \(v\) in an inertial frame. The Lorentz factor is
\[
\gamma=\frac{1}{\sqrt{1-v^2/c^2}}.
\]
The spatial momentum is \(p=\gamma m v\). For **perpendicular** acceleration (uniform circular motion), \(v\cdot a=0\) and the relativistic force law reduces to
\[
F=\frac{dp}{dt}=\gamma m a_\perp.
\]
For a circle, \(a_\perp=v^2/r\), hence
\[
\boxed{\,F=\gamma m \frac{v^2}{r}\,} \tag{SR-circ}
\]

The (magnitude of the) angular momentum about the center is
\[
L=r p = \gamma m r v,
\]
so
\[
\boxed{\,v=\frac{L}{\gamma m r}\,}. \tag{L-v}
\]
Combining this with \(\gamma=(1-v^2/c^2)^{-1/2}\) gives the useful identity
\[
\gamma^2 = 1+\frac{L^2}{m^2 c^2 r^2}. \tag{gamma-Lr}
\]

## 2) Circular-orbit condition for \(F=K/r^q\)
Assume an attractive central force magnitude
\[
F(r)=\frac{K}{r^q},\qquad K>0.
\]
Equating with (SR-circ),
\[
\frac{K}{r^q}=\gamma m\frac{v^2}{r}
\quad\Longleftrightarrow\quad
K=\gamma m v^2\, r^{q-1}.
\]
Using \(v=L/(\gamma m r)\) from (L-v),
\[
K=\gamma m\left(\frac{L^2}{\gamma^2 m^2 r^2}\right) r^{q-1}
 = \frac{L^2}{\gamma m}\,r^{q-3}.
\]
Equivalently,
\[
\boxed{\,L^2 = K\,\gamma\,m\, r^{3-q}\,}. \tag{SR-powerlaw}
\]
This is the SR deformation of the Newtonian circular-orbit relation by the factor \(\gamma\).

## 3) Inverse-square special case \(q=2\): \(v=K/L\) and \(L>K/c\)
For \(q=2\), (SR-powerlaw) becomes
\[
L^2 = K\,\gamma\,m\, r.
\]
But we can extract an even simpler relation directly:
from \(K=\gamma m v^2 r^{q-1}\), with \(q=2\),
\[
K=\gamma m v^2 r.
\]
Using \(L=\gamma m r v\), eliminate \(r\):
\[
\frac{K}{L}=\frac{\gamma m v^2 r}{\gamma m r v}=v,
\]
so
\[
\boxed{\,v=\frac{K}{L}\,}. \tag{v=K/L}
\]
Admissibility of a circular orbit requires \(v<c\), hence
\[
\boxed{\,L>\frac{K}{c}\,}. \tag{L-bound}
\]

### Radius formula and Newtonian limit
From \(r=L^2/(K\gamma m)\) and \(\gamma=(1-v^2/c^2)^{-1/2}\) with \(v=K/L\),
\[
r=\frac{L^2}{K m}\sqrt{1-\frac{K^2}{c^2 L^2}}.
\]
As \(c\to\infty\), \(\sqrt{1-K^2/(c^2L^2)}\to 1\), recovering the Newtonian relation \(r\to L^2/(K m)\).

## 4) (Optional) \(q=3\) as another special algebraic case
For \(q=3\), (SR-powerlaw) gives
\[
L^2 = K\,\gamma\,m,
\]
so existence requires \(L^2>Km\) (since \(\gamma\ge 1\)), and then \(r\) follows from \(\gamma^2=1+L^2/(m^2 c^2 r^2)\).

## 5) Next step
If this thread is promoted, add the potential/Lagrangian effective-potential framing and a stability analysis (small radial perturbations) as a second wave.

