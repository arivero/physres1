# Blackboard: Half-Densities in QFT (Spacetime Propagators, Densitized Fields, and a BV Theme)

Date: 2026-02-10

## Purpose
The repo’s half-density-first viewpoint has so far been illustrated mainly in QM kernels and in “quantum statics” (finite-dimensional oscillatory integrals).
This note sketches two QFT-facing extensions:
1. **Spacetime:** propagators/Green functions as **bi-half-density kernels**, and densitized fields as a scalarization choice.
2. **Field space (structural theme):** BV quantization as an integral of half-densities (heuristic here; would need anchors).

The aim is to identify promotion candidates for a QFT-oriented follow-up without turning the cornerstone paper into a full QFT treatise.

## 1. Spacetime propagators as kernels: why half-densities help
In QFT, the free two-point function is the inverse of a kinetic operator \(P\) (e.g. Klein–Gordon).
On a manifold, one typically writes \(P_x G(x,y)=\delta(x,y)\) with a choice of delta normalization that depends on the chosen pairing (volume form).

Reformulation: treat the operator as acting on **half-densities**.
Then the identity kernel is canonical:
\[
K_{\mathrm{Id}}(x,y)=\delta^{(D)}(x-y)\,|dx|^{1/2}|dy|^{1/2},
\]
and the inverse kernel of a formally self-adjoint operator is naturally a bi-half-density, avoiding hidden “\(\sqrt{|g|}\)” conventions in intermediate steps.

## 2. Worked computation: densitized scalar field (\(\phi\mapsto |g|^{1/4}\phi\))
Consider a real scalar field on a fixed Lorentzian/Euclidean background \((M,g)\) with action
\[
S[\phi]=\frac12\int_M d^Dx\,\sqrt{|g|}\;\phi\,P\,\phi,
\qquad
P= -\nabla^2 + m^2 + \xi R \ \ (\text{example}).
\]
The natural inner product for which \(P\) is symmetric is
\[
(\phi_1,\phi_2)_g=\int d^Dx\,\sqrt{|g|}\;\phi_1\phi_2.
\]

Define the **densitized field** (a half-density)
\[
\psi := |g|^{1/4}\phi,
\qquad\text{so that}\qquad
\phi=|g|^{-1/4}\psi.
\]
Then the quadratic form becomes
\[
S[\phi]
=\frac12\int d^Dx\;\psi\;\widetilde P\;\psi,
\qquad
\widetilde P := |g|^{1/4}\,P\,|g|^{-1/4}.
\]
In this representation the pairing is just the coordinate density \(d^Dx\) (no \(\sqrt{|g|}\) factor), and \(\widetilde P\) is symmetric with respect to that pairing by construction.

For the kinetic part \(P_{\mathrm{kin}}=-\nabla^2\), in coordinates one can write explicitly
\[
\nabla^2\phi=|g|^{-1/2}\partial_\mu\!\Bigl(\sqrt{|g|}\,g^{\mu\nu}\partial_\nu\phi\Bigr),
\]
so the conjugated kinetic operator acting on \(\psi\) is
\[
\widetilde P_{\mathrm{kin}}
=-|g|^{1/4}\nabla^2|g|^{-1/4}
=-|g|^{-1/4}\partial_\mu\!\Bigl(\sqrt{|g|}\,g^{\mu\nu}\partial_\nu\bigl(|g|^{-1/4}\,\cdot\,\bigr)\Bigr).
\]
In particular, for compactly supported fields (or with boundary conditions killing boundary terms),
\[
\int d^Dx\;\psi_1\,\widetilde P_{\mathrm{kin}}\psi_2
=\int d^Dx\;\sqrt{|g|}\,g^{\mu\nu}\,
\partial_\mu\bigl(|g|^{-1/4}\psi_1\bigr)\,
\partial_\nu\bigl(|g|^{-1/4}\psi_2\bigr),
\]
which is manifestly symmetric in \((1\leftrightarrow 2)\).

Interpretation:
- choosing the metric half-density \(|g|^{1/4}|dx|^{1/2}\) is a **scalarization gauge** choice for half-densities,
- writing the field as \(\psi\) makes the half-density nature explicit and makes kernels/propagators naturally live as bi-half-densities.

## 3. Propagator kernel as a bi-half-density
Let \(\widetilde G\) be the inverse kernel of \(\widetilde P\) in the coordinate pairing:
\[
(\widetilde P^{-1}f)(x)=\int \widetilde G(x,y)\,f(y)\,d^Dy.
\]
In half-density language, the corresponding canonical kernel is
\[
K_{\widetilde P^{-1}}(x,y)=\widetilde G(x,y)\,|dx|^{1/2}|dy|^{1/2}.
\]
This is exactly the same “kernel as half-density” structure used for QM propagators, now applied to spacetime Green functions.

## 4. Structural QFT theme: BV as integration of half-densities (heuristic)
Gauge theories introduce nontrivial Jacobians (Faddeev–Popov determinants, ghost measures, anomalies).
One structural reason half-densities reappear is that the BV formalism naturally treats the integrand as a **half-density** on an (odd) symplectic space of fields/antifields; the quantum master equation expresses independence of gauge-fixing choices.

This note does not develop BV in detail; it flags it as a plausible “new theme” where half-densities are not merely convenient but canonical in QFT quantization.

## 5. Promotion candidates
1. **New follow-up paper candidate:** start `papers/half-density-qft/main.md` centered on the densitized-field computation and the “propagators as bi-half-densities” message; add BV as an outlook section with a later bibliography cycle.
2. **For `paper/main.md` (optional, one sentence):** near the half-density kernel discussion, add a remark that the same half-density kernel calculus applies to QFT propagators on spacetime, with densitized fields \(|g|^{1/4}\phi\) making this explicit.
3. **For `papers/planck-area/main.md` (optional):** mention that the metric half-density \(|g|^{1/4}|dx|^{1/2}\) is a natural scalarization gauge in QFT on a background, while the Planck-area note studies the stronger background-free universality hypothesis.

## 6. Bibliography queue (future `B` cycle)
If we promote BV content beyond an “outlook” sentence, we should add independent anchors for:
1. BV integrals/half-densities and the BV Laplacian,
2. densitized fields / Laplacians acting on half-densities in curved backgrounds.
