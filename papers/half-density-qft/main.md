---
title: "Half-Densities in QFT: Propagators as Bi-Half-Density Kernels"
author: []
date: ""
abstract: |
  In QFT, the basic free object is the inverse of a kinetic operator, i.e. a propagator/Green kernel. On a manifold, writing “\(P_x G(x,y)=\delta(x,y)\)” hides conventions: which volume form defines the adjoint, and which delta normalization realizes the identity. This note adopts a single organizing choice: treat fields (or kernels) as **half-densities**, so the identity kernel is canonical and kernel composition is coordinate-invariant without choosing a background measure. A worked computation shows how a scalar field on \((M,g)\) becomes a half-density \(\psi=|g|^{1/4}\phi\), with kinetic operator \(\widetilde P=|g|^{1/4}P|g|^{-1/4}\) symmetric in the coordinate pairing. We also record a kernel-level remark: local counterterms/contact terms appear as distributions supported on the diagonal \((x=y)\) (delta kernels and their derivatives), which are most naturally expressed using the canonical bi-half-density delta.
  
  This note is written to be readable on its own; it also connects to broader themes (scalarization scales and RG as compatibility) developed elsewhere.
---

# 1. Purpose and Scope
This note is intentionally narrow:
1. establish the “kernel as bi-half-density” semantics for spacetime propagators in QFT,
2. isolate what is **canonical** (half-density kernels, identity delta kernel) versus what is **a convention** (scalarization choices such as \(\sqrt{|g|}\)),
3. give one explicit computation that can later be promoted (densitized scalar field).

BV/BRST/field-space half-densities are only flagged as outlook here; a full treatment would require additional dedicated sources and is beyond scope.

# 2. Kernels on a Manifold: half-densities make the identity canonical
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

`Derivation D1.1a (Normalization witness: why \(\varepsilon^{-D/2}\) appears).`
In local coordinates on \(\mathbb{R}^D\), a standard approximate identity is the Gaussian family
\[
\rho_\varepsilon(x)=\frac{1}{(2\pi\varepsilon)^{D/2}}\exp\!\Bigl(-\frac{|x|^2}{2\varepsilon}\Bigr),
\qquad \varepsilon>0.
\]
The exponent \(D/2\) is forced by normalization: by the change of variables \(x=\sqrt{\varepsilon}\,u\),
\[
\int_{\mathbb{R}^D}\rho_\varepsilon(x)\,d^Dx
=(2\pi\varepsilon)^{-D/2}\,\varepsilon^{D/2}\int_{\mathbb{R}^D}e^{-|u|^2/2}\,d^Du
=1.
\]
Thus \(\rho_\varepsilon\rightharpoonup\delta^{(D)}\) as \(\varepsilon\to0^+\), and the diagonal delta kernel is the distributional limit of families whose normalization scales as \(\varepsilon^{-D/2}\).

# 3. Worked computation: densitized scalar field \(\psi=|g|^{1/4}\phi\)
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

`Derivation D1.3 (Conformal metric expansion; D=4 simplification in the conformal class).`
As a worked expansion, take a conformally flat background \(g_{\mu\nu}=e^{2\sigma(x)}\delta_{\mu\nu}\) (Euclidean for simplicity). Then
\(\sqrt{|g|}=e^{D\sigma}\), \(|g|^{1/4}=e^{D\sigma/2}\), \(g^{\mu\nu}=e^{-2\sigma}\delta^{\mu\nu}\), and one finds
\[
\Delta_g f
=|g|^{-1/2}\partial_\mu\!\bigl(\sqrt{|g|}\,g^{\mu\nu}\partial_\nu f\bigr)
=e^{-2\sigma}\bigl(\partial^2 f+(D-2)\,\partial\sigma\cdot\partial f\bigr).
\]
Setting \(\phi=|g|^{-1/4}\psi=e^{-D\sigma/2}\psi\) and expanding derivatives gives the conjugated operator
\[
\widetilde\Delta\psi:=|g|^{1/4}\Delta_g|g|^{-1/4}\psi
=e^{-2\sigma}\Big(
\partial^2\psi
-2\,\partial\sigma\cdot\partial\psi
-\frac{D}{2}(\partial^2\sigma)\,\psi
+\frac{D(4-D)}{4}(\partial\sigma)^2\,\psi
\Big),
\]
so the kinetic operator \(\widetilde P_{\mathrm{kin}}=-\widetilde\Delta\) contains a term proportional to \(D(4-D)(\partial\sigma)^2\), which cancels at \(D=4\) in this conformal ansatz.

Scope disclaimer: this is recorded only as a checked simplification for \(\widetilde\Delta\) in this metric class; it is not, by itself, a dimension-selection claim or a conformal-invariance statement. A symbolic coefficient/sign check (SymPy) confirms the expansion.

Interpretation:
- the metric half-density \(|g|^{1/4}|dx|^{1/2}\) is a **scalarization gauge** (a choice of reference half-density) on a fixed background,
- writing the field as \(\psi\) makes the “half-density prioritary” viewpoint explicit: both the field and the kernels live naturally as half-density objects.

# 4. Propagators/Green functions as bi-half-density kernels
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

Equivalently, if \(G_g(x,y)\) denotes the usual **scalar** Green function for \(P\) defined with respect to the metric pairing \(\int \sqrt{|g|}\,d^Dy\) (so \((P^{-1}J)(x)=\int G_g(x,y)\,J(y)\,\sqrt{|g(y)|}\,d^Dy\)), then the kernels are related by
\[
\widetilde G(x,y)=|g(x)|^{1/4}\,G_g(x,y)\,|g(y)|^{1/4}.
\]

This is exactly the same “kernel as bi-half-density” structure used for QM propagators in the main manuscript, now applied to spacetime Green functions in QFT.

`Remark D4.1 (Doubling: densities live on \(M\times M\)).`
Half-density kernels also make the amplitude-vs-density doubling completely explicit. Let \(U_t\) be a (unitary) evolution operator on half-densities with kernel \(K_t(x,y)\). Then a density operator \(\rho_t=U_t\rho_0U_t^{-1}\) has a kernel satisfying
\[
K_{\rho_t}(x,y)
=\int_{M\times M} K_t(x,x')\,K_{\rho_0}(x',y')\,\overline{K_t(y,y')}.
\]
So densities naturally propagate by a kernel on the doubled space \(M\times M\), built from the forward kernel and its conjugate. This is the kernel-level origin of bra/ket (forward/backward) doubling in real expectation values; a fuller discussion is beyond this note’s scope.

# 5. Contact terms and counterterms as diagonal delta kernels (kernel-level remark)
In QFT, divergences are removed by adding local counterterms to the action, e.g.
\(\delta m^2\,\phi^2\), \(\delta Z\,(\partial\phi)^2\), curvature couplings, etc.
At the operator/kernel level this means:
the kinetic operator \(P\) is modified by local (differential) operators, and therefore its kernel acquires **distributions supported on the diagonal** \(x=y\).

In the half-density kernel language the diagonal object is canonical:
\[
K_{\mathrm{Id}}(x,y)=\delta^{(D)}(x-y)\,|dx|^{1/2}|dy|^{1/2}.
\]
Multiplication counterterms correspond to \(c(x)\,K_{\mathrm{Id}}(x,y)\), and derivative counterterms correspond to derivatives acting on the delta kernel (e.g. \(\partial_x\delta^{(D)}(x-y)\) and higher).

`Remark D5.1 (Derivative of the diagonal delta kernel; coordinate-free identity).`
The slogan “\(\partial_x\delta(x-y)=-\partial_y\delta(x-y)\)” has a clean, connection-free formulation in the half-density kernel calculus. The identity kernel \(K_{\mathrm{Id}}\) is invariant under diagonal diffeomorphisms \((\Phi\times\Phi)\), so for any vector field \(V\) on \(M\) one has
\[
(\mathcal L_{V_x}+\mathcal L_{V_y})\,K_{\mathrm{Id}}=0,
\qquad\text{hence}\qquad
\mathcal L_{V_x}K_{\mathrm{Id}}=-\mathcal L_{V_y}K_{\mathrm{Id}},
\]
where \(\mathcal L\) is the Lie derivative acting on half-densities. In local coordinates, taking \(V=\partial/\partial x^\mu\) recovers \(\partial_{x^\mu}\delta^{(D)}(x-y)=-\partial_{y^\mu}\delta^{(D)}(x-y)\). This is the kernel-level mechanism behind “moving derivatives between slots” in integration by parts and in contact-term identities.

`Remark D5.2 (Point splitting produces \u03b4' contact terms).`
Point splitting makes the simplest derivative contact term explicit:
in one dimension,
\[
\frac{\delta(x+\varepsilon)-\delta(x)}{\varepsilon}\xrightarrow[\varepsilon\to 0]{}\delta'(x),
\qquad \langle\delta',\varphi\rangle=-\varphi'(0).
\]
This limit is the distributional companion of the “difference quotient as divergence + subtraction” toy model.

This framing is useful for two reasons:
1. it makes “locality = diagonal support” literal at the kernel level,
2. it separates the canonical distributional objects from scheme-dependent scalarizations and finite-subtraction conventions.

# 6. Link to the half-density scale program (where Planck-area enters conditionally)
On a fixed background \((M,g)\), the metric provides a natural reference half-density \(|g|^{1/4}|dx|^{1/2}\). The Planck-area program begins only when we ask for a **background-free** scalarization convention that turns half-density amplitudes into universal dimensionless numbers. A separate note develops that stronger hypothesis ladder; it is not needed for the present kernel/propagator semantics.

This paper’s role is only to show that half-densities are not a QM quirk: the same kernel semantics is already present in standard QFT propagator definitions, once the hidden measure conventions are made explicit.

# 7. Outlook: BV half-densities
Gauge theories suggest a second, deeper appearance of half-densities: the BV formalism treats the integrand as a (half-)density on an (odd) symplectic space of fields/antifields, and the quantum master equation expresses independence of gauge-fixing choices. This note does not develop BV beyond this remark; doing so responsibly would require additional authoritative sources and a separate dedicated treatment.
