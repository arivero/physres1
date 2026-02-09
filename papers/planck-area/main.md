# Planck Area from Half-Density Normalization (Draft)

## Abstract
Half-densities are the natural “coordinate-free integrands” for composing kernels without choosing a background measure. But a half-density still carries physical units: in \(d\) dimensions its normalization involves a scale with units of \(\text{length}^{d/2}\). In \(d=4\), this is an *area*. This note develops a programmatic argument that the need to normalize composition kernels as half-densities forces the introduction of a universal area scale, and that identifying this scale with the Planck area is both natural and, in certain Newtonian/gravitational settings, reciprocally recoverable from a minimal-areal-speed principle [RiveroAreal] [RiveroSimple].

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

`Proposition P1.1 (Scale required for numerical normalization).`
Any attempt to map a half-density \(\psi\in|\Lambda^d T^\ast M|^{1/2}\) to a dimensionless numerical amplitude requires choosing a reference scale \(\ell_\ast\) with units \(\text{length}\) (equivalently \(\ell_\ast^{d/2}\) with units \(\text{length}^{d/2}\)) to fix normalization conventions.

In \(d=4\), \(\ell_\ast^{d/2}=\ell_\ast^2\) is an *area*. Thus, in four dimensions, half-density normalization is naturally controlled by a fundamental area scale.

`Derivation D1.2 (Dilation makes the \(\text{length}^{d/2}\) scale explicit).`
On \(\mathbb R^d\), consider a dilation \(y\mapsto y'=a y\) with \(a>0\).
Then \(|dy'|=a^d|dy|\), so \(|dy'|^{1/2}=a^{d/2}|dy|^{1/2}\).
Thus even in flat space, half-density normalization is inherently tied to a \(\text{length}^{d/2}\) scaling weight.
In \(d=4\), the “scale you must insert to make half-densities numerically comparable” naturally carries units of area.

`Heuristic H1.2 (Reciprocity claim).`
If one accepts “composition kernels live as half-densities” as the right invariant setup for quantum amplitudes, and also insists on a *universal* normalization convention (no background structures), then a universal area scale is forced in \(d=4\). A natural identification is the Planck area \(L_P^2\).

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

`Proposition P1.2 (Reference half-density fixes normalization conventions).`
Given a chart \(x\) on \(M\), any nowhere-vanishing reference half-density can be written as
\(\sigma_\ast(x)=\ell_\ast^{d/2}\,|dx|^{1/2}\),
where \(\ell_\ast\) is a chosen length scale. A half-density \(\psi(x)=\varphi(x)\,|dx|^{1/2}\) is then converted into a scalar coefficient by
\(\varphi_\ast(x)=\psi(x)/\sigma_\ast(x)\).
Therefore a universal convention for turning half-densities into scalar amplitudes requires choosing a universal \(\ell_\ast^{d/2}\) scale.

In \(d=4\), \(\ell_\ast^{d/2}=\ell_\ast^2\) is an area, so a universal normalization convention for half-densities in four dimensions is equivalent to choosing a universal area scale.

`Heuristic H1.4 (Where Planck area can enter, minimally).`
If one further insists that \(\ell_\ast\) be fixed by universal constants rather than background geometric data, then in a relativistic setting the only available \(4\)D area scale built from \((\hbar,c,G)\) is the Planck area \(L_P^2\). The claim pursued in this follow-up draft is that this is not merely dimensional bookkeeping: it interacts with refinement/composition in a way that can be physically anchored (Section 5).

## 5. A Gravitational Anchor: Minimal Areal Speed and the \(D=4\) Cancellation
Rivero’s “Planck areal speed” observation gives a concrete route by which Planck-scale discreteness reappears at Compton scales in inverse-square gravity [RiveroAreal] [RiveroSimple].

`Heuristic H1.3 (Areal-speed selection).`
In \(3+1\) Newtonian gravity (inverse-square), imposing a discrete areal-speed/area-time condition at a Planck scale can yield characteristic radii proportional to a reduced Compton length, with Newton’s constant canceling when expressed in Planck units. This is a nontrivial indication that “a universal area scale” can be operationally meaningful at low energies in \(D=4\).

`Derivation D1.3 (Inverse-square circular orbit + Planck areal speed \(\Rightarrow\) Compton radius).`
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
