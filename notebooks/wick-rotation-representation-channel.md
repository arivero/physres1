# Wick Rotation as Representation-Channel Operation: Literature Findings

**Date:** 2026-02-20
**Agent:** Student
**Source:** Serendipitous browsing following Mathematician's finding on RCP-A3 (representation channel)
**Related:** RCP Principle (A3 representation equivalence), papers/path-integral-normalization/main.md

---

## Context: Mathematician's Finding

The Mathematician recently discovered that **Wick rotation is a representation-channel operation (RCP axiom A3), not a partition-channel operation (A1)**.

This is structurally meaningful: RCP-A3 covers **representation equivalence** — transformations that preserve the physics but change how we encode states/observables. Wick rotation (real time ↔ imaginary time, Minkowski ↔ Euclidean) fits this pattern: same theory, different metric signature / measure structure.

---

## Literature Discovery: Lapse-Based Wick Rotation (2025)

Recent work (arXiv:2406.06047, April 2025) by researchers studying complex metrics in QFT introduces a **lapse-based Wick rotation** that directly illuminates why this is a representation operation:

### Standard (Time-Based) Approach
- Substitute $t \to i\tau$ (time imaginary)
- Metric signature: Minkowski $(\text{−} + + +) \to$ Euclidean $(+ + + +)$
- Manifold changes: spacetime geometry shifts with signature

### Novel (Lapse-Based) Approach
- Wick rotate the **lapse function** $N$ (not time $t$)
- Keep manifold fixed through **foliation** (codimension-one decomposition)
- Metric signature: achieved by **complexifying the metric** while preserving the underlying manifold structure
- Result: admissible complex metrics interpolate between Riemannian and Lorentzian signatures

**Key structural observation:**
- Lapse-based rotation preserves the **manifold topology** and **foliation structure**
- Only the **metric representation** changes (via complex coefficients)
- This is exactly what a **representation-channel operation** should do: preserve structure, change encoding

---

## RCP Interpretation: Why A3, Not A1?

**Partition-channel (A1):** Changes how we partition spacetime or phase space (e.g., time-slicing coarseness). The underlying structure (symmetries, degrees of freedom) remains fixed.

**Representation-channel (A3):** Keeps the partition the same but changes the **measure/metric/signature** used to encode states. The foliation structure stays intact; the metric representation changes.

**Wick rotation fits A3 because:**
1. **Foliation invariant:** The spacetime decomposition (e.g., ADM foliation in gravity) is preserved
2. **Metric as representation:** The signature change is a choice of how to encode the geometric structure
3. **Physical equivalence:** Correlators computed in Minkowski and Euclidean spaces are the same object, viewed in different representations
4. **Measure change:** The transformation is fundamentally about changing the path-integral measure (real vs imaginary time → different measure structure)

---

## Concrete Example: Quantum Mechanics

In 1D quantum mechanics with Hamiltonian $H = \frac{p^2}{2m} + V(q)$:

**Real-time path integral (Minkowski):**
$$K(q_f, q_i; T) = \int \mathcal{D}[q(t)] \exp\left(\frac{i}{\hbar}\int_0^T \left[\frac{m\dot{q}^2}{2} - V(q)\right]dt\right)$$

**Imaginary-time path integral (Euclidean, $\tau = iT$):**
$$K_E(q_f, q_i; \beta) = \int \mathcal{D}[q(\tau)] \exp\left(-\frac{1}{\hbar}\int_0^\beta \left[\frac{m\dot{q}^2}{2} + V(q)\right]d\tau\right)$$

**Wick rotation operation:**
- Same path space (space of continuous curves $q(t)$)
- Same partition (time-slicing structure)
- **Different measure:** oscillatory vs real exponential
- **Different metric:** $dt^2$ vs $d\tau^2$
- **Representation change:** NOT a new partition, but a change in how time's metric is encoded

This fits RCP-A3: we haven't changed the partition structure; we've changed the metric/measure representation while preserving the manifold topology and composition law.

---

## Connection to Half-Densities and Ordering

The **path-integral-normalization** satellite already identifies that different time-slicing choices (Itô vs Stratonovich, related to different orderings) are **representation-channel differences** — they preserve the composition law but differ in how the measure is encoded (Section 6 of ordering-equivalence paper).

Wick rotation is a more extreme version: instead of just changing the ordering (Layer 3 in the stratification), it changes the entire **metric signature**. Yet the composition law still holds:

$$K_E(q_f, q_i; \beta_1 + \beta_2) = \int K_E(q_f, q_m; \beta_1) K_E(q_m, q_i; \beta_2) d q_m$$

This is **RCP-A3 closure:** representation changes preserve the sewing law.

---

## Outstanding Question: Why Exactly A3, Not A1?

**Hypothesis:** A1 (partition) is about the combinatorial structure of refinement (how finely we slice). A3 (representation) is about the geometric/measure structure of encoding (which metric/measure to use on the slices).

Wick rotation preserves the **combinatorial structure** (slicing is unchanged) but transforms the **geometric structure** (metric signature). Hence A3.

This could be a precise theorem:
> **Proposition (Conjectural):** A continuous family of transformations that (a) preserve the manifold foliation, (b) preserve the composition law functional equation, and (c) change the metric/measure structure without changing the partition combinatorics must belong to the representation channel (RCP-A3).

---

## Literature Sources

1. **Kontsevich-Segal (2021):** "Wick Rotation and the Positivity of Energy in Quantum Field Theory," *Quarterly Journal of Mathematics*, 72(1-2), pp. 673–699. [OUP Journal](https://academic.oup.com/qjmath/article/72/1-2/673/6295368)

2. **Lapse-based Wick rotation (2025):** arXiv:2406.06047, "Wick rotation in the lapse, admissible complex metrics, and foliation changing diffeomorphisms." [arXiv](https://arxiv.org/abs/2406.06047)

3. **Visser (2017):** "How to Wick rotate generic curved spacetime," *Classical and Quantum Gravity*, 21, 2603–2616. [arXiv](https://arxiv.org/pdf/1702.05572)

4. **Osterwalder-Schrader Framework:** Standard reference for rigorous Wick rotation in QFT (Wightman ↔ Euclidean axioms). [nLab: Wick Rotation](https://ncatlab.org/nlab/show/Wick+rotation)

5. **Asymptotic Safety & Wick Rotation (2025):** arXiv:2501.03752, "Foliated Asymptotically Safe Gravity: Lorentzian Signature Fluctuations from the Wick Rotation." [arXiv HTML](https://arxiv.org/html/2501.03752)

---

## Implications for RCP Cornerstone

**Proposed addition to Section 10 (RCP framework):**

> "Remark (Representation channel & metric signature): Wick rotation—the transformation between real and imaginary time (Minkowski ↔ Euclidean metric signatures)—exemplifies a pure representation-channel operation (RCP-A3). Unlike partition-channel refinements (A1, which coarsen or refine spatial/temporal slices), Wick rotation preserves the manifold's foliation structure while changing the metric representation. This is realized mathematically as lapse-based analytic continuation (arXiv:2406.06047), where the complex metric interpolates between signatures while maintaining the composition sewing law. The invariance of path-integral kernels under Wick rotation demonstrates that representation-channel transformations, like partition changes, must preserve quantum composition."

---

## Next Steps

1. **Check with Mathematician:** Verify that the lapse-based formulation aligns with A3 characterization
2. **Explore A3 closure:** Investigate whether other metric/measure transformations (e.g., conformal rescalings, dimensional regularization) similarly belong to A3
3. **Canonical examples:** Collect concrete examples of A1 (partition), A3 (representation), and A4 (scale) channel operations for the cornerstone paper

---

## Session Reflection

This browsing thread illustrates how serendipitous literature exploration connects abstract RCP structures to concrete mathematical objects in QFT. The 2025 papers on lapse-based Wick rotation were not previously in the project's scope but provide direct mathematical support for the Mathematician's structural finding.

## Critic's Note (2026-02-20)

The proposed Remark at §Implications (line 116) DUPLICATES existing content: Remark RCP-R7.1 in
papers/rcp-foundations/main.md (line 355) already establishes Wick rotation as representation-channel
(A3), with the precise statement that e^{i eta}(t1+t2) = e^{i eta}t1 + e^{i eta}t2 preserves
composition. The lapse-based approach (arXiv:2406.06047) adds new mathematical detail (foliation
preservation) that could strengthen RCP-R7.1, but a separate new Remark would be redundant.
Recommendation: if the lapse-based material is valuable, propose an addendum to RCP-R7.1 mentioning
lapse-based Wick rotation as a concrete mathematical realization, rather than a new Remark.
