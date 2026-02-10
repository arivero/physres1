# Blackboard: Contact Loop Integrals in 1D/2D/3D (Cutoff Divergences and RG Character)

Date: 2026-02-10

## Purpose
For contact (delta) interactions, the Lippmann–Schwinger \(T\)-matrix reduces to an algebraic form involving the “free resolvent at the origin”
\[
I_d(E;\Lambda)=\int_{|q|<\Lambda}\frac{d^dq}{(2\pi)^d}\;\frac{1}{E-\frac{\hbar^2 q^2}{2m}+i0}.
\]
The divergence structure of \(I_d\) controls what kind of renormalization (and what kind of “RG”) is forced.

This note records the explicit cutoff asymptotics in \(d=1,2,3\) spatial dimensions, emphasizing:
- \(d=1\): finite for the simple \(\delta(x)\) potential (but richer contact families exist),
- \(d=2\): logarithmic divergence \(\Rightarrow\) genuine log running + dimensional transmutation,
- \(d=3\): linear divergence \(\Rightarrow\) power subtraction and an emergent length (scattering length), but no log running.

## Setup and normalization
For \(E>0\) define \(k\) by
\[
E=\frac{\hbar^2 k^2}{2m}.
\]
Then
\[
I_d(E;\Lambda)=\frac{2m}{\hbar^2}\int_{|q|<\Lambda}\frac{d^dq}{(2\pi)^d}\;\frac{1}{k^2-q^2+i0}.
\]
The imaginary parts come from the standard distribution identity
\[
\frac{1}{x+i0}=\mathrm{PV}\frac{1}{x}-i\pi\,\delta(x).
\]

## 1D: no UV divergence (for the simple \(\delta\) potential)
In \(d=1\),
\[
I_1(E;\Lambda)=\frac{2m}{\hbar^2}\int_{-\Lambda}^{\Lambda}\frac{dq}{2\pi}\;\frac{1}{k^2-q^2+i0}.
\]
Evaluating the principal value integral gives
\[
\mathrm{PV}\!\int_{-\Lambda}^{\Lambda}\frac{dq}{k^2-q^2}
=\frac{1}{k}\,\log\!\Bigl(\frac{\Lambda+k}{\Lambda-k}\Bigr),
\]
so
\[
I_1(E;\Lambda)=\frac{m}{\pi\hbar^2}\frac{1}{k}\log\!\Bigl(\frac{\Lambda+k}{\Lambda-k}\Bigr)\;-\;i\,\frac{m}{2\hbar^2 k}.
\]
As \(\Lambda\to\infty\), the real part vanishes like \(O(1/\Lambda)\) and
\[
I_1(E;\Lambda)\to -i\,\frac{m}{2\hbar^2 k}.
\]
Thus, the simplest 1D \(\delta(x)\) interaction does not force UV renormalization via \(I_1\).

Remark: the *space of 1D contact interactions* is richer than just \(\delta(x)\) (self-adjoint extension parameters), and a nontrivial RG flow appears when one studies the full contact family (see the existing ledger entry `[BoyaRivero1994Contact]` as a guide).

## 2D: logarithmic divergence (marginal; transmutation scale)
In \(d=2\),
\[
I_2(E;\Lambda)=\frac{2m}{\hbar^2}\int_{|q|<\Lambda}\frac{d^2q}{(2\pi)^2}\;\frac{1}{k^2-q^2+i0}.
\]
The cutoff evaluation yields the familiar asymptotic
\[
I_2(E;\Lambda)
=-\frac{m}{2\pi\hbar^2}\Bigl[\log\!\Bigl(\frac{\Lambda^2}{k^2}\Bigr)+i\pi\Bigr]
+O\!\Bigl(\frac{k^2}{\Lambda^2}\Bigr),
\]
so renormalization is unavoidably logarithmic and produces an RG-invariant scale \(\kappa_\ast\) (dimensional transmutation).

## 3D: linear divergence (power subtraction; scattering length)
In \(d=3\),
\[
I_3(E;\Lambda)=\frac{2m}{\hbar^2}\int_{|q|<\Lambda}\frac{d^3q}{(2\pi)^3}\;\frac{1}{k^2-q^2+i0}
=\frac{m}{2\pi^2\hbar^2}\int_0^\Lambda dq\;\frac{q^2}{k^2-q^2+i0}.
\]
Split into principal value plus imaginary part:
\[
\mathrm{PV}\!\int_0^\Lambda dq\;\frac{q^2}{k^2-q^2}
=-\Lambda+\frac{k}{2}\log\!\Bigl(\frac{\Lambda+k}{\Lambda-k}\Bigr),
\qquad
\Im\!\int_0^\Lambda dq\;\frac{q^2}{k^2-q^2+i0}=-\pi\frac{k}{2}.
\]
Hence
\[
I_3(E;\Lambda)
=\frac{m}{2\pi^2\hbar^2}\Bigl[-\Lambda+\frac{k}{2}\log\!\Bigl(\frac{\Lambda+k}{\Lambda-k}\Bigr)\Bigr]
\;-\;i\,\frac{mk}{4\pi\hbar^2}.
\]
As \(\Lambda\to\infty\),
\[
I_3(E;\Lambda)= -\frac{m}{2\pi^2\hbar^2}\Lambda\;-\;i\,\frac{mk}{4\pi\hbar^2}\;+\;O\!\Bigl(\frac{k^2}{\Lambda}\Bigr).
\]
Renormalizing a 3D contact interaction therefore requires subtracting a linear divergence and replacing the bare coupling by a physical length scale (e.g. the scattering length) in the finite amplitude, but there is no logarithmic running of the 2D type.

## Promotion queue
1. Promote a concise “dimension table” (1D/2D/3D divergence structure) into `papers/rg-fundamental/main.md` as context for why the 2D delta is the cleanest RG witness.
2. Tie the above to the half-density scalarization discussion: the need for a scale in marginal cases (2D) is sharp, while in relevant cases (3D) the coupling already carries dimension and a length scale enters more directly (but scheme dependence remains in subtraction conventions).

