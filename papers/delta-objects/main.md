---
title: "Delta Objects as Half-Density Kernels: Identity, Stationary-Set Concentration, and Point Interactions"
author: "Alejandro Rivero"
date: "2026"
abstract: |
  Three seemingly different uses of the Dirac delta share one geometric meaning when amplitudes are treated as **half-densities**:
  1. the delta as the Schwartz kernel of the identity operator,
  2. the delta as a density supported on stationary points (\(\delta(\nabla f)\)),
  3. the delta as a rank-one kernel defining a point interaction (\(g|0\rangle\langle0|\)).
  
  In each case, the amplitude-level object carries **square-root Jacobian** weights (half-density weights), while the corresponding “probability”/density-level object carries the unsquared Jacobians. This note collects the finite-dimensional identities and scaling computations that make this pattern explicit, and isolates where a physical length scale may enter when one insists on scalar representatives.
---

This note is a companion to the cornerstone manuscript. Statements are kept finite-dimensional unless explicitly labeled heuristic.

# 1. Half-densities and kernels (coordinate free)
Let \(M\) be a \(d\)-dimensional manifold and \(|\Omega|^{1/2}\) the half-density bundle [BatesWeinstein1997].
An operator \(K:\Gamma_c(|\Omega|^{1/2})\to \Gamma(|\Omega|^{1/2})\) has a natural Schwartz kernel [Hormander2003]
\[
\mathsf K\in \mathcal D'(M\times M;\;|\Omega|^{1/2}\boxtimes|\Omega|^{1/2}),
\]
so that
\[
(K\psi)(x)=\int_M \mathsf K(x,y)\,\psi(y),
\]
is coordinate invariant: \(\mathsf K(x,y)\psi(y)\) is a density in \(y\) valued in a half-density at \(x\).

Scalarizing kernels (writing \(\int dy\) with a scalar integrand) implicitly chooses a reference density/half-density; the half-density formalism keeps this choice explicit.

# 2. Delta as the identity kernel (and near-diagonal scaling)
The identity operator on half-densities has Schwartz kernel
\[
\mathsf K_{\mathrm{Id}}(x,y)=\delta^{(d)}(x-y)\,|dx|^{1/2}|dy|^{1/2}.
\]

## Worked scaling computation (the \(d/2\) exponent)
Introduce near-diagonal coordinates \(y=x+\varepsilon v\). Then \(\delta^{(d)}(x-y)=\delta^{(d)}(\varepsilon v)=\varepsilon^{-d}\delta^{(d)}(v)\) and \(|dy|^{1/2}=\varepsilon^{d/2}|dv|^{1/2}\), so
\[
\mathsf K_{\mathrm{Id}}(x,x+\varepsilon v)
=\varepsilon^{-d/2}\,\delta^{(d)}(v)\,|dx|^{1/2}|dv|^{1/2}.
\]
Thus the universal \(\varepsilon^{-d/2}\) normalization exponent is already present in the identity delta kernel, once kernels are treated as half-densities.

# 3. Delta on the stationary set: $\delta(\nabla f)$ and determinant weights
## 3.1 One-dimensional identity ($\delta(f')$)
Let \(f:\mathbb R\to\mathbb R\) have finitely many nondegenerate critical points \(x_i\) (so \(f'(x_i)=0\), \(f''(x_i)\neq 0\)). Then, as distributions,
\[
\delta(f'(x))=\sum_i \frac{\delta(x-x_i)}{|f''(x_i)|}.
\]
So \(\delta(f')\,dx\) is a density supported at stationary points with weights \(1/|f''|\).

## 3.1a $\delta(f')$ versus $\delta'$: delta of a derivative vs derivative of delta
The notation \(\delta(f')\) above means: apply the Dirac delta distribution \(\delta(\cdot)\) to the **function** \(f'(x)\), thereby localizing to the stationary set \(f'(x)=0\).
It should not be confused with \(\delta'\), the **distributional derivative** of \(\delta\), defined by duality:
\[
\langle \delta',\varphi\rangle := -\langle \delta,\varphi'\rangle = -\varphi'(0).
\]
So \(\delta'\) is the distribution that probes derivatives of test functions at a point (“value of the derivative at zero”, up to sign), whereas \(\delta(f')\) is a stationary-set localization distribution.

## 3.1b $\delta'$ from point splitting (difference quotient of shifted deltas)
The distribution \(\delta'\) can be realized as a regulated point-splitting limit. Let \(\varepsilon\to 0\) and consider the shifted delta \(\delta(x+\varepsilon)\). For any test function \(\varphi\),
\[
\left\langle \frac{\delta(\,\cdot+\varepsilon)-\delta}{\varepsilon},\varphi\right\rangle
=\frac{\varphi(-\varepsilon)-\varphi(0)}{\varepsilon}
\xrightarrow[\varepsilon\to 0]{} -\varphi'(0)
=\langle \delta',\varphi\rangle.
\]
Hence, in the sense of distributions,
\[
\frac{\delta(x+\varepsilon)-\delta(x)}{\varepsilon}\xrightarrow[\varepsilon\to 0]{}\delta'(x).
\]

This gives a clean dictionary item for “probing the derivative at a point”:
\[
f'(0)=\langle -\delta', f\rangle.
\]
For the parallel smooth-function toy model ("difference quotient as divergence + subtraction") and further remarks, see the companion notes.

## 3.2 Multi-dimensional identity ($\delta(\nabla f)$)
Let \(f:\mathbb R^n\to\mathbb R\) have finitely many nondegenerate critical points \(x_i\) (so \(\nabla f(x_i)=0\) and \(\det(\mathrm{Hess}\,f)(x_i)\neq 0\)). Then
\[
\delta^{(n)}(\nabla f(x))
=\sum_i \frac{\delta^{(n)}(x-x_i)}{|\det(\mathrm{Hess}\,f)(x_i)|}.
\]

## 3.3 Stationary phase and square-root weights (amplitudes vs densities)
For the oscillatory integral
\[
I(\hbar)=\int_{\mathbb R^n} e^{\frac{i}{\hbar}f(x)}\,a(x)\,dx,\qquad \hbar\to 0^+,
\]
stationary phase gives amplitude contributions weighted by
\[
\frac{1}{\sqrt{|\det(\mathrm{Hess}\,f)(x_i)|}},
\]
up to a universal \(\hbar\)-dependent factor and a signature phase. Squaring amplitude weights produces the density weights in \(\delta^{(n)}(\nabla f)\). This is the finite-dimensional prototype of the slogan:
**amplitudes are half-densities; probabilities are densities.**

## 3.4 Extremals in weak form: where $\delta$ and $\delta'$ appear in Euler–Lagrange
For an action \(S[q]=\int L(q,\dot q,t)\,dt\), the extremal condition is naturally distributional:
for test variations \(\eta(t)\) of compact support,
\[
\delta S[q;\eta]=\int \Bigl(\frac{\partial L}{\partial q}-\frac{d}{dt}\frac{\partial L}{\partial \dot q}\Bigr)\eta(t)\,dt.
\]
If \(\delta S[q;\eta]=0\) for all \(\eta\), then the Euler–Lagrange expression vanishes as a distribution. Approximating \(\eta\) by bump functions converging to \(\delta(t-t_\ast)\) localizes the equation at \(t_\ast\) under regularity.

When \(\partial L/\partial \dot q\) has jumps (corners/impulses), the distributional derivative produces delta terms automatically; more generally, point-supported singularities are encoded by delta kernels and their derivatives (\(\delta,\delta',\ldots\)), depending on distributional order.

## 3.5 Van Vleck determinant: the propagator instance of the square-root Hessian
The square-root Hessian weight of Section 3.3 has a distinguished physical instance: the Van Vleck determinant [VanVleck1928Correspondence] [Morette1951] in the semiclassical propagator.

For the short-time quantum propagator between positions \(q_i\) and \(q_f\) with time interval \(\Delta t\), stationary-phase evaluation of the path integral gives
\[
K(q_f,q_i;\Delta t)
\;\propto\;
\sqrt{D(q_f,q_i;\Delta t)}\;e^{(i/\hbar)\,S_{\mathrm{cl}}(q_f,q_i;\Delta t)},
\]
where \(S_{\mathrm{cl}}\) is the classical action on the extremal path and
\[
D(q_f,q_i;\Delta t)
\;:=\;
\left|\det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial q_f^a\,\partial q_i^b}\right)\right|
\]
is the Van Vleck determinant — a *mixed* Hessian (derivatives at the two endpoints of the classical path), as opposed to the full Hessian of \(f\) that appears in \(\delta(\nabla f)\). Despite this difference, it arises by the same stationary-phase mechanism: square-root Hessian weights at the amplitude level, confirming the "amplitudes are half-densities" pattern.

`Example 3.5a (Free particle).`
For the free particle in \(d\) dimensions, \(S_{\mathrm{cl}}=m|q_f-q_i|^2/(2\Delta t)\), so
\[
D = (m/\Delta t)^d,\qquad \sqrt{D}=(m/\Delta t)^{d/2},
\]
reproducing the \((\Delta t)^{-d/2}\) normalization of Section 2.

`Example 3.5b (Harmonic oscillator).`
For the harmonic oscillator (\(V=\tfrac12 m\omega^2 q^2\)) in \(d=1\), the classical action between \(q_i\) and \(q_f\) in time \(\Delta t\) is \(S_{\mathrm{cl}}=\frac{m\omega}{2\sin\omega\Delta t}\bigl[(q_f^2+q_i^2)\cos\omega\Delta t - 2q_f q_i\bigr]\), giving
\[
D = \left|\frac{m\omega}{\sin\omega\Delta t}\right|,\qquad \sqrt{D}=\sqrt{\frac{m\omega}{|\sin\omega\Delta t|}}.
\]
As \(\omega\Delta t\to 0\), \(\sin\omega\Delta t\approx\omega\Delta t\), recovering the free-particle result \(\sqrt{D}\to\sqrt{m/\Delta t}\). At \(\omega\Delta t=\pi\) (half-period), \(\sin\omega\Delta t\to 0\) and \(\sqrt{D}\to\infty\): this is the familiar caustic (focal point) where the semiclassical approximation breaks down because the classical flow focuses all initial momenta onto a single final point.

# 4. Delta at a point: point interactions as rank-one kernels
A point interaction [AlbeverioGesztesyHoeghKrohnHolden2005] is naturally the rank-one operator
\[
V=g\,|0\rangle\langle0|.
\]
In the half-density kernel calculus this is written as the bi-half-density distribution supported at \((0,0)\):
\[
\mathsf K_V(x,y)=g\;\delta^{(d)}(x)\,\delta^{(d)}(y)\,|dx|^{1/2}|dy|^{1/2}.
\]
This is the "projector-like delta" object underlying contact interactions.

`Example 4.1 (1D delta potential: resolvent as a rank-one perturbation).`
In one dimension the rank-one structure is particularly explicit. For \(H=-\frac{\hbar^2}{2m}\frac{d^2}{dx^2}+g\,\delta(x)\) with \(g<0\) (attractive), the free resolvent at energy \(E=-\hbar^2\kappa^2/(2m)\) is \(G_0(x,x';E)=-\frac{m}{\hbar^2\kappa}\,e^{-\kappa|x-x'|}\). The rank-one perturbation formula gives
\[
G(x,x';E)=G_0(x,x';E)+\frac{g\,G_0(x,0;E)\,G_0(0,x';E)}{1-g\,G_0(0,0;E)}.
\]
The correction term factors as \(f(x)\cdot f(x')\) with \(f(x)=G_0(x,0;E)\) — this is the rank-one kernel in action: the point interaction contributes a term proportional to \(|0\rangle\langle0|\) in the resolvent. The denominator vanishes at \(\kappa=|g|m/\hbar^2\), yielding the unique bound state \(E=-mg^2/(2\hbar^2)\), and the residue at this pole factors as \(\psi_b(x)\,\psi_b(x')\) with \(\psi_b(x)=\sqrt{\kappa}\,e^{-\kappa|x|}\) — a rank-one projector \(|\psi_b\rangle\langle\psi_b|\) [AlbeverioGesztesyHoeghKrohnHolden2005]. In the half-density kernel language, the factored piece reads \((e^{-\kappa|x|}|dx|^{1/2})\otimes(e^{-\kappa|x'|}|dx'|^{1/2})\), manifestly a product of half-densities.

# 5. Where scales enter upon scalarization (and why RG invariants are natural candidates)
Half-density kernels are canonical; scalar representatives are not.
Choosing a reference half-density \(\sigma_\ast\) identifies any half-density \(\psi\) with a scalar \(f\) via \(\psi=f\,\sigma_\ast\).
If one insists that scalar representatives be dimensionless, then \(\sigma_\ast\) must carry a \(\text{length}^{d/2}\) constant.

In marginal cases (notably the 2D point interaction), renormalization generates an RG-invariant scale \(\kappa_\ast\) (dimensional transmutation). This suggests a conditional identification:
if one adds a universality hypothesis that scalarization scales must be built from physical invariants, then RG-invariant scales are natural candidates to supply the missing \(\text{length}^{d/2}\) factors required by scalarization.

This note treats that identification as an organizing perspective, not as a theorem.

# 6. Outlook
1. ~~Relate determinant weights to Van Vleck type.~~ Addressed: Section 3.5 makes the connection explicit.
2. Clarify which parts of the "functional delta \(\delta(\delta S)\)" story survive rigorous regularization and which remain heuristic.
3. Extend the half-density treatment to spacetime (Lorentzian) propagators and distributional kernels in field theory.

# References

1. [VanVleck1928Correspondence] J. H. Van Vleck, "The Correspondence Principle in the Statistical Interpretation of Quantum Mechanics," *Proceedings of the National Academy of Sciences of the United States of America* 14(2) (1928), 178–188. DOI `10.1073/pnas.14.2.178`.
2. [BatesWeinstein1997] Sean Bates and Alan Weinstein, "Lectures on the Geometry of Quantization," Berkeley Mathematics Lecture Notes, vol. 8, AMS, 1997. ISBN `978-0-8218-0798-9`. OA: <https://math.berkeley.edu/~alanw/GofQ.pdf>. (Canonical reference for half-density formalism in geometric quantization; half-density kernels and composition.)
3. [Hormander2003] Lars Hörmander, *The Analysis of Linear Partial Differential Operators I: Distribution Theory and Fourier Analysis*, 2nd ed., Springer, 2003. DOI `10.1007/978-3-642-61497-2`. (Schwartz kernel theorem; distributional calculus for PDE Green functions.)
4. [AlbeverioGesztesyHoeghKrohnHolden2005] S. Albeverio, F. Gesztesy, R. Høegh-Krohn, and H. Holden, *Solvable Models in Quantum Mechanics*, 2nd ed., AMS Chelsea Publishing, 2005. ISBN `978-0-8218-3624-4`. (Canonical reference for point interactions in quantum mechanics; self-adjoint extensions, delta potentials.)
5. [Morette1951] C. Morette, "On the Definition and Approximation of Feynman's Path Integrals," *Phys. Rev.* **81**, 848–852 (1951). DOI `10.1103/PhysRev.81.848`. (Van Vleck determinant in path integral; semiclassical expansion weights.)
