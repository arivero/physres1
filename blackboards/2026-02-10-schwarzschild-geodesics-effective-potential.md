# Schwarzschild Geodesics: Effective Potential and Photon Sphere (Baseline Derivation)

Date: 2026-02-10

Conventions: set \(G=c=1\) unless stated otherwise. The Schwarzschild mass parameter is \(M\) (so the horizon is at \(r=2M\)).

## 1) Metric and equatorial reduction
The Schwarzschild line element is
\[
ds^2 = -\left(1-\frac{2M}{r}\right)dt^2 + \left(1-\frac{2M}{r}\right)^{-1}dr^2 + r^2(d\theta^2+\sin^2\theta\,d\phi^2).
\]
By spherical symmetry we may restrict to the equatorial plane \(\theta=\pi/2\), \(\dot\theta=0\), so
\[
ds^2 = -\left(1-\frac{2M}{r}\right)dt^2 + \left(1-\frac{2M}{r}\right)^{-1}dr^2 + r^2 d\phi^2.
\]

Use the geodesic Lagrangian (per unit mass, for timelike) with an affine parameter \(\lambda\):
\[
\mathcal L = \frac12 g_{\mu\nu}\dot x^\mu \dot x^\nu,
\quad \dot{}=\frac{d}{d\lambda}.
\]
The normalization is
\[
g_{\mu\nu}\dot x^\mu \dot x^\nu = -\epsilon,
\qquad \epsilon=
\begin{cases}
1 & \text{timelike (choose }\lambda=\tau\text{ proper time)},\\
0 & \text{null (}\lambda\text{ affine)}.
\end{cases}
\]

## 2) Conserved energy and angular momentum
Because \(\partial_t\) and \(\partial_\phi\) are Killing fields, we have conserved quantities:
\[
E := \left(1-\frac{2M}{r}\right)\dot t,
\qquad
L := r^2 \dot\phi.
\]
(These are energy and angular momentum per unit mass in the timelike case; for null they are defined up to affine rescalings, but ratios like \(b=L/E\) are meaningful.)

Thus
\[
\dot t = \frac{E}{1-2M/r},
\qquad
\dot\phi = \frac{L}{r^2}.
\]

## 3) Radial equation as effective potential
Impose the normalization:
\[
-\left(1-\frac{2M}{r}\right)\dot t^2 + \left(1-\frac{2M}{r}\right)^{-1}\dot r^2 + r^2 \dot\phi^2 = -\epsilon.
\]
Substitute \(\dot t,\dot\phi\):
\[
-\left(1-\frac{2M}{r}\right)\left(\frac{E}{1-2M/r}\right)^2
 \left(1-\frac{2M}{r}\right)^{-1}\dot r^2
 r^2\left(\frac{L}{r^2}\right)^2
=-\epsilon.
\]
Multiply by \(1-2M/r\):
\[
-E^2 + \dot r^2 + \left(1-\frac{2M}{r}\right)\frac{L^2}{r^2} = -\epsilon\left(1-\frac{2M}{r}\right).
\]
Rearrange:
\[
\boxed{\ \dot r^2 = E^2 - \left(1-\frac{2M}{r}\right)\left(\epsilon + \frac{L^2}{r^2}\right)\ }. \tag{Rad}
\]
This is the standard “1D motion” form \(\dot r^2 + V_{\mathrm{eff}}(r)=E^2\) with
\[
V_{\mathrm{eff}}(r)=\left(1-\frac{2M}{r}\right)\left(\epsilon + \frac{L^2}{r^2}\right).
\]

## 4) Null circular orbit (photon sphere) at \(r=3M\)
For null geodesics \(\epsilon=0\),
\[
V_{\mathrm{eff}}(r)=\left(1-\frac{2M}{r}\right)\frac{L^2}{r^2}.
\]
A circular orbit satisfies \(\dot r=0\) and \(dV_{\mathrm{eff}}/dr=0\) at the orbit radius.
Since \(L^2>0\) is just an overall factor, set
\[
f(r)=\frac{1-2M/r}{r^2}=\frac{1}{r^2}-\frac{2M}{r^3}.
\]
Then
\[
f'(r)=-\frac{2}{r^3}+\frac{6M}{r^4}=\frac{-2r+6M}{r^4}.
\]
Setting \(f'(r)=0\) gives
\[
-2r+6M=0\quad\Longrightarrow\quad \boxed{\,r_{\mathrm{ph}}=3M\,}.
\]
This is the photon sphere radius in Schwarzschild.

The impact parameter \(b=L/E\) is obtained by using \(\dot r=0\) in (Rad):
\[
E^2=\left(1-\frac{2M}{r}\right)\frac{L^2}{r^2}
\quad\Longrightarrow\quad
b^2=\frac{L^2}{E^2}=\frac{r^2}{1-2M/r}.
\]
At \(r=3M\), \(b^2=27M^2\), i.e. \(b=3\sqrt3\,M\).

## 5) Timelike circular orbits (optional baseline)
For timelike geodesics \(\epsilon=1\),
\[
V_{\mathrm{eff}}(r)=\left(1-\frac{2M}{r}\right)\left(1+\frac{L^2}{r^2}\right).
\]
Circular orbits satisfy \(dV_{\mathrm{eff}}/dr=0\); stability requires \(d^2V_{\mathrm{eff}}/dr^2>0\). The standard results are:
- circular timelike orbits exist for \(r>3M\),
- stable circular orbits require \(r\ge 6M\) (ISCO at \(r=6M\)).

## 6) Restoring units
Replace \(M\) by \(GM/c^2\) in radii: \(r_{\mathrm{ph}}=3GM/c^2\), \(r_{\mathrm{ISCO}}=6GM/c^2\), and \(b=3\sqrt3\,GM/c^2\).

