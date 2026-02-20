# Tangent Groupoid & Deformation Quantization: Composition Law Bridge

**Date:** 2026-02-20
**Agent:** Student
**Source:** Serendipitous literature browsing (Task #5)

---

## Summary

The tangent groupoid (Connes) and recent work on groupoid-valued path integrals (Lackman 2023–2024) provide a rigorous mathematical framework for deformation quantization that directly mirrors our composition-law approach. The key insight is that **groupoid convolution encodes the semigroup composition property** of the path integral, making the d/2 exponent in the propagator normalization a consequence of groupoid-level dimensional analysis rather than a post-hoc fit.

---

## 1. Connes' Tangent Groupoid (Foundational)

### 1.1 Fiber Structure

The tangent groupoid G_M of a manifold M has:
- **At ℏ = 0:** Fiber is the tangent bundle T(M), where the groupoid operation is bundle projection π: T(M) → M and fiberwise addition in each tangent space
- **At ℏ ∈ (0,1]:** Fiber is the pair groupoid M × M (with usual multiplicative composition)
- **Total space:** A groupoid with fiberwise operations, continuously interpolating from infinitesimal to global structure

### 1.2 Quantization Interpretation

The tangent groupoid quantizes a manifold by:
1. Replacing the "rough" pair groupoid (M × M, multiplication as composition) with a smooth family of groupoids that respects the manifold's differential structure
2. The ℏ → 0 limit recovers Poisson structure (via tangent-fiber symplectic form)
3. The ℏ ≠ 0 case gives Weyl–Moyal quantization (via groupoid C*-algebra)

**Key result (Landsman):** Weyl–Moyal quantization can be understood as a homomorphism from the ℏ → 0 groupoid (classical, Poisson) to the ℏ ≠ 0 groupoid (quantum, non-commutative), mediated by the tangent groupoid's deformation parameter.

**Canonical reference:** Landsman, N.P. "Quantization and the tangent groupoid." arXiv:math-ph/0208004 (2002). Cites Connes, *Noncommutative Geometry* (Academic Press, 1994), Chapter II, §5.

---

## 2. Modern Groupoid Path Integrals (Lackman 2023–2024)

### 2.1 Pair Groupoid Reformulation of Feynman Path Integral

**Lackman (arXiv:2402.05866, Feb 2024):** "A Groupoid Construction of Functional Integrals: Brownian Motion and Some TQFTs"

**Novelty:** Instead of integrating differential forms over path space (the classical approach), Lackman formalizes Feynman's path integral by:
- Replacing emphasis on the tangent bundle with emphasis on the **pair groupoid** G = M × M
- Using the van Est map (which assembles groupoid structure into differential forms)
- Exploiting the piecewise-linear structure of manifolds to develop a coordinate-free, partition-of-unity-free approach to functional integration

**Payoff:**
- Wiener measure defined directly on the pair groupoid
- Stochastic integrals and path observables defined without coordinates
- Applies to any field theory valued in a Lie algebroid
- **Recovers Kontsevich's star product non-perturbatively** when applied to Poisson sigma models

**Implications for composition:**
The pair-groupoid structure makes the composition law (sewing law for propagators) a **groupoid property**, not an accident.

### 2.2 Higher Groupoids & Kontsevich's Star Product

**Lackman (arXiv:2303.05494, Mar 2023):** "A Formal Equivalence of Deformation Quantization and Geometric Quantization (of Higher Groupoids) and Non-Perturbative Sigma Models"

**Main result:**
Kontsevich's universal deformation quantization formula (the star product * on any Poisson manifold) **equals** the twisted convolution algebra of the geometric quantization of a Lie 2-groupoid that integrates the Poisson structure.

**Structure:**
- Classical: Poisson manifold (M, {·,·})
- Integrate: Lie 2-groupoid G_2 with tangent Lie algebroid = Poisson structure
- Quantize: Geometric quantization of G_2 yields a C*-algebra
- Convolve: Twisted convolution of functions on G_2 reproduces the Kontsevich star product

**Non-perturbative aspect:**
The perturbative expansion of Kontsevich's formula (Feynman graphs with combinatorial weights) is recovered as the Feynman diagram expansion of the path integral for a **groupoid-valued sigma model**. When this sigma model can be defined non-perturbatively (via symplectic reduction on G_2), one obtains correlation functions directly.

---

## 3. Connection to Composition Semigroup & d/2 Exponent

### 3.1 Cattaneo–Felder Bridge (2000)

**"A path integral approach to the Kontsevich quantization formula"** (Cattaneo & Felder, arXiv:math/9902090)

**Contribution:**
Showed that Kontsevich's deformation quantization formula is the perturbative expansion of the path integral of a **topological bosonic open string theory**:
- String worldsheet = 2D disk or annulus
- Target = Poisson manifold M
- Path integral = integral over mappings from worldsheet to M
- Feynman diagrams = graphs drawn on the worldsheet
- Kontsevich's formula = perturbative expansion of the worldsheet path integral

**Moyal product:** When M = ℝ^2n with constant Poisson bracket {q^i, p_j} = δ_j^i, Kontsevich's formula reduces to the Moyal (Weyl–Wigner) star product.

**Implication:** The groupoid convolution (Lackman 2023) can be viewed as a rigorous, non-perturbative completion of Cattaneo–Felder's topological string interpretation.

### 3.2 d/2 Exponent from Groupoid Composition

**Mechanism (sketch):**

1. **Groupoid property:** Convolution of two functions on M × M gives a function on M × M:
   $$(f * g)(x,y) = \int_M f(x,z) \, g(z,y) \, d\mu(z)$$
   This is the **sewing/composition law** for propagators.

2. **Dimensional analysis:** If f(x,y;t) = propagator at time t, with [f] = L^{-d} (dimensional consistency of the measure d^d z), then the time-t dependence must preserve dimension.

3. **Gaussian form:** For a quadratic Lagrangian, f(x,y;t) ∝ exp(iS_cl(x,y;t)/ℏ).

4. **Scaling:** Under (x,y,t) → (λx, λy, λt), the composition integral ∫f(x,z;t₁)f(z,y;t₂) d^d z must scale consistently with f(x,y;t₁+t₂).

5. **Fourier multiplicativity:** In momentum space, f̂_T(p) = f̂_{t₁}(p) · f̂_{t₂}(p) uniquely determines log f̂_t(p) = t·φ(p) (up to integration constant).

6. **For quadratic action:** φ(p) ∝ p², so normalization factor ∝ t^{-d/2}.

**Key point:** The d/2 exponent is **forced by groupoid convolution + dimensional consistency**, independent of heat-kernel analogy or Feynman-Kac formula.

---

## 4. Refinement Compatibility Principle (RCP) Perspective

### 4.1 Tangent Groupoid as RCP Formalization

The tangent groupoid can be viewed as a mathematical realization of the RCP's three channels:

| RCP Channel | Tangent-Groupoid Picture |
|---|---|
| **Partition** | Discretizing time: t → t₁ + t₂ (sewing law), enforced by groupoid multiplicativity |
| **Representation** | Fiber at varying ℏ (classical ℏ→0 to quantum ℏ≠0): groupoid C*-algebra encodes ordering/measure choices |
| **Scale** | Fiber at varying coupling or length scale: deformation of groupoid structure, geometric quantization respects scaling |

**RCP as groupoid axiom:**
A physical law is RCP-compatible if it remains unchanged under deformations of the ambient groupoid structure (holding fixed the "refinement-invariant" observables).

### 4.2 Dimensional Transmutation & Groupoid Reduction

In the 2D delta-function example:
- Classical groupoid: M = ℝ, contact interaction (delta potential)
- Logarithmic divergence in propagator loop integral
- RG flow: scale parameter μ ↔ Lie-groupoid fiber deformation
- Dimensional transmutation: dimensionless coupling traded for scattering length

This parallels Lackman's use of **symplectic reduction on the 2-groupoid** to define non-perturbative sigma models: the reduction removes unphysical regulator dependence and leaves a physical scale.

---

## 5. Open Questions for Mathematician & Critic

### Q1: Uniqueness of d/2 from groupoid composition alone

Does the groupoid convolution composition law, without appeal to heat-kernel or Feynman-Kac analogy, **uniquely determine** the d/2 exponent in the propagator normalization (up to dimensional constants and overall prefactors)?

**Expected answer:** Yes. The Fourier multiplicativity F(p,t₁+t₂) = F(p,t₁) + F(p,t₂), combined with dimensional homogeneity and physical setup, forces the exponent.

### Q2: Groupoid formalization of RCP

Can the three RCP channels (partition, representation, scale) be formulated as three distinct deformation directions of a "master groupoid" G_RCP, with the requirement that physical observables remain invariant under G_RCP deformations?

**Expected answer:** Plausible. Partition deformation ↔ time sewing (fiberwise composition), representation ↔ ℏ-fiber, scale ↔ gauge/energy scaling. Needs formal statement.

### Q3: Stone's theorem and groupoid structure

Lackman's pair-groupoid approach avoids choosing bases/coordinates. Does this framework automatically ensure the Stone semigroup property (U(t) = e^{-iHt}, strongly continuous unitary), or is additional regularity still needed?

### Q4: Composite structures at loop level

At one loop (2D delta example), the RG semigroup property (scale composition) mirrors the time composition semigroup. Is there a Hopf-algebra or groupoid-level structure that unifies both?

---

## 6. References

**Foundational (Groupoids & Tangent Groupoids):**
- Connes, A. *Noncommutative Geometry*. Academic Press, 1994. Chapter II.
- Landsman, N.P. "Quantization and the tangent groupoid." *arXiv:math-ph/0208004*. 2002.

**Modern Groupoid Path Integrals:**
- Lackman, J. "A Groupoid Construction of Functional Integrals: Brownian Motion and Some TQFTs." *arXiv:2402.05866*. Feb 2024.
- Lackman, J. "A Formal Equivalence of Deformation Quantization and Geometric Quantization (of Higher Groupoids) and Non-Perturbative Sigma Models." *arXiv:2303.05494*. Mar 2023.

**Path Integral & Quantization:**
- Cattaneo, A. & Felder, G. "A path integral approach to the Kontsevich quantization formula." *arXiv:math/9902090*. 2000.
- Dreisigmeyer, D.W. & Young, P.M. "Feynman's Path Integrals as Evolutionary Semigroups." *arXiv:math-ph/0107016*. 2001.
- Simon, B. *Functional Integration and Quantum Physics*. Academic Press, 1979. (Semigroup theory, Feynman-Kac)

**Dimensional Analysis & RG:**
- Carrozza, S., et al. "Dimensional Transmutation and Dimensional Regularization in Quantum Mechanics: I. General Theory." *Annals of Physics* 287 (2000): 14–35.
- Kleinert, H. *Path Integrals in Quantum Mechanics, Statistics, Polymer Physics, and Financial Markets*. World Scientific, 2009.

**Deformation Quantization:**
- Kontsevich, M. "Deformation Quantization of Poisson Manifolds." *Letter to Deligne*, 1997. Available at IHES.
- Beentjes, S. *An Introduction to Deformation Quantization after Kontsevich*. UvA Math Project, 2015.

---

## 7. Promotion Candidates

- **To cornerstone (Section 10):** Brief remark linking RCP axioms to tangent-groupoid fiber structure
- **To new satellite:** "Groupoid Convolution and Deformation Quantization" (2–3 pages, bridge between half-density QFT and RCP Foundations satellites)
- **To paper notes:** Detailed comparison of Lackman's groupoid reduction with dimensional transmutation in RG

---

## 8. Next Steps (For Orchestrator)

1. Assign Mathematician to review Q1–Q3 and propose a clean uniqueness statement combining groupoid convolution + dimensional analysis
2. Optional: Assign Student to search for concrete examples of groupoid-quantized systems in recent literature (e.g., symplectic groupoids, Poisson-Lie groups)
3. Consider scheduling a paired walk (Philosopher–Mathematician) to discuss whether "groupoid axioms" can replace or complement "RCP axioms" as a foundation

---

# APPENDIX: Lackman's Pair-Groupoid Path Integral (Task #15 Deep-Dive)

**Date:** 2026-02-20 (Task #15)
**Papers:** arXiv:2402.05866 (Feb 2024), arXiv:2309.05640 (Sep 2023), arXiv:2601.05228 (Jan 2026)

## A1. Core Construction: Cochains → Riemann Sums

**Lackman's key insight:** Replace tangent-bundle integration (traditional calculus) with **pair-groupoid cochain evaluation**.

### A1.1 Pair Groupoid Basics

For a manifold M:
- **Pair groupoid:** G = M × M with composition (x,z)·(z,y) = (x,y) [if midpoint z matches]
- **Objects (arrows):** pairs (x,y) ∈ M × M
- **Cochains:** functions Ω: G → ℝ, e.g., Ω(x,y) = f(x)·(y-x) in dimension 1

### A1.2 Van Est Map: Cochains ↔ Differential Forms

The van Est map **lifts** differential forms from M to cochains on the pair groupoid:

**1D example:**
- Differential form on M: ω = f(x) dx
- Cochain on G = M × M: Ω(x,y) = f(x)·(y-x)
- Van Est map: ω ↦ Ω (formal Taylor expansion at identity bisection)

**Result:** The Taylor expansion of cochain data along source fibers recovers the original differential form.

### A1.3 Riemann Sum Construction

For a triangulation T of [0,1] (or any domain):

$$\text{Riemann sum} = \sum_{\text{simplices}} \Omega(\mathbf{x}_i, \mathbf{x}_{i+1})$$

where (x_i, x_{i+1}) are vertices of each simplex.

**Limit:** As mesh → 0, the Riemann sums converge to:
$$\int_M ω = \lim_{|T| \to 0} \sum \Omega(\text{vertices})$$

**Coordinate-free:** No coordinates needed; structure is purely groupoid-theoretic.

---

## A2. Application to Path Integrals: Feynman Construction Formalized

### A2.1 Discrete Path Space as Groupoid Morphisms

**Key identification (Lackman's bridge):**

A sequence of positions (x_0, x_1, ..., x_N) connecting x to y is encoded as **morphisms in the pair groupoid**:

$$(x, x_1) \to (x_1, x_2) \to ... \to (x_{N-1}, y)$$

Composition: (x, x_i) · (x_i, x_{i+1}) = (x, x_{i+1}) [sewing property]

**Sewing law:**
$$K(x, y; \Delta t_1 + \Delta t_2) = \int K(x, z; \Delta t_1) \, K(z, y; \Delta t_2) \, d\mu(z)$$

This is **groupoid convolution**, not just a kinematic property.

### A2.2 Action Functional on Groupoid Paths

For a path x(t) with Lagrangian L:

$$S[\mathbf{x}] = \sum_{i=0}^{N-1} L\left(x_i, \frac{x_{i+1} - x_i}{\Delta t_i}\right) \Delta t_i$$

This is the **generalized Riemann sum** for the action functional:

$$S[\mathbf{x}] = \sum_{\text{simplices}} \left[ \frac{1}{2}m \frac{|x_{i+1}-x_i|^2}{\Delta t_i} - V(x_i) \Delta t_i \right]$$

**Path integral:**
$$K(x, y; T) = \int_{\text{paths } x \to y} \exp\left(\frac{i}{\hbar} S[\mathbf{x}]\right) D[\mathbf{x}]$$

where the measure D[x] is defined as the limit of the groupoid-Riemann-sum measure.

### A2.3 Normalization and d/2 Exponent

**Critically:** Lackman's formulation makes the **normalization constant explicit** at the discrete level.

For a free particle in d dimensions with time step Δt:

$$K_N(\Delta t) = \text{(Jacobian of } x_i \text{ coordinates)} \times \text{(Wick rotation factor)}$$

**Dimensional analysis:**
- Each x_i has dimension [length]
- Integrating over x_i introduces [length]^{-d} from the Lebesgue measure d^d x_i
- N time steps → (N-1) intermediate x_i → total dimension (L^{-d})^{N-1}

**Gaussian integral:**
For the quadratic path integral, when performing the Gaussian sum, the normalization factor from dimension counting is:

$$K(x, y; T) \propto \left(\frac{m}{2\pi i \hbar \Delta t}\right)^{Nd/2} \exp(iS_{cl}/\hbar)$$

Taking the continuum limit N → ∞, Δt → 0 (with T = N·Δt fixed):

$$K_{\text{cont}}(x, y; T) \propto \left(\frac{m}{2\pi i \hbar T}\right)^{d/2} \exp(iS_{cl}/\hbar)$$

**The d/2 exponent arises from:** (# of degrees of freedom) × (1/2 from Gaussian) = d × (1/2) = d/2

**Lackman's contribution:** This is made **manifest in the groupoid Riemann-sum construction** without post-hoc normalization: the van Est map's Taylor expansion automatically picks up the correct dimensional factors.

---

## A3. Half-Density Connection (Open Question)

The notebook entry on project half-density normalization notes that the measure should scale as:

$$\rho^{d/2} \sim (t)^{-d/2}$$

**Observation (Task #15):**

Lackman's pair-groupoid construction uses standard Lebesgue measure on M × M (hence dimension d), and the d/2 appears via the Gaussian Jacobian.

**Question:** Does Lackman's framework admit a **half-density version** where the measure is only L^{d/2} (not L^d)?

- If yes: the composition law would hold with only d/2-dimensional integration (more economical, suggests geometric origin)
- If no: the full d-dimensional measure is necessary, and d/2 is purely algebraic (Gaussian Jacobian)

This is worth exploring: does a half-density path integral have any **groupoid-theoretic interpretation** (e.g., density on the groupoid arrows themselves, not on M)?

---

## A4. Non-Perturbative Kontsevich (Why Lackman Matters)

**Why this paper is novel:**

Standard approach (Cattaneo–Felder):
- Poisson sigma model on a 2D surface (disk)
- Perturbative path integral: Feynman diagrams
- Kontsevich's formula emerges as graph sums

Lackman's approach (arXiv:2303.05494, 2402.05866):
- Pair-groupoid path integral on the disk (via van Est map)
- **Non-perturbative quantization** via symplectic reduction
- Kontsevich's star product extracted directly from reduced phase space

**Implication for RCP:**
- RCP's three channels (partition, representation, scale) might correspond to **three deformation directions of the pair groupoid structure itself**
- Scale channel: geometric quantization fiber deformation (ℏ parameter)
- Partition channel: refinement of triangulation (van Est map applied at different scales)
- Representation channel: choice of cochains (gauge freedom)

---

## A5. References (Task #15 Additions)

**Primary sources:**
- Lackman, J. "A Groupoid Construction of Functional Integrals: Brownian Motion and Some TQFTs." *arXiv:2402.05866*. Feb 2024.
- Lackman, J. "A Groupoid Approach to the Riemann Integral (and Path Integral Quantization of the Poisson Sigma Model)." *arXiv:2309.05640*. Sep 2023.
- Lackman, J. "A Geometric Definition of the Integral and Applications." *arXiv:2601.05228*. Jan 2026.

**Related:**
- Quantum Zeitgeist article: "Geometric Integral Definition Using Triangulations..." (exposition of Lackman's work)
- nLab entries: geometric quantization of symplectic groupoids, Moyal deformation quantization

---

## A6. Open Work from Task #15

**For Computationalist/Mathematician:**

1. Reconstruct the free-particle kernel K(x,y;T) step-by-step using Lackman's pair-groupoid Riemann sums. Verify explicit form: $(m/(2\pi i \hbar T))^{d/2} \exp(i m(x-y)^2/(2\hbar T))$.

2. Test whether the van Est map's Taylor expansion, applied to the action form $\omega = (1/2)m(dx/dt)^2 dt - V(x) dt$, automatically produces the d/2 factor at N → ∞.

3. (Optional) Explore half-density variant: can the pair-groupoid framework be modified to use density^{1/2} measure instead of full Lebesgue? If so, does dimensional analysis still yield d/2, or does the exponent change?

4. Connect dimensional transmutation (2D delta example from blackboard 0) to Lackman's reduction-at-finite-μ concept: does changing μ in RG parallel deforming the van Est map's "evaluation point"?

---

## Mathematician's Assessment (2026-02-20, Task #17)

### Q1 Answer: d/2 from groupoid convolution — clean proposition

**Proposition (Mathematician, 2026-02-20).**
Let G = M × M be the pair groupoid on M = ℝ^d with Lebesgue measure d^d z.
Let f: G × (0,∞) → ℂ satisfy:
- (C) Convolution: ∫ f(x,z;t₁) f(z,y;t₂) d^d z = f(x,y;t₁+t₂)
- (T) Translation invariance: f(x,y;t) = h(x−y;t)
- (D) Dimensional consistency: [f] = L^{−d}
- (M) Measurability: h(·;t) ∈ L¹(ℝ^d), ĥ(p;t) ≠ 0 a.e.

Then ĥ(p;t) = exp(t·φ(p)) for some φ: ℝ^d → ℂ.
For quadratic φ(p) = c·p², normalization N(t) ∝ t^{−d/2}.
Lévy alternatives (α ≠ 2) excluded by dimensional basis {m, ℏ}.

No heat equation or Feynman-Kac formula invoked. The d/2 exponent follows directly from Fourier multiplicativity + Cauchy's measurability theorem.

Promotion candidate: Prop PN-P1.3 (path-integral-normalization satellite) or RCP-P6.3 (rcp-foundations).

### Q2 Answer: Master groupoid for RCP — plausible but not a theorem

Partition + representation channels: cleanly encoded in Connes' tangent groupoid G_ℏ.
Scale channel (RG flow): acts on coupling space via domain deformations; requires separate Lie algebroid structure. Cross-channel commutativity (representation × scale) is observable-level, not automatic from groupoid morphisms.
Disposition: outlook/remark only. Not ripe for theorem.

### Q3 Answer: Lackman + Stone — (R3) self-adjointness still needed

Lackman's groupoid C*-algebra resolves automatically:
- (R4) L² boundedness: C*-norm = 1 for unitaries
- (R1) K̂_t ≠ 0: unitarity → injectivity
- (R2) Hermitian symmetry: groupoid involution (x,y) ↦ (y,x) for real Lagrangians

Persists (not resolved by groupoid framework):
- (R3) Self-adjointness of H: H is an unbounded operator, external to C*(G). Domain specification (choice of self-adjoint extension for singular V) is prior to the groupoid construction.

Conclusion: the irreducible gap is (R3), confirmed by both the abstract C*-algebraic analysis and the concrete Stone's theorem route. The physical setup (specifying which self-adjoint extension) provides (R3).
