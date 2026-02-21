---
layout: page
title: "Refinement Compatibility as a Foundational Principle"
author: "A. Rivero and A.I.Scaffold"
date: "2026"
abstract: |
  We formalize the **Refinement Compatibility Principle (RCP)** as a falsifiable axiomatic framework: physical laws are those that survive controlled changes of partition, representation, and scale. The principle has three operational channels—(1) partition compatibility (temporal composition across subdivisions), (2) representation compatibility (equivalence of quantum prescriptions with the same classical limit), and (3) scale compatibility (renormalization group flow)—each tested by asking whether composed/changed predictions remain within an admissible family after parameter updates. We show that compatibility is constructive, not merely philosophical: closure demands specific structural constants (e.g., Planck's constant emerges as the partition-compatibility parameter forced by composition), and both \(\hbar \to 0\) and \(\hbar \to \infty\) limits fail. Three worked examples anchor each channel: Noether's theorem (partition), ordering ambiguity (representation), and 2D delta renormalization (scale). The framework unifies classical mechanics, quantum mechanics, and renormalization as instances of the same compatibility requirement.

  This note connects to a companion paper [Main] that develops the detailed Newton-to-path-integral chain as an RCP implementation.
---

# 1. Introduction

## 1.1 The Core Question

Consider three superficially independent problems:

1. **Classical mechanics:** Does the action principle survive discretization? If we partition time \([0,T]\) into \(N\) steps and compose \(N\) discrete evolution maps, do we recover the same extremal paths as the continuum single-step map in the limit \(N \to \infty\)?

2. **Quantum mechanics:** Do different operator orderings (Weyl, Born-Jordan, symmetric, etc.) give the same physics? If two prescriptions have the same classical limit \(\hbar \to 0\), do their predictions agree, or can they differ by uncontrolled corrections?

3. **Renormalization:** Does changing the UV cutoff \(\Lambda_1 \to \Lambda_2\) (or subtraction scale \(\mu_1 \to \mu_2\)) preserve observable predictions? Can we trade the cutoff for a finite set of running couplings such that physics is independent of the regularization choice?

These questions share a common structure: **Does a transformation (partition refinement, representation change, scale shift) preserve the admissibility of physical laws?** If the answer is "yes, after a controlled parameter update," we say the law is **refinement-compatible**. If the answer is "no—composition/change breaks closure," the framework fails.

The **Refinement Compatibility Principle (RCP)** formalizes this: **physical laws are those statements that survive controlled changes of partition, representation, and scale**.

## 1.2 Operational Form (Falsifiability)

Write a prediction as \(\mathcal{O}_{h,\theta}\), where \(h\) is a "ruler" (step size, resolution, cutoff) and \(\theta\) is a parameter bundle (couplings, charges, domain data). A framework is **RCP-compatible** if, for every transformation \(\mathcal{T}\) (refinement, representation change, scale shift), there exists a parameter update map \(\tau\) such that:
\[
\mathcal{O}_{h,\theta} = \mathcal{O}_{h',\tau(\theta)} \circ \mathcal{T}.
\]

**Note on types.** This equation is a **schematic unifying statement**; the precise mathematical objects \(\mathcal{O}\), \(\mathcal{T}\), and \(\tau\) differ across channels. In the partition channel, \(\mathcal{O}\) is a transition kernel (map from initial to final configurations), \(\mathcal{T}\) is time subdivision, and \(\tau\) is the Noether charge (Section 3). In the representation channel, \(\mathcal{O}\) is a quantization map (classical symbols to operators), \(\mathcal{T}\) is an ordering change, and \(\tau\) includes domain data (Section 4). In the scale channel, \(\mathcal{O}\) is a scattering amplitude, \(\mathcal{T}\) is a cutoff shift, and \(\tau\) is the RG flow (Section 5). The channel-specific formulations are spelled out in Sections 3–5.

**This is falsifiable:** closure can fail when no admissible \(\tau\) exists (i.e., no finite parameter update restores agreement after the transformation). The framework either closes or it does not.

**Worked failure example (scale channel).** Consider the four-dimensional contact interaction \(g\,\delta^{(4)}(x)\). Power counting gives \([g] = L^2\) (mass dimension \(-2\)), so the coupling grows under UV scale shifts: \(g_R(\mu) \sim \mu^2 g_R(\mu_0)\). Each loop order introduces a new independent divergence requiring a new counterterm coupling \(g_n\). The parameter bundle \(\theta = (g_0, g_2, g_4, \ldots)\) grows without bound — no finite \(\tau\) exists. Scale compatibility (A4) fails: the theory is **non-renormalizable** in the traditional sense, which RCP diagnoses as closure failure in the scale channel. (By contrast, the 2D delta model of §5 has \([g] = L^0\), requiring only one running coupling — closure succeeds.)

## 1.3 Three Compatibility Channels

RCP decomposes into three operational channels:

1. **Partition compatibility (\(\mathcal{C}_t\)):** Temporal composition across subdivisions. Does composing \(N\) fine steps reproduce a single coarse step? Example: \(\Phi_h \circ \Phi_h = \Phi_{2h}\) (Runge-Kutta), or discrete action \(S_N \to S\) as \(N \to \infty\) (path integrals).

2. **Representation compatibility (\(\mathcal{Q}_\hbar\)):** Equivalence of quantum prescriptions with the same classical limit. Do Weyl-ordered and Born-Jordan-ordered operators agree on observables? Example: \(\hat{f}(q)\hat{p}\) vs \(\hat{p}\hat{f}(q)\) differing by \(O(\hbar)\).

3. **Scale compatibility (\(\mathcal{R}_\Lambda\)):** Renormalization group flow. Does changing the UV cutoff (after running couplings via beta functions) leave physics unchanged? Example: \(\mu \, dg/d\mu = \beta(g)\), with observables \(\mu\)-independent.

Each channel has **constructive witnesses**: we show not just that compatibility can be required, but that it forces specific structure (structural constants, domain data, flow equations).

## 1.4 Relation to Companion Work

A companion paper [Main] develops the full Newton-to-path-integral-to-RG chain and argues that the chain is an **implementation of RCP**, not a sequence of disconnected formalisms. This note isolates RCP as a standalone principle, states it axiomatically, and tests each channel with explicit examples.

# 2. Axioms and Commuting Diagrams

## 2.1 Minimal Axiom List

We propose five axioms (A1-A5) that capture the operational content of RCP.

**A1 (Composition law).** For partition refinement, predictions compose:
\[
\mathcal{O}_{T,\theta} = \mathcal{O}_{t_1,\theta_1} \circ \mathcal{O}_{t_2,\theta_2}, \quad T = t_1 + t_2.
\]

**Corollary A2 (Identity limit — derived from A1).** In the partition channel: the identity limit \(K_t \to \delta\) as \(t \to 0\) is a theorem of (A1) + physical setup (Section 6, Remark RCP-P6.1): the Gaussian form forced by composition is automatically a nascent delta family. In the representation and scale channels, the identity limit is immediate from definitions (\(\tau_{R\to R} = \mathrm{id}\), \(\tau_{\mu\to\mu} = \mathrm{id}\)). A2 is therefore not an independent axiom but a corollary of A1; it is recorded here for operational completeness. In particular, Theorem P4.2 does not require A2 as an input.

**A3 (Representation equivalence).** For any two representations \(R_1, R_2\) with the same classical limit, there exists a map \(\tau_{R_1 \to R_2}\) such that predictions agree (modulo controlled subleading corrections).

**A4 (Scale invariance).** Observable predictions satisfy
\[
\mathcal{O}_{\text{phys}} = \mathcal{O}_{\text{phys}} \circ \mathcal{R}_{\mu \to \mu'}
\]
after parameter flow \(\theta(\mu) \to \theta(\mu')\) via beta functions.

**A5 (Dimensional homogeneity, optional).** All parameters \(\theta\) and scales (\(h\), \(\mu\), \(\Lambda\)) have dimensions built from a finite set of fundamental constants. A5 is optional because it is not needed for any of the worked examples or for Theorem P4.2 (where dimensional consistency is derived from A1 alone; see Remark RCP-P6.1). Without A5, RCP still functions as a closure principle; A5 restricts the class of allowed parameter bundles but does not add new forcing content.

## 2.2 Commuting Diagrams

Compatibility means transformations commute. Schematically:

\[
\begin{array}{ccc}
\mathcal{O}_{h,\theta} & \xrightarrow{\text{partition}} & \mathcal{O}_{h/2,\tau_C(\theta)} \\
\downarrow{\text{repr}} & & \downarrow{\text{repr}} \\
\mathcal{O}_{h,\tau_Q(\theta)} & \xrightarrow{\text{partition}} & \mathcal{O}_{h/2,\tau_C \circ \tau_Q(\theta)}
\end{array}
\]

The diagram commutes if "refine then change representation" = "change representation then refine" (where \(\mathcal{O}\), \(\mathcal{T}\), and \(\tau\) instantiate as described in Section 1.2 for each channel).

**Closure test:** Does there exist \(\tau_C \circ \tau_Q\) such that the bottom-right entry is admissible?

**Commutativity status.** Commutativity is verified in specific instances: Noether charge conservation survives discretization (partition × representation, §3); operator ordering ambiguity is independent of time-slicing density (representation × partition, §4). For the full partition × scale interaction, commutativity is the content of the RG-improved path integral and is verified in [RGFundamental]. Failure of commutativity would constitute a non-trivial physical effect (e.g., anomalies, where a symmetry that survives partition refinement does not survive scale change).

# 3. Worked Example: Noether's Theorem (Partition Channel)

## 3.1 Setup

Consider a classical action functional:
\[
S[q] = \int_{t_0}^{t_1} L(q(t), \dot{q}(t), t) \, dt.
\]

Let \(\{g_s\}\) be a one-parameter symmetry group acting on paths: \(q(t) \to q_s(t) = g_s \cdot q(t)\), with infinitesimal generator \(\delta q = \xi(q,t)\).

**Symmetry condition:** \(S[q_s] = S[q]\) for all \(s\) implies \(\delta S = 0\).

## 3.2 Noether's Theorem

**Statement [Noether1918]:** If the action is invariant under \(\{g_s\}\), then the **Noether charge**
\[
Q := \frac{\partial L}{\partial \dot{q}} \cdot \xi(q, t)
\]
is conserved along extremal paths: \(\frac{dQ}{dt} = 0\).

**Proof (brief):** Vary the action:
\[
\delta S = \int \left( \frac{\partial L}{\partial q} - \frac{d}{dt} \frac{\partial L}{\partial \dot{q}} \right) \delta q \, dt + \left[ \frac{\partial L}{\partial \dot{q}} \delta q \right]_{t_0}^{t_1}.
\]
On extremal paths, the Euler-Lagrange term vanishes. The boundary term vanishes by symmetry (since \(\delta S = 0\) for all paths). Hence:
\[
0 = \frac{d}{dt} \left( \frac{\partial L}{\partial \dot{q}} \cdot \xi \right) = \frac{dQ}{dt}.
\]

## 3.3 RCP Interpretation

**Partition refinement:** Discretize \([t_0, t_1]\) into \(N\) steps. The discrete action is:
\[
S_N[q] = \sum_{k=0}^{N-1} L\!\left(q_k, \frac{q_{k+1} - q_k}{\Delta t}, t_k\right) \Delta t.
\]

**Discrete Noether charge:**
\[
Q_k = \frac{\partial L}{\partial \dot{q}}\Big|_{q_k} \cdot \xi(q_k, t_k).
\]

**Compatibility:** As \(N \to \infty\) (partition refinement \(\Delta t \to 0\)), discrete \(Q_k\) converges to continuum \(Q(t)\), and discrete conservation \(Q_k = Q_{k+1}\) becomes \(dQ/dt = 0\). (The discrete Noether theorem — that symmetry of the discrete action implies conservation of the discrete charge — is a non-trivial result in its own right; see Marsden–West [MarsdenWest2001] for the variational integrator setting.)

**RCP witness:** RCP provides a *language* in which the Noether charge \(Q\) is the compatibility datum \(\tau_C(\theta)\) that makes symmetry survive partition refinement. The parameter bundle \(\theta\) includes both the Lagrangian and the conserved charge. Changing from coarse to fine partition requires updating the discrete charge formula to maintain closure.

**Key point:** Without the Noether charge, partition refinement would break symmetry. Noether's theorem — a consequence of the action principle and the symmetry condition alone — guarantees the existence of this compatibility parameter. RCP identifies the Noether charge as the specific datum that must be tracked under partition refinement for symmetry to survive; the existence proof is Noether's, not RCP's.

# 4. Worked Example: Ordering Ambiguity (Representation Channel)

## 4.1 Setup

The classical symbol \(A(q,p) = f(q)p\) (with smooth \(f\)) can be quantized in multiple ways. Two standard choices:

1. **Left ordering:** \(Q_L(A) = \hat{f}(\hat{q}) \hat{p}\).
2. **Weyl (symmetric) ordering:** \(Q_W(A) = \tfrac{1}{2}(\hat{f}(\hat{q})\hat{p} + \hat{p}\hat{f}(\hat{q}))\).

Using the canonical commutation relation \([\hat{p}, \hat{f}(\hat{q})] = -i\hbar f'(\hat{q})\):
\[
Q_W(A) = \hat{f}(\hat{q})\hat{p} - \frac{i\hbar}{2} f'(\hat{q}) = Q_L(A) - \frac{i\hbar}{2} f'(\hat{q}).
\]

## 4.2 Classical Agreement, Quantum Shift

The difference is \(O(\hbar)\):
\[
Q_W(A) - Q_L(A) = -\frac{i\hbar}{2} f'(\hat{q}).
\]

In the formal classical limit \(\hbar \to 0\), the difference vanishes:
\[
\lim_{\hbar \to 0} (Q_W(A) - Q_L(A)) = 0.
\]

Both orderings **agree classically** but **differ quantum-mechanically** at subleading order.

## 4.3 RCP Interpretation

**Representation change:** Switching from left ordering to Weyl ordering is a transformation \(\mathcal{Q}_{\alpha}\) within the same classical-limit class.

**Compatibility:** The parameter bundle \(\theta\) must include not only the classical symbol \(f(q)p\) but also the ordering prescription. Changing representation requires updating \(\theta\) to account for the \(O(\hbar)\) shift.

**RCP witness:** Both \(Q_L\) and \(Q_W\) are admissible (they close under composition and have the same classical limit), but they define **different quantum theories** at finite \(\hbar\). The difference is controlled (\(O(\hbar)\)), not catastrophic, so representation compatibility holds.

**Domain data (subtle extension):** For operators like \(\hat{H} = -(\hbar^2/2m) d^2/dx^2\) with singularities (e.g., point interactions), different self-adjoint extensions (boundary conditions at the singularity) can share the same principal symbol but have different spectra. Thus \(\theta\) must include **domain/boundary data** in addition to ordering data. Example: delta-contact interaction with parameter \(g\); different \(g\) give different bound-state energies \(E_B = -mg^2/(2\hbar^2)\) while sharing symbol \(p^2/(2m)\).

**Key point:** Representation compatibility (A3) requires transporting both ordering and domain data. Without including domain parameters in \(\theta\), closure can fail (inequivalent quantum theories with same classical symbol).

# 5. Worked Example: 2D Delta Renormalization (Scale Channel)

## 5.1 Setup

Consider the two-dimensional contact interaction:
\[
H = -\frac{\hbar^2}{2m}\Delta + g\,\delta^{(2)}(x) \quad \text{on } \mathbb{R}^2.
\]

The Dirac-delta interaction is singular, and the naive continuum limit is ill-defined: loop integrals diverge logarithmically (see [Collins1984] for standard renormalization background).

## 5.2 Divergent Loop Integral

The \(T\)-matrix (scattering amplitude) at energy \(E = \hbar^2 k^2 / (2m)\) involves the loop integral:
\[
I(E;\Lambda) = \int_{|q|<\Lambda} \frac{d^2q}{(2\pi)^2} \, \frac{1}{E - \frac{\hbar^2 q^2}{2m} + i0} = -\frac{m}{2\pi\hbar^2} \ln\!\left(\frac{\Lambda^2}{k^2}\right) + \text{(finite)}.
\]

The logarithmic divergence \(\sim \ln\Lambda\) as \(\Lambda \to \infty\) makes the bare theory ill-defined.

## 5.3 Renormalized Coupling and Beta Function

Define a renormalized coupling at subtraction scale \(\mu\) by:
\[
\frac{1}{g_R(\mu)} \equiv \frac{1}{g_B(\Lambda)} + \frac{m}{2\pi\hbar^2} \ln\!\left(\frac{\Lambda^2}{\mu^2}\right).
\]

This subtraction cancels the cutoff dependence, yielding a finite \(T\)-matrix:
\[
T(E) = \frac{1}{\frac{1}{g_R(\mu)} + \frac{m}{2\pi\hbar^2} \ln\!\left(\frac{\mu^2}{k^2}\right) + i\,\frac{m}{2\hbar^2}}.
\]

Since \(\mu\) is arbitrary, physical predictions must satisfy \(\mu \, d/d\mu\, T(E) = 0\). This yields the **beta function**:
\[
\mu \frac{d}{d\mu}\left(\frac{1}{g_R(\mu)}\right) = -\frac{m}{\pi\hbar^2}, \quad \text{hence} \quad \beta(g_R) \equiv \mu \frac{d g_R}{d\mu} = \frac{m}{\pi\hbar^2} \, g_R^2.
\]
The coefficient \(m/(\pi\hbar^2)\) follows from the loop integral \(I(E;\Lambda)\) in Section 5.2: the 2D angular integration contributes \(2\pi\), absorbed into \((2\pi)^2\) in the denominator to give \(m/(2\pi\hbar^2)\) per logarithmic derivative, and the differentiation of \(\ln(\Lambda^2/\mu^2) = 2\ln(\Lambda/\mu)\) contributes an additional factor of 2; see [Kaplan1995] for the standard derivation.

## 5.4 Dimensional Transmutation

For a bound state (energy \(E = -\hbar^2 \kappa^2 / (2m)\)), the \(T\)-matrix has a pole when:
\[
\frac{1}{g_R(\mu)} + \frac{m}{2\pi\hbar^2} \ln\!\left(\frac{\mu^2}{\kappa^2}\right) = 0.
\]

Define the **RG-invariant scale**:
\[
\kappa_*^2 \equiv \mu^2 \exp\!\left(\frac{2\pi\hbar^2}{m} \frac{1}{g_R(\mu)}\right).
\]

Then \(d\kappa_*/d\mu = 0\): the physical content is a single scale \(\kappa_*\) (equivalently, a bound-state energy \(E_B = \hbar^2 \kappa_*^2 / (2m)\)). The bare coupling \(g_B\) is traded for this scale via **dimensional transmutation**.

## 5.5 RCP Interpretation

**Scale change:** Changing the subtraction scale \(\mu_1 \to \mu_2\) is a transformation \(\mathcal{R}_{\mu}\).

**Compatibility:** The parameter bundle \(\theta\) includes the coupling \(g_R(\mu)\). Changing scale requires updating \(g_R\) via the beta function to maintain closure:
\[
\theta(\mu_1) \xrightarrow{\text{flow}} \theta(\mu_2), \quad g_R(\mu_2) = g_R(\mu_1) + \int_{\mu_1}^{\mu_2} \frac{d\mu'}{\mu'} \, \beta(g_R(\mu')).
\]

**RCP witness:** Observable predictions (e.g., \(\kappa_*\)) are scale-invariant. Without the beta function, changing \(\mu\) would change physics. RCP interprets \(\beta(g_R)\) as the scale-compatibility map \(\tau_R(\theta)\).

**Key point:** Scale compatibility (A4) is not merely a consistency check—it reinterprets the RG flow as the parameter update required for scale-compatibility (A4 closure).

**Remark RCP-R5.1 (Efimov limit cycle as second scale-channel witness).**
The 2D delta example (§5.1–5.5) exhibits a **fixed-point** RG flow: the coupling \(g_R\) runs
monotonically to zero in the IR, with the physical content encoded in a single RG-invariant
scale \(\kappa_*\). A qualitatively different scale structure — a **limit cycle** — arises in
the three-body problem at unitarity (two-body scattering length \(|a|\to\infty\)).

At unitarity, the three-body \(T\)-matrix satisfies the Skornyakov–Ter-Martirosyan (STM) equation
\[
T_3(k) = \lambda_3(\Lambda) + \frac{2}{\pi}\int_0^\Lambda dq\,q^2\,\frac{T_2(q)\,T_3(q)}{q^2-k^2},
\]
where \(T_2 = -1/(ik)\) at unitarity. The kernel has a discrete scale invariance:
\(K(e^{\pi/s_0}k,\,e^{\pi/s_0}k') = K(k,k')\), where \(s_0\approx 1.006\) satisfies the
transcendental equation \(s\cosh(\pi s/2)=(8/\sqrt{3})\sinh(\pi s/6)\). UV renormalizability
(cutoff-independence of observables) then forces the three-body coupling to be log-periodic:
\[
\lambda_3\!\bigl(\Lambda\cdot e^{\pi/s_0}\bigr)=\lambda_3(\Lambda).
\]
This is an RG **limit cycle**: the coupling returns to its initial value after each scale
traversal by \(e^{\pi/s_0}\approx 22.7\). The observable signature is a geometric tower
of three-body bound states with energy ratios \(E_{n+1}/E_n = e^{-2\pi/s_0}\approx 1/515\)
(Efimov states [Efimov1970]; experimental confirmation in ultracold atoms
[KraemerEtAl2006]).

The RG step \(\Lambda\to\Lambda'\) acts on coupling space as a real Möbius transformation
\(\lambda_3\mapsto(a\lambda_3+b)/(c\lambda_3+d)\) with \(ad-bc=1\) [arXiv:2509.04746]:
these transformations form the group \(\mathrm{PSL}(2,\mathbb{R})\), closed under composition.
The limit cycle corresponds to a **hyperbolic** element of \(\mathrm{PSL}(2,\mathbb{R})\)
(trace \(|\mathrm{tr}|>2\), two real fixed points). Composition of two RG steps equals
composition of two Möbius maps — the group law in \(\mathrm{PSL}(2,\mathbb{R})\) is the
composition law for the scale channel [arXiv:2509.04746 (preprint, 2025)].

Both the 2D delta (fixed-point, §5) and the Efimov (limit-cycle, this remark) share the same
structural logic: **three-body composition at unitarity + UV renormalizability forces a specific
scale structure**. The forcing inputs differ (2-body: composition + cutoff-independence; 3-body:
the same, plus the unitarity condition \(|a|\to\infty\) which is an external physical input, not
a consequence of composition alone). The two examples together upgrade the scale-channel from
a single model to a class of structurally distinct patterns, both disciplined by RCP closure
(A4). See [RGFundamental] for the beta-function framework; see Bedaque–Hammer–Van Kolck
[BedaqueHammerVanKolck1999] for the original RG treatment of the Efimov limit cycle.

# 6. Theorem: P4.2 as RCP Crown Witness

## 6.1 Statement

**Theorem P4.2 (from [Main]; proof sketch below).** Consider action-based dynamics on \(\mathbb{R}^d\) with mass parameter \(m\) and self-adjoint generator, and let \(\{K(x,y;t)\}_{t>0}\) be a family of transition kernels satisfying:
- **A1 (Composition):** \(\int K(x,z;t_1)\,K(z,y;t_2)\,d^dz = K(x,y;t_1+t_2)\).

Then, without further axioms beyond the physical setup (in particular self-adjointness of the generator, which supplies unitarity; see Remark RCP-R6.2 for the full regularity conditions), the composition law forces:
1. \([K] = L^{-d}\) (dimensional consistency of the composition integral).
2. Normalization exponent \(d/2\): kernel \(\sim t^{-d/2}\) (semigroup closure).
3. Exponential weight: \(K \propto \exp(iS/\kappa)\) (functional equation uniqueness).
4. \(i\varepsilon\) prescription uniqueness (degree-counting in the regulator).
5. A structural constant \(\kappa\) with \([\kappa] = [\text{action}]\); the identification \(\kappa = \hbar\) requires the dimensional basis \(\{m, L, T\}\) of the physical setup (no other action-dimensional quantity is constructible), together with experimental identification (matching the hydrogen spectrum, etc.).
6. Both limiting cases fail:
   - \(\kappa \to 0\): oscillatory divergence, no distributional identity limit.
   - \(\kappa \to \infty\): weights trivialize, partition refinement loses dynamical content.
7. Identity limit: \(K(x,y;t) \to \delta(x-y)\) as \(t \to 0\) (nascent delta for the forced Gaussian form, or Stone's theorem for general potentials).
8. Lévy process exclusion: non-Gaussian stable processes (\(\alpha \neq 2\)) violate dimensional consistency.
9. Continuum time: no discrete time scale \(\varepsilon\) constructible from \(\{m, \hbar\}\) alone.

**Proof sketch (for the simplest implication: composition forces \(t^{-d/2}\) normalization).**
Assume translation invariance \(K(x,y;t) = h(x-y;t)\) (valid for free dynamics on \(\mathbb{R}^d\)). The composition law in Fourier space becomes the multiplicative functional equation \(\hat{h}(p;t_1)\hat{h}(p;t_2) = \hat{h}(p;t_1+t_2)\). By Cauchy's theorem for measurable multiplicative functions (using \(\hat{h}(p;t) \neq 0\) a.e., which follows from unitarity), the unique solution is \(\hat{h}(p;t) = \exp(t\varphi(p))\). Dimensional analysis with the physical basis \(\{m, \hbar, L, T\}\) and the requirement \([K] = L^{-d}\) forces \(\varphi(p) = (\hbar/m)|p|^2\) (quadratic: rotation symmetry eliminates odd powers; \(\alpha = 2\) is singled out by dimensional homogeneity — see [TangentGroupoidBridge] Remark TG-R1.1 for the full Lévy-stable exclusion argument). Inverse Fourier transform gives \(h(x;t) \propto t^{-d/2}\exp(c|x|^2/t)\), establishing the \(d/2\) exponent. The remaining P4.2 conclusions (exponential weight, \(i\varepsilon\) uniqueness, \(\kappa = \hbar\) identification) follow by similar dimensional and functional-equation arguments developed in [Main]; a self-contained derivation using groupoid convolution appears in [TangentGroupoidBridge] Proposition TG-P1.1.

**Remark RCP-P6.1 (Axiom reduction).**
The original P4.2 required three hypotheses: composition (C), identity limit (I), dimensional homogeneity (D). Subsequent analysis shows that (D) is a theorem of (C) on \(\mathbb{R}^d\) (the composition integral forces \([K] = L^{-d}\)), and (I) follows from the explicit kernel form forced by (C) (the Gaussian kernel is a nascent delta family). **Composition is the single master axiom** for the partition channel; the physical setup (action-based dynamics on \(\mathbb{R}^d\) with mass \(m\) and self-adjoint generator) provides the arena, not additional axioms.

**Remark RCP-R6.2 (Regularity conditions).**
The derivation in Remark RCP-P6.1 rests on four regularity conditions that are implicit in the setup but should be stated explicitly.

**(R1) Non-vanishing Fourier transform.** The functional equation \(\log \hat{K}_{t_1+t_2}(p) = \log \hat{K}_{t_1}(p) + \log \hat{K}_{t_2}(p)\) requires \(\hat{K}_t(p) \neq 0\) for all \(p \in \mathbb{R}^d\), \(t > 0\). For the free Gaussian kernel this holds by inspection; for general \(V\) it follows from unitarity of \(U(t) = e^{-iHt}\) (see (R3)).

**(R2) Hermitian symmetry for semigroup-to-group extension.** Stone's theorem yields a unitary one-parameter *group* \(\{U(t)\}_{t \in \mathbb{R}}\), whereas the composition law is stated for \(t > 0\) (semigroup). The extension requires \(K(x,y;t) = \overline{K(y,x;t)}\). For action-based dynamics with real Lagrangian and \(i\varepsilon\) prescription, this holds automatically.

**(R3) Self-adjointness.** Stone's theorem requires \(H = H^*\) with \(\mathrm{Dom}(H) = \mathrm{Dom}(H^*)\). For \(V \in L^p(\mathbb{R}^d)\) with \(p \geq d/2\), the Kato–Rellich theorem guarantees self-adjointness of \(-\hbar^2\Delta/(2m) + V\) on \(\mathrm{Dom}(-\Delta)\). For singular \(V\) (point interactions), the appropriate self-adjoint extension must be selected; the composition law alone does not pick it.

**(R4) Uniform \(L^2\) boundedness.** Strong continuity \(\|U(t)\phi - \phi\|_{L^2} \to 0\) requires \(\sup_{t \in (0,1]}\|U(t)\|_{B(L^2)} < \infty\). For unitary \(U(t)\), \(\|U(t)\| = 1\) identically, so this is automatic once (R3) holds.

The substantive condition is (R3): self-adjointness of \(H\). Conditions (R1), (R2), (R4) all reduce to consequences of unitarity for action-based dynamics with real Lagrangian. The physical setup specifies the arena — it is not an additional mathematical axiom but the selection of a definite Hamiltonian system. (A technical note: the Cauchy functional equation step — from the semigroup equation to linearity of \(\log \hat{K}_t(p)\) in \(t\) — holds under a.e.\ quantifiers via a Fubini argument, provided \(\hat{K}(p;\cdot) \in L^1_{\mathrm{loc}}((0,\infty))\) for a.e.\ \(p\); this is automatic for physical kernels.)

**Remark RCP-R6.3 (Identity limit: smooth vs. singular potentials).**
Condition (R3) (self-adjointness of \(H\)) is needed for the identity limit only when \(V\) is singular. For \(V\) bounded below and measurable (Kato class), the identity limit follows without Stone's theorem via stationary phase: the composition law forces \(K(x,y;t) = N(t)\exp(iS_{\mathrm{cl}}(x,y;t)/\hbar)\) (Remark RCP-P6.1), and the short-time classical action \(S_{\mathrm{cl}}(x,y;t) = m|x-y|^2/(2t) + O(t)\) (standard Lagrangian mechanics) concentrates the kernel near the diagonal as \(t \to 0^+\). For singular \(V\) (point interactions, inverse-square potentials), classical paths may not exist and self-adjoint extension selection is genuine physics requiring Stone's theorem.

## 6.2 RCP Interpretation

This theorem is the **crown witness for partition compatibility**. It shows:

1. **Constructive forcing from a single axiom:** Composition alone does not merely constrain admissible theories—it **forces** specific structural constants. Planck's constant \(\hbar\) emerges as the partition-compatibility parameter, not as external input. The d/2 normalization, exponential weight, \(i\varepsilon\) prescription, and identity limit are all theorems of the composition semigroup (not independent postulates).

2. **Falsifiability in action:** Both \(\kappa \to 0\) and \(\kappa \to \infty\) are testable failures of RCP closure. The classical limit (\(\kappa \to 0\)) breaks composition (no distributional identity kernel); the trivial limit (\(\kappa \to \infty\)) erases dynamics. RCP compatibility picks out a finite, nonzero \(\kappa\) with dimensions of action—identified with \(\hbar\) by the dimensional basis of the physical setup.

3. **Partition compatibility is fundamental:** The theorem shows that partition refinement is not a calculational convenience—it is a **definitional requirement**. The demand that refined and coarse predictions agree forces quantum mechanics.

4. **Per-axiom decomposition.** Of nine P4.2 conclusions, composition (A1) alone forces five (d/2, exponential weight, \(i\varepsilon\), \(\kappa \to \infty\) failure, Lévy process exclusion). Combined with physical setup, composition forces three more (\([K]=L^{-d}\), \(\kappa = \hbar\), continuum time). The remaining conclusion (\(\kappa \to 0\) failure) follows from the explicit kernel form. The representation (A3) and scale (A4) axioms are **logically independent**—they address different channels and are not needed for P4.2. See Remark RCP-R6.2 for the regularity conditions under which the composition functional equation uniquely determines the Feynman kernel; in brief, the minimal condition set is composition + action-based physical setup + \(L^2\) unitarity of the propagator.

# 7. Outlook and Crown Witnesses

## 7.1 Three Crown Witnesses

Each RCP channel now has a **constructive witness** beyond the structural framework:

**1. Partition channel (Theorem P4.2, Section 6):** Composition forces \(\hbar\)-necessity. This is RCP's most dramatic witness: the partition-compatibility requirement is not merely aesthetic—it forces the existence of Planck's constant and forbids both the classical (\(\kappa \to 0\)) and trivial (\(\kappa \to \infty\)) limits. The failure is **catastrophic** (composition breaks, identity limit fails), not merely inconvenient.

**2. Representation channel (domain data transport, Section 4):** Self-adjoint extension parameters must be transported as part of the parameter bundle \(\theta\). Inequivalent operator domains can share the same principal symbol \(p^2/(2m)\) but have different spectra (example: delta-contact interaction with parameter \(g\), where \(g < 0\) gives a bound state \(E_B = -mg^2/(2\hbar^2)\) while \(g \ge 0\) does not). Without including domain data in \(\theta\), representation changes can map admissible theories to inadmissible ones (closure fails). **Note on relative strength:** This witness is weaker than the partition-channel witness (P4.2): it establishes that representation changes *can* fail if domain data is omitted, but it does not force a unique new structural constant or qualitatively new physics. The representation channel's forcing hierarchy is classified in Proposition RCP-Rep-P1.1 below.

**3. Scale channel (Padé reconstruction, non-perturbative access):** Local contact-expansion data (Wilson coefficients \(C_0, C_2, \ldots\)), combined with analyticity assumptions (Padé approximants, dispersion relations, Borel resummation), can reconstruct **non-perturbative** global structure—poles (bound states), cuts (thresholds), instanton sectors—from perturbative Taylor coefficients. Example: Padé [0/1] applied to contact expansion \(C_0 + C_2 q^2\) recovers the Yukawa mediator pole \(-g^2/(4\pi m q^2)\) from two Wilson coefficients (see [RGFundamental] for the derivation: \(C_0/(1 - (C_2/C_0)q^2)\) is the [0/1] Padé approximant, whose pole at \(q^2 = C_0/C_2\) gives the mediator mass). RG flow is the control map \(\tau_R(\theta)\) that accesses this global physics via local data.

## 7.2 Foundational Reading

RCP can be interpreted as a **candidate foundational postulate**: physical laws are those statements that survive controlled changes of partition, representation, and scale. Under this reading:

- **Structural constants (e.g., \(\hbar\)) are emergent, not external.** They arise as compatibility parameters forced by closure requirements, not as inputs to the theory.
- **The classical limit is a failure mode, not a foundation.** \(\hbar \to 0\) breaks partition compatibility (Theorem P4.2), so classical mechanics is not the "base theory" from which quantum mechanics is a perturbation. Instead, quantum mechanics is the **minimal closure** of partition-compatible action-based dynamics.
- **Renormalization is definitional, not corrective.** Scale compatibility (A4) is not a fix for divergences—it is the **requirement** that scale changes preserve admissibility. Divergences signal closure failure in the absence of parameter updates; the beta function is the compatibility map that restores closure.
- **Physics is a chain of forced completions.** Each layer of physical theory is the minimum enrichment needed to make the previous layer's composition work: calculus completes discrete mechanics (\(\Delta t \to 0\) limits); quantum mechanics completes classical dynamics (kernel composition, A1); renormalization completes infinite-mode assembly (A1+A4). The chain calculus \(\to\) variational principles \(\to\) path integral \(\to\) renormalization is not a sequence of independent formalisms but a single logical progression, each stage forced by composition.

## 7.3 Open Questions

1. **Are there additional compatibility channels beyond partition/representation/scale?** Candidate: **time-reversal compatibility** (CPT symmetry as closure condition — the standard CPT theorem derives from Lorentz invariance and locality in local QFT [OsterwalderSchrader1973]; an RCP derivation would need to show that partition compatibility forces CPT without presupposing Lorentz invariance) or **statistical compatibility** (quantum-to-thermal transitions).

2. **Can RCP be formalized as a categorical structure?** The commuting diagrams (Section 2.2) suggest a **monoidal category** with transformations as morphisms and compatibility as functoriality. Partial answer: the composition axiom (A1) is precisely the Atiyah–Segal functoriality axiom [Atiyah1988] applied to 0+1-dimensional quantum mechanics. The functor maps time intervals to kernel operators, and the identity limit (A2) is automatic (functors preserve identity morphisms). This makes P4.2 a uniqueness theorem for the Atiyah-Segal functor restricted to action-based kernels. This identification is complete for 0+1-dimensional quantum mechanics (in the sense that the Atiyah–Segal functor from the bordism category of 0+1-dimensional cobordisms to Hilbert spaces is uniquely determined, up to Morita equivalence, by A1 applied to action-based kernels); the extension to \(d\)+1-dimensional QFT, where A4 enters as a condition on the infinite-dimensional target category, remains open.

3. **Does RCP extend to gravity?** Diffeomorphism invariance is a compatibility condition (coordinate changes must not affect observables). Can background-independence be framed as "metric-refinement compatibility"?

These are left to future work.

## 7.4 Multi-Channel Synthesis: The Path Integral as RCP Realization

The three RCP channels do not operate in isolation—they **interact** in any realistic physical theory. The path integral provides a concrete arena where all three channels appear simultaneously and their interplay is explicit.

**Partition channel in the path integral:** Time-slicing \(T = N\varepsilon\) with \(N \to \infty\) is the partition refinement. The sewing law (composition property)
\[
K(x_f, x_i; T) = \int dx\; K(x_f, x; t_1)\, K(x, x_i; t_2),
\quad T = t_1 + t_2,
\]
is the operational form of partition compatibility (A1). The short-time kernel must have the form \(K(x,y;\varepsilon) \sim (m/2\pi\hbar\varepsilon)^{d/2} \exp(iS_{\mathrm{cl}}/\hbar)\) to preserve composition—this forces both the \(d/2\) normalization and the action-dimensional scale \(\hbar\) (Theorem P4.2; for a comprehensive treatment showing this exponent is forced across four distinct settings, see [PathIntegralNormalization]).

**Representation channel in the path integral:** Different time-slicing prescriptions (midpoint, prepoint, postpoint) correspond to different operator orderings (Stratonovich ↔ half-density, Itô ↔ Weyl-type). The Layer 2 connection term (e.g., \(\propto f'(q)\partial/\partial q\) in PDM systems) arises from the measure factor in the path integral:
\[
\mathcal{D}q \propto \prod_{k=1}^{N-1} \left[m(q_k)\right]^{1/2} dq_k.
\]
Changing the slicing prescription modifies this measure by O(ℏ) correction terms, which are the representation-channel transport data \(\tau_R(\theta)\).

**Scale channel in the path integral:** For singular potentials (e.g., delta interaction \(V(x) = g\delta(x)\)), the naive path integral is ill-defined—the short-time action diverges. Regularization introduces a cutoff \(\Lambda\), and renormalization replaces \((g_B, \Lambda)\) with the running coupling \(g_R(\mu)\). The RG flow \(\mu\, dg_R/d\mu = \beta(g_R)\) is the scale-channel compatibility map \(\tau_\Lambda(\theta)\). Physical predictions (e.g., bound-state energy \(E_B\)) are \(\mu\)-independent (scale compatibility, A4).

**Heuristic RCP-H1.1 (Three-channel synthesis).**
The path integral synthesizes all three RCP channels:
1. **Partition (composition):** Sewing law forces \(\hbar\)-necessity and Gaussian kernels.
2. **Representation (measure):** Time-slicing prescription determines operator ordering via connection terms.
3. **Scale (renormalization):** Singular interactions force parameter flow as the compatibility map.

This synthesis is not accidental—it reflects the fact that the path integral is a **refinement-based formulation**: it defines the quantum propagator as the limit of composed discrete steps (partition), with a choice of slicing prescription (representation), and requires RG control for singular interactions (scale). RCP unifies these three aspects as instances of the same compatibility requirement.

**Remark RCP-H1.2 (Why the path integral is RCP-natural).**
The path integral is the unique formulation that makes all three RCP channels simultaneously explicit. Operator formalism hides partition compatibility (kernels are composed implicitly via \(\hat{U}(t_1)\hat{U}(t_2) = \hat{U}(t_1+t_2)\)), and Hamiltonian formalism hides scale compatibility (renormalization appears as a "correction" rather than a structural requirement). The path integral, by construction, exposes refinement as the defining operation—making RCP the natural organizing principle.

**Remark RCP-R7.1 (Wick rotation as representation channel).**
The Wick rotation \(\eta: t \to e^{i\eta}t\) is a one-parameter family of representation-channel transformations (axiom A3): it preserves the composition law (A1) exactly — since \(e^{i\eta}(t_1+t_2) = e^{i\eta}t_1 + e^{i\eta}t_2\) — and the dimensional structure, while transforming the kernel's phase parameters (\(c_0 \to e^{-i\eta d/2}c_0\)) and effective action scale (\(\hbar \to e^{i\eta}\hbar\)). The Minkowski (\(\eta=0\)) and Euclidean (\(\eta=\pi/2\)) kernels are the two endpoints of this A3 family. Wick rotation does not change any energy scale \(\mu\) and commutes with the RG flow, confirming it is A3 (representation) rather than A4 (scale). In quantum field theory, Wick rotation is A3-compatible if and only if the Osterwalder–Schrader reflection-positivity conditions hold [OsterwalderSchrader1973].

**Remark RCP-R7.2 (Reversibility signature of RCP channels).**
The three RCP channels exhibit a hierarchy of algebraic structure under time/scale reversal that explains the gradient in forcing strength. The partition channel generates a strongly continuous unitary *group* \(\{U(t)\}_{t \in \mathbb{R}}\) (Stone's theorem), reflecting time-reversibility; this group structure, together with \(d\)-dimensional rotational symmetry, forces the dispersion \(\varphi(p) = c|p|^2\) *uniquely* — the source of Proposition P4.2's strong result \(\kappa = \hbar\). The scale channel generates only a contraction *semigroup* \(\{R_\mu\}_{\mu > \mu_0}\) (Hille--Yosida theorem), reflecting the irreversibility of coarse-graining; the generator \(\beta(g)\) is guaranteed to *exist* but its functional form is underdetermined by semigroup axioms alone — the source of the scale channel's weaker forcing. The representation channel occupies an intermediate position: different star-product quantizations on the same Poisson manifold yield Morita-equivalent operator algebras (invertible at the module-category level), so composition fixes the Morita equivalence class of the quantization but not the specific ordering within that class. In summary: \(\text{Stone (group, unique)} \supset \text{Morita (category-invertible, classified gauge family)} \supset \text{Hille--Yosida (semigroup, existence only)}\).

**Proposition RCP-Rep-P1.1 (Representation channel forcing hierarchy).**
Composition (C) applied to the representation channel yields a three-layer hierarchy of constraints on the quantization map:
1. **(C) alone** forces the *existence* of an associative \(\hbar\)-deformation of pointwise multiplication (a star-product). This is the Kontsevich formality theorem [Kontsevich2003]: the space of deformation quantizations of any Poisson manifold \((M,\pi)\) is non-empty.
2. **(C) + unitarity** forces the *Morita equivalence class*: star-products giving the same classical limit are Morita-equivalent as associative algebras [BursztynWaldmann2002], producing unitarily equivalent quantum theories on the same Hilbert space. Domain-data transport under ordering changes (D9.1f) is a consequence of requiring self-adjoint Hamiltonians in both quantization schemes.
3. **(C) + unitarity + Euclidean symmetry** (on \(\mathbb{R}^d\) with constant Poisson structure) selects the Moyal product *uniquely* within the Morita class. On curved manifolds, this third layer does not apply: multiple inequivalent star-products survive.

The ordering choice (Weyl, Born--Jordan, half-density) is a gauge freedom within the Morita class fixed by Layer 2 — classified by formal diffeomorphisms of the Poisson manifold, not arbitrary. This makes the representation channel's status *moderate* (classified gauge family), intermediate between the partition channel's *strong* uniqueness (Stone) and the scale channel's *weak* existence (Hille--Yosida) described in Remark RCP-R7.2.

**Remark RCP-R7.3 (Krein Q-function as spectral transport datum for self-adjoint extensions).**
For a symmetric operator \(S\) with deficiency indices \((1,1)\) (e.g., \(-d^2/dx^2\) on \(C_c^\infty(0,\infty)\)), composition (A1) applied to different self-adjoint extensions \(H_{\gamma_1}, H_{\gamma_2}\) generates unitarily inequivalent propagators whenever the extensions have different spectra (bound states vs. no bound states). The Krein resolvent formula relates the resolvents of any two extensions via the Krein Q-function \(Q(z)\) (equivalently, the Weyl M-function in the boundary-triple formalism), and the scattering matrix between extensions is uniquely determined by \(Q(z)\) and the extension parameters [Albeverio2005]. This means: composition fixes the *transport data* between extensions (the S-matrix) but does *not* select which extension is physical — the extension parameter \(\gamma\) (Robin boundary condition) remains a free input, determined by experiment or additional physical principles (scattering data, boundary conditions at a physical scale). This confirms the MODERATE calibration of the representation channel: composition classifies transport between representations via \(Q(z)\), but the representation choice itself is a gauge-like freedom, not uniquely forced. Contrast with the partition channel, where composition forces a *unique* structural constant \(\hbar\) (Proposition P4.2).

## 7.5 Forward Connections

Three companion satellite papers develop the RCP channels in detail:
- **[OrderingEquivalence]:** Representation channel (four-layer stratification, PDM + curved-space worked examples, star-product automorphism perspective, Itô/Stratonovich bridge).
- **[RootedTreeBookkeeping]:** Partition channel (Butcher group for RK composition, rooted-tree Hopf algebra for counterterm recursion, explicit midpoint RK2 + 2D delta RG dictionary).
- **[RGFundamental]:** Scale channel (RG as semigroup compatibility, Wilsonian shell integration, dimensional transmutation in 2D delta model, multi-channel RCP conclusion).
- **[TangentGroupoidBridge]:** Groupoid bridge (pair groupoid = sewing law; Proposition TG-P1.1: \(d/2\) forced by Fourier multiplicativity + dimensional homogeneity; Wick rotation as A3 via groupoid algebra; tangent groupoid as \(\hbar\)-deformation from classical to quantum; Lackman non-perturbative Kontsevich).

Together with the cornerstone manuscript [Main], these papers form a **coherent RCP narrative**: refinement compatibility is not a philosophical slogan but a falsifiable structural requirement, with constructive witnesses in all three channels and quantitative tests in worked examples.

# 8. References

1. [Main] Companion paper, "Refinement Compatibility and the Structural Necessity of Renormalization" (in preparation). (Full Newton-to-RG chain as RCP implementation; Proposition P4.2.)

2. [Arnold1989] V. I. Arnold, *Mathematical Methods of Classical Mechanics*, 2nd ed., Springer, 1989. DOI `10.1007/978-1-4757-2063-1`. (Noether's theorem, symplectic geometry, variational principles.)

3. [Landsman1998] N. P. Landsman, *Mathematical Topics Between Classical and Quantum Mechanics*, Springer, 1998. DOI `10.1007/978-1-4612-1680-3`. (Deformation quantization, ordering prescriptions, representation equivalence.)

4. [OrderingEquivalence] A. Rivero, "Operator Ordering as Equivalence Class: Stratification and Measurability," companion satellite paper (2026).

5. [RootedTreeBookkeeping] A. Rivero, "Rooted-Tree Bookkeeping for Composition Compatibility: A Butcher/RG Dictionary," companion satellite paper (2026).

6. [RGFundamental] A. Rivero, "Renormalization Group as a Fundamental Compatibility Principle," companion satellite paper (2026).

7. [PathIntegralNormalization] A. Rivero, "Path-Integral Normalization: The d/2 Exponent as Composition Datum," companion satellite paper (2026).

8. [TangentGroupoidBridge] A. Rivero, "Groupoid Composition and Quantization: The Pair-Groupoid Bridge," companion satellite paper (2026).

9. [Efimov1970] V. Efimov, "Energy levels arising from resonant two-body forces in a three-body system," *Phys. Lett. B* **33** (1970), 563–564.

10. [BedaqueHammerVanKolck1999] P. F. Bedaque, H.-W. Hammer, and U. van Kolck, "Renormalization of the Three-Body System with Short-Range Interactions," *Phys. Rev. Lett.* **82** (1999), 463–467. arXiv:`nucl-th/9809025`.

11. [KraemerEtAl2006] T. Kraemer et al., "Evidence for Efimov quantum states in an ultracold gas of caesium atoms," *Nature* **440** (2006), 315–318.

12. [Noether1918] E. Noether, "Invariante Variationsprobleme," *Nachr. d. König. Gesellsch. d. Wiss. zu Göttingen, Math-phys. Klasse* (1918), 235–257.

13. [Kontsevich2003] M. Kontsevich, "Deformation quantization of Poisson manifolds," *Lett. Math. Phys.* **66** (2003), 157–216. arXiv:`q-alg/9709040`.

14. [OsterwalderSchrader1973] K. Osterwalder and R. Schrader, "Axioms for Euclidean Green's functions," *Commun. Math. Phys.* **31** (1973), 83–112; Part II: **42** (1975), 281–305.

15. [Atiyah1988] M. Atiyah, "Topological quantum field theories," *Inst. Hautes Études Sci. Publ. Math.* **68** (1988), 175–186.

16. [MarsdenWest2001] J. E. Marsden and M. West, "Discrete mechanics and variational integrators," *Acta Numerica* **10** (2001), 357–514.

17. [ReedSimon1975] M. Reed and B. Simon, *Methods of Modern Mathematical Physics*, vols. I–II, Academic Press, 1975. (Stone's theorem, Kato–Rellich theorem, Hille–Yosida theorem.)

18. [Kaplan1995] D. B. Kaplan, "Few-body systems with short-range interactions and a two-body bound state," *Nucl. Phys. B* **494** (1997), 471–484. arXiv:`nucl-th/9610052`. (2D delta renormalization beta function.)

19. [Collins1984] J. C. Collins, *Renormalization*, Cambridge University Press, 1984. (Standard reference on renormalization theory, beta functions, and dimensional regularization.)

20. [BursztynWaldmann2002] H. Bursztyn and S. Waldmann, "The characteristic classes of Morita equivalent star products on symplectic manifolds," *Commun. Math. Phys.* **228** (2002), 103–121.

21. [Albeverio2005] S. Albeverio, F. Gesztesy, R. Hoegh-Krohn, and H. Holden, *Solvable Models in Quantum Mechanics*, 2nd ed., AMS Chelsea Publishing, 2005. ISBN `0-8218-3624-2`. (Rank-1 perturbations, Krein resolvent formula, S-matrix via Q-function for self-adjoint extensions.)
