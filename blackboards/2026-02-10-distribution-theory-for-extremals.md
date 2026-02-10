# Blackboard: Distribution Theory for Extremals (δ, δ′, and Weak Euler–Lagrange)

Date: 2026-02-10

## Purpose
Clarify which “delta” is doing what in our refinement/action-extremum story:
1. **Dirac δ** as the evaluation functional (\(\langle\delta,\varphi\rangle=\varphi(0)\)).
2. **Derivative of δ** (\(\delta'\)) as the distribution that probes derivatives at a point (\(\langle\delta',\varphi\rangle=-\varphi'(0)\)).
3. **\(\delta(f)\) vs \(\delta(f')\)**: delta applied to a function (zero-set localization) vs delta applied to a derivative (stationary-set localization).

This is a local “distribution theory toolbox” note for later promotion into:
- the “Dirac-supported probes / corners / impulses” thread,
- `papers/delta-objects/main.md` (delta objects unification),
- and (selectively) `paper/main.md` where we speak about extremals in weak form.

## 1. δ and δ′ as evaluation functionals
Let \(\mathcal D(\mathbb R)\) be smooth compactly supported test functions and \(\mathcal D'(\mathbb R)\) distributions.

Dirac delta at \(a\):
\[
\langle \delta_a,\varphi\rangle=\varphi(a).
\]
Its derivative is defined by duality:
\[
\langle \delta_a',\varphi\rangle := -\langle \delta_a,\varphi'\rangle = -\varphi'(a).
\]
So the distribution that “looks at the derivative at zero” is \(-\delta'\) (up to sign convention).

More generally, \(\langle \delta_a^{(k)},\varphi\rangle = (-1)^k \varphi^{(k)}(a)\).

## 2. Distributional derivatives and “derivative as counterterm”
For any distribution \(T\), its derivative \(T'\) is defined by
\[
\langle T',\varphi\rangle = -\langle T,\varphi'\rangle.
\]
This is exactly what makes “integration by parts” precise even when objects are not pointwise functions.

The user’s “difference quotient looks like a counterterm” remark fits this template:
\[
\frac{f(x+\varepsilon)-f(x)}{\varepsilon}\quad\text{can diverge as }\varepsilon\to0,
\]
and in distribution language the same mechanism appears as
\[
\frac{\delta(x+\varepsilon)-\delta(x)}{\varepsilon}\;\to\;\delta'(x)
\quad(\varepsilon\to0),
\]
in the sense of distributions (tested against smooth \(\varphi\)).

## 3. δ(f) versus δ(f′) versus δ′
These are distinct constructions and should not be conflated.

1. **\(\delta(f(x))\)** localizes to the *zero set* of \(f\). In 1D, for simple zeros \(x_i\),
\[
\delta(f(x))=\sum_i \frac{\delta(x-x_i)}{|f'(x_i)|}.
\]

2. **\(\delta(f'(x))\)** localizes to the *stationary set* of \(f\) (critical points), and for nondegenerate critical points \(x_i\) with \(f'(x_i)=0\), \(f''(x_i)\neq0\),
\[
\delta(f'(x))=\sum_i \frac{\delta(x-x_i)}{|f''(x_i)|}.
\]
This is the delta that appears naturally when the *extremal condition is “derivative = 0”*.

3. **\(\delta'(x)\)** is not a “delta of a derivative”; it is the **derivative of the delta distribution**. It probes derivatives of test functions and appears as the kernel of differentiation operators and in jump/boundary terms.

## 4. Weak Euler–Lagrange: extremals as distributional equalities
For an action \(S[q]=\int_{t_0}^{t_1} L(q(t),\dot q(t),t)\,dt\), the first variation against a compactly supported test variation \(\eta(t)\) is
\[
\delta S[q;\eta]
=\int \Bigl(\frac{\partial L}{\partial q}-\frac{d}{dt}\frac{\partial L}{\partial \dot q}\Bigr)\eta(t)\,dt,
\]
after integrating by parts (boundary terms vanish for compact support or fixed endpoints).

The fundamental logic is distributional:
if \(\delta S[q;\eta]=0\) for all test \(\eta\), then
\[
\frac{\partial L}{\partial q}-\frac{d}{dt}\frac{\partial L}{\partial \dot q}=0
\quad\text{as a distribution.}
\]
Approximating \(\eta\) by a bump sequence converging to \(\delta(t-t_\ast)\) recovers the pointwise Euler–Lagrange equation at \(t_\ast\) when regularity holds.

When \(\partial L/\partial \dot q\) has jumps (corners, impulses), the distributional derivative produces delta contributions automatically:
\[
\frac{d}{dt}(\text{jump}) \sim (\text{jump size})\,\delta(t-t_\ast).
\]
This is the clean way to treat “corner conditions” and is part of the repo’s delta/corner thread.

## 5. Kernel viewpoint: δ and δ′ as operator kernels
On the line, the identity operator has kernel \(\delta(x-y)\); differentiation has kernel \(-\partial_y\delta(x-y)=\partial_x\delta(x-y)\), i.e. a \(\delta'\)-type distribution.
In our half-density-first language the canonical kernels are
\[
K_{\mathrm{Id}}(x,y)=\delta(x-y)\,|dx|^{1/2}|dy|^{1/2},
\qquad
K_{\partial}(x,y)=\partial_x\delta(x-y)\,|dx|^{1/2}|dy|^{1/2},
\]
making it explicit that “derivative information” is carried by derivatives of the delta kernel.

## 6. Promotion queue
1. Add a short clarification to `papers/delta-objects/main.md` distinguishing \(\delta(f')\) (stationary-set delta) from \(\delta'\) (derivative-of-delta probing derivatives at a point).
2. For the “corners/impulses” thread: write a short lemma (possibly in `paper/notes/`) that derives jump conditions from weak Euler–Lagrange using bump approximations to \(\delta\).

