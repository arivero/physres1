---
title: "Half-Densities in QFT: Propagators as Bi-Half-Density Kernels"
author: "Alejandro Rivero"
date: "2026"
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
if an operator acts on half-densities, then its Schwartz kernel is naturally a **bi-half-density** [BatesWeinstein1997] [Hormander2003]
\[
K_A(x,y)=a(x,y)\,|dx|^{1/2}|dy|^{1/2},
\]
and composition is intrinsic:
\[
(A\circ B)(x,z)=\int_M K_A(x,y)\,K_B(y,z),
\]
because the product in the intermediate variable \(y\) is a density.

`Derivation HD-D1.1 (Identity kernel).`
The identity operator on half-densities has kernel
\[
K_{\mathrm{Id}}(x,y)=\delta^{(D)}(x-y)\,|dx|^{1/2}|dy|^{1/2},
\]
which is canonical: it does not require choosing a background density/volume form.

`Derivation HD-D1.1a (Normalization witness: why \(\varepsilon^{-D/2}\) appears).`
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
Consider a real scalar field on a fixed Lorentzian/Euclidean background \((M,g)\) [Wald1984] with quadratic action
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

`Derivation HD-D1.2 (Explicit form of the conjugated kinetic operator).`
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

`Derivation HD-D1.3 (Conformal metric expansion; D=4 simplification in the conformal class).`
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
- writing the field as \(\psi\) makes the "half-density prioritary" viewpoint explicit: both the field and the kernels live naturally as half-density objects.

`Remark HD-D1.3a (Half-density conjugation is distinct from conformal coupling).`
The conjugated Laplacian \(\widetilde\Delta=|g|^{1/4}\Delta_g|g|^{-1/4}\) acts on sections of the half-density bundle, which carry conformal weight \(D/2\). The Yamabe operator \(Y=-\Delta_g+\frac{D-2}{4(D-1)}R\) acts on conformal weight \((D-2)/2\). These are different operators: their first-order, Laplacian, and potential terms all differ.

In particular, the zeroth-order ("potential") terms generated by the half-density conjugation in the conformal class cannot be written as \(\xi R\) for any single value of \(\xi\). Matching the \(\partial^2\sigma\) coefficient gives \(\xi=D/(4(D-1))\), but the \((\partial\sigma)^2\) coefficient then has a residual mismatch of \(D/2\). Thus the \(D=4\) cancellation of the \((\partial\sigma)^2\) term in \(\widetilde\Delta\) is a property of the half-density weight, not of conformal invariance or conformal coupling (which corresponds to \(\xi_{\mathrm{conf}}=(D-2)/(4(D-1))\)).

The detailed cancellation pattern (which terms vanish, which acquire residual mismatches) is conformal-class-specific: it relies on the conformal structure (contracted Christoffel symbols proportional to \(\partial\sigma\)). However, the *leading-order coefficient* of the conjugation potential is universal across all metrics, as the following remark shows.

`Remark HD-D1.3b (Normal-coordinate computation: the universal coefficient \(1/6\) matches conformal coupling only at \(D=4\)).`
For a general Riemannian \((M,g)\), the conjugation potential is \(V=|\nabla\omega|^2_g - \Delta_g\omega\) with \(\omega=\tfrac{1}{4}\ln|g|\). In Riemannian normal coordinates centered at a point \(p\), the metric determinant expands as \(|g(x)|=1-\tfrac{1}{3}R_{\mu\nu}x^\mu x^\nu + O(x^3)\), so \(\omega=-\tfrac{1}{12}R_{\mu\nu}x^\mu x^\nu+O(x^3)\). (In the conformally flat setting of Derivation HD-D1.3, \(\omega=(D/4)\sigma\); the present computation holds for arbitrary Riemannian metrics.) At \(p\): the gradient \(\nabla\omega\) vanishes (quadratic in \(x\)), the Hessian is \(-\tfrac{1}{6}R_{\alpha\beta}\), and the Laplacian is \(\Delta_g\omega=-\tfrac{1}{6}R\). Hence
\[
V(p)=\tfrac{1}{6}R.
\]
This coefficient \(1/6\) is **dimension-independent**: it holds for all \(D\) and for all Riemannian metrics, at leading curvature order. Conformal coupling contributes \(\xi_{\mathrm{conf}}R\) with \(\xi_{\mathrm{conf}}=(D-2)/(4(D-1))\), and \(\xi_{\mathrm{conf}}=1/6\) if and only if \(D=4\). Thus, in \(D=4\) and only \(D=4\), the total curvature potential \((\xi_{\mathrm{conf}}-1/6)R\) of the conformally coupled half-density field vanishes at leading order — the half-density weight exactly absorbs the conformal coupling. (This is the same \(1/6\) that appears in the first Seeley-DeWitt coefficient \(a_1(x,x)=(\tfrac{1}{6}-\xi)R\) [Vassilevich2003].)

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

This is exactly the same "kernel as bi-half-density" structure used for QM propagators [BatesWeinstein1997] [deGosson2018ShortTimePropagators], now applied to spacetime Green functions in QFT.

`Example HD-D4.3 (Flat-space massless propagator).`
On flat \(D\)-dimensional Euclidean space, the massless scalar propagator is
\[
G(x,y)=\frac{\Gamma(D/2-1)}{(4\pi)^{D/2}\,|x-y|^{D-2}}.
\]
The exponent \(D/2\) in \((4\pi)^{D/2}\) is the same normalization exponent as in Derivation HD-D1.1a: it encodes the volume-scaling of the approximate identity. The singularity \(|x-y|^{2-D}\) has the same dimensional behavior as \(\varepsilon^{-D/2}\) when the regularization scale \(\varepsilon\) scales as \(|x-y|^2\) (the natural diffusion time scale). In flat space \(|g|=1\), so the bi-half-density kernel \(\widetilde G=G\); the propagator's normalization is canonically tied to the identity kernel's \(D/2\) scaling.

`Remark HD-D4.1 (Doubling: densities live on \(M\times M\)).`
Half-density kernels also make the amplitude-vs-density doubling completely explicit. Let \(U_t\) be a (unitary) evolution operator on half-densities with kernel \(K_t(x,y)\). Then a density operator \(\rho_t=U_t\rho_0U_t^{-1}\) has a kernel satisfying
\[
K_{\rho_t}(x,y)
=\int_{M\times M} K_t(x,x')\,K_{\rho_0}(x',y')\,\overline{K_t(y,y')}.
\]
So densities naturally propagate by a kernel on the doubled space \(M\times M\), built from the forward kernel and its conjugate. This is the kernel-level origin of bra/ket (forward/backward) doubling in real expectation values; a fuller discussion is beyond this note's scope.

`Remark HD-D4.2 (Heat kernel as bi-half-density; trace without \(\sqrt{|g|}\)).`
The heat kernel \(K(t;x,y)\) of \(P\) on a Riemannian \((M,g)\) has the DeWitt-Schwinger short-time expansion [DeWitt1965] [Vassilevich2003]
\[
K(t;x,y)\sim(4\pi t)^{-D/2}\,\Delta^{1/2}(x,y)\,e^{-s(x,y)/(2t)}\sum_{n\ge0}a_n(x,y)\,t^n,
\]
where \(s(x,y)\) is Synge's world function (half the squared geodesic distance; not to be confused with the conformal factor \(\sigma\) of Derivation HD-D1.3), \(\Delta(x,y)\) the Van Vleck determinant (the Jacobian of the exponential map, normalized so \(\Delta(x,x)=1\)), and \(a_n\) the Seeley-DeWitt coefficients (\(a_0(x,x)=1\)). Since \(\Delta^{1/2}(x,y)\) is a bi-scalar and \(|g(x)|^{1/4}\) provides a half-density at \(x\), the combination \(|g(x)|^{1/4}\,\Delta^{1/2}(x,y)\,|g(y)|^{1/4}\) transforms as a bi-half-density. Define
\[
\widetilde K(t;x,y):=|g(x)|^{1/4}\,K(t;x,y)\,|g(y)|^{1/4}.
\]
At coincidence (\(s=0\), \(\Delta=1\)), the leading behavior \(\widetilde K(t;x,x)\sim(4\pi t)^{-D/2}\) matches exactly the normalization of Derivation HD-D1.1a: the heat kernel is the time-parameterized approximate identity, \(\widetilde K(t)\to K_{\mathrm{Id}}\) distributionally as \(t\to0^+\). The trace is then
\[
\mathrm{Tr}\,K(t)=\int_M\widetilde K(t;x,x)\,d^Dx,
\]
where the \(\sqrt{|g|}\) factor of the standard trace formula has been absorbed into the definition of \(\widetilde K\). For the massless operator \(P=-\nabla^2+\xi R\), the first Seeley-DeWitt coefficients at coincidence are \(a_1(x,x)=(1/6-\xi)R\) and \(a_2(x,x)\) is a linear combination of \(R^2\), \(R_{\mu\nu}R^{\mu\nu}\), \(\Box R\); these encode the curvature counterterms that appear in Section 5's contact-term analysis.

`Remark HD-D4.2a (Trace anomaly and the index theorem from \(a_{D/2}\)).`
In even dimension \(D=2n\), the coefficient \(a_n(x,x)\) is a local curvature polynomial of mass dimension \(D\), and its integral \(\int_M a_n\,d^Dx\) is scheme-independent. Two fundamental results follow: the conformal trace anomaly \(\langle T^\mu{}_\mu\rangle\propto a_{D/2}(x,x)\) for quantum fields on curved backgrounds [Vassilevich2003], and the Atiyah-Singer index theorem, where the index of a Dirac-type operator equals \(\int_M a_{D/2}\,d^Dx\) (up to normalization) via the McKean-Singer supertrace formula. In the half-density framework, both calculations are manifestly coordinate-free: the intrinsic trace of Remark HD-D4.2 absorbs the metric factor, and the topological content resides entirely in the Seeley-DeWitt coefficients — geometric invariants of \(P\), not of the coordinate choice.

`Remark HD-D4.4 (Van Vleck determinant as the geometric half-density factor).`
The Van Vleck determinant \(\Delta(x,y)\) appearing in Remark HD-D4.2 satisfies the transport equation [DeWitt1965]
\[
\nabla_\mu\!\bigl(\Delta^{1/2}(x,y)\,\nabla^{\mu}s(x,y)\bigr)=D\,\Delta^{1/2}(x,y),
\]
where the derivative acts in the \(x\) variable. This means \(\Delta^{1/2}\) is the Jacobian converting coordinate volume to geodesic normal-coordinate volume: it is the half-density factor intrinsic to the geometry. Its appearance in the heat kernel expansion is therefore not accidental — it ensures the leading kernel \((4\pi t)^{-D/2}\Delta^{1/2}(x,y)\,e^{-s/(2t)}\) transforms as a proper bi-half-density under coordinate changes in both slots.

`Remark HD-D4.5 (Proper-time representation unifies the D/2 exponent).`
The propagator is the proper-time (Schwinger) integral of the heat kernel: \(G(x,y)=\int_0^\infty K(t;x,y)\,dt\). The exponent \(D/2\) recurs throughout: identity-kernel normalization \((2\pi\varepsilon)^{-D/2}\) (Derivation HD-D1.1a), heat-kernel short-time behavior \((4\pi t)^{-D/2}\) (Remark HD-D4.2), flat propagator prefactor \(\Gamma(D/2-1)/(4\pi)^{D/2}\) (Example HD-D4.3), and mass-counterterm UV degree \(\Lambda^{D-2}=\Lambda^{2(D/2-1)}\) (Remark HD-D5.3). The proper-time integral converts the heat kernel's \(t^{-D/2}\) into the propagator's \(\Gamma(D/2-1)\) via Schwinger parametrization, making explicit that all four manifestations trace back to the same half-density volume-scaling origin.

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

`Remark HD-D5.3 (Mass counterterm scaling from the D/2 exponent).`
The mass counterterm \(\delta m^2\) is a scalar multiple of \(K_{\mathrm{Id}}\). Its UV degree of divergence follows from the heat kernel at coincidence: the propagator at \(x=y\) is formally \(\int_0^\infty K(t;x,x)\,dt\), and Remark HD-D4.2 gives \(K(t;x,x)\sim(4\pi t)^{-D/2}\) as \(t\to 0^+\). The UV divergence arises from small proper times (large momenta \(k^2\sim 1/t\)); introducing a proper-time cutoff at \(t_{\min}=\Lambda^{-2}\) removes the divergent piece \(\int_0^{\Lambda^{-2}} t^{-D/2}\,dt\sim\Lambda^{D-2}\) for \(D>2\). Thus the same \(D/2\) exponent that normalizes the identity kernel (Derivation HD-D1.1a) controls the UV degree of divergence of the mass correction: \(\Lambda^{D-2}=\Lambda^{2(D/2-1)}\).

`Remark HD-D5.3a (Derivative counterterm scaling from the Seeley-DeWitt hierarchy).`
The wave function renormalization counterterm \(\delta Z\,(\partial\phi)^2\) involves a derivative of the diagonal delta kernel (Remark HD-D5.1). Its UV degree follows from the next Seeley-DeWitt coefficient: the \(a_1(x,x)\,t\) contribution shifts the proper-time integrand from \(t^{-D/2}\) (mass counterterm, Remark HD-D5.3) to \(t^{1-D/2}\), giving \(\int_0^{\Lambda^{-2}}t^{1-D/2}\,dt\sim\Lambda^{D-4}\). Each subsequent coefficient \(a_n\) reduces the divergence by \(\Lambda^2\), so that in \(D=4\) the mass counterterm is quadratic (\(\Lambda^2\)), the wave function counterterm is logarithmic (\(\ln\Lambda\)), and all higher counterterms are finite — the standard renormalizability count for a scalar field, organized entirely by the \(D/2\) exponent.

`Remark HD-D5.3b (Dimensional regularization and the D/2 pole structure).`
In dimensional regularization, the proper-time integral for the \(a_n\) contribution becomes \(\int_0^\infty t^{n-D/2}e^{-m^2 t}\,dt=\Gamma(n+1-D/2)/m^{2(n+1-D/2)}\). The \(\Gamma\)-function pole at \(D=2(n+1)\) is the dim-reg counterpart of the cutoff divergence \(\Lambda^{D-2(n+1)}\) of Remarks HD-D5.3–HD-D5.3a: the mass counterterm (\(n=0\)) has its pole at \(D=2\), the wave function counterterm (\(n=1\)) at \(D=4\), and each subsequent counterterm at \(D=2(n+1)\). The hierarchy is scheme-independent: whether one uses a proper-time cutoff or dimensional continuation, the same \(D/2\) exponent determines which counterterms diverge in a given dimension [Vassilevich2003].

`Remark HD-D5.4 (Functional determinant from the heat-kernel trace).`
The spectral \(\zeta\)-function \(\zeta_P(s)=\mathrm{Tr}\,P^{-s}=\Gamma(s)^{-1}\int_0^\infty t^{s-1}\,\mathrm{Tr}\,K(t)\,dt\) inherits its pole structure from the small-\(t\) asymptotics of the heat-kernel trace: the Seeley-DeWitt expansion gives simple poles at \(s=D/2-n\) (\(n=0,1,2,\ldots\)), again controlled by the \(D/2\) exponent. The functional determinant \(\det P:=\exp(-\zeta_P'(0))\) is finite, coordinate-independent, and — in the half-density framework — requires no extraneous volume-form choice: the trace \(\mathrm{Tr}\,K(t)=\int_M\widetilde K(t;x,x)\,d^Dx\) is intrinsic since \(\widetilde K\) absorbs the \(\sqrt{|g|}\) factor (Remark HD-D4.2) [Vassilevich2003].

`Remark HD-D5.1 (Derivative of the diagonal delta kernel; coordinate-free identity).`
The slogan “\(\partial_x\delta(x-y)=-\partial_y\delta(x-y)\)” has a clean, connection-free formulation in the half-density kernel calculus. The identity kernel \(K_{\mathrm{Id}}\) is invariant under diagonal diffeomorphisms \((\Phi\times\Phi)\), so for any vector field \(V\) on \(M\) one has
\[
(\mathcal L_{V_x}+\mathcal L_{V_y})\,K_{\mathrm{Id}}=0,
\qquad\text{hence}\qquad
\mathcal L_{V_x}K_{\mathrm{Id}}=-\mathcal L_{V_y}K_{\mathrm{Id}},
\]
where \(\mathcal L\) is the Lie derivative acting on half-densities. In local coordinates, taking \(V=\partial/\partial x^\mu\) recovers \(\partial_{x^\mu}\delta^{(D)}(x-y)=-\partial_{y^\mu}\delta^{(D)}(x-y)\). This is the kernel-level mechanism behind “moving derivatives between slots” in integration by parts and in contact-term identities.

`Remark HD-D5.2 (Point splitting produces δ' contact terms).`
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
Gauge theories suggest a second, deeper appearance of half-densities: the BV formalism treats the integrand as a (half-)density on an (odd) symplectic space of fields/antifields, and the quantum master equation expresses independence of gauge-fixing choices [Costello2011]. This note does not develop BV beyond this remark; doing so responsibly would require additional authoritative sources and a separate dedicated treatment.

# References

1. [deGosson2018ShortTimePropagators] Maurice A. de Gosson, "Short-Time Propagators and the Born–Jordan Quantization Rule," *Entropy* 20(11) (2018), 869. DOI `10.3390/e20110869`. OA: PubMed Central (PMCID: PMC 7512447).
2. [BatesWeinstein1997] Sean Bates and Alan Weinstein, "Lectures on the Geometry of Quantization," Berkeley Mathematics Lecture Notes, vol. 8, AMS, 1997. ISBN `978-0-8218-0798-9`. OA: <https://math.berkeley.edu/~alanw/GofQ.pdf>. (Canonical reference for half-density formalism in geometric quantization; half-density kernels and composition.)
3. [Hormander2003] Lars Hörmander, *The Analysis of Linear Partial Differential Operators I: Distribution Theory and Fourier Analysis*, 2nd ed., Springer, 2003. DOI `10.1007/978-3-642-61497-2`. (Schwartz kernel theorem; distributional calculus for PDE Green functions.)
4. [Wald1984] Robert M. Wald, *General Relativity*, University of Chicago Press, 1984. ISBN `978-0-226-87033-5`. (Conformal coupling, scalar fields on curved backgrounds, standard baseline for QFT on curved spacetimes.)
5. [Costello2011] Kevin Costello, *Renormalization and Effective Field Theory*, Mathematical Surveys and Monographs, vol. 170, AMS, 2011. ISBN `978-0-8218-5288-0`. (BV formalism with half-density integration on field space.)
6. [DeWitt1965] Bryce S. DeWitt, *Dynamical Theory of Groups and Fields*, Gordon and Breach, 1965. (DeWitt-Schwinger expansion, Van Vleck determinant transport equation.)
7. [Vassilevich2003] Dmitri V. Vassilevich, "Heat kernel expansion: user's manual," *Physics Reports* 388 (2003), 279–360. arXiv:`hep-th/0306138`. DOI `10.1016/j.physrep.2003.09.002`. OA: arXiv. (Comprehensive review of heat kernel asymptotics and Seeley-DeWitt coefficients.)
