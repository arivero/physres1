# Schwarzschild Timelike Circular Orbits and the ISCO

Date: 2026-02-10  
Cycle: `S44`

## Goal
Derive the timelike circular-orbit conditions and the stability threshold (ISCO at \(r=6M\)) in the same effective-potential style already used in `papers/relativistic-central-orbits/main.md`.

Conventions: \(G=c=1\).

## Setup
For equatorial motion (\(\theta=\pi/2\)) the radial equation is
\[
\dot r^2 = E^2 - V_{\mathrm{eff}}(r),
\qquad
V_{\mathrm{eff}}(r)=\left(1-\frac{2M}{r}\right)\left(1+\frac{L^2}{r^2}\right),
\]
with \(\epsilon=1\) (timelike) already absorbed into the displayed \(V_{\rm eff}\).

## Circular-orbit conditions
Circular orbit at radius \(r=r_0\) requires:
1. \(\dot r=0\), i.e. \(E^2=V_{\mathrm{eff}}(r_0)\),
2. \(V'_{\mathrm{eff}}(r_0)=0\).

Compute
\[
V_{\mathrm{eff}}(r)=1-\frac{2M}{r}+\frac{L^2}{r^2}-\frac{2ML^2}{r^3},
\]
so
\[
V'_{\mathrm{eff}}(r)=\frac{2M}{r^2}-\frac{2L^2}{r^3}+\frac{6ML^2}{r^4}.
\]
Setting \(V'_{\mathrm{eff}}(r_0)=0\) gives
\[
Mr_0^2=L^2(r_0-3M)
\quad\Rightarrow\quad
\boxed{\,L^2=\frac{Mr_0^2}{r_0-3M}\,}
\qquad (r_0>3M).
\]
Then
\[
E^2=V_{\mathrm{eff}}(r_0)
=\left(1-\frac{2M}{r_0}\right)\left(1+\frac{L^2}{r_0^2}\right)
=\left(1-\frac{2M}{r_0}\right)\left(1+\frac{M}{r_0-3M}\right),
\]
so
\[
\boxed{\,E^2=\frac{(r_0-2M)^2}{r_0(r_0-3M)}\,}.
\]

## Stability and the ISCO
Stability requires \(V_{\mathrm{eff}}''(r_0)>0\) at the circular orbit.
Compute
\[
V_{\mathrm{eff}}''(r)=-\frac{4M}{r^3}+\frac{6L^2}{r^4}-\frac{24ML^2}{r^5}.
\]
Substitute the circular-orbit value \(L^2=Mr_0^2/(r_0-3M)\):
\[
V_{\mathrm{eff}}''(r_0)=\frac{2M(r_0-6M)}{r_0^3(r_0-3M)}.
\]
For \(r_0>3M\), this is positive iff \(r_0>6M\). Therefore:
\[
\boxed{\,r_{\mathrm{ISCO}}=6M\,}.
\]

## Numerical invariants at the ISCO
At \(r_0=6M\):
\[
L^2=12M^2\quad\Rightarrow\quad L=2\sqrt3\,M,
\qquad
E^2=\frac{8}{9}\quad\Rightarrow\quad E=\frac{2\sqrt2}{3}.
\]

## Promotion Candidate
Add a new subsection (e.g. `4.3 Timelike circular orbits and ISCO`) in `papers/relativistic-central-orbits/main.md` with:
- the circular-orbit formulas for \(L^2(r)\), \(E^2(r)\),
- the stability condition \(r>6M\) and ISCO statement,
- optionally the \((E,L)\) values at \(r=6M\).
