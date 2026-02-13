---
title: "Fermionic Mediators, Static Potentials, and Contact/Boundary-Condition Limits"
author: "Alejandro Rivero"
date: "2026"
abstract: |
  The textbook derivation of a static potential from “field exchange” uses a bosonic mediator linearly sourced by a commuting classical density, yielding an effective action quadratic in the source and (in a static limit) a central Yukawa/Coulomb potential. This derivation does not transplant verbatim to fermionic fields: the linear source terms for fermions require Grassmann-valued sources, so there is no ordinary commuting classical source whose elimination produces a classical potential in the same way. This note isolates the precise obstruction and records the robust infrared replacement: when a microscopic description reduces to local operators at low resolution, the effective interaction is encoded by contact terms (delta kernels and their derivatives) or, equivalently, boundary-condition/self-adjoint-extension data, with renormalization-group running when the contact limit is singular.
  
  This is a dependent note aligned with the broader refinement-compatibility program: contact terms are diagonal-support kernels, and their scale dependence is a compatibility condition rather than an afterthought.
---

# 1. Purpose and scope
This note answers a narrowly phrased question:
what can it mean for a **fermionic** field to “generate a (central) potential” in the same sense that a massive bosonic field generates a Yukawa potential?

We keep the scope bounded:
1. state the bosonic sourcing \(\Rightarrow\) potential mechanism (derivation-first, brief),
2. state the fermionic obstruction precisely (Grassmann sources),
3. give one explicit IR matching witness: **local operators \(\Rightarrow\) contact/derivative-contact kernels**,
4. connect contact kernels to related point-interaction/RG witnesses.

We do **not** claim that fermions cannot affect forces; we only isolate which parts of the “classical source \(\Rightarrow\) potential” story fail, and what the correct replacement statement is at low resolution.

# 2. What “a field generates a potential” means in the bosonic source story
The archetypal construction is a bosonic mediator \(\varphi\) linearly coupled to a commuting source \(J(x)\):
\[
S[\varphi;J]=\int d^Dx\left(\frac12\,\varphi\,K\,\varphi + J\,\varphi\right),
\qquad K=(\Box+m^2)\ \text{(example)}.
\]
Integrating out \(\varphi\) (Gaussian elimination) yields an effective action quadratic in the source,
\[
S_{\mathrm{eff}}[J]=-\frac12\int d^Dx\,d^Dy\; J(x)\,K^{-1}(x,y)\,J(y),
\]
so the static, nonrelativistic limit of \(K^{-1}\) produces a central potential (Yukawa for \(m\neq 0\), Coulomb-type when \(m=0\)).

The key structural ingredient is that the source is an ordinary commuting function (a classical background density).

# 3. Fermionic fields: linear sources are Grassmann, so the classical-source story does not transplant
For a Dirac fermion \(\Psi\), the generating functional with sources is written with **Grassmann-valued** sources \(\eta,\bar\eta\):
\[
Z[\bar\eta,\eta]
=\int D\bar\Psi\,D\Psi\;
\exp\!\left(
i\int d^Dx\;\bar\Psi\,(i\gamma^\mu\partial_\mu-m)\Psi
+i\int d^Dx\;(\bar\eta\,\Psi+\bar\Psi\,\eta)
\right).
\]
An explicit statement of this form, including that \(\eta,\bar\eta\) are Grassmann-valued, is recorded in [Floerchinger2024QFT1Lecture21].

Two immediate consequences follow.

`Remark 3.1 (Obstruction statement).`
The bosonic derivation “choose a commuting classical source \(J\), integrate out the field, and read off a classical potential” does not directly apply to fermions, because the linear source terms that couple to \(\Psi\) require Grassmann sources rather than commuting c-number densities. Therefore, “fermion exchange generates a classical potential between commuting sources” is not a well-posed transplant of the bosonic story.

This does **not** mean fermions are irrelevant:
fermions can and do affect effective interactions through loop effects, through bosonic composite modes (bilinears), and through low-energy EFT operators. The point is that the meaning of “generates a potential” must be stated through one of these controlled mechanisms.

# 4. IR replacement: local operators \(\Rightarrow\) contact kernels / boundary-condition data
At low resolution, integrating out heavy degrees of freedom typically produces local operators. In a two-body, nonrelativistic sector, this appears as an amplitude expansion analytic in momentum transfer \(q\):
\[
\mathcal A(q)=C_0+C_2 q^2+O(q^4).
\]

The coordinate-space interaction associated to such an analytic expansion is distributional and diagonal-supported. The invariant core is a Fourier-transform identity:
\[
\int \frac{d^d q}{(2\pi)^d}\,e^{iq\cdot r}= \delta^{(d)}(r),
\qquad
\int \frac{d^d q}{(2\pi)^d}\,q^2\,e^{iq\cdot r}= -\nabla^2\delta^{(d)}(r).
\]

`Derivation 4.1 (Contact expansion gives \(\delta\) and derivative contacts).`
Interpreting the low-energy interaction kernel as the inverse Fourier transform of \(\mathcal A(q)\) (Born-level language, up to overall convention-dependent factors), we obtain
\[
V(r)\ \propto\ \int \frac{d^d q}{(2\pi)^d}\,e^{iq\cdot r}\,\mathcal A(q)
\ \propto\
C_0\,\delta^{(d)}(r)\;-\;C_2\,\nabla^2\delta^{(d)}(r)\;+\;\cdots.
\]
Thus locality at low energy naturally becomes **contact data**: delta kernels and their derivatives supported at a point (or on the diagonal, in kernel language).

In singular cases (notably \(\delta\) interactions in \(d\ge 2\) in various channels), this contact data is not simply a fixed number: it is defined by a renormalization condition and can generate RG-invariant scales and bound states [Jackiw1991DeltaPotentials] [ManuelTarrach1994PertRenQM].

# 5. Boundary-condition reading (point interactions)
Point-supported interactions can be encoded as self-adjoint extension / boundary-condition data rather than as ordinary functions \(V(r)\). This is the natural operator-theoretic counterpart of “diagonal-support kernels.” For standard references and pedagogical framing, see [BonneauFarautValent2001SAE] and the delta-potential discussion in [Jackiw1991DeltaPotentials].

This viewpoint matches the controlled-refinement perspective:
when a continuum description is defined as a refinement limit, UV data can survive in the limit precisely as boundary-condition parameters (contact terms), with RG flow expressing compatibility across resolutions.

# 6. Outlook (kept minimal)
Longer-range effects associated to fermionic degrees of freedom can arise through loop-induced mechanisms or through emergent bosonic composite modes. Treating those responsibly would require a separate bibliography-hardening pass and is outside this note’s scope.

# References

1. [ManuelTarrach1994PertRenQM] Cristina Manuel and Rolf Tarrach, "Perturbative Renormalization in Quantum Mechanics," *Physics Letters B* 328 (1994), 113--118. arXiv:`hep-th/9309013` (v1, 2 Sep 1993). DOI `10.1016/0370-2693(94)90437-5`.
2. [BonneauFarautValent2001SAE] Guy Bonneau, Jacques Faraut, and Galliano Valent, "Self-adjoint extensions of operators and the teaching of quantum mechanics," *American Journal of Physics* 69 (2001), 322–331. arXiv:`quant-ph/0103153`. DOI `10.1119/1.1328351`.
3. [Jackiw1991DeltaPotentials] R. Jackiw, "Delta-function potentials in two- and three-dimensional quantum mechanics," MIT-CTP-1937 (Jan 1991). Reprinted in *M.A.B. Bég Memorial Volume* (World Scientific, 1991), pp. 25–42. OA mirror: <https://www.physics.smu.edu/scalise/P6335fa21/notes/Jackiw.pdf>.
4. [Floerchinger2024QFT1Lecture21] Stefan Floerchinger, "Quantum field theory 1, lecture 21" (updated 11 Jun 2024). (States the Dirac-fermion generating functional \(Z[\bar\eta,\eta]\) with Grassmann-valued sources.) OA: lecture webpage.
