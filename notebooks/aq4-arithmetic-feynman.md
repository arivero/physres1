# OQ4: Arithmetic of Feynman Integrals and RCP Connections

**Date:** 2026-02-20, Session 3 (Continuation)
**Agent:** Student (serendipity browsing)
**Status:** Exploratory, Tier 1 (high potential for P4.2 and RCP connections)

## Overview

This notebook tracks discoveries connecting the arithmetic structure of Feynman integrals
(multiple zeta values, polylogarithms, modular forms, cosmic Galois group) to the project's
core thesis on composition laws and refinement compatibility (RCP).

## Key Sources

Recent literature (2024-2025):
- [Rationalisation of multiple square roots in Feynman integrals](https://link.springer.com/article/10.1007/JHEP05(2025)078) (JHEP 2025)
- [Elliptic polylogarithms and Feynman parameter integrals](https://arxiv.org/abs/1902.09971) (arXiv 2019, recently extended)
- [The cosmic Galois group, the sunrise Feynman integral, and the relative completion of Γ₁(6)](https://arxiv.org/abs/2303.17534) (arXiv 2023)
- [Self-dualities and Galois symmetries in Feynman integrals](https://link.springer.com/article/10.1007/JHEP09(2024)084) (JHEP 2024)
- [Feynman integrals, elliptic integrals and two-parameter K3 surfaces](https://arxiv.org/abs/2502.15326) (arXiv Feb 2025)
- [Modular forms for three-loop banana integrals](https://arxiv.org/abs/2502.15325) (arXiv Feb 2025)

## §1. Hopf Algebra Structure and Coproducts

### 1.1 Feynman Graphs as a Hopf Algebra

The renormalization of Feynman integrals can be encoded via a Hopf algebra whose coproduct
incorporates the BPHZ procedure. The coproduct is defined through a **cutting procedure** on
graph edges: removing an edge produces pieces on either side.

**Connection to composition:** This is formally similar to our partition-channel RCP structure,
where the composition law requires decomposing over intermediate states.

### 1.2 Edge Subdivision and Motivic Lifts

Recent work (arXiv:2303.17534) shows that **edge subdivision is a systematic tool** for
extending Feynman integrals to motivic settings:
- All motivic lifts from subdivided graphs are themselves motivic periods of the original graph
- This implies a kind of "composition invariance" at the motivic level

**Question:** Does edge subdivision in graph renormalization correspond to a refinement-channel
operation in RCP?

### 1.3 Coproduct Combinatorics

The standard renormalization coproduct on Feynman graphs is:
Δ(G) = G ⊗ 1 + 1 ⊗ G + Σ_{s⊂G} (s) ⊗ (G/s)

where the sum is over proper subgraphs s, and G/s is the graph with s contracted.

**Physical interpretation:** This is the BPHZ decomposition of a graph into sub-divergences
and reduced graphs — exactly the structure of a refinement partition.

## §2. Multiple Zeta Values and Composition Semigroups

### 2.1 MZVs as Periods of Simple Graphs

At one loop, Feynman diagrams evaluate to multiple polylogarithms when integrated over
dimensional regularization parameters. The structure is:

Li_{n₁,...,nₖ}(z) = Σ_{k₁>...>kₖ>0} z^{k₁}/(k₁^{n₁}...kₖ^{nₖ})

Multiple zeta values (MZVs) arise as special cases at z=1.

### 2.2 Borel Convolution and Semigroup Structure

From our resurgence work (notebooks/resurgence-composition-bridge.md), we know that:
- Borel transformation of a product → convolution in Borel plane
- Composition law for amplitudes → multiplication in Borel plane

**Hypothesis:** The algebra of MZVs forms a semigroup under composition if we identify
diagram insertion operations with the "composition" of paths in a moduli space.

**Test case:** Verify that the shuffle product on MZVs corresponds to a composition
operation on decorated graphs.

## §3. Elliptic Polylogarithms and K3 Moduli

### 3.1 The Elliptic Barrier

Multiple polylogarithms (MPLs) suffice for one-loop Feynman integrals and many two-loop
integrals. However, **starting at two loops, certain diagrams exceed MLP scope** and require
elliptic generalizations.

Recent (2025): Elliptic polylogarithms E_{n₁,...,nₖ}(t) naturally appear in:
- Two-point functions at two loops (QED, QCD, EW corrections)
- Integrals related to elliptic curves (sunrise-type diagrams)

### 3.2 K3 Surfaces and Three-Loop Bananas

**BREAKTHROUGH (Feb 2025):** The three-loop banana integral with three equal masses and
the conformal two-loop five-point traintrack integral are related to a **two-parameter family
of K3 surfaces**.

The periods of these K3 surfaces can be expressed in terms of **ordinary modular forms**.

**Dimensional insight:** K3 surfaces are 4-dimensional (complex dimension 2, real dimension 4).
The natural connection to d=4 quantum field theory is suggestive.

### 3.3 Structure from Factorization

The maximal cuts of the three-loop banana integral factorize as:
M(3-loop banana) = M(sunrise)_1 × M(sunrise)_2

This hidden symmetry (exchanging the two sunrise elliptic curves) suggests an underlying
**compositional structure** at the level of integrals.

## §4. Cosmic Galois Group and Motivic Structure

### 4.1 What is the Cosmic Galois Group?

The cosmic Galois group is a **motivic Galois group** that naturally acts on structures in
QFT renormalization. Key fact (Brown):

**The renormalization group is a 1-parameter subgroup of the cosmic Galois group.**

This means RG flow is a special case of a much larger symmetry group acting on Feynman amplitudes.

### 4.2 Coaction Principle

The coaction dual to the action of the cosmic Galois group can be expressed in terms of
**motivic lifts of Feynman integrals** associated to related graphs.

**Connection to our framework:**
- P4.2 forces composition: multiplicative amplitudes, additive actions
- Cosmic Galois coaction: dual structure on motivic periods
- RCP scale-channel: RG flow as subgroup action

**Hypothesis:** The cosmic Galois group is the natural object realizing the scale-channel
(A4) of RCP in the arithmetic setting.

### 4.3 Arithmetic Factorization and Symanzik Polynomials

Brown showed: certain **arithmetic factorization properties** satisfied by Symanzik polynomials
of graphs and their minors are **crucial to defining the cosmic Galois group**.

The Symanzik polynomial is:
U(p,m) = Σ_{T⊂G} (∏_{e∉T} m_e²)  (U-part)
F(p,m) = Σ_{T⊂G} (∏_{e∈T} p_e) · (∏_{e∉T} m_e²)  (F-part, Feynman part)

**Question:** Does the factorization structure reflect composition invariance of subgraphs?

## §5. Self-Duality and Galois Symmetries (2024)

### 5.1 Observation

Self-duality in Calabi-Yau geometries (related to Feynman integrals) carries over to
**non-Calabi-Yau** Feynman integrals.

There can exist **Galois symmetries relating integrals**.

### 5.2 d=4 Suggestion

Calabi-Yau manifolds appear in string theory naturally in 6 complex (12 real) dimensions,
which corresponds to **d=10 spacetime**. However, d=4 quantum field theory can still exhibit
self-duality structures related to hidden symmetries in Feynman diagram topologies.

**Hypothesis:** The d=4 dimension selection (from half-density + conformal anomaly) may
correspond to a natural self-duality point in the space of Feynman integral symmetries.

## §6. Modular Forms and D=4 Selection

### 6.1 Modular Forms Emergence

Generically, periods of multi-parameter K3 surfaces define **orthogonal modular forms**.

Depending on mass configuration, maximal cuts of three-loop banana integrals define:
- Ordinary modular forms (SL₂(ℤ) action)
- Hilbert, Siegel, or hermitian modular forms (arithmetic subgroups)

### 6.2 D=4 Connection

**Observation:** K3 surfaces are 4-dimensional (real). The fact that
**periods of K3 surfaces appear naturally in d=4 quantum field theory** suggests:

- K3 moduli space is a natural geometric object for d=4 QFT
- Modular forms arise as the "arithmetic shadow" of d=4 field theory structure
- The cosmic Galois group acts on periods → symmetries of d=4 amplitudes

**Speculative:** The d=4 dimension selection (from composition + conformal anomaly) may
be forced by the requirement that periods of Feynman integrals lie in modular form algebras.

## §7. Refined Hypotheses for Future Work

### 7.1 OQ4-H1: Composition Forces MZV Algebra

**Hypothesis:** The semigroup structure of multiple zeta values under shuffle product
corresponds to a composition law on decorated Feynman graphs, with the shuffle operation
being the "arithmetic incarnation" of diagram insertion.

**Test:** Construct explicit example with two 1-loop diagrams; compute MZV values; verify
shuffle product matches composition prediction from P4.2 framework.

**Required agents:** Computationalist (numerical MZV evaluation), Mathematician (shuffle
product algebra)

### 7.2 OQ4-H2: Cosmic Galois Group as RCP Scale-Channel

**Hypothesis:** The cosmic Galois group realizes the scale-channel (A4) of RCP in the
arithmetic setting:
- Partition channel (A1): Noether conservation, action additivity
- Representation channel (A3): ordering ambiguity, star-product freedom
- **Scale channel (A4): Cosmic Galois group action, RG as subgroup orbit**

**Test:** Show that the RG semigroup (differential equations for Wilson coefficients)
can be embedded in the larger cosmic Galois action on motivic periods.

**Reference:** notebooks/rcp-foundations.md, papers/rcp-foundations/main.md, papers/rg-fundamental/main.md

**Required agents:** Mathematician (motivic Galois theory), Physicist (QFT renormalization)

### 7.3 OQ4-H3: d=4 Arithmetic Selection

**Hypothesis:** d=4 is selected not only by conformal anomaly and half-density (geometric),
but also by the requirement that Feynman integral periods form a **closed algebra under
cosmic Galois group action**, which is most "natural" (simplest structure) in d=4.

**Observation:** K3 surfaces (real dimension 4) naturally encode d=4 Feynman integral periods
as modular forms (SL₂(ℤ) or arithmetic subgroups).

**Test:** Enumerate the algebraic constraints on Feynman periods in d≠4; show that
generic periods require larger Galois groups or more complicated algebras.

**Required agents:** Mathematician (Galois cohomology, arithmetic groups), Student (literature on K3/Feynman connections)

## §9. Scattering Amplitudes and Modern Recursion Relations (NEW)

### 9.1 On-Shell Recursion Methods

Recent research (2024-2025) shows that **on-shell recursion relations** provide an alternative
framework to Feynman diagrams for computing tree-level amplitudes. Key insight:
- Recursion relations encode **compositional structure**: larger amplitudes built from smaller ones
- Complex-momentum methods replace Feynman integrals with combinatorial recursion
- "Feynman rules" for all-n amplitudes emerge naturally from on-shell recursion

### 9.2 Connection to P4.2 Composition

This is **directly relevant to P4.2's composition law**:
- P4.2 forces: exp(iS/ℏ) = ∏_i exp(iS_i/ℏ) under path composition
- Amplitude recursion forces: A_{n} = Σ_{intermediate states} A_{j} A_{k} / (propagator)

**Hypothesis OQ4-H5:** The on-shell recursive structure of scattering amplitudes IS the
tree-level manifestation of P4.2's composition law. The intermediate-state sum is the
composition integral over path partitions.

### 9.3 Shuffle Products and Amplitude Factorization

The Connes-Kreimer Hopf algebra of rooted trees (used in renormalization) maps surjectively
onto shuffle algebras. Recent work shows:
- Quasi-shuffle products in Hopf algebra = unique factorization of Feynman diagrams
- This is essential for renormalization when standard gluing yields non-unique factorizations

**Test for OQ4-H1:** Compute tree-level amplitude A_3 (3-point); verify that the shuffle
product formula on associated MZVs matches the compositional structure of on-shell recursion.

## §10. Soft Limits and Amplitude Universality (NEW)

### 10.1 Universal Soft Limits

Recent research shows that tree-level amplitudes in gauge theory and gravity are completely
determined by their **soft limits** — the behavior when one external momentum becomes small.

**Key result:** All tree-level amplitudes up to 7 points in gauge theory and gravity can be
reconstructed from soft-limit data alone, via the "inverse soft" procedure.

### 10.2 Connection to RCP Refinement

This is a **profound connection to the project's refinement philosophy**:
- **Soft limits ≈ taking limits in parameter space (deformation parameter k → 0)**
- **Amplitude universality ≈ RCP condition: physical predictions invariant under refinement**
- **Inverse soft ≈ composition: building large structures from limit behavior of smaller ones**

**Hypothesis OQ4-H6:** Soft-limit universality IS a manifestation of RCP in the amplitude sector.
Gauge-theory amplitudes are determined by their RCP-compatible limit behavior, analogously to
how quantum compositions are forced by classical refinement limits (P4.2).

### 10.3 Extended Phase Space and Asymptotic Symmetries

Recent work (2024) shows that subn-leading soft theorems arise from asymptotic symmetries acting
at null infinity. This suggests:
- Soft limits encode **infinite-dimensional symmetry structure** (Ward identities)
- Amplitudes are constrained by **asymptotic gauge freedom**, not just infinitesimal symmetries
- This is conceptually similar to how half-density measures encode asymptotic conformal structure

## §11. Pending Integration Tasks (Updated)

1. **Shuffle product and composition (OQ4-H1):** Computationalist to compute shuffle products
   for simple MZV examples; Student to find explicit graph-composition dictionaries in literature.
   **New: Compare shuffle algebra structure with on-shell recursion for 3-point and 4-point amplitudes.**

2. **Cosmic Galois embedding (OQ4-H2):** Mathematician to outline how RG differential equations
   fit into the larger motivic Galois framework; Physicist to provide explicit RG evolution.

3. **d=4 arithmetic uniqueness (OQ4-H3):** Student to survey recent (2025) papers on modular
   forms in Feynman integrals for dimension-specific constraints; Mathematician to formalize
   the "minimal Galois group" requirement.

4. **On-shell recursion and P4.2 (OQ4-H5):** Physicist to compute a tree-level amplitude via
   on-shell recursion; show that the compositional structure matches P4.2 predictions.

5. **Library expansion:** Sources downloaded:
   - arXiv:2502.15326, arXiv:2502.15325 (Feb 2025 K3 breakthrough) ✓
   - arXiv:1902.09971 (elliptic polylogarithms) ✓
   - arXiv:2303.17534 (cosmic Galois + sunrise integral) ✓
   - arXiv:2408.07160 (Weyl conformal geometry) ✓
   - Britto: Hopf algebras for Feynman diagrams ✓
   - [Panzer's cosmic Galois notes](https://people.maths.ox.ac.uk/panzer/paper/strassbourg2022.pdf)
   - Recent on-shell recursion papers (PhysRevD 2024, JHEP 2024)

## §9. Weyl Conformal Geometry and Dimensional Regularization (NEW)

### 9.1 Connection to d=4 Selection

Recent work (arXiv:2408.07160, 2025) on Weyl conformal geometry introduces a "Weyl gauge invariant
geometric regularisation" that maintains conformal symmetry across arbitrary d dimensions while
being "Weyl-anomaly free."

**Key observation:** The regularization is **dimension-independent** — it works the same in all d.
Yet physical consequences (anomaly emergence, symmetry breaking) can be dimension-dependent.

### 9.2 Interaction with Our Framework

This connects to:
- HD-D1.3 (half-density dimension selection via conformal coupling ξ_conf = (D-2)/(4(D-1)))
- P4.2 (composition forcing d/2 exponent, D=4 special)
- OQ3 (Half-density dimension selection mechanism)

**Hypothesis OQ4-H4:** Weyl gauge invariant regularization in conformal geometry provides an
alternative geometric perspective on d=4 selection. The "dimension-invariant but anomaly-sensitive"
property suggests d=4 emerges as the unique dimension where:
- Weyl anomaly vanishes (anomaly-free phase)
- Conformal symmetry is unbroken
- Quantum corrections preserve gauge invariance without modification

### 9.3 Future Collaboration

Mathematician: Compare Weyl gauge invariance formalism (Ghilencea) with half-density geometric
covariance. Are they expressing the same d=4 selection, or are they independent?

Physicist: Check if Weyl-DBI action in d=4 naturally produces composition-law structure from P4.2.

## References

- papers/rcp-foundations/main.md: RCP axioms and three channels
- papers/rg-fundamental/main.md: RG as fundamental, two-layer structure
- papers/half-density-qft/main.md: Half-density dimension selection, conformal coupling
- notebooks/resurgence-composition-bridge.md: Borel convolution, transseries
- blackboards/3.md (promoted): H6.3 instantons and dimension selection
- Panzer 2022: Cosmic Galois group in φ⁴ theory
- Brown et al.: Multiple zeta values and Feynman integrals (foundational)
- Schnetz: Graphical functions and Feynman integral arithmetic
- Ghilencea 2024/2025 (arXiv:2408.07160): Weyl conformal geometry and dimensional regularization

## §11. Anomalies, Obstructions, and Dimension Selection (NEW, OQ5 Connection)

### 11.1 Anomalies as Topological Obstructions

Recent work (arXiv:2205.11190, 2022) shows that in 1+1d CFTs, anomalies are **obstructions to boundary conditions**:
- Anomaly-free symmetries ↔ compatible Cardy boundary states exist
- Anomalous symmetries ↔ system is ingappable (Lieb-Schultz-Mattis)

**Key insight:** Anomalies manifest as **obstructions to refinement** — you cannot partition/refine the
system while preserving the symmetry if the symmetry is anomalous.

### 11.2 Weyl Anomaly Structure in Even Dimensions

For d = 2n (even dimensions only; no anomaly in odd d):
- **Type A:** One coefficient, proportional to Euler density E_{2n}
- **Type B:** Multiple coefficients, Weyl-invariant Lorentz scalars
- **Examples:** d=2 (1 A + 1 B), d=4 (1 A + 3 B), d=6 (1 A + 5 B)

**Dimensional pattern:** Anomaly structures proliferate as d increases (more Type B coefficients).

### 11.3 Critical Dimensions from Anomaly Cancellation

String theory provides a natural test case:
- **d=26 (bosonic string):** Weyl anomaly vanishes only at d=26
  - Partition function is well-defined as integral over moduli space
  - This is a **dynamical selection** of dimension by anomaly cancellation

**Hypothesis OQ5-H1 (OQ4-inspired):** d=4 for QFT may be selected analogously:
- Anomaly structure minimal (fewest Type B coefficients among "interesting" dimensions)
- Anomaly-free conditions simplest to satisfy
- Composition law compatibility widest

### 11.4 Connection to RCP and Half-Density

Our half-density framework singles out d=4 via conformal coupling ξ_eff = (D-2)/(4(D-1)) = 1/6.
Weyl anomalies select d=4 differently: relatively simple anomaly structure + natural selection point.

**Question:** Are these two d=4 selections equivalent, or independent?

**Hypothesis OQ5-H2:** Conformal anomaly structure (Weyl anomaly coefficients) and half-density
conformal coupling both encode the same geometric constraint, viewed from different perspectives:
- Half-density: dimension-independent value of ξ_eff matches conformal coupling only at d=4
- Weyl anomaly: Type B coefficient count minimal at d=4 relative to higher dimensions

### 11.5 Anomalies as Composition Obstructions (OQ4 Connection)

This reinterprets OQ5 in light of OQ4 composition hypothesis:
- P4.2 forces multiplicative composition: exp(iS/ℏ) = ∏_i exp(iS_i/ℏ)
- Anomalies obstruct this composition when they are present
- **Anomaly-free condition** = composition-compatible condition

In 1+1d CFT language: if a global symmetry is anomalous, you cannot compose the system
across boundaries (gapping potential obstruction).

In QFT language: if a quantum symmetry is anomalous, the partition function does not compose
multiplicatively under domain subdivision.

**Hypothesis OQ5-H3 (OQ4-RCP synthesis):** The RCP principle requires anomaly-free theories for
composition to hold. Dimensions where anomalies vanish or are minimal are RCP-preferred dimensions.
- Composition forces exponential weights (P4.2)
- Composition requires anomaly freedom (no obstruction to sewing)
- d=4 is the natural dimension where both conditions align

## §12. Categorical Framework for Anomalies (NEW, 2025)

### 12.1 Anomalous Simple Categories and Tensor Functors

Recent breakthrough (arXiv:2508.00982, 2025): **Categorical Anomaly Matching** framework provides
a unified approach to anomalies in non-invertible (categorical) symmetries.

**Key concept:** Tensor functors between UV and IR symmetry categories encode anomaly constraints.
Each symmetry category hosts multiple **Anomalous Simple Categories (ASCies)** — fundamental
building blocks of categorical anomalies.

### 12.2 SymTFT and RG Interfaces

Within Symmetry Topological Field Theory (SymTFT):
- UV/IR symmetry categories connected via **tensor functors**
- These functors manifest as **RG-interfaces** between UV and IR SymTFTs
- ASCies are interfaces satisfying "simple, universal criteria"

**Connection to composition:** Tensor functors are **composable** — they form a category themselves.
The composition of functors is the composition of RG flows.

### 12.3 Bridging OQ4 (Cosmic Galois) and OQ5 (Anomaly Obstruction)

**Hypothesis OQ4-OQ5 Synthesis H1:** The cosmic Galois group (OQ4-H2) is the **category of
tensor functors** acting on the space of Feynman integrals via categorical anomaly matching.

**Supporting observations:**
- Cosmic Galois: acts on motivic periods, 1-parameter subgroup is RG
- Categorical anomaly: tensor functors encode RG-interfaces, act on symmetry categories
- Both are **compositional structures** acting on renormalization

### 12.4 Dimension Selection via Categorical Anomaly

If anomalies obstruct composition (OQ5-H3), then:
- Dimensions with simpler categorical anomaly structures are RCP-preferred
- d=4: fewest ASCies, simplest categorical structure
- Higher d: proliferating ASCies, more anomaly constraints

**Hypothesis OQ4-OQ5 Synthesis H2:** The d=4 dimension selection emerges from requiring
the categorical anomaly structure to be **minimal/rigid** — i.e., fewest degrees of freedom
in the category of tensor functors.

## §13. References (Updated)

- papers/rcp-foundations/main.md: RCP axioms and three channels
- papers/rg-fundamental/main.md: RG as fundamental, two-layer structure
- papers/half-density-qft/main.md: Half-density dimension selection, conformal coupling
- notebooks/resurgence-composition-bridge.md: Borel convolution, transseries
- blackboards/3.md (promoted): H6.3 instantons and dimension selection
- Panzer 2022: Cosmic Galois group in φ⁴ theory
- Brown et al.: Multiple zeta values and Feynman integrals (foundational)
- Schnetz: Graphical functions and Feynman integral arithmetic
- Ghilencea 2024/2025 (arXiv:2408.07160): Weyl conformal geometry and dimensional regularization
- arXiv:2205.11190: Boundary conditions and anomalies in 1+1d CFT
- nLab conformal anomaly: structural classification in even dimensions
- Boulanger 2007: Algebraic classification of Weyl anomalies in arbitrary dimensions
