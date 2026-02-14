---
title: "Refinement Compatibility as a Foundational Principle"
author: "Alejandro Rivero"
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

**This is falsifiable:** closure can fail when no admissible \(\tau\) exists. The framework either closes (predictions remain representable in the same family) or it does not.

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

**A2 (Identity limit).** As the refinement becomes trivial (\(h \to 0\) in partition, or \(\mu \to \mu\) in scale), the parameter update becomes the identity: \(\tau(\theta) \to \theta\).

**A3 (Representation equivalence).** For any two representations \(R_1, R_2\) with the same classical limit, there exists a map \(\tau_{R_1 \to R_2}\) such that predictions agree (modulo controlled subleading corrections).

**A4 (Scale invariance).** Observable predictions satisfy
\[
\mathcal{O}_{\text{phys}} = \mathcal{O}_{\text{phys}} \circ \mathcal{R}_{\mu \to \mu'}
\]
after parameter flow \(\theta(\mu) \to \theta(\mu')\) via beta functions.

**A5 (Dimensional homogeneity, optional).** All parameters \(\theta\) and scales (\(h\), \(\mu\), \(\Lambda\)) have dimensions built from a finite set of fundamental constants.

## 2.2 Commuting Diagrams

Compatibility means transformations commute. Schematically:

\[
\begin{array}{ccc}
\mathcal{O}_{h,\theta} & \xrightarrow{\text{partition}} & \mathcal{O}_{h/2,\tau_C(\theta)} \\
\downarrow{\text{repr}} & & \downarrow{\text{repr}} \\
\mathcal{O}_{h,\tau_Q(\theta)} & \xrightarrow{\text{partition}} & \mathcal{O}_{h/2,\tau_C \circ \tau_Q(\theta)}
\end{array}
\]

The diagram commutes if "refine then change representation" = "change representation then refine."

**Closure test:** Does there exist \(\tau_C \circ \tau_Q\) such that the bottom-right entry is admissible?

# 3. Worked Example: Noether's Theorem (Partition Channel)

## 3.1 Setup

Consider a classical action functional:
\[
S[q] = \int_{t_0}^{t_1} L(q(t), \dot{q}(t), t) \, dt.
\]

Let \(\{g_s\}\) be a one-parameter symmetry group acting on paths: \(q(t) \to q_s(t) = g_s \cdot q(t)\), with infinitesimal generator \(\delta q = \xi(q,t)\).

**Symmetry condition:** \(S[q_s] = S[q]\) for all \(s\) implies \(\delta S = 0\).

## 3.2 Noether's Theorem

**Statement:** If the action is invariant under \(\{g_s\}\), then the **Noether charge**
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

**Compatibility:** As \(N \to \infty\) (partition refinement \(\Delta t \to 0\)), discrete \(Q_k\) converges to continuum \(Q(t)\), and discrete conservation \(Q_k = Q_{k+1}\) becomes \(dQ/dt = 0\).

**RCP witness:** The Noether charge \(Q\) is the **compatibility datum** \(\tau_C(\theta)\) that makes symmetry survive partition refinement. The parameter bundle \(\theta\) includes both the Lagrangian and the conserved charge. Changing from coarse to fine partition requires updating the discrete charge formula to maintain closure.

**Key point:** Without the Noether charge, partition refinement would break symmetry. RCP forces its existence as the compatibility parameter.

# 4. Worked Example: Ordering Ambiguity (Representation Channel)

(To be expanded: Section 10.2 of [Main] gives the \(f(q)p\) example showing Weyl vs Born-Jordan orderings differ by \(O(\hbar)\).)

**Outline:**
- Classical symbol \(f(q)p\)
- Weyl ordering: \(\hat{Q}_W = (1/2)(\hat{f}(\hat{q})\hat{p} + \hat{p}\hat{f}(\hat{q}))\)
- Born-Jordan ordering: integral average
- Difference: \(O(\hbar^2 f'')\)
- RCP: both representations have same \(\hbar \to 0\) limit, differ by controlled subleading. Closure holds after including domain data (self-adjoint extension parameters).

# 5. Worked Example: 2D Delta Renormalization (Scale Channel)

(To be expanded: Section 10.5 of [Main] gives the 2D contact interaction with beta function \(\mu \, dg_R/d\mu = (m/\pi\hbar^2) g_R^2\).)

**Outline:**
- Hamiltonian \(H = -(h bar^2/2m)\Delta + g\delta^{(2)}(x)\)
- Loop integral diverges logarithmically
- Renormalized coupling \(g_R(\mu)\) defined by subtraction
- Beta function ensures \(\mu\)-independence of observables
- RG-invariant scale \(\kappa_*\) (dimensional transmutation)
- RCP: scale change \(\mu_1 \to \mu_2\) preserved by coupling flow. Closure holds after running \(g_R\).

# 6. Theorem: P4.2 as RCP Crown Witness

(To be expanded: state Proposition P4.2 from [Main] as a theorem of partition-compatibility axioms A1, A2, A5.)

**Outline:**
- Under A1 (composition), A2 (identity limit), A5 (dimensional homogeneity), partition-compatible action-based dynamics force a structural constant \(\kappa\) with \([\kappa] = [\text{action}]\).
- Both \(\kappa \to 0\) (classical limit) and \(\kappa \to \infty\) (trivial limit) fail.
- \(\kappa = \hbar\) is **necessary**, not merely convenient.
- This is RCP's most constructive witness: partition closure forces Planck's constant.

# 7. Outlook and Crown Witnesses

(To be expanded: summarize crown witnesses from [Main] Remark D10.1c.)

**Three crown witnesses:**
1. **Partition (P4.2):** Composition forces \(\hbar\). Both limits fail (catastrophic).
2. **Representation (domain data):** Self-adjoint extension parameters must be transported as part of \(\theta\). Inequivalent domains share classical symbols but have different spectra.
3. **Scale (Padé reconstruction):** Local contact-expansion data, combined with analyticity, reconstructs non-perturbative structure (poles, cuts, instantons). RG flow accesses global physics from Taylor coefficients.

**Foundational reading:** RCP can be interpreted as a candidate foundational postulate: the demand that laws survive refinement is the origin of structural constants, not an external input.

# 8. References

1. [Main] Companion paper, "Refinement Compatibility and the Structural Necessity of Renormalization" (in preparation). (Full Newton-to-RG chain as RCP implementation; Proposition P4.2.)

2. [Arnold1989] V. I. Arnold, *Mathematical Methods of Classical Mechanics*, 2nd ed., Springer, 1989. DOI `10.1007/978-1-4757-2063-1`. (Noether's theorem, symplectic geometry, variational principles.)

3. [Landsman1998] N. P. Landsman, *Mathematical Topics Between Classical and Quantum Mechanics*, Springer, 1998. DOI `10.1007/978-1-4612-1680-3`. (Deformation quantization, ordering prescriptions, representation equivalence.)
