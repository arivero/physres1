# Blackboard: \u03b4(f') on Critical Points as a Density / Half-Density, and the Stationary-Phase Weights

Date: 2026-02-10

## Purpose
The cornerstone paper’s thesis is that “stationary extremes of the action” are not just a classical story: they can be reframed as a **distributional concentrating object** that naturally appears when composing amplitudes and taking refinement limits.

This note makes precise (in the clean finite-dimensional, nondegenerate case) the object
\(\delta(f'(x))\),
and shows how a canonical **half-density supported on critical points** carries the same weights as the stationary-phase prefactor \(1/\sqrt{|\det f''|}\).

No functional-integral claims are made here; those are heuristic extensions.

## 1. The basic identity \u03b4(\u03c6(x)) = sum over roots
Let \(\varphi:\mathbb R\to\mathbb R\) be smooth and suppose \(\varphi\) has finitely many simple zeros \(x_i\) (so \(\varphi(x_i)=0\) and \(\varphi'(x_i)\neq 0\)).
Then as distributions,
\[
\delta(\varphi(x))=\sum_i \frac{\delta(x-x_i)}{|\varphi'(x_i)|}.
\]
Equivalently, pairing with a test function \(g\),
\[
\int_{\mathbb R} \delta(\varphi(x))\,g(x)\,dx
=\sum_i \frac{g(x_i)}{|\varphi'(x_i)|}.
\]

## 2. Specialization to \u03b4(f'(x)) and critical points
Take \(\varphi(x)=f'(x)\). If \(f\) has finitely many **nondegenerate critical points** \(x_i\) (so \(f'(x_i)=0\), \(f''(x_i)\neq 0\)), then
\[
\delta(f'(x))=\sum_i \frac{\delta(x-x_i)}{|f''(x_i)|}.
\]
So \(\delta(f')\,dx\) is a density supported on the critical set with weights \(1/|f''|\).

In multiple dimensions (\(x\in\mathbb R^n\)), the analogous statement is:
if \(\nabla f(x_i)=0\) and \(\det(\mathrm{Hess}\,f)(x_i)\neq 0\), then the distribution \(\delta(\nabla f)\) paired with a test function \(g\) produces a sum over critical points with weights \(1/|\det(\mathrm{Hess}\,f)(x_i)|\) (up to the usual multi-delta conventions).

## 3. The half-density “square root” supported on the critical set
The previous identity suggests a canonical “half-density” object supported at the same points:
\[
\delta^{1/2}_{f}
\;:=\;
\sum_i \frac{\delta_{x_i}}{\sqrt{|f''(x_i)|}}\,|dx|^{1/2},
\]
where \(\delta_{x_i}\) denotes the Dirac distribution supported at \(x_i\).

This is not a scalar “\(\sqrt{\delta}\)” distribution; it is a distributional half-density such that, informally,
\[
\delta^{1/2}_{f}\cdot \overline{\delta^{1/2}_{f}}
=
\delta(f')\,|dx|,
\]
in the sense that its squared modulus produces the density weights \(1/|f''|\) on the critical set (and cross-terms vanish when one takes the obvious diagonal pairing).

This is the finite-dimensional prototype of a “half-density supported on stationary configurations”.

## 4. Stationary phase gives the same \u221a|f''| weights
Consider the oscillatory integral
\[
I(\hbar)=\int_{\mathbb R} e^{\frac{i}{\hbar}f(x)}\,a(x)\,dx,
\qquad \hbar\to 0^+,
\]
with \(a\) smooth and compactly supported.
In the nondegenerate stationary-phase regime, the contribution from each critical point \(x_i\) is proportional to
\[
a(x_i)\,\frac{e^{\frac{i}{\hbar}f(x_i)}}{\sqrt{|f''(x_i)|}}
\times (\text{universal factor depending on }\hbar \text{ and the Hessian signature}).
\]

So the *amplitude* weight is \(1/\sqrt{|f''|}\), while the *density* weight in \(\delta(f')\) is \(1/|f''|\).
This is the clean finite-dimensional reason that a “half-density supported on the critical set” is the natural amplitude-level object: squaring the amplitude weights produces the density weights.

## 5. Heuristic extension: action stationarity and a functional delta
Formally, for an action functional \(S[q]\), the Euler–Lagrange equation is \(\delta S/\delta q=0\).
The finite-dimensional identities above suggest an infinite-dimensional analogue:
the “concentrating object” associated with enforcing stationarity is
\[
\delta\!\left(\frac{\delta S}{\delta q}\right),
\]
and an amplitude-level object would be a half-density analogue supported on stationary histories.

This note does *not* claim a literal functional-analysis theorem here; it only isolates the algebraic pattern:
stationary phase gives \(1/\sqrt{|\det S''|}\), while a delta-supported density carries \(1/|\det S''|\).

## 6. Promotion candidates
1. **For `paper/main.md` (short):** one paragraph explaining that in finite dimensions \(\delta(f')=\sum \delta_{x_i}/|f''(x_i)|\) concentrates on stationary points, while stationary phase yields amplitude weights \(1/\sqrt{|f''|}\); thus “half-densities are prioritary” because amplitudes are naturally half-densities whose squared modulus gives densities.
2. **For `paper/notes/` or a follow-up note (longer):** write a careful multi-dimensional version \(\delta(\nabla f)\) and relate it to the Van Vleck determinant in the semiclassical kernel.
3. **For the Planck-area draft (optional):** a bridge sentence that “half-density supported on stationary configurations” is the functional analogue of the identity-kernel delta half-density, reinforcing why \(\text{length}^{d/2}\) normalization is intrinsic.

