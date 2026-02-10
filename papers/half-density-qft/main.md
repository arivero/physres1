# Half-Densities in QFT: Propagators as Bi-Half-Density Kernels (Draft)

## Abstract
In QFT, the basic free object is the inverse of a kinetic operator, i.e. a propagator/Green kernel. On a manifold, writing “\(P_x G(x,y)=\delta(x,y)\)” hides conventions: which volume form defines the adjoint, and which delta normalization realizes the identity. This draft promotes a simple organizing choice consistent with the repo’s main paper: treat fields (or kernels) as **half-densities**, so the identity kernel is canonical and kernel composition is coordinate-invariant without choosing a background measure. A worked computation shows how a scalar field on \((M,g)\) becomes a half-density \(\psi=|g|^{1/4}\phi\), with kinetic operator \(\widetilde P=|g|^{1/4}P|g|^{-1/4}\) symmetric in the coordinate pairing. We also record a kernel-level remark: local counterterms/contact terms are precisely diagonal \(\delta(x-y)\) (and derivatives) in the kernel, which is most naturally expressed as the canonical bi-half-density delta.

This note is a dependent follow-up to `paper/main.md` and relates to `papers/planck-area/main.md` (scalarization scales) and `papers/rg-fundamental/main.md` (RG as compatibility).

## 1. Purpose and Status
This draft is intentionally narrow:
1. establish the “kernel as bi-half-density” semantics for spacetime propagators in QFT,
2. isolate what is **canonical** (half-density kernels, identity delta kernel) versus what is **a convention** (scalarization choices such as \(\sqrt{|g|}\)),
3. give one explicit computation that can later be promoted (densitized scalar field).

BV/BRST/field-space half-densities are only flagged as outlook and will require an explicit bibliography cycle if promoted beyond a paragraph.

## 2. Kernels on a Manifold: half-densities make the identity canonical
Let \(M\) be a \(D\)-dimensional manifold. A half-density is a section of \(|\Lambda^D T^\ast M|^{1/2}\).

The key operational point (as in the main paper’s kernel-composition spine) is:
if an operator acts on half-densities, then its Schwartz kernel is naturally a **bi-half-density**
\[
K_A(x,y)=a(x,y)\,|dx|^{1/2}|dy|^{1/2},
\]
and composition is intrinsic:
\[
(A\circ B)(x,z)=\int_M K_A(x,y)\,K_B(y,z),
\]
because the product in the intermediate variable \(y\) is a density.

`Derivation D1.1 (Identity kernel).`
The identity operator on half-densities has kernel
\[
K_{\mathrm{Id}}(x,y)=\delta^{(D)}(x-y)\,|dx|^{1/2}|dy|^{1/2},
\]
which is canonical: it does not require choosing a background density/volume form.

This is the same object used repeatedly in the repo’s half-density scaling thread: the diagonal delta kernel is the universal distributional witness of the \(\varepsilon^{-D/2}\) exponent (see `papers/planck-area/main.md`, Derivation D1.2b).

## 3. Worked computation: densitized scalar field \(\psi=|g|^{1/4}\phi\)
Consider a real scalar field on a fixed Lorentzian/Euclidean background \((M,g)\) with quadratic action
\[
S[\phi]=\frac12\int_M d^Dx\,\sqrt{|g|}\;\phi\,P\,\phi,
\qquad
P=-\nabla^2 + m^2 + \xi R \ \ (\text{example}).
\]
The pairing for which \(P\) is symmetric is
\[
(\phi_1,\phi_2)_g=\int d^Dx\,\sqrt{|g|}\;\phi_1\phi_2.
\]

Define the densitized field (a half-density in coordinates)
\[
\psi := |g|^{1/4}\phi,
\qquad\text{so}\qquad
\phi=|g|^{-1/4}\psi.
\]
Then the action becomes
\[
S[\phi]
=\frac12\int d^Dx\;\psi\;\widetilde P\;\psi,
\qquad
\widetilde P := |g|^{1/4}P|g|^{-1/4},
\]
so the pairing is now just the coordinate density \(d^Dx\).

`Derivation D1.2 (Explicit form of the conjugated kinetic operator).`
For \(P_{\mathrm{kin}}=-\nabla^2\) one has in coordinates
\[
\nabla^2\phi=|g|^{-1/2}\partial_\mu\!\Bigl(\sqrt{|g|}\,g^{\mu\nu}\partial_\nu\phi\Bigr),
\]
hence
\[
\widetilde P_{\mathrm{kin}}
=-|g|^{1/4}\nabla^2|g|^{-1/4}
=-|g|^{-1/4}\partial_\mu\!\Bigl(\sqrt{|g|}\,g^{\mu\nu}\partial_\nu\bigl(|g|^{-1/4}\,\cdot\,\bigr)\Bigr).
\]
Assuming compact support (or boundary conditions killing boundary terms),
\[
\int d^Dx\;\psi_1\,\widetilde P_{\mathrm{kin}}\psi_2
=\int d^Dx\;\sqrt{|g|}\,g^{\mu\nu}\,
\partial_\mu\bigl(|g|^{-1/4}\psi_1\bigr)\,
\partial_\nu\bigl(|g|^{-1/4}\psi_2\bigr),
\]
which is manifestly symmetric under \((1\leftrightarrow 2)\).

Interpretation:
- the metric half-density \(|g|^{1/4}|dx|^{1/2}\) is a **scalarization gauge** (a choice of reference half-density) on a fixed background,
- writing the field as \(\psi\) makes the “half-density prioritary” viewpoint explicit: both the field and the kernels live naturally as half-density objects.

## 4. Propagators/Green functions as bi-half-density kernels
Let \(\widetilde G\) be the inverse kernel of \(\widetilde P\) with respect to the coordinate pairing:
\[
(\widetilde P^{-1}f)(x)=\int \widetilde G(x,y)\,f(y)\,d^Dy,
\qquad
\widetilde P_x\,\widetilde G(x,y)=\delta^{(D)}(x-y).
\]
Then the corresponding canonical bi-half-density kernel is
\[
K_{\widetilde P^{-1}}(x,y)=\widetilde G(x,y)\,|dx|^{1/2}|dy|^{1/2}.
\]

This is exactly the same “kernel as bi-half-density” structure used for QM propagators in the main manuscript, now applied to spacetime Green functions in QFT.

## 5. Contact terms and counterterms as diagonal delta kernels (kernel-level remark)
In QFT, divergences are removed by adding local counterterms to the action, e.g.
\(\delta m^2\,\phi^2\), \(\delta Z\,(\partial\phi)^2\), curvature couplings, etc.
At the operator/kernel level this means:
the kinetic operator \(P\) is modified by local (differential) operators, and therefore its kernel acquires **distributions supported on the diagonal** \(x=y\).

In the half-density kernel language the diagonal object is canonical:
\[
K_{\mathrm{Id}}(x,y)=\delta^{(D)}(x-y)\,|dx|^{1/2}|dy|^{1/2}.
\]
Multiplication counterterms correspond to \(c(x)\,K_{\mathrm{Id}}(x,y)\), and derivative counterterms correspond to derivatives acting on the delta kernel (e.g. \(\partial_x\delta^{(D)}(x-y)\) and higher).

This framing is useful for two reasons:
1. it makes “locality = diagonal support” literal at the kernel level,
2. it separates the canonical distributional objects from scheme-dependent scalarizations and finite-subtraction conventions.

For a quick distribution-theory dictionary distinguishing \(\delta\), \(\delta'\), and \(\delta(f')\), see `blackboards/2026-02-10-distribution-theory-for-extremals.md`.

## 6. Link to the half-density scale program (where Planck-area enters conditionally)
On a fixed background \((M,g)\), the metric provides a natural reference half-density \(|g|^{1/4}|dx|^{1/2}\). The Planck-area program begins only when we ask for a **background-free** scalarization convention that turns half-density amplitudes into universal dimensionless numbers. That stronger hypothesis ladder is developed in `papers/planck-area/main.md`.

This paper’s role is only to show that half-densities are not a QM quirk: the same kernel semantics is already present in standard QFT propagator definitions, once the hidden measure conventions are made explicit.

## 7. Outlook: BV half-densities (queued for a later bibliography cycle)
Gauge theories suggest a second, deeper appearance of half-densities: the BV formalism treats the integrand as a (half-)density on an (odd) symplectic space of fields/antifields, and the quantum master equation expresses independence of gauge-fixing choices. This draft will not develop BV without independent anchors; if we promote this beyond an “outlook” paragraph, open a dedicated `B` cycle and ingest authoritative sources.

