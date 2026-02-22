# Quantum Groups from Lattice Discretization of Composition Laws

**Date Started:** 2026-02-22

**Agent:** Student

**Status:** ACTIVE INVESTIGATION (task assigned, Level 2-3 serendipity)

**Objective:** Determine whether lattice discretization of the path integral composition law naturally forces quantum group structure (q-deformed symmetries), or if q-deformation is a pragmatic regularization choice independent of composition principles.

---

## 1. Continuous Composition and Borel Structure (Background)

### 1.1 P4.2 Composition Forcing

From the cornerstone paper (§4.2) and notebooks/resurgence-composition-bridge.md:

**Theorem P4.2:** Composition axiom (C) + dimensional homogeneity (D) + identity limit (I) force:
$$K_t(x,y) = N(t) \cdot e^{iS_{\text{cl}}(x,y;t)/\hbar}$$

where $N(t) = (4\pi it)^{-d/2}$ (from dimensional analysis).

### 1.2 Borel Convolution Semigroup

**Proposition (standard Borel theory + composition):** Let $\Phi_t(\zeta)$ be the Borel transform of the perturbative tail of $K_t$. Then:

$$\Phi_{t_1 + t_2}(\zeta) = (\Phi_{t_1} *_B \Phi_{t_2})(\zeta)$$

where the **Borel convolution** is:
$$(\Phi_{t_1} *_B \Phi_{t_2})(\zeta) := \int_0^\zeta \Phi_{t_1}(\zeta') \Phi_{t_2}(\zeta - \zeta') d\zeta'$$

**Corollary (Alien Calculus Leibniz Rule):**
$$\Delta_{nA}(K_{t_1 + t_2}) = \sum_{j=0}^{n} \Delta_{jA}(K_{t_1}) \cdot \Delta_{(n-j)A}(K_{t_2})$$

where $\Delta_\omega$ is the **alien derivative** (measures discontinuity of Borel transform across $\zeta = \omega$).

**Key insight:** Composition imposes algebraic constraints on the resurgent structure via the Leibniz rule for alien calculus. Not all resurgent kernels satisfy P4.2 — only those whose alien calculus is compatible with composition semigroup.

**Source:** Dunne-Ünsal (arXiv:1207.0905, 2012), Dorigoni (arXiv:1411.3585, 2014), van Spaendonck-Vonk (arXiv:2204.09062, 2022); reviewed in resurgence-composition-bridge.md §1-§5.

---

## 2. Lattice Discretization of Path Integrals

### 2.1 Discrete Composition Law

On a spacetime lattice with spacing $a$, the path integral is discretized:

**Continuous:**
$$K_t(x,y) = \int D[\phi(s)] \exp\left(\frac{i}{\hbar} S[\phi]\right)$$

**Discrete (time-sliced):**
$$K_a(x,y) = \sum_{\text{paths}} \prod_{n=0}^{N-1} \exp\left(\frac{i}{\hbar} S_a(x_n, x_{n+1})\right)$$

where $N = t/a$ time slices and $S_a$ is the discretized action.

### 2.2 Discrete Composition (Semigroup Property)

The time-sliced propagator satisfies a **discrete semigroup property**:
$$K_{n_1 + n_2}(x,z) = \sum_y K_{n_1}(x,y) \cdot K_{n_2}(y,z)$$

(sum over intermediate points $y$ on the lattice).

**Question:** Does the discrete composition law force a modified algebraic structure compared to the continuous case?

### 2.3 Truncation Problem (Why Quantum Groups Enter)

For **gauge theories** on the lattice:
- Gauge fields are represented as group elements $U_\mu(x) \in \text{SU}(2)$ at each link
- The Hilbert space for a single link is **infinite-dimensional**: contains all representations of SU(2)
- To simulate on quantum computers or with tensor networks, truncate to finite dimension
- Standard truncation (keep first $k$ representations): breaks some symmetries
- **Quantum group truncation** (Zache et al. 2023): deform to $\text{SU}(2)_q$ (quantum group) and truncate — preserves quantum group symmetries even in truncated space

---

## 3. Analysis: Does Composition Force Q-Deformation?

### 3.1 Zache et al. (2023) q-Deformed Kogut-Susskind Theory

**Setup:** Replace classical SU(2) gauge group with quantum group $\text{SU}(2)_k$ (deformation parameter $k$).

**Motivation (from Zache PRL 131:171902):**
- Standard Kogut-Susskind Hamiltonian has infinite-dimensional Hilbert space per link
- Truncating representation basis breaks canonical commutation relations
- q-deformation creates finite-dimensional irreducible representations that close under composition
- Limit $k \to \infty$ recovers classical SU(2)

**Key Result:** Variational simulations show continuum limit reached at $k \sim O(10)$, suggesting the q-deformed algebra is sufficient to capture physical content.

**Critical observation:** Zache motivate q-deformation as **engineered regularization** (preserving symmetries during truncation), NOT as a **forced consequence** of composition axioms.

### 3.2 Hypothesis 1: Composition Forcing (Level 3 Speculation)

**Claim to test:** Lattice composition law with finite Hilbert space necessarily forces quantum group structure.

**Mechanism:** If true, would work as follows:
1. Discrete composition law: $K_{n_1 + n_2} = \sum_y K_{n_1} K_{n_2}$ (semigroup on truncated space)
2. Require that this semigroup has well-defined Borel/transseries structure (analogue of continuous Borel convolution)
3. Borel convolution on truncated space cannot close under standard (cocommutative) Hopf algebra
4. Therefore, **quantum group (non-cocommutative Hopf algebra) forced by composition + truncation**

**Status:** Speculative. Would require:
- Proving discrete analogue of Borel convolution semigroup on finite Hilbert space
- Showing standard Hopf algebra cannot satisfy the discrete Leibniz rule for alien calculus
- Demonstrating quantum group structure is unique/necessary for closure

### 3.3 Hypothesis 2: Pragmatic Regularization (More Conservative)

**Claim:** q-deformation is one of several pragmatic choices for handling Hilbert space truncation. Composition law is compatible with q-deformation but does NOT uniquely force it.

**Evidence:**
- Zache et al. (2023): treat q-deformation as engineered choice, not forced
- Lattice-gauge-optimal-truncation-2024 (arXiv:2509.17975): truncation driven by statistical optimization of RDM eigenvalues, independent of group structure
- Continuous-variable approaches (arXiv:JHEP06(2025)084): alternative to truncation, avoid q-deformation entirely

**Conclusion:** Composition is compatible with multiple regularization schemes; q-deformation is convenient but not unique.

---

## 4. Research Plan and Next Steps

### 4.1 Deep-Dive on Borel Structure

**Task 1:** Study how Borel convolution and alien calculus Leibniz rule are derived from continuous composition.

**Source:** Review resurgence-composition-bridge.md §1-§5 in detail; check van Spaendonck-Vonk (arXiv:2204.09062) and Dunne-Ünsal references.

**Goal:** Understand precisely what algebraic constraints composition imposes (Leibniz rule, singularity structure).

### 4.2 Discretization Analogue

**Task 2:** Sketch discrete analogue of Borel convolution for lattice path integrals.

**Approach:**
- Start with time-sliced path integral $K_a(x,y)$
- Discretize the resurgent structure (which singularities survive?)
- Does the alien calculus Leibniz rule hold in discrete form?
- What algebra is needed to maintain semigroup closure?

**Expected outcome:** Either find that quantum group forced, or identify where discrete/continuous diverge.

### 4.3 Analysis of Zache Framework

**Task 3:** Re-examine Zache et al. (2023) through the lens of composition constraints.

**Questions:**
- Why does $\text{SU}(2)_k$ specifically preserve composition on truncated space?
- Is $k$-deformation the unique way to maintain Borel-like structure, or one choice?
- What happens with other truncation schemes (RDM-optimal, continuous-variable)?

### 4.4 Literature Survey

**Task 4:** Search for papers explicitly connecting composition laws, lattice discretization, and quantum group structure.

**Expected:** Likely none directly; this may be a novel connection.

---

## 5. Session Log

**2026-02-22, 01:15–?: Research initiation**
- Confirmed kanban task assignment
- Set up research notebook
- Outlined four-part analysis plan
- Beginning deep-dive on Borel convolution structure

---

---

## 6. Detailed Analysis: Borel Convolution and Discrete Analogue

### 6.1 Continuous Borel Convolution (From resurgence-composition-bridge.md)

**Theorem (§3):** Composition axiom (C):
$$K_{t_1+t_2}(x,z) = \int K_{t_1}(x,y) K_{t_2}(y,z) dy$$

**implies at Borel level:**
$$\Phi_{t_1+t_2}(\zeta) = (\Phi_{t_1} *_B \Phi_{t_2})(\zeta)$$

where Borel convolution is:
$$(\Phi_{t_1} *_B \Phi_{t_2})(\zeta) = \int_0^\zeta \Phi_{t_1}(\zeta') \Phi_{t_2}(\zeta - \zeta') d\zeta'$$

**Proof outline:**
1. Start with $K_t(x,y) = N(t) e^{iS_{\text{cl}}/\hbar} (1 + \sum_{n \geq 1} a_n(x,y) \hbar^n + \text{non-pert})$
2. Borel transform the perturbative coefficients: $\Phi_t(\zeta) = \sum_n \frac{a_n(x,y)}{ n!} \zeta^n$
3. Composition integral: $K_{t_1+t_2} = \int K_{t_1} K_{t_2}$ becomes a convolution of kernels
4. At Borel level (after factoring out leading $e^{iS/\hbar}$ terms): convolution of kernels → Borel convolution of transforms

### 6.2 Discrete Time-Sliced Path Integral

**Lattice composition:** Time-sliced path integral with $N = t/a$ slices (spacing $a$):
$$K_a^{(N)}(x_0, x_N) = \sum_{x_1, \ldots, x_{N-1}} \prod_{j=0}^{N-1} K_a(x_j, x_{j+1})$$

where $K_a(x,y)$ is a single time-slice kernel.

**Composition (semigroup property):**
$$K_a^{(n_1 + n_2)}(x, z) = \sum_y K_a^{(n_1)}(x,y) K_a^{(n_2)}(y,z)$$

### 6.3 Discrete Analogue of Borel Convolution (SPECULATIVE)

**Hypothesis:** If we define "Borel transform" for lattice kernels as:
$$\Psi_n(m) := \text{"discrete Borel transform of } K_a^{(n)}\text{"}$$

Then discrete composition should force:
$$\Psi_{n_1 + n_2}(m) = (\Psi_{n_1} * \Psi_{n_2})(m)$$

where $(f * g)(m) = \sum_{k=0}^m f(k) g(m-k)$ is ordinary **discrete convolution**.

**Question:** What *is* the discrete Borel transform for lattice kernels?

**Possibility 1 (Z-transform analogue):**
Mimic the continuous case: $\Phi_t(\zeta) = \int_0^\zeta \phi_t(\zeta') d\zeta'$ → $\Psi_n(z) = \sum_{k=0}^n \phi_n(k)$ (cumulative sum)?

**Possibility 2 (Generating function):**
Use generating functions: $\Psi_n(z) = \sum_{k} K_a^{(k)}(x,y) z^k$ (power series in $z$)?

**Problem:** Continuous Borel convolution operates on a complex plane ($\zeta \in \mathbb{C}$) with singularities encoding nonperturbative physics. In discrete setting, what plays this role?

### 6.4 Connection to Hopf Algebra Structure

**Observation:** Continuous composition law (C) enforces **coassociativity** in Hopf algebra language:
$$(C): \Delta(K_{t_1+t_2}) = K_{t_1} \otimes K_{t_2} \quad (\text{multiplicative}, \text{ respecting composition})$$

The Borel convolution is how this algebraic structure appears in the transseries expansion.

**In lattice:** Discrete composition $K_{n_1 + n_2} = \sum_y K_{n_1} K_{n_2}$ still enforces coassociativity (now as a sum, not integral).

**Question for Q-Deformation:** Does truncating to finite Hilbert space *force* the Hopf algebra structure to become non-cocommutative (i.e., require quantum group deformation)?

**Hypothesis:**
- Continuous case: coassociativity (cocommutative) Hopf algebra (like Butcher algebra)
- Discrete truncated case: coassociativity + finite-dimensionality might force non-cocommutativity → quantum group

### 6.5 Why This Matters for Quantum Groups

Zache et al. (2023) truncate by deforming $\text{SU}(2) \to \text{SU}(2)_k$. The quantum group has non-cocommutative coproduct:
$$\Delta(g) = g \otimes g + \text{q-deformation terms}$$

**If true:** Composition law at lattice scale with truncation necessarily forces this structure.

**If false:** Composition is compatible with q-deformation but doesn't force it — it's a pragmatic choice.

---

---

## 7. The Zache Framework: q-Deformed Kogut-Susskind Gauge Theories

### 7.1 Paper Details

**Title:** Quantum and Classical Spin-Network Algorithms for q-Deformed Kogut-Susskind Gauge Theories

**Authors:** Torsten V. Zache, Daniel González-Cuadra, Peter Zoller

**Venue:** Physical Review Letters, Vol. 131, Issue 17, Page 171902 (October 24, 2023)

**ArXiv:** arXiv:2304.02527

**Sources ingested:** zache-2023-q-deformed-kogut-susskind.md (2026-02-22, student)

### 7.2 Problem Statement (From Zache Motivation)

**Classical lattice gauge theory problem:**
- Gauge field at each link: $U_\mu(x) \in \text{SU}(2)$ (infinite-dimensional space)
- Standard Kogut-Susskind Hamiltonian: $H = H_\text{mag} + H_\text{elec}$
- Simulation challenge: truncate gauge field Hilbert space to finite dimension while preserving physics
- Standard truncation: keep first $k$ representations of SU(2)
- **Problem with standard truncation:** breaks commutation relations, loses symmetry properties

### 7.3 Zache Solution: Quantum Group Deformation

**Approach:** Replace classical SU(2) with quantum group $\text{SU}(2)_k$ (deformation parameter $k$).

**How it works:**
1. In quantum group deformation, the Hopf algebra structure changes: $\Delta(g) = g \otimes g + q\text{-deformation terms}$
2. The irreducible representations of $\text{SU}(2)_k$ are **naturally finite-dimensional and closed** (unlike SU(2) which has infinite ladder of representations)
3. For each value of $k$, get a finite-dimensional Hilbert space *that closes under the Hopf algebra operations*
4. Limit $k \to \infty$ recovers classical SU(2)

**Key result:** Variational ground-state simulations show convergence to continuum limit at $k \sim O(10)$.

### 7.4 Critical Assessment: Is q-Deformation Forced?

**Zache's own framing:**
- Introduce q-deformation as "controlled regularization"
- Motivation: handle infinite-dimensional Hilbert space problem pragmatically
- Do NOT claim that composition law forces this choice

**Alternative approaches available (from literature):**
1. RDM-optimal truncation (arXiv:2509.17975): select basis states by statistical weight, NOT via group deformation
2. Continuous-variable approaches (arXiv:JHEP06(2025)084): avoid truncation altogether
3. Gauge-fixed formulations (arXiv:2307.11829): new "mixed basis" that works at all couplings
4. String-net formulations (Wen, JHEP 2023): topological Hilbert space (different algebra entirely)

**Conclusion from this analysis:**
- Zache demonstrates that q-deformation is an **effective tool** for lattice gauge theory
- But it is **ONE choice among several** for handling Hilbert space truncation
- The paper does NOT prove that composition law forces q-deformation

### 7.5 Reconciliation with Borel Convolution Analysis

**Question from Section 6:** Does discrete composition force quantum group structure?

**Evidence against forcing:**
1. Multiple non-quantum-group approaches exist (RDM, continuous-variable, gauge-fixed)
2. All can satisfy discrete semigroup property: $K_{n_1+n_2} = \sum_y K_{n_1} K_{n_2}$
3. Zache uses q-deformation for pragmatic reasons (finite-dim closure), not forced by algebra

**Evidence for compatibility (not forcing):**
1. Quantum groups DO satisfy discrete composition semigroup
2. The non-cocommutativity of $\text{SU}(2)_k$ is compatible with truncation
3. But so are commutative alternatives (RDM-optimized truncations, for instance)

**Hypothesis revision (Section 3.3 still holds):**
- Composition is compatible with q-deformation
- But composition does NOT uniquely force q-deformation
- Multiple regularization schemes satisfy the discrete composition law

---

## 8. Conclusions and Next Steps

### 8.1 What We've Learned

1. **Continuous composition** forces Borel convolution structure and alien calculus Leibniz rule (resurgence-composition-bridge.md)
2. **Discrete lattice composition** (semigroup property) likely has a discrete analogue of Borel convolution, but the structure is NOT unique
3. **Quantum group deformation** (Zache 2023) is a pragmatic tool for lattice truncation that IS compatible with composition but is NOT forced by it
4. **Alternative approaches** (RDM-optimal, continuous-variable, gauge-fixed) also satisfy composition and avoid quantum groups

### 8.2 Level 3 Serendipity Status

**Original question (Anomalies.md 2026-02-21):** Does composition force quantum groups in lattice gauge theory?

**Answer (Preliminary):** **NO.**
- Composition is compatible with quantum groups (demonstrated by Zache)
- But composition does NOT uniquely force them
- Multiple regularization schemes can satisfy the discrete semigroup property
- Quantum groups appear pragmatically chosen for their closure properties, not as a logical necessity from composition

### 8.3 Novel Angle Discovered

**Unexpected finding:** If quantum groups are NOT forced but pragmatically chosen, then the structure of lattice gauge theories is **more flexible** than continuous QFT. This openness might be exploited:

1. **Design custom regularizations** that preserve different aspects of composition (e.g., locality, unitarity, conformal invariance)
2. **Connect to RG flows:** RDM-optimal truncations vs q-deformed truncations might correspond to different RG trajectories
3. **Lattice artifacts:** Understand which schemes introduce spurious artifacts and which preserve continuum limits best

### 8.4 Recommended Follow-Up (For Team)

**Level 3-4 research:**
1. **Mathematician + Computationalist:** Prove discrete analogue of Borel convolution (Section 6.3-6.4 hypotheses)
2. **Physicist + Computationalist:** Compare RDM-optimal truncation vs q-deformed truncation in specific model (e.g., 2D U(1) gauge theory)
3. **Student (serendipity):** Search for papers on "composition + truncation + alternative regularizations" (likely sparse; potential novel angle)

---

**Last updated:** 2026-02-22, 01:45+ CET

**Status:** ANALYSIS SUBSTANTIALLY COMPLETE; READY FOR TEAM FEEDBACK
