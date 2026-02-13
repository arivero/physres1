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

# 3. Delta on the stationary set: δ(∇f) and determinant weights
## 3.1 One-dimensional identity (δ(f'))
Let \(f:\mathbb R\to\mathbb R\) have finitely many nondegenerate critical points \(x_i\) (so \(f'(x_i)=0\), \(f''(x_i)\neq 0\)). Then, as distributions,
\[
\delta(f'(x))=\sum_i \frac{\delta(x-x_i)}{|f''(x_i)|}.
\]
So \(\delta(f')\,dx\) is a density supported at stationary points with weights \(1/|f''|\).

## 3.1a δ(f') versus δ': delta of a derivative vs derivative of delta
The notation \(\delta(f')\) above means: apply the Dirac delta distribution \(\delta(\cdot)\) to the **function** \(f'(x)\), thereby localizing to the stationary set \(f'(x)=0\).
It should not be confused with \(\delta'\), the **distributional derivative** of \(\delta\), defined by duality:
\[
\langle \delta',\varphi\rangle := -\langle \delta,\varphi'\rangle = -\varphi'(0).
\]
So \(\delta'\) is the distribution that probes derivatives of test functions at a point (“value of the derivative at zero”, up to sign), whereas \(\delta(f')\) is a stationary-set localization distribution.

## 3.1b δ' from point splitting (difference quotient of shifted deltas)
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

## 3.2 Multi-dimensional identity (δ(∇f))
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

## 3.4 Extremals in weak form: where δ and δ' appear in Euler–Lagrange
For an action \(S[q]=\int L(q,\dot q,t)\,dt\), the extremal condition is naturally distributional:
for test variations \(\eta(t)\) of compact support,
\[
\delta S[q;\eta]=\int \Bigl(\frac{\partial L}{\partial q}-\frac{d}{dt}\frac{\partial L}{\partial \dot q}\Bigr)\eta(t)\,dt.
\]
If \(\delta S[q;\eta]=0\) for all \(\eta\), then the Euler–Lagrange expression vanishes as a distribution. Approximating \(\eta\) by bump functions converging to \(\delta(t-t_\ast)\) localizes the equation at \(t_\ast\) under regularity.

When \(\partial L/\partial \dot q\) has jumps (corners/impulses), the distributional derivative produces delta terms automatically; more generally, point-supported singularities are encoded by delta kernels and their derivatives (\(\delta,\delta',\ldots\)), depending on distributional order.

# 4. Delta at a point: point interactions as rank-one kernels
A point interaction [AlbeverioGesztesyHoeghKrohnHolden2005] is naturally the rank-one operator
\[
V=g\,|0\rangle\langle0|.
\]
In the half-density kernel calculus this is written as the bi-half-density distribution supported at \((0,0)\):
\[
\mathsf K_V(x,y)=g\;\delta^{(d)}(x)\,\delta^{(d)}(y)\,|dx|^{1/2}|dy|^{1/2}.
\]
This is the “projector-like delta” object underlying contact interactions.

# 5. Where scales enter upon scalarization (and why RG invariants are natural candidates)
Half-density kernels are canonical; scalar representatives are not.
Choosing a reference half-density \(\sigma_\ast\) identifies any half-density \(\psi\) with a scalar \(f\) via \(\psi=f\,\sigma_\ast\).
If one insists that scalar representatives be dimensionless, then \(\sigma_\ast\) must carry a \(\text{length}^{d/2}\) constant.

In marginal cases (notably the 2D point interaction), renormalization generates an RG-invariant scale \(\kappa_\ast\) (dimensional transmutation). This suggests a conditional identification:
if one adds a universality hypothesis that scalarization scales must be built from physical invariants, then RG-invariant scales are natural candidates to supply the missing \(\text{length}^{d/2}\) factors required by scalarization.

This note treats that identification as an organizing perspective, not as a theorem.

# 6. Outlook
1. Relate the determinant weights in \(\delta(\nabla f)\) to the mixed Hessian determinants (Van Vleck type [Morette1951]) that appear after eliminating intermediate variables in time slicing (Schur complement template).
2. Clarify which parts of the "functional delta \(\delta(\delta S)\)" story survive rigorous regularization and which remain heuristic.

# References

1. [BatesWeinstein1997] Sean Bates and Alan Weinstein, *Lectures on the Geometry of Quantization*, Berkeley Mathematics Lecture Notes, vol. 8, AMS, 1997. OA: <https://math.berkeley.edu/~alanw/GofQ.pdf>.
2. [Hormander2003] Lars Hörmander, *The Analysis of Linear Partial Differential Operators I: Distribution Theory and Fourier Analysis*, 2nd ed., Springer, 2003.
3. [AlbeverioGesztesyHoeghKrohnHolden2005] S. Albeverio, F. Gesztesy, R. Høegh-Krohn, and H. Holden, *Solvable Models in Quantum Mechanics*, 2nd ed., AMS Chelsea Publishing, 2005.
4. [Morette1951] C. Morette, "On the Definition and Approximation of Feynman's Path Integrals," *Phys. Rev.* **81**, 848–852 (1951).
