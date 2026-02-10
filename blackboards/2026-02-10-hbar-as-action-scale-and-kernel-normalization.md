# Blackboard: \(\hbar\) as Action-Scale and Kernel Normalization Parameter

Date: 2026-02-10

## Purpose
Stay close to the quantization mechanism emphasized in the repo:
quantum theory appears naturally once we try to define amplitudes by **stationary extremes of the action** *and* demand a consistent **composition law** under refinement.

This note isolates a simple but structural point:
to make oscillatory action weights and delta-normalized kernel composition meaningful, one is forced to introduce a dimensionful constant with units of **action**.
Physics names that constant \(\hbar\).

We do **not** claim to derive the numerical value of \(\hbar\); we isolate why an \(\hbar\)-like scale is structurally required.

## 1. Dimensionless exponent forces an action scale
If amplitudes are weighted by an oscillatory phase built from the action,
\[
\exp(i\,c_0\,S[q]),
\]
then \(c_0S\) must be dimensionless.
Since \(S\) has dimensions of action, \([S]=[\text{action}]\), we must have
\[
[c_0]=[\text{action}]^{-1}.
\]
Writing \(c_0=1/\hbar\) is simply the statement that the required conversion constant is the Planck constant (up to a possible factor of \(i\) for oscillatory time evolution).

This is the minimal “why \(\hbar\) must appear somewhere” argument: without an action scale, there is no coherent oscillatory weighting built from \(S\).

## 2. Stationary phase: \(\hbar\) as a small parameter selecting extremals
In finite-dimensional form, consider
\[
I(\hbar)=\int_{\mathbb R^n} e^{\frac{i}{\hbar}f(x)}\,a(x)\,dx,
\qquad \hbar\to0^+.
\]
Then (under nondegeneracy assumptions) stationary phase gives a sum over critical points \(x_i\) of \(f\), with leading amplitude weight
\[
\sim (2\pi\hbar)^{n/2}\,\frac{a(x_i)}{\sqrt{|\det(\mathrm{Hess}\,f)(x_i)|}}\times e^{\frac{i}{\hbar}f(x_i)}\times(\text{phase}).
\]
Thus \(\hbar\) controls the “concentration on stationary points” mechanism:
small \(\hbar\) suppresses nonstationary contributions by rapid oscillations.

This is the finite-dimensional prototype for “classical equations reappear as \(\hbar\to0\)” in path integrals.

## 3. Short-time kernel normalization: \(\hbar\) is forced into the prefactor by delta limit
For a free particle in \(\mathbb R^d\) with mass \(m\), the short-time kernel has the schematic form
\[
K_t(x,y)\approx A(t)\,\exp\!\left(\frac{i}{\hbar}\frac{m}{2t}|x-y|^2\right),
\qquad t\to0^+.
\]
Composition and the initial condition force
\[
\lim_{t\to0^+}K_t(x,y)=\delta^{(d)}(x-y)
\]
in distributions, and
\[
K_{t_1+t_2}(x,z)=\int_{\mathbb R^d} K_{t_1}(x,y)\,K_{t_2}(y,z)\,dy.
\]

The Gaussian integral identity implies the only scaling compatible with both composition and the delta limit is
\[
A(t)\propto \left(\frac{m}{2\pi i\hbar t}\right)^{d/2}.
\]
So \(\hbar\) is not merely a “conversion constant” in the exponent: once we demand delta-normalized composition kernels, \(\hbar\) is forced into the normalization prefactor with the same \(t^{-d/2}\) exponent that the half-density/composition analysis singles out.

This connects directly to the repo’s half-density story:
the \(t^{-d/2}\) exponent is forced by composition; \(\hbar\) is the action-scale that makes the prefactor dimensionally and analytically meaningful.

## 4. Promotion queue
1. `paper/main.md`: one short sentence near Section 6.2/6.4 could emphasize that demanding a dimensionless oscillatory weight \(e^{iS/\hbar}\) and a delta-normalized composition kernel forces an action-scale constant (not its numerical value).
2. `papers/planck-area/main.md`: keep the role of \(\hbar\) explicit when forming the Planck area \(L_P^2\sim \hbar G_4/c^3\): the half-density scale requires area in \(D=4\), and \(\hbar\) is what turns \(G\) into an area in physical units.

