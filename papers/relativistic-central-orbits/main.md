---
title: "Relativistic Central Orbits as Refinement-Witnesses"
author: "A. Rivero and A.I.Scaffold"
date: "2026"
abstract: |
  Central-force motion is a clean domain where “refinement” arguments can be made explicit: Newton’s polygonal limit gives exact finite-step invariants, while relativistic kinematics introduces new admissibility constraints even before general relativity is invoked. This dependent note records one such constraint in special relativity for inverse-square forces: circular orbits obey \(v=K/L\) and therefore require \(L>K/c\). The goal is not to replace standard treatments, but to keep a minimal derivation-first record of what changes when the same geometric refinement story is pushed into relativistic regimes.
---

# 1. Purpose and Relation to the Cornerstone Paper
The cornerstone manuscript uses central-force refinement as a structural bridge (equal areas / angular momentum preservation \(\leftrightarrow\) action additivity \(\leftrightarrow\) composition).

This note is outside the scope of the cornerstone paper but examines
how relativistic kinematics modifies the simplest central-force circular-orbit conditions. The inverse-square case is singled out by an exact simplification already at the SR level.

# 2. SR Circular Motion Under a Power-Law Force
Assume a particle of rest mass \(m\) executes uniform circular motion of radius \(r\) and speed \(v\). The Lorentz factor is
\[
\gamma=\frac{1}{\sqrt{1-v^2/c^2}}.
\]
For uniform circular motion the acceleration is perpendicular to the velocity, so
\[
F=\frac{dp}{dt}=\gamma m a_\perp=\gamma m \frac{v^2}{r}.
\]

Assume an attractive central force magnitude
\[
F(r)=\frac{K}{r^q},\qquad K>0.
\]
Then the circular-orbit condition is
\[
\frac{K}{r^q}=\gamma m \frac{v^2}{r}
\quad\Longleftrightarrow\quad
K=\gamma m v^2 r^{q-1}.
\]

The angular momentum magnitude is
\[
L=r p=\gamma m r v.
\]
Eliminating \(v\) gives the SR circular-orbit condition
\[
L^2 = K\,\gamma\,m\, r^{3-q}.
\]

This reduces to the Newtonian relation when \(\gamma\to 1\) (i.e. \(c\to\infty\)).

# 3. Inverse-Square (\(q=2\)) Special Case: \(v=K/L\) and the Bound \(L>K/c\)
For \(q=2\),
\[
K=\gamma m v^2 r,\qquad L=\gamma m r v.
\]
Dividing yields the exact identity
\[
\boxed{\,v=\frac{K}{L}\,}.
\]
Therefore a relativistic circular orbit requires \(v<c\), hence the angular-momentum bound
\[
\boxed{\,L>\frac{K}{c}\,}.
\]

The radius follows from \(r=L^2/(K\gamma m)\) with \(\gamma=(1-v^2/c^2)^{-1/2}\) and \(v=K/L\):
\[
r=\frac{L^2}{Km}\sqrt{1-\frac{K^2}{c^2L^2}}
\xrightarrow[c\to\infty]{}\frac{L^2}{Km}.
\]

This bound and the circular-solution branch appear in standard treatments of the relativistic Kepler problem (see e.g. [BoscagginDambrosioFeltrin2020RelKepler] for a dynamical-systems/variational analysis of the same SR equation).

`Remark 3.1 (Dimensional origin of the identity).`
The identity \(v=K/L\) is a dimensional consequence of \(q=2\) being the unique power-law exponent for which \([K]=[\text{energy}\cdot\text{length}]=[\text{angular momentum}\cdot\text{velocity}]\), so that \(K/L\) is automatically a velocity. For general \(q\), the circular-orbit condition gives \(K/L=v\cdot r^{q-2}\); eliminating the residual \(r^{q-2}\) re-introduces the mass and Lorentz factor, and no clean mass-independent identity survives.

## 3.1 Extension to all bound orbits (effective-potential argument)
The bound \(L > K/c\) is not limited to circular orbits. Consider the effective radial potential at fixed \(L\):
\[
W_L(r) = \sqrt{m^2c^4 + \frac{L^2c^2}{r^2}} - \frac{K}{r}.
\]
As \(r \to 0^+\), the leading behavior is \(W_L \approx (Lc - K)/r\). Three regimes appear:
- If \(L > K/c\): the potential rises to \(+\infty\) at the origin, creating a centrifugal barrier. Combined with \(W_L \to mc^2\) as \(r \to \infty\), this produces a well admitting bound orbits. At the unique minimum \(r_0\), the well depth is \(W_{\min} = mc^2\sqrt{1 - K^2/(c^2L^2)}\), recovering the Newtonian binding energy \(mK^2/(2L^2)\) as \(c \to \infty\).
- If \(L < K/c\): the potential plunges to \(-\infty\) — the particle falls to center. No stable bound orbit exists.
- If \(L = K/c\): marginal — no barrier and no potential well; \(W_L\) increases monotonically from \(0\) to \(mc^2\) (with \(W_L(r)\sim m^2c^4 r/(2K)\) as \(r\to 0^+\)).

Therefore **\(L > K/c\) is necessary and sufficient for the existence of bound orbits** (not just circular ones) in the SR inverse-square problem. Since \(W_L(r)\to mc^2\) as \(r\to\infty\) and \(W_L(r)\to+\infty\) as \(r\to0^+\) for \(L>K/c\), any orbit with total energy \(mc^2\sqrt{1-K^2/(c^2L^2)}\le E<mc^2\) is radially confined and hence bound. In the Newtonian limit \(c \to \infty\), this reduces to \(L > 0\), the trivially satisfied condition for elliptical Kepler orbits. Structurally, SR lowers the Newtonian critical exponent from \(q_{\mathrm{crit}} = 3\) to \(q_{\mathrm{crit}} = 2\): the inverse-square force is the unique power law where the bound is non-trivial.

`Remark 3.1a (Newtonian limit: structural cleanliness).`
The \(c\to\infty\) limit is structurally clean: all relativistic corrections vanish (Lorentz factor \(\gamma\to 1\), radius contraction \(\sqrt{1-K^2/(c^2L^2)}\to 1\)), the admissibility bound \(L>K/c\) relaxes to the trivial \(L>0\), and core geometric relations (orbit radius \(r=L^2/(Km)\), binding energy \(mK^2/(2L^2)\)) are recovered in the limit. SR refines Newtonian mechanics by adding constraints that become trivial in the non-relativistic limit while preserving the underlying geometric content — a characteristic of the refinement-witness viewpoint.

`Remark 3.1b (Why the critical exponent drops by one).`
The shift from \(q_{\mathrm{crit}}=3\) (Newtonian) to \(q_{\mathrm{crit}}=2\) (SR) has a transparent kinematic origin. In Newtonian mechanics, \(E=p^2/(2m)\) makes the centrifugal barrier scale as \(L^2/(2mr^2)\propto r^{-2}\); this overwhelms the attractive potential \(\propto r^{-(q-1)}\) iff \(q<3\). In SR, the ultrarelativistic limit \(E\approx pc\) replaces the barrier by \(Lc/r\propto r^{-1}\) — one power weaker — so the barrier wins iff \(q<2\). The critical exponent drops by exactly one because the energy-momentum relation changes from quadratic to linear in the high-momentum limit relevant as \(r\to 0\).

`Remark 3.1c (Unified threshold rule via kinetic asymptotics).`
The Newtonian/SR shift is one instance of a compact scaling rule. If the high-momentum kinetic asymptotic is \(E_{\mathrm{kin}}(p)\sim p^\nu\), then at fixed \(L\) one has \(p\sim L/r\), so the centrifugal barrier scales as \(r^{-\nu}\), while \(F\propto r^{-q}\) implies \(U\propto -r^{-(q-1)}\). The short-distance threshold is therefore
\[
q_{\mathrm{crit}}=\nu+1.
\]
Newton gives \(\nu=2\Rightarrow q_{\mathrm{crit}}=3\); ultrarelativistic SR gives \(\nu=1\Rightarrow q_{\mathrm{crit}}=2\). This asymptotic-threshold mechanism is independent of the separate algebraic fact that \(q=2\) uniquely yields the dimensional identity \(v=K/L\).

`Remark 3.1d (Refinement-compatibility derivation of the angular-momentum bound).`
Newton's polygonal orbit construction approximates continuous SR motion by \(N\) central impulses, each directed toward the force center. At each polygon vertex, the SR bound \(v < c\) applies; across each impulse, the angular momentum \(L = \gamma m r v\) is preserved (since the central impulse \(\Delta\mathbf{p} \parallel \hat{r}\) has zero moment about the center, so \(\mathbf{r}\times\mathbf{p}\) is unchanged). The refinement limit \(N \to \infty\), \(\Delta t \to 0\) produces a genuine bound orbit if and only if \(v < c\) at every vertex. For \(q=2\), the circular orbit gives \(v=K/L\); requiring \(v<c\) in the limit recovers \(L>K/c\) (for circular orbits; the full bound for all bound orbits follows from the effective-potential argument of Section 3.1). The admissibility bound is thus the *refinement-compatibility condition* for SR inverse-square circular dynamics. This makes precise the paper's title: the SR orbit is a structural witness that relativistic refinement adds admissibility constraints absent from the Newtonian framework.

`Remark 3.2 (SR precession: the orbit is a precessing ellipse).`
For general (non-circular) bound orbits under \(F=K/r^2\), the standard Binet substitution \(u=1/r\) applied to the SR equations of motion yields the orbit equation. (From \(H=\sqrt{m^2c^4+p_r^2c^2+L^2c^2u^2}-K u\) and the substitution \(p_r=Lu'(\phi)\), squaring \((E+Ku)=\sqrt{m^2c^4+L^2c^2(u'^2+u^2)}\) and differentiating with respect to \(\phi\) gives \((E+Ku)K=L^2c^2(u''+u)\); evaluating \(E+Ku_0\) at the circular orbit then yields the stated form; see also [LandauLifshitz1975] §14.) The result is
\[
\frac{d^2u}{d\phi^2}+\omega^2 u = \frac{mK}{L^2}\,\omega^2,
\qquad
\omega^2 := 1 - \frac{K^2}{c^2L^2}.
\]
The condition \(\omega^2>0\) is precisely the bound \(L>K/c\) of Section 3. Since \(v_{\mathrm{circ}}=K/L\), the precession frequency satisfies \(\omega=1/\gamma_{\mathrm{circ}}\) (where \(\gamma_{\mathrm{circ}}\) is the Lorentz factor at the circular orbit speed). The general solution is a precessing conic, \(u=mK/L^2+A\cos(\omega\phi+\phi_0)\), and the apsidal advance per orbit is
\[
\Delta\phi_{\mathrm{prec}} = \frac{2\pi}{\omega}-2\pi
\approx \frac{\pi K^2}{c^2L^2}
\quad(v\ll c).
\]
In the Newtonian limit \(v\ll c\), \(\omega\to 1\) and \(\Delta\phi_{\mathrm{prec}}\to 0\), consistent with the closed Keplerian orbit.
For gravity (\(K=GMm\)), writing \(L^2=GMm^2 a(1-e^2)\) from the semi-latus rectum of the precessing conic gives \(\Delta\phi_{\mathrm{SR}}=\pi GM/(c^2 a(1-e^2))\). Comparing with the Schwarzschild result \(\Delta\phi_{\mathrm{GR}}=6\pi GM/(c^2 a(1-e^2))\) (Section 4.3), the SR precession is exactly \(1/6\) of the GR precession. In the post-Newtonian expansion this \(1/6\) is the 1PN kinematic contribution (from velocity-dependent inertia); the remaining \(5/6\) arises from the \(-2ML^2/r^3\) term in the Schwarzschild effective potential, which encodes spacetime curvature absent from the flat-spacetime SR model (see [Will1993], §9 for the post-Newtonian decomposition).

`Remark 3.2a (SR and Bertrand's theorem).`
Bertrand's theorem [Bertrand1873ClosedOrbits] states that in Newtonian mechanics, only the inverse-square (\(q=2\)) and Hooke (\(F\propto r\)) forces produce closed orbits for all bound initial conditions. SR eliminates the closure property for \(q=2\): since \(\omega=\sqrt{1-K^2/(c^2L^2)}\) depends continuously on \(L\), it is generically irrational, and the orbit is a precessing ellipse that never closes. The passage from Newtonian to relativistic mechanics thus reduces the class of all-conditions-closed inverse-square orbits from an open family to a measure-zero subset.

`Remark 3.2b (Connection to Sommerfeld fine structure).`
For the Coulomb force \(K=Ze^2/(4\pi\epsilon_0)\), the precession parameter \(\omega^2=1-K^2/(c^2L^2)\) is precisely the quantity Sommerfeld [Sommerfeld1916FineStructure] used to derive the relativistic hydrogen fine structure. Applying Bohr–Sommerfeld quantization \(L=k\hbar\) yields \(\omega=\sqrt{1-Z^2\alpha^2/k^2}\), where \(\alpha\) is the fine structure constant, and the resulting energy levels \(E_{n_r,k}=mc^2\bigl(1+\alpha^2Z^2/(n_r+k\omega)^2\bigr)^{-1/2}\) reproduce the exact Dirac spectrum (with \(k\to j+\tfrac{1}{2}\)). The classical orbit equation of this section is thus the backbone of one of the earliest quantum-relativistic results. (This agreement is an accidental degeneracy of the Coulomb potential: the Sommerfeld formula reproduces the Dirac spectrum exactly for the \(1/r\) potential only, due to the simultaneous classical Runge–Lenz symmetry and quantum \(2j+1\) degeneracy. For other power laws, the old quantum theory fails to capture relativistic fine structure, and the full Dirac equation is required.)

# 4. GR Baseline: Schwarzschild Geodesics, Effective Potential, Photon Sphere
This section records the standard Schwarzschild baseline in a form parallel to the SR “effective 1D radial motion” viewpoint.

Conventions: set \(G=c=1\). Here \(L\) denotes specific angular momentum (angular momentum per unit mass); this equals \(L/m\) in the notation of Sections 2–3. Then the Schwarzschild metric is
\[
ds^2 = -\left(1-\frac{2M}{r}\right)dt^2 + \left(1-\frac{2M}{r}\right)^{-1}dr^2 + r^2(d\theta^2+\sin^2\theta\,d\phi^2),
\]
with horizon at \(r=2M\).
Restrict to the equatorial plane \(\theta=\pi/2\).

Using an affine parameter \(\lambda\), define \(\epsilon=1\) (timelike, \(\lambda=\tau\)) and \(\epsilon=0\) (null). Energy and angular momentum from the Killing fields \(\partial_t,\partial_\phi\) are
\[
E=\left(1-\frac{2M}{r}\right)\dot t,\qquad L=r^2\dot\phi,
\]
so \(\dot t=E/(1-2M/r)\), \(\dot\phi=L/r^2\).

The normalization condition \(g_{\mu\nu}\dot x^\mu\dot x^\nu=-\epsilon\) yields the radial equation
\[
\dot r^2 = E^2 - \left(1-\frac{2M}{r}\right)\left(\epsilon+\frac{L^2}{r^2}\right),
\]
i.e. \(\dot r^2 + V_{\mathrm{eff}}(r)=E^2\) with
\[
V_{\mathrm{eff}}(r)=\left(1-\frac{2M}{r}\right)\left(\epsilon+\frac{L^2}{r^2}\right).
\]

## 4.1 Null circular orbit (photon sphere)
For null geodesics \(\epsilon=0\),
\[
V_{\mathrm{eff}}(r)=\left(1-\frac{2M}{r}\right)\frac{L^2}{r^2}.
\]
Circular null orbits satisfy \(\dot r=0\) and \(dV_{\mathrm{eff}}/dr=0\), which gives the photon-sphere radius
\[
\boxed{\,r_{\mathrm{ph}}=3M\,}.
\]
The impact parameter \(b=L/E\) obeys \(b^2=r^2/(1-2M/r)\), so at \(r=3M\) one has \(b=3\sqrt3\,M\).

Baseline anchor for these standard results: [Carroll1997LectureGR].

## 4.2 Restoring units
Replace \(M\) by \(GM/c^2\): \(r_{\mathrm{ph}}=3GM/c^2\), \(r_h=2GM/c^2\), and \(b=3\sqrt3\,GM/c^2\).

## 4.3 Timelike circular orbits and ISCO
For timelike geodesics \(\epsilon=1\),
\[
V_{\mathrm{eff}}(r)=\left(1-\frac{2M}{r}\right)\left(1+\frac{L^2}{r^2}\right).
\]
Circular orbits satisfy \(\dot r=0\) and \(dV_{\mathrm{eff}}/dr=0\). Writing
\[
V_{\mathrm{eff}}(r)=1-\frac{2M}{r}+\frac{L^2}{r^2}-\frac{2ML^2}{r^3},
\]
one finds
\[
\frac{dV_{\mathrm{eff}}}{dr}=\frac{2M}{r^2}-\frac{2L^2}{r^3}+\frac{6ML^2}{r^4}.
\]
Thus the circular branch obeys
\[
Mr^2=L^2(r-3M)
\quad\Rightarrow\quad
\boxed{\,L^2(r)=\frac{Mr^2}{r-3M}\,},\qquad r>3M,
\]
and using \(E^2=V_{\mathrm{eff}}(r)\) on the circular orbit gives
\[
\boxed{\,E^2(r)=\frac{(r-2M)^2}{r(r-3M)}\,}.
\]

Stability requires \(V_{\mathrm{eff}}''(r)>0\) at the circular orbit. Differentiating once more,
\[
V_{\mathrm{eff}}''(r)=-\frac{4M}{r^3}+\frac{6L^2}{r^4}-\frac{24ML^2}{r^5},
\]
and substituting the circular-orbit value \(L^2=Mr^2/(r-3M)\) yields
\[
V_{\mathrm{eff}}''(r)=\frac{2M(r-6M)}{r^3(r-3M)}.
\]
So circular timelike orbits are stable iff \(r>6M\), and the innermost stable circular orbit is
\[
\boxed{\,r_{\mathrm{ISCO}}=6M\,}.
\]
At the ISCO,
\[
L=2\sqrt3\,M,\qquad E=\frac{2\sqrt2}{3}.
\]

`Remark 4.3a (SR vs GR stability).`
In the flat-spacetime SR model of Section 5, inverse-square circular orbits are stable at *all* radii — no ISCO exists. The entire stability boundary at \(r=6M\) is a consequence of the \(-2ML^2/r^3\) curvature term in the Schwarzschild effective potential, the same term responsible for the \(5/6\) curvature fraction of the precession identified in Remark 3.2. The transition from "stable everywhere" (SR) to "stable only for \(r>6M\)" (GR) is thus a pure curvature effect, sharply separating kinematic from geometric contributions to orbit admissibility.

`Remark 4.3b (ISCO as a curvature-induced angular-momentum floor).`
At the ISCO \(r=6M\), the formula \(L^2=Mr^2/(r-3M)\) gives \(L_{\mathrm{ISCO}}^2=12M^2\), i.e.\ \(L_{\mathrm{ISCO}}=2\sqrt{3}\,M\). In the SR model (Section 3.1), any \(L>K/c\) admits a stable bound orbit — there is no minimum angular momentum for stability. The Schwarzschild geometry introduces a finite floor: for \(L<2\sqrt{3}\,M\) no stable circular orbit exists, regardless of radius. This floor is again a consequence of the \(-2ML^2/r^3\) term, which steepens the effective potential well until the local minimum disappears.

`Remark 4.3c (Hierarchy of circular-orbit radii).`
The Schwarzschild geometry produces a clean radius hierarchy: the photon sphere at \(r=3M\) (Section 4.1), unstable timelike circular orbits for \(3M<r<6M\), and stable orbits for \(r>6M\) (ISCO). The ratio \(r_{\mathrm{ISCO}}/r_{\mathrm{ph}}=2\) is exact and independent of angular momentum. In the SR model (Section 3.1), by contrast, stable circular orbits exist at all radii (given sufficient \(L\)), with no unstable band and no photon sphere. The entire unstable-orbit band \(3M<r<6M\) is a pure curvature effect, consistent with the curvature attribution of Remarks 4.3a–b.

`Remark 4.3d (ISCO binding energy and accretion efficiency).`
A particle spiraling quasi-statically from \(r\to\infty\) to the ISCO radiates a fraction \(\eta=1-E_{\mathrm{ISCO}}\) of its rest mass energy. With \(E_{\mathrm{ISCO}}=2\sqrt{2}/3\) (i.e.\ \(E^2=8/9\)) this gives \(\eta=1-2\sqrt{2}/3\approx5.72\%\), the maximum radiative efficiency of thin-disk accretion onto a Schwarzschild black hole. The SR model of Section 3.1 has no ISCO, hence no finite efficiency bound — the \(5.72\%\) ceiling is a curvature consequence, like the ISCO itself.

`Remark 4.3e (Exact apsidal advance and its ISCO divergence).`
For stable circular orbits at radius \(r_0>6M\), the ratio of orbital to radial oscillation frequency is \(\omega_\phi/\omega_r=\sqrt{r_0/(r_0-6M)}\), giving an exact apsidal advance \(\Delta\phi=2\pi\bigl(\sqrt{r_0/(r_0-6M)}-1\bigr)\). For \(r_0\gg 6M\) this reduces to \(\Delta\phi\approx 6\pi M/r_0\), the standard weak-field result that yields Mercury's \(43''\) per century; as \(r_0\to 6M^+\), it diverges because the radial oscillation frequency \(\omega_r\propto\sqrt{V_{\mathrm{eff}}''}\to 0\) at the ISCO. The ISCO is thus simultaneously a stability threshold (Remarks 4.3a–b), an efficiency ceiling (Remark 4.3d), and a precession barrier.

`Remark 4.3f (Kepler's third law survives in coordinate time).`
The coordinate orbital frequency for Schwarzschild circular orbits is \(\omega_\phi=d\phi/dt=(L/r_0^2)\cdot(1-2M/r_0)/E\). Substituting \(L^2=Mr_0^2/(r_0-3M)\) and \(E^2=(r_0-2M)^2/(r_0(r_0-3M))\) gives \(\omega_\phi^2=M/r_0^3\) — identically the Newtonian Kepler law, exact at all radii \(r_0>3M\). However, the proper orbital period \(T_\tau=T_t\sqrt{1-3M/r_0}\) includes a gravitational time-dilation factor; at the ISCO \(T_\tau/T_t=1/\sqrt{2}\approx 0.707\). The coordinate Kepler law \(\omega_\phi^2=M/r_0^3\) is a consequence of the Killing-field conserved quantities in Schwarzschild coordinates, not a gauge artifact; it holds in any coordinate system that respects the same Killing structure. The proper-time period encodes the curvature effects that also produce the ISCO and the precession of Remarks 4.3a–e.

`Remark 4.3g (Quantifying the SR→GR angular-momentum floor).`
The SR existence threshold for bound inverse-square orbits is \(\ell>GM/c\) (Section 3.1, with \(K=GMm\) and specific angular momentum \(\ell=L/m\)), while the GR stability floor is \(\ell_{\mathrm{ISCO}}=2\sqrt{3}\,GM/c\) (Remark 4.3b). The ratio \(\ell_{\mathrm{ISCO}}/\ell_{\mathrm{SR}}=2\sqrt{3}\approx 3.46\) is a pure number quantifying the curvature-induced tightening of the angular-momentum constraint, paralleling the \(1/6\) precession ratio of Remark 3.2.

# 5. SR Stability of Circular Orbits (Small Radial Perturbations)
This section stays within mechanical SR (a point particle in an external, time-independent central scalar potential \(U(r)\)). It is used as a kinematic witness: some restrictions already appear before GR or field-theoretic interactions enter.

Fix the (conserved) angular momentum magnitude \(L\). For purely tangential motion (\(p_r=0\)), define the fixed-\(L\) energy function
\[
W_L(r)=\sqrt{m^2c^4+\frac{L^2c^2}{r^2}}+U(r).
\]
Assume the attractive power-law force with magnitude \(F(r)=K/r^q\) (\(K>0\)), directed inward. The radial component is \(F_r=-K/r^q\), so \(F=-dU/dr\) gives \(U'(r)=K/r^q>0\) (i.e.\ \(U(r)=-K/((q-1)r^{q-1})\to 0^-\) as \(r\to\infty\) for \(q>1\)).

## 5.1 Circularity and the effective-potential viewpoint
Circular orbits satisfy \(W_L'(r_0)=0\), i.e.
\[
\frac{K}{r_0^q}=\frac{L^2c^2}{r_0^3\sqrt{m^2c^4+L^2c^2/r_0^2}}
\quad\Longleftrightarrow\quad
L^2=K\,\gamma\,m\,r_0^{3-q},
\]
since \(\sqrt{m^2c^4+L^2c^2/r_0^2}=\gamma mc^2\). This recovers the SR circular-orbit condition used earlier.

## 5.2 Stability inequality
At fixed \(L\), stability under small radial perturbations is the local-minimum condition
\[
W_L''(r_0)>0.
\]
Writing the Lorentz factor at the orbit as
\[
\gamma^2 = 1+\frac{L^2}{m^2c^2r_0^2},
\]
one finds the compact expression
\[
\boxed{\;
W_L''(r_0)=\frac{L^2}{m r_0^4\,\gamma^3}\Bigl(1+(2-q)\gamma^2\Bigr),
\;}
\]
hence the stability criterion
\[
\boxed{\;1+(2-q)\gamma^2>0.\;}
\]

In the Newtonian limit \(\gamma\to 1\) this reduces to the standard condition \(q<3\).
For \(2<q<3\) SR adds a speed bound:
\[
\gamma^2<\frac{1}{q-2}
\quad\Longleftrightarrow\quad
\frac{v^2}{c^2}<3-q.
\]
In particular, inverse-square forces (\(q=2\)) are stable for all \(\gamma\) in this model, while \(q\ge 3\) yields no stable circular orbits (beyond the Newtonian marginal case at \(q=3\)).

`Remark 5.2a (The inverse-square law as a stability boundary).`
The stability criterion \(1+(2-q)\gamma^2>0\) partitions the power laws into three regimes. For \(q<2\), the coefficient \(2-q\) is positive, so the criterion holds for all \(\gamma\): every circular orbit is stable regardless of speed. For \(q=2\), the criterion reduces to \(1>0\): still unconditionally stable. For \(2<q<3\), the criterion imposes a speed bound \(v/c<\sqrt{3-q}\), which tightens to zero as \(q\to3^-\). Thus \(q=2\) is the unique boundary between unconditional and speed-conditional stability — the inverse-square law is the last power law for which SR permits stable orbits at arbitrarily high speeds.

`Example 5.2b (Stability thresholds for specific power laws).`
For concreteness, enumerate representative cases from the criterion \(1+(2-q)\gamma^2>0\):
- \(q=1\) (inverse-linear): \(1+\gamma^2>0\) — unconditionally stable at all speeds.
- \(q=2\) (inverse-square / Kepler): \(1>0\) — unconditionally stable; the boundary case.
- \(q=5/2\): stable iff \(\gamma^2<2\), i.e.\ \(v/c<1/\sqrt{2}\approx 0.707\).
- \(q=3\) (inverse-cube): \(1-\gamma^2\le 0\) for all \(\gamma\ge 1\) — no stable circular orbit.
As \(q\to 3^-\), the SR speed ceiling \(v_{\max}=c\sqrt{3-q}\to 0\), so the Newtonian threshold \(q<3\) is recovered as the non-relativistic shadow of a speed-dependent bound.

`Remark 5.2c (Stability–precession duality at q=2).`
For \(q=2\), the stability factor \(1+(2-q)\gamma^2\) reduces to \(1\), while Remark 3.2's precession frequency satisfies \(\omega^2=1/\gamma^2\). These are related: the stability factor equals \(\gamma^2\omega^2\). Thus unconditional stability at \(q=2\) is equivalent to the precession frequency being real and nonzero for all speeds — orbital shape (precession) and radial response (stability) are unified by the dimensionless invariant \(\gamma^2\omega^2=1\).

`Remark 5.2d (SR epicyclic frequency ratio).`
The radial oscillation frequency around \(r_0\) is \(\omega_r^2 = W_L''(r_0)/(m\gamma)\), where the factor \(\gamma\) in the denominator reflects the SR effective radial mass \(M_{\mathrm{eff}}=E_0/c^2=\gamma m\) (from \(\partial^2 H/\partial p_r^2\big|_{p_r=0}=c^2/E_0=1/(\gamma m)\); the longitudinal mass \(\gamma^3 m\) appears in Newtonian-force equations but not in the Hamiltonian formulation). The orbital frequency is \(\omega_\phi = L/(\gamma m r_0^2)\). Substituting \(W_L''(r_0)\) from Section 5.1 and using \(1/\gamma^2 = 1-v^2/c^2\):
\[
\frac{\omega_r^2}{\omega_\phi^2}
= \frac{W_L''(r_0)}{m\gamma}\cdot\frac{\gamma^2 m^2 r_0^4}{L^2}
= \frac{1+(2-q)\gamma^2}{\gamma^2}
= \frac{1}{\gamma^2}+(2-q)
= 3-q-\frac{v^2}{c^2}.
\]
The Newtonian epicyclic ratio \(3-q\) is reduced by exactly \(\beta^2\), independently of \(q\). Positivity recovers the stability criterion of Section 5.2; for \(q=2\), the ratio reduces to \(1/\gamma^2=\omega^2\) (Remark 3.2), so the orbit-equation precession parameter \(\omega\) is the radial-to-orbital frequency ratio — making the duality of Remark 5.2c a special case.

# 6. Outlook
Three natural extensions are:
1. replace the "external potential" modeling assumption by an explicitly field-mediated interaction model, and compare which orbit admissibility/stability bounds survive that change;
2. connect the SR/GR orbit constraints more explicitly to the refinement-compatibility spine (what is preserved under refinement, and what new kinematic admissibility conditions appear when the refinement rules are Lorentz/GR-consistent);
3. apply semiclassical quantization (Remark 3.2b) to ask which of the admissibility, stability, and critical-exponent bounds derived here survive or sharpen in the transition from classical orbits to discrete energy levels.

# References

1. [BoscagginDambrosioFeltrin2020RelKepler] Alberto Boscaggin, Walter Dambrosio, and Guglielmo Feltrin, "Periodic solutions to a perturbed relativistic Kepler problem," arXiv:`2003.03110` (v1, 6 Mar 2020). (Contains the unperturbed SR relativistic Kepler equation and discusses circular solutions/constraints.)
2. [Carroll1997LectureGR] Sean M. Carroll, "Lecture Notes on General Relativity," arXiv:`gr-qc/9712019` (v1, 3 Dec 1997). (Includes black holes/geodesic applications used as baseline GR anchors.)
3. [Sommerfeld1916FineStructure] Arnold Sommerfeld, "Zur Quantentheorie der Spektrallinien," Ann. Phys. (Leipzig) 51 (1916) 1–94, 125–167. (Original derivation of the relativistic hydrogen fine structure from the precessing-ellipse orbit equation.)
4. [Bertrand1873ClosedOrbits] Joseph Bertrand, "Théorème relatif au mouvement d'un point attiré vers un centre fixe," C. R. Acad. Sci. Paris 77 (1873) 849–853. (Proof that only inverse-square and Hooke forces yield closed Newtonian orbits.)
5. [LandauLifshitz1975] L. D. Landau and E. M. Lifshitz, *The Classical Theory of Fields*, 4th ed., Pergamon, 1975. (§14: relativistic motion in a Coulomb field; orbit equation and Binet form.)
6. [Will1993] C. M. Will, *Theory and Experiment in Gravitational Physics*, rev. ed., Cambridge UP, 1993. (§9: post-Newtonian decomposition of Schwarzschild precession into kinematic (1/6) and curvature (5/6) contributions.)
