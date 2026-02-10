# Blackboard: \u03b4(\u2207f) and Determinant Weights (Multi-D), and How This Mirrors Van Vleck

Date: 2026-02-10

## Purpose
S07 clarified the 1D identity \(\delta(f')=\sum \delta_{x_i}/|f''(x_i)|\) and the stationary-phase square-root weights.
This note does the clean multi-dimensional version and records how the same determinant structure mirrors the Van Vleck prefactor in semiclassical propagators.

## 1. Vector delta identity
Let \(F:\mathbb R^n\to\mathbb R^n\) be smooth and suppose \(F\) has finitely many zeros \(x_i\) such that the Jacobian matrix \(DF(x_i)\) is invertible (\(\det DF(x_i)\neq 0\)).
Then, in the standard distributional sense,
\[
\delta^{(n)}(F(x))=\sum_i \frac{\delta^{(n)}(x-x_i)}{|\det DF(x_i)|}.
\]
Pairing with a test function \(g\),
\[
\int_{\mathbb R^n}\delta^{(n)}(F(x))\,g(x)\,dx
=\sum_i \frac{g(x_i)}{|\det DF(x_i)|}.
\]

This is the multi-dimensional analogue of \(\delta(\varphi(x))=\sum \delta(x-x_i)/|\varphi'(x_i)|\).

## 2. Specialization: F = \u2207f gives Hessian determinant weights
Take \(F(x)=\nabla f(x)\) for \(f:\mathbb R^n\to\mathbb R\).
At a nondegenerate critical point \(x_i\) one has \(\nabla f(x_i)=0\) and \(\det(\mathrm{Hess}\,f)(x_i)\neq 0\).
Since \(DF=\mathrm{Hess}\,f\), the identity becomes
\[
\delta^{(n)}(\nabla f(x))
=\sum_i \frac{\delta^{(n)}(x-x_i)}{|\det(\mathrm{Hess}\,f)(x_i)|}.
\]
So \(\delta^{(n)}(\nabla f)\,dx\) is a density supported on stationary points with weights \(1/|\det(\mathrm{Hess}\,f)|\).

## 3. Stationary phase: amplitude weights are square roots
For the oscillatory integral
\[
I(\hbar)=\int_{\mathbb R^n} e^{\frac{i}{\hbar}f(x)}\,a(x)\,dx,
\qquad \hbar\to 0^+,
\]
the leading stationary-phase contribution from each nondegenerate critical point \(x_i\) takes the form
\[
a(x_i)\,\frac{e^{\frac{i}{\hbar}f(x_i)}}{\sqrt{|\det(\mathrm{Hess}\,f)(x_i)|}}
\times (\text{universal factor depending on }\hbar\text{ and the Hessian signature}).
\]
Thus the determinant appears with a **square root** at the amplitude level and without the square root at the density level, exactly matching the “half-density first” pattern:
amplitudes are naturally half-densities; squared moduli are densities.

## 4. How this mirrors Van Vleck in the semiclassical propagator
In the semiclassical propagator \(K(q_f,t_f;q_i,t_i)\), the Van Vleck prefactor involves a determinant of mixed second derivatives of the classical action:
\[
\left|\det\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial q_f\,\partial q_i}\right)\right|^{1/2},
\]
which is a half-density in each endpoint variable (as noted in `paper/main.md`, Derivation D4.3).

How can a *mixed* Hessian determinant appear if stationary phase “wants” \(\det(\mathrm{Hess}\,f)\) in the integration variables?
Finite-dimensional elimination provides the template:
if one starts from a phase \(f(x,y)\) and integrates out \(y\) by stationary phase (or exactly in a quadratic model), the effective phase \(f_{\mathrm{eff}}(x)=f(x,y_\ast(x))\) has a Hessian given by a Schur complement of the full Hessian of \(f\).
In the time-sliced path integral, the intermediate coordinates play the role of \(y\), so eliminating them leaves a determinant built from endpoint derivatives (Jacobi field/monodromy data), which is the structural origin of the Van Vleck mixed Hessian determinant.

This note keeps that last step as a structural analogy, not a full proof.

## 5. Promotion candidates
1. **For `paper/notes/`:** add a short lemma showing, in the quadratic case, how integrating out intermediate variables produces a Schur-complement determinant and converts a full Hessian into an endpoint mixed Hessian.
2. **For `paper/main.md` (optional, short):** a one-sentence addition near D4.3 stating that the determinant weights in \(\delta(\nabla f)\) match stationary-phase/Van-Vleck square roots, and that mixed Hessians arise from eliminating intermediate variables (Schur complement/Jacobi fields).

