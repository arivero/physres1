# Planck Area from Half-Density Normalization (Draft)

## Abstract
Half-densities are the natural “coordinate-free integrands” for composing kernels without choosing a background measure. But choosing a *universal* convention for turning half-density objects into dimensionless numerical amplitudes introduces a \(\text{length}^{d/2}\) scale. In \(d=4\), this is an *area*. This note sharpens the hypothesis ladder needed for the claim “half-density normalization selects a universal area scale”, and isolates a simple dimension-matching condition under which the Planck area appears without fractional powers of couplings. A gravitational anchor based on a minimal-areal-speed principle is recorded as a separate heuristic thread [RiveroAreal] [RiveroSimple].

## 1. Purpose and Status
This is a dependent follow-up to `paper/main.md`. It is not yet a finished paper; its goal is to isolate one technical point that is only implicit in the main manuscript:
the role of half-densities (and their scaling) in making composition laws coordinate-invariant *and* dimensionally well-defined.

Claims below are labeled as `Proposition` (math-precise under hypotheses) or `Heuristic` (programmatic bridge).

## 2. Half-Densities and Composition Kernels
Let \(M\) be a \(d\)-dimensional manifold. A (positive) density is a section of \(|\Lambda^d T^\ast M|\), and a half-density is a section of \(|\Lambda^d T^\ast M|^{1/2}\).

The key operational point is:
when a kernel is a half-density in its integration variable, composition of kernels does not depend on an arbitrary choice of coordinate measure.

`Heuristic H1.1 (Why half-densities).`
If \(K_1(x,y)\) and \(K_2(y,z)\) are chosen so that their product in the intermediate variable \(y\) is a density, then
\(\int_M K_1(x,y)K_2(y,z)\) is coordinate-invariant without fixing a preferred \(dy\).
This matches the structural role of kernel composition used in `paper/main.md` (Section 6).

`Derivation D1.1 (Coordinate invariance of half-density pairing and composition).`
In a local chart \(y=(y^1,\ldots,y^d)\), write a half-density as \(\psi(y)=\varphi(y)\,|dy|^{1/2}\).
Under a change of variables \(y=y(y')\), one has \(|dy|^{1/2}=|\det(\partial y/\partial y')|^{1/2}|dy'|^{1/2}\), so the coefficient transforms as
\(\varphi'(y')=\varphi(y(y'))\,|\det(\partial y/\partial y')|^{1/2}\).

Hence the product of two half-densities is a density:
\(\psi_1\psi_2=(\varphi_1\varphi_2)\,|dy|\),
and its integral is chart-independent:
\(\int_M \psi_1\psi_2\) is well-defined without choosing a background measure beyond the density bundle itself.

Kernel composition is the same mechanism: if \(K_1(x,y)\) and \(K_2(y,z)\) are half-densities in \(y\), then \(K_1K_2\) is a density in \(y\) and \(\int_M K_1K_2\) is coordinate invariant.

## 3. Dimensional Analysis: Normalizing a Half-Density Requires a Scale
A density on \(M\) carries the units of \(\text{length}^d\) once physical units are assigned to coordinates. A half-density therefore carries units \(\text{length}^{d/2}\).

`Proposition P1.1 (No canonical “half-density = function” identification).`
There is no canonical identification of a half-density \(\psi\in|\Lambda^d T^\ast M|^{1/2}\) with an ordinary scalar function \(f\) on \(M\). Choosing such an identification is equivalent to choosing a nowhere-vanishing reference half-density \(\sigma_\ast\) (equivalently a positive density \(\rho_\ast=\sigma_\ast^2\)) and writing
\(\psi=f\,\sigma_\ast\).

`Derivation D1.2 (Dilation makes the \(\text{length}^{d/2}\) weight explicit).`
On \(\mathbb R^d\), consider a dilation \(y\mapsto y'=a y\) with \(a>0\).
Then \(|dy'|=a^d|dy|\), so \(|dy'|^{1/2}=a^{d/2}|dy|^{1/2}\).
Thus even in flat space, half-densities carry an inherent \(\text{length}^{d/2}\) scaling weight.

`Proposition P1.2 (Universal *dimensionless* amplitudes force a \(\text{length}^{d/2}\) constant).`
If one imposes the extra requirement that the scalar representative \(f\) in \(\psi=f\,\sigma_\ast\) be dimensionless in physical units, then the reference half-density \(\sigma_\ast\) must carry all of the \(\text{length}^{d/2}\) dimension. In particular, a *constant* (field-independent) choice of \(\sigma_\ast\) is equivalent to choosing a universal \(\text{length}^{d/2}\) scale.

In \(d=4\), this universal \(\text{length}^{d/2}\) scale is a universal *area* scale.

`Heuristic H1.2 (Reciprocity claim).`
Half-densities alone do not force a particular scale: the forced fact is that converting half-density objects into scalar numerical amplitudes requires extra structure (a reference half-density).
The “universal area scale” claim begins only after adding two further hypotheses:
1. the reference \(\sigma_\ast\) is taken to be *constant* (no dependence on background metric/fields), and
2. the constant is required to be fixed by universal constants/couplings of the theory.

Under these hypotheses, \(d=4\) is the unique dimension in which the needed \(\text{length}^{d/2}\) constant can be supplied by the gravitational coupling without fractional powers (Derivation D1.3).

`Derivation D1.3 (Dimension match: why \(d=4\) is singled out by gravity).`
In \(d\) spacetime dimensions, the Einstein--Hilbert action
\(\frac{1}{16\pi G_d}\int d^d x\,\sqrt{|g|}\,R\)
shows that (in \(c=\hbar=1\) units) Newton’s constant has dimension
\([G_d]=\text{length}^{d-2}\).
If the universal half-density normalization constant is required to be built from \(G_d\) without fractional powers, then its dimension must match \(\text{length}^{d/2}\) with exponent \(1\), i.e.
\(\text{length}^{d/2}=\text{length}^{d-2}\),
which holds if and only if \(d=4\).
In that case \(G_4\) itself has dimension of area, and the corresponding area scale is the Planck area \(L_P^2\sim \hbar G_4/c^3\).

## 4. Stationary Phase Produces Half-Density Prefactors (Short-Time Kernel)
The main manuscript uses stationary phase to explain why classical extremals dominate refinement limits. Here we add the complementary kernel-level fact:
stationary phase does not only pick the extremal; it also produces a determinant prefactor that transforms as a half-density, i.e. the object needed for coordinate-free kernel composition.

`Derivation D1.4 (Van Vleck prefactor is a bi-half-density).`
Let \(S_{\mathrm{cl}}(x,z;t)\) be the classical action as a function of endpoints and time, treated as a generating function. The standard short-time/stationary-phase approximation to the propagator has the form

$$
K(x,z;t)
\approx
\frac{1}{(2\pi i\hbar)^{d/2}}
\left|\det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial x\,\partial z}\right)\right|^{1/2}
\exp\!\left(\frac{i}{\hbar}S_{\mathrm{cl}}(x,z;t)\right).
$$

Under a change of coordinates \(x=x(x')\), \(z=z(z')\), the mixed Hessian transforms by the chain rule, and its determinant acquires Jacobian factors:

$$
\det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial x'\,\partial z'}\right)
=
\det\!\left(\frac{\partial x}{\partial x'}\right)
\det\!\left(\frac{\partial z}{\partial z'}\right)
\det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial x\,\partial z}\right).
$$

Taking square roots shows that the prefactor transforms with
\(|\det(\partial x/\partial x')|^{1/2}|\det(\partial z/\partial z')|^{1/2}\), i.e. exactly as a half-density factor at each endpoint. Thus the stationary-phase prefactor is naturally interpreted as making \(K\) a half-density in each variable, so that kernel composition does not depend on a background measure choice.

`Heuristic H1.4 (Where Planck area can enter, minimally).`
Derivation D1.3 isolates one minimal route by which a Planck-scale quantity can enter:
if the theory supplies a single universal coupling with dimension of length (Newton’s constant) and one demands that the half-density normalization constant be built from that coupling *without fractional powers*, then \(d=4\) is singled out and the resulting constant has the dimension of an area, naturally identified with the Planck area \(L_P^2\sim \hbar G_4/c^3\).

## 5. A Gravitational Anchor: Minimal Areal Speed and the \(D=4\) Cancellation
Rivero’s “Planck areal speed” observation gives a concrete route by which Planck-scale discreteness reappears at Compton scales in inverse-square gravity [RiveroAreal] [RiveroSimple].

`Heuristic H1.3 (Areal-speed selection).`
In \(3+1\) Newtonian gravity (inverse-square), imposing a discrete areal-speed/area-time condition at a Planck scale can yield characteristic radii proportional to a reduced Compton length, with Newton’s constant canceling when expressed in Planck units. This is a nontrivial indication that “a universal area scale” can be operationally meaningful at low energies in \(D=4\).

`Derivation D1.5 (Inverse-square circular orbit + Planck areal speed \(\Rightarrow\) Compton radius).`
For a circular orbit under an inverse-square central force \(F(r)=K/r^2\) (with coupling \(K>0\)), the centripetal balance is
\(m v^2/r = K/r^2\).
The areal speed is
\(\dot A = \tfrac12 r v\),
so \(v = 2\dot A/r\). Substituting into the force balance gives

$$
m\left(\frac{2\dot A}{r}\right)^2=\frac{K}{r}
\quad\Longrightarrow\quad
r=\frac{4m\,\dot A^2}{K}.
$$

For Newtonian gravity between a source mass \(M\) and test mass \(m\), \(K=GMm\), hence

$$
r=\frac{4\dot A^2}{GM},
$$

independent of the test mass \(m\). If one now imposes \(\dot A = k\,\dot A_P\), where Rivero’s Planck areal speed is \(\dot A_P = cL_P\) [RiveroAreal], then using \(L_P^2 = G\hbar/c^3\) yields

$$
r
=\frac{4k^2(cL_P)^2}{GM}
=\frac{4k^2(G\hbar/c)}{GM}
=4k^2\,\frac{\hbar}{cM}.
$$

Thus \(r\) becomes a multiple of the reduced Compton length \(L_M=\hbar/(cM)\), with Newton’s constant canceled out. In particular, \(k=\tfrac12\) gives \(r=L_M\). This is the “Planck area per Planck time \(\Rightarrow\) Compton scale” cancellation highlighted in [RiveroAreal] and summarized in [RiveroSimple].

## 6. Interface with the Main Paper
The main manuscript argues that:
1. classical dynamics are recovered from quantum composition by stationary-phase concentration, and
2. refinement across scales forces RG-style consistency conditions when naive limits diverge.

This draft adds a complementary ingredient: the kernel side is most naturally formulated in half-density language, and stationary phase produces the bi-half-density prefactor directly. A universal convention for turning those half-densities into scalar amplitudes then requires a \(\text{length}^{d/2}\) scale; in \(d=4\) this is an area scale.

## 7. Open Problems (Needed for a Real Paper)
1. Make the half-density normalization argument precise for a concrete groupoid or kernel model (tangent-groupoid or short-time propagator model).
2. Show how the area scale enters stationary-phase prefactors and how this interacts with RG scaling.
3. General-dimension analysis: clarify what replaces “area” in odd dimensions and whether a universal normalization is still defensible.
4. Identify minimal hypotheses under which “need of half-density scale \(\Rightarrow\) Planck area” is more than dimensional bookkeeping.
