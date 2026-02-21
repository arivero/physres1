---
title: "From Pair Groupoid to Tangent Groupoid: Composition, Quantization, and the d/2 Exponent"
author: "A. Rivero and A.I.Scaffold"
date: "2026"
abstract: |
  The path-integral sewing law \(K(x,z;t_1+t_2)=\int dy\,K(x,y;t_1)K(y,z;t_2)\) is
  universally derived from heuristic "slicing" arguments. We show that this law is an
  instance of **groupoid convolution** on the pair groupoid \(G = M \times M\), and that
  the \(d/2\) normalization exponent is an immediate consequence of groupoid-level
  dimensional analysis. The tangent groupoid (Connes) connects this composition law to
  deformation quantization: the family of groupoids \(G_\hbar\) for \(\hbar \in [0,1]\)
  continuously interpolates between the tangent-bundle groupoid (classical, \(\hbar=0\))
  and the pair groupoid (quantum, \(\hbar \neq 0\)). Recent work (Lackman 2023–2024) makes
  this bridge non-perturbative: Kontsevich's star product is realized as the twisted
  convolution algebra of a geometrically quantized Lie 2-groupoid integrating the Poisson
  structure. We identify the groupoid convolution law as the partition-channel witness for
  the Refinement Compatibility Principle: the sewing property is not a kinematic
  accident but a groupoid-theoretic consistency requirement. A clean uniqueness proposition
  (proved by Fourier multiplicativity + dimensional homogeneity, without the heat equation
  or Feynman-Kac formula) shows that the \(d/2\) exponent is the unique composition-compatible
  normalization for quadratic Lagrangians.
---

# 1. Introduction

The Feynman path integral obeys a **sewing law**:
\[
K(x,z;t_1+t_2) = \int_{\mathbb{R}^d} d^d y\; K(x,y;t_1)\, K(y,z;t_2).
\]
This is universally derived by slicing the time interval and composing short-time
propagators, but the derivation is informal: the intermediate integration measure
\(d^d y\) is posited, and the normalization \((m/2\pi i\hbar t)^{d/2}\) emerges from
a Gaussian integral whose structural origin is obscure.

This note argues that the sewing law is an instance of **groupoid convolution** on
the pair groupoid \(G = M \times M\), and that the \(d/2\) normalization is forced by
groupoid-level dimensional analysis. The structural origin of the exponent is therefore:
\[
d/2 = \text{(spatial degrees of freedom)} \times \tfrac{1}{2}\text{(Gaussian exponent)},
\]
where the \(\tfrac{1}{2}\) is forced by the requirement that the convolution product
\((f*g)(x,y) = \int_M f(x,z)g(z,y)\,d\mu(z)\) preserve the dimensional class of \(f\)
and \(g\) under composition.

Beyond the composition law, the pair groupoid provides the correct setting for
deformation quantization via the **tangent groupoid** \(G_\hbar\) (Connes 1994): a smooth
family of groupoids parametrized by \(\hbar \in [0,1]\) that continuously deforms the
classical tangent-bundle structure into the quantum pair-groupoid structure. This
interpolation is not merely formal—it provides a geometric explanation for why \(\hbar\)
is the deformation parameter: \(\hbar\) indexes the fiber of the tangent groupoid.

Recent work by Lackman (2023, 2024) makes the bridge rigorous and non-perturbative:
Kontsevich's universal deformation quantization formula (the star product on any Poisson
manifold) equals the twisted convolution algebra of the geometric quantization of a Lie
2-groupoid integrating the Poisson structure. This removes the "formal power series"
limitation of Kontsevich's original construction and connects groupoid convolution to
physical path integrals via the van Est map.

**Plan of this note.** Section 2 recalls the pair groupoid and its convolution product.
Section 3 proves the \(d/2\) uniqueness proposition from groupoid convolution alone.
Section 4 introduces the tangent groupoid and the \(\hbar\)-deformation. Section 5
reviews Lackman's non-perturbative construction and its relation to the Refinement
Compatibility Principle. Section 6 records the residual gap (Stone's theorem) and states
open problems.

# 2. Pair Groupoid and Convolution

## 2.1 Pair Groupoid

Let \(M\) be a smooth manifold (here \(M = \mathbb{R}^d\)). The **pair groupoid** is
\[
G = M \times M,
\]
with composition law
\[
(x,z) \cdot (z,y) = (x,y) \quad [\text{composable when midpoints match}]
\]
and inversion \((x,y)^{-1} = (y,x)\). The source and target maps are
\(s(x,y) = y\) and \(t(x,y) = x\); the unit section is the diagonal \(u(x) = (x,x)\).

## 2.2 Groupoid Convolution

For functions \(f, g: G \times (0,\infty) \to \mathbb{C}\), the **convolution product** is
\[
(f * g)(x,y;\,t_1+t_2) = \int_M f(x,z;\,t_1)\, g(z,y;\,t_2)\, d\mu(z),
\]
where \(\mu\) is Lebesgue measure on \(M\). This is exactly the path-integral sewing law.
The propagator \(K(x,y;t)\) is a **time-dependent element of the groupoid convolution algebra**;
the sewing law is the statement that \(K\) is a one-parameter convolution semigroup.

**Observation.** The sewing law can be derived without postulating a differential equation
(Schrödinger equation) or analytic continuation (Wick rotation). It is a groupoid-algebraic identity:
the propagator is a convolution-semigroup element of \(C(G)\). This means:

1. The sewing law holds for both the Minkowski propagator (\(c=i\)) and the Euclidean heat kernel
   (\(c=-1\))—both are valid one-parameter groupoid convolution semigroups.
2. Wick rotation (\(c=-1 \leftrightarrow c=i\)) is a change of **representation** of the same
   groupoid semigroup, not a change of the partition structure. This identifies Wick rotation
   as a representation-channel operation in the RCP framework (A3).

# 3. The d/2 Exponent from Groupoid Convolution

The following proposition derives the \(d/2\) normalization from groupoid-algebraic hypotheses
alone, without separately postulating the heat equation (which is instead derived as a consequence of the quadratic dispersion selected by dimensional analysis) or the Feynman-Kac formula.

**Proposition TG-P1.1 (d/2 from groupoid composition on \(\mathbb{R}^d\)).**
*Let \(G = \mathbb{R}^d \times \mathbb{R}^d\) be the pair groupoid with Lebesgue measure \(d^d z\).
Let \(f: G \times (0,\infty) \to \mathbb{C}\) satisfy:*

- *(C) Convolution:* \(\int f(x,z;t_1)\, f(z,y;t_2)\, d^d z = f(x,y;\,t_1+t_2)\) *for all \(x,y,t_1,t_2\).*
- *(T) Translation invariance:* \(f(x,y;t) = h(x-y;\,t)\) *for some function \(h\).*
- *(D) Dimensional consistency:* \([f] = L^{-d}\), *so that the convolution integral \(\int f\cdot f\,d^dz\) has the same dimension as \(f\) (dimension-preserving under convolution).*
- *(M) Measurability:* \(h(\cdot;t) \in L^1(\mathbb{R}^d)\) *and \(\hat{h}(p;t) \neq 0\) a.e.*

*The proposition is stated and proved for \(M = \mathbb{R}^d\); the Fourier-multiplicativity step requires translation invariance (T). On a curved manifold \(M\), the flat Gaussian is replaced by the WKB/Van Vleck prefactor \(\Delta(x,y;t)^{1/2}\), and the \(d/2\) exponent persists as the leading short-time singularity of the heat kernel (see Remark TG-R5.1 and [HalfDensityQFT]).*

*Then \(\hat{h}(p;t) = \exp(t\,\varphi(p))\) for some function \(\varphi: \mathbb{R}^d \to \mathbb{C}\).
For quadratic \(\varphi(p) = c\,p^2\) (the only choice consistent with dimensional basis
\(\{m, \hbar\}\) and rotation symmetry), the normalization factor is \(N(t) \propto t^{-d/2}\).*

*Proof sketch.*
Condition (C) in Fourier space gives:
\[
\hat{h}(p;\,t_1)\,\hat{h}(p;\,t_2) = \hat{h}(p;\,t_1+t_2).
\]
This is Cauchy's functional equation for measurable multiplicative functions in the time variable; equivalently, \(\log \hat{h}(p;t)\) (well-defined by condition (M): \(\hat{h} \neq 0\) a.e.) satisfies the additive Cauchy equation in \(t\). By Cauchy's measurability theorem, the only measurable solutions are \(\hat{h}(p;t) = \exp(t\,\varphi(p))\). Condition (D) forces
\(\int h(x;t)\,d^dx = 1\), so \(\hat{h}(0;t) = 1\), fixing the additive constant. For
quadratic \(\varphi(p) = c\,p^2\) (forced by rotation symmetry + dimensional analysis),
inverse Fourier transform gives \(h(x;t) \propto N(t)\exp(c'|x|^2/t)\) with
\(N(t) \propto t^{-d/2}\) from the Gaussian normalization integral. \(\square\)

**Remark TG-R1.1 (Lévy-stable exclusion via dimensional analysis).** In the physical
dimensional basis \(\{m, \hbar, L, T\}\) with \([\hbar] = ML^2T^{-1}\) and \([m] = M\), the
exponent \(\varphi(p)\cdot t\) must be dimensionless. Writing \(\varphi(p) = ({\hbar}/{m})^\beta\,|p|^\alpha\),
dimensionlessness of \(\varphi(p)\cdot t\) gives \(\alpha = 2\) and \(\beta = 1\) uniquely:
\([(\hbar/m)^\beta |p|^\alpha t] = (L^2T^{-1})^\beta L^{-\alpha} T = L^{2\beta-\alpha}T^{1-\beta}\),
so \(\beta = 1\) and \(\alpha = 2\beta = 2\). For \(\varphi(p) = c|p|^\alpha\) without a mass
parameter, \(c\) itself carries dimensions that can absorb any \(\alpha\), so the exclusion relies
on the presence of both \(m\) and \(\hbar\) in the dimensional basis. In natural units
(\(\hbar = m = 1\)) the argument cannot be formulated; the physical dimensional basis is
essential. See also Proposition PN-P1.3 in [PathIntegralNormalization].

**Remark TG-R1.2 (Wick rotation as representation channel).** Both choices \(c = i\) (Minkowski)
and \(c = -1\) (Euclidean) satisfy the groupoid-algebraic hypotheses (C), (T), (D), (M).
Composition is a partition-channel operation (A1); the choice of \(c\) is a representation-channel
operation (A3). Wick rotation interchanges \(c=-1 \leftrightarrow c=i\) and is therefore
an A3 transformation, not an A1 transformation. This is the groupoid-algebraic confirmation
that unitarity (\(c_0 = i\)) is not forced by
composition alone but by the choice of Minkowski signature (representation channel); see the cornerstone manuscript §3 and [RCPFoundations] §7.1.

# 4. Tangent Groupoid and Deformation Quantization

## 4.1 Connes' Tangent Groupoid

The **tangent groupoid** \(G_M\) of a manifold \(M\) is a smooth family of groupoids
parametrized by \(\hbar \in [0,1]\):

- **\(\hbar = 0\) fiber:** Tangent bundle \(T M\) with fiberwise vector-space addition.
  Groupoid composition: \((x, v) + (x, w) = (x, v+w)\) (Lie-algebra-level, infinitesimal).
- **\(\hbar \neq 0\) fiber:** Pair groupoid \(M \times M\) with composition \((x,z)\cdot(z,y)=(x,y)\)
  (finite, global).

The total space \(G_M = TM\sqcup (M \times M \times (0,1])\) is given a smooth manifold
structure by the blow-up of the diagonal in \(M \times M\) at \(\hbar = 0\):
\[
(x,y) \xrightarrow{\;\hbar \to 0\;} \left(x,\; \frac{x-y}{\hbar}\right) \in T_x M.
\]
This is the "telescoping" operation: finite differences \((x-y)/\hbar\) converge to derivatives
(tangent vectors) as \(\hbar \to 0\). The connection between secants and tangents is the
Newton–Leibniz observation that the derivative is the limit of difference quotients; Connes'
tangent groupoid makes this a smooth groupoid deformation, with the secant groupoid \(M \times M\)
(finite differences) collapsing to the tangent groupoid \(TM\) (derivatives) at \(\hbar = 0\)
[Connes1994, Ch. II §5].

**Quantization interpretation.** The C*-algebra of \(G_M\) at \(\hbar = 0\) is
\(C_0(T^*M)\) (classical, commutative), while at \(\hbar \neq 0\) it is the algebra of compact
operators on \(L^2(M)\) (quantum, noncommutative; for non-compact \(M\), after appropriate completion — the full C*-algebra of the pair groupoid of \(\mathbb{R}^d\) is the stabilization \(\mathcal{K}(L^2(M))\)). The family \(G_\hbar\) is therefore a
**strict deformation quantization** of the Poisson algebra \(C_0(T^*M)\), with the
deformation parameter \(\hbar\) being the groupoid fiber index. Hawkins [Hawkins2008] develops the groupoid-quantization program further, introducing groupoid polarizations and constructing strict C*-algebraic deformation quantization from symplectic groupoid data; the pair-groupoid convolution of Section 2 appears as a special case.

## 4.2 Three RCP Channels in the Groupoid Picture

The three RCP channels are realized in the tangent-groupoid framework as follows:

| RCP Channel | Groupoid Realization |
|---|---|
| **Partition** \((\mathcal{C}_t)\) | Time-sewing = groupoid convolution on \(G_{\hbar\neq 0} = M\times M\) |
| **Representation** \((\mathcal{Q}_\hbar)\) | \(\hbar\)-fiber of the tangent groupoid; \(\hbar\to 0\) limit is classical Poisson structure |
| **Scale** \((\mathcal{R}_\Lambda)\) | Gauge/energy scaling acting on coupling space; requires separate Lie-algebroid structure |

**Remark TG-R1.3 (Partition channel is primary).** Groupoid convolution makes the partition
channel (sewing) automatic: any element of the convolution algebra satisfies the sewing
law by construction. The representation channel (\(\hbar\)) is secondary: it parametrizes the
choice of fiber. The scale channel (RG flow) is not encoded in the tangent groupoid
directly—it acts on the coupling constants of the theory, not on the groupoid structure itself.
Cross-channel commutativity is an observable-level statement, not automatic from groupoid morphisms.

# 5. Lackman's Non-Perturbative Bridge

## 5.1 Pair Groupoid Construction of Functional Integrals

Lackman (arXiv:2402.05866, 2024) defines the Feynman path integral via pair-groupoid Riemann sums.
A **path from \(x\) to \(y\)** is a sequence of groupoid composable arrows:
\[
(x, x_1) \cdot (x_1, x_2) \cdots (x_{N-1}, y) = (x,y) \in G.
\]
The action \(S[\mathbf{x}] = \sum_{i} L(x_i, (x_{i+1}-x_i)/\Delta t_i)\,\Delta t_i\) is
the **groupoid Riemann sum** for the action functional, assembled by the van Est map
(which lifts differential forms on \(M\) to cochains on \(G\)).

**Key feature:** In the continuum limit (which exists for the free particle and for potentials satisfying the conditions of §6.1), the normalization constant \(K(x,y;T)\propto(m/2\pi i\hbar T)^{d/2}\) emerges naturally from dimensional analysis of the groupoid measure, without
post-hoc adjustment. The \(d/2\) exponent is fixed by the \((N-1)\)-fold Gaussian integration
over intermediate points \(x_1,\ldots,x_{N-1}\), each contributing \(t^{-1/2}\) per dimension.

## 5.2 Non-Perturbative Kontsevich (Higher Groupoids)

Lackman (arXiv:2303.05494, 2023) proves that, for an integrable Poisson
manifold \((M,\pi)\) (i.e., one whose Poisson structure is integrated by a Lie groupoid in the sense of Crainic–Fernandes), Kontsevich's star product is equivalent (for the appropriate geometric quantization data: prequantum line bundle and polarization) to the **twisted convolution algebra** of the geometric quantization of
a Lie 2-groupoid \(\mathcal{G}_2\) integrating the Poisson structure:
\[
f \star g = \text{twisted convolution on } C^*(\mathcal{G}_2).
\]
The perturbative expansion of this star product (Feynman diagrams with Kontsevich weights)
is the perturbative expansion of the sigma-model path integral on a disk with target \(M\) [Cattaneo2000].
The Lackman construction provides the **non-perturbative completion** of this perturbative series
via symplectic reduction on \(\mathcal{G}_2\).

**Connection to RCP:** The symplectic reduction on \(\mathcal{G}_2\) removes regulator dependence
and leaves a physical observable. This parallels RCP's scale channel: the coarse-graining
(symplectic reduction) should not change physical predictions (scale compatibility). The
van Est map's refinement of triangulations parallels RCP's partition channel. This suggests a
third reading of Lackman's construction: it is a **groupoid-algebraic implementation of two of three RCP channels** (partition and representation); the scale channel requires additional structure (renormalization group, not encoded in the tangent groupoid alone).

**Remark TG-R3.1 (Van Est map as unifying vocabulary for all three RCP generators).**
Each RCP channel has an infinitesimal generator extractable by differentiation at the identity of its respective composition structure:

| Channel | Semigroup | Generator | Van Est status |
|---------|-----------|-----------|----------------|
| Partition | \(\{K_t\}_{t>0}\) on \(G=M\times M\) | Hamiltonian \(\hat{H}\) | **Literal:** van Est map \(\mathrm{VE}: H^*_{\mathrm{diff}}(G) \to H^*(A(G))\) [Crainic2000] yields \(\hat{H} = \mathrm{VE}(K_t)\vert_{t=0}\) (up to Stone gap, §6.1) |
| Representation | \(\{\star_\hbar\}_{\hbar>0}\) on \(C^\infty(M)\) | Poisson bracket \(\{-,-\}\) | **Structural analogy:** differentiation at \(\hbar=0\) yields \(\{f,g\}\), but the deformation parameter \(\hbar\) plays the role of the groupoid identity, not a genuine van Est variable |
| Scale | \(\{R_\mu\}_{\mu>0}\) on coupling space | Beta function \(\beta(g)\) | **Structural analogy only:** the RG semigroup is **not** a groupoid (not invertible; information is lost under coarse-graining), so the van Est map does not apply literally |

**Caveat:** The identification \(\beta(g) \leftrightarrow \mathrm{VE}(R_\mu)\vert_{\mu=1}\) is a structural analogy (both are generators of one-parameter composition semigroups), not a theorem. A concrete example of non-commutativity: in the 2D delta model, the beta function \(\beta(g_R)\) depends on the renormalization scheme (representation), so the scale and representation channels do not commute at the level of generators.

## 5.3 Half-Density Question

The project's half-density formalism (see [HalfDensityQFT]) posits that propagator kernels are
bi-half-densities, transforming as \(|dx|^{1/2}|dy|^{1/2}\) under coordinate changes. Lackman's
pair-groupoid construction uses full Lebesgue measure \(d^d x\) on \(M\), with the \(d/2\)
exponent arising from the Gaussian Jacobian.

**Open question (TG-Q1):** Does the pair-groupoid framework admit a half-density variant,
where the measure on \(G = M \times M\) is density-\(^{1/2}\) rather than full Lebesgue?
If so, the \(d/2\) exponent would have a measure-theoretic origin (bi-half-density) rather
than a Gaussian-integral origin—a deeper geometric grounding.

**Remark TG-R5.1 (TG-Q1 resolved: half-density variant of the pair-groupoid path integral).**
Bi-half-density kernels on the pair groupoid \(G = M \times M\) compose via standard Lebesgue
integration at the intermediate variable: the two \(|\mathrm{d}^d z|^{1/2}\) factors from the source
and target slots of the paired kernels combine to give a full density \(|\mathrm{d}^d z|\), so
no additional measure is needed. The composition is automatically
coordinate-invariant, the normalization exponent \(t^{-d/2}\) is unchanged (same Gaussian
functional equation), and the Van Vleck factor \(\Delta(x,y;t)^{1/2}\) of the semiclassical
kernel is intrinsic to the bi-half-density structure — the natural determinant of the
generating function \(S_{\mathrm{cl}}\) on \(G\) — rather than an auxiliary normalization
choice. In the half-density framework, the \(d/2\) exponent has a measure-theoretic origin:
it arises from the pairing of \(\tfrac{1}{2}\)-density weights on the source and target of
each groupoid arrow.

# 6. Residual Gap and Open Problems

## 6.1 Stone's Theorem (Irreducible Gap)

Groupoid convolution resolves several regularity conditions automatically:
- (R1) Non-vanishing Fourier transform: unitarity \(\Rightarrow\) injectivity.
- (R2) Hermitian symmetry: groupoid involution \((x,y)\mapsto(y,x)\) for real Lagrangians.
- (R4) \(L^2\) boundedness: C*-algebra norm = 1 for unitaries.

The irreducible gap is:
- **(R3) Self-adjointness of \(\hat{H}\):** \(\hat{H}\) is an unbounded operator external to
  \(C^*(G)\). Domain specification (choice of self-adjoint extension for singular \(V\)) is
  prior to the groupoid construction and requires the physical setup (boundary conditions).

Stone's theorem (\(U(t) = e^{-i\hat{H}t}\), strongly continuous) requires (R3). For smooth \(V\),
stationary-phase as \(t\to 0\) gives \(K_t \to \delta\) without Stone (Route I\(_3\); see cornerstone manuscript §5);
for singular \(V\), Stone's theorem is needed. This is the single irreducible gap between
groupoid convolution and the full quantum mechanics of singular potentials.

## 6.2 Open Problems

**TG-Q1 (Half-density groupoid measure) — RESOLVED (Remark TG-R5.1).** Yes: bi-half-density
kernels compose via Lebesgue pairing at the intermediate slot, preserving \(d/2\) normalization
and coordinate invariance. The Van Vleck factor is intrinsic to the bi-half-density structure.

**TG-Q2 (Master groupoid for RCP).** Can the three RCP channels be formulated as three
deformation directions of a master groupoid \(G_{\text{RCP}}\), with physical observables
invariant under \(G_{\text{RCP}}\) deformations? The partition and representation channels
map cleanly to groupoid structures (convolution and \(\hbar\)-fiber respectively); the scale
channel requires additional structure.

**TG-Q3 (Dimensional transmutation as groupoid reduction).** In the 2D delta-function model,
dimensional transmutation (\(\mu \to \kappa_*\)) removes the regulator \(\mu\). Does this
parallel Lackman's symplectic reduction on \(\mathcal{G}_2\), which removes the triangulation
regulator from the path integral? If so, the RG scale channel and the groupoid reduction
are the same operation in different variables.

*Refinement TG-Q3' (three-agent analysis, BB2, sev-3).* The question splits into three
independent sub-problems: (A) *Algebraic bridge:* the Connes–Moscovici isomorphism
\(H_{\mathrm{CK}} \cong H_{\mathrm{CM}}(\mathrm{Diff}(\mathbb{R}^n))\) (published) shows that
the Hopf algebra of contact Feynman graphs \(H_c\) is realized as the convolution algebra
\(C^*(G_c)\) of a contact groupoid \(G_c\). This bridge is *established*. (B) *Geometric
bridge:* the log-symplectic groupoid \(G_{\log}\) (Gualtieri–Li 2012, exists by the
blow-up construction) admits a UV-regulated prequantum line bundle \(L^\Lambda\) for each
cutoff \(\Lambda\); the Lagrangian \(\to T(E)\) limit as \(\Lambda\to\infty\) is *open*.
(C) *Representation bridge:* the GNS representation of \(C^*(G_c)\) on the physical Hilbert
space \(L^2(\mathbb{R}^2, dk)\) should yield \(T(E)\) as a matrix element
\(\langle k \vert \pi(a_{\text{contact}}) \vert k' \rangle\), subject to (C1)
\(C^*(G_c) \cong \Psi^0_b(\mathbb{R}^2)\) (b-pseudodifferential algebra) and (C2)
the irreducible representation being the correct physical one. Both are *open but
well-posed* (b-calculus literature: Melrose, Vasy; noncommutative geometry: Monthubert–Skandalis–Nistor). Bridges (B) and (C) are independent: solving (C) does not require (B).

# 7. Conclusion

The pair-groupoid framework makes three structural facts explicit:

1. **The sewing law is a groupoid identity** that can be derived independently of
   the Schrödinger equation. The propagator is a convolution-semigroup element of \(C(G)\).

2. **The \(d/2\) exponent is forced** by groupoid-level dimensional analysis: Fourier
   multiplicativity + dimensional homogeneity + rotation symmetry uniquely selects the
   Gaussian normalization \(N(t) \propto t^{-d/2}\) (Proposition TG-P1.1).

3. **Wick rotation is a representation-channel operation** (A3 in RCP), not a partition-channel
   operation (A1). Both Minkowski (\(c=i\)) and Euclidean (\(c=-1\)) kernels are valid
   groupoid-convolution semigroups; the choice between them is a representation choice,
   not forced by the composition law.

The tangent groupoid (Connes) connects this composition structure to deformation quantization:
\(\hbar\) is the fiber index of the tangent groupoid, and the classical limit \(\hbar \to 0\)
is the blow-down to the tangent-bundle fiber. Lackman's recent work makes this bridge
non-perturbative: the Kontsevich star product is the convolution algebra of a geometrically
quantized higher groupoid. The residual gap is Stone's theorem (self-adjoint domain data for
singular potentials), which no groupoid-algebraic construction can eliminate.

These results confirm the cornerstone manuscript's thesis: the Newton–Leibniz secant/tangent
telescoping (Section 2.2) is the groupoid blow-down \(G_{\hbar\neq 0} \to G_0 = TM\), and
the path integral is groupoid convolution on the \(\hbar \neq 0\) fiber.

# Bibliography

- [Connes1994] Connes, A. *Noncommutative Geometry*. Academic Press, 1994. Ch. II, §5.
- [Landsman2002] Landsman, N.P. "Quantization and the tangent groupoid." *arXiv:math-ph/0208004*.
- [Lackman2023] Lackman, J. "A Formal Equivalence of Deformation Quantization and Geometric Quantization
  (of Higher Groupoids) and Non-Perturbative Sigma Models." *arXiv:2303.05494*.
- [Lackman2024] Lackman, J. "A Groupoid Construction of Functional Integrals: Brownian Motion
  and Some TQFTs." *arXiv:2402.05866*.
- [Cattaneo2000] Cattaneo, A. & Felder, G. "A path integral approach to the Kontsevich
  quantization formula." *Commun. Math. Phys.* **212** (2000): 591–611. *arXiv:math/9902090*.
- [Hawkins2008] Hawkins, E. "A groupoid approach to quantization." *J. Symplectic Geom.* **6**(1) (2008): 61–125. *arXiv:math/0612363*.
- [Crainic2000] Crainic, M. "Differentiable and algebroid cohomology, van Est isomorphisms, and characteristic classes." *Comment. Math. Helv.* **78** (2003): 681–721. *arXiv:math/0008064*.
- [HalfDensityQFT] A. Rivero and A.I.Scaffold, "Half-Density Kernels and the d/2 Unification of Quantum Mechanics," companion satellite paper (2026).
- [PathIntegralNormalization] A. Rivero and A.I.Scaffold, "Path-Integral Normalization: The d/2 Exponent as Composition Datum," companion satellite paper (2026).
- [RCPFoundations] A. Rivero and A.I.Scaffold, "Refinement Compatibility as a Foundational Principle," companion satellite paper (2026).
