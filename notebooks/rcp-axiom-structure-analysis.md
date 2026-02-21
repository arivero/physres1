# RCP Axiom Structure Analysis

**Created:** 2026-02-14
**Sources:** Blackboard 0 (P4.2 ↔ RCP mapping, (D) derivability, commuting diagrams), cornerstone P4.2, rcp-foundations Section 6
**Status:** Append-only notebook (graduated from blackboard)

## Summary

Three interconnected discoveries about the RCP axiom system A1-A5:

1. **P4.2 ↔ RCP mapping:** P4.2 uses exactly A1+A2+A5 (partition channel). Per-axiom decomposition shows A1 forces 5/9 conclusions, A5 forces 3/9, A2 forces 1/9. A3, A4 are logically independent (representation and scale channels).

2. **(D) derivability:** Hypothesis (D) is derivable from (C) + physical setup. [K]=L^{-d} follows from composition integral consistency. P4.2 effective hypothesis count: 2 axioms (C, I) + 1 physical setup, not 3 axioms.

3. **Commuting diagrams:** Cross-channel commutativity follows from A1-A5; no A6 needed. P×R: theorem of A1+A3 (short-time universality). P×S: trivial (independent parameters). R×S: theorem of A3+A4 (deformation equivalence).

## Opus review verdict
PASS WITH MINOR ISSUES. Four terminological corrections applied:
- V1: "bijection" → "injection with surjectivity at partition level"
- V3: "operationally orthogonal" → "logically independent" (can be operationally coupled)
- A5 optionality tension noted
- Continuum time requires A5+A2

---

## Part 1: P4.2 ↔ RCP Axiom Mapping

### 1.1 Mapping Table

| P4.2 hypothesis | RCP axiom | Relation | Scope |
|---|---|---|---|
| **(C)** composition semigroup | **A1** composition law | (C) ⊂ A1 | A1 is channel-general; (C) is partition-specific (kernel semigroup) |
| **(I)** identity limit \(K \to \delta\) as \(t \to 0\) | **A2** identity limit | (I) = A2\|\_partition | A2 also covers scale (\(\mu \to \mu\)) and representation |
| **(D)** dimensional homogeneity \([K]=L^{-d}\) | **A5** dimensional homogeneity | (D) = A5\|\_partition | A5 also constrains scale/representation parameters |
| — | **A3** representation equivalence | Not used by P4.2 | Independent channel (ordering/domain) |
| — | **A4** scale invariance | Not used by P4.2 | Independent channel (RG flow) |

### 1.2 Derived hypotheses (not independent axioms)

| Originally in P4.2 | Status | Derivation |
|---|---|---|
| **(L\_exp)** exponential weight | **Theorem of A1** | Fourier multiplicativity → quadratic log → Gaussian (Exponential Weight Uniqueness, BB1) |
| **(L\_loc)** local action dependence | **Theorem of A1+A5** | Lévy obstruction: \(\alpha = 2\) forced by dimensional solvability (Levy-Khintchine Obstruction, BB2) |
| **iε prescription** | **Theorem of A1** | Degree-counting: only linear \(f(x)=x\) preserves composition (iε uniqueness theorem) |
| **Continuum time** | **Theorem of A5** | \(\{m,\hbar\}\) cannot build \([\varepsilon]=T\) (P4.2g) |

### 1.3 Per-axiom decomposition of P4.2 conclusions

| Conclusion | Axiom(s) required |
|---|---|
| \(d/2\) normalization exponent | A1 alone |
| \(\exists\kappa\) with \([\kappa]=[\text{action}]\) | A1 + A5 |
| \(\kappa = \hbar\) identification | A5 (unique constant with \([\text{action}]\) from \(\{m,\hbar\}\)) |
| \(\kappa \to 0\) failure (no distributional identity) | A2 |
| \(\kappa \to \infty\) failure (trivial weights) | A1 (composition loses content) |
| Exponential weight uniqueness | A1 (functional equation) |
| Lévy process exclusion (\(\alpha \neq 2\)) | A5 (dimensional obstruction) |
| iε uniqueness | A1 (degree-counting) |
| Continuum time necessity | A5 + A2 (dimensional obstruction + meaningful limit target) |

### 1.4 What A3 adds (representation channel, orthogonal to P4.2)

- **Ordering equivalence**: different quantizations \(Q_L, Q_W, Q_{BD}\) of same classical symbol compatible modulo \(O(\hbar)\)
- **Domain data transport**: self-adjoint extension parameters \(\theta_{\text{dom}}\) must be carried in parameter bundle
- **Four-layer stratification**: principal symbol → connection → scalar → domain
- **Measurability**: Layer-3 shift unmeasurably small (\(|\Delta E_0| \sim 0.006\text{-}0.06\) meV)

### 1.5 What A4 adds (scale channel, orthogonal to P4.2)

- **RG flow**: \(\mu\,dg_R/d\mu = \beta(g_R)\) as scale-compatibility map
- **Dimensional transmutation**: bare coupling traded for physical scale \(\kappa_*\)
- **Closure failure = divergence**: UV divergences signal closure failure without parameter update

### 1.6 Structural verdicts

- **V1**: Injection with surjectivity at partition level. P4.2 exhausts partition-channel content.
- **V2**: Each RCP axiom is strictly broader than its P4.2 counterpart.
- **V3**: A3, A4 logically independent of P4.2 (can be operationally coupled in specific systems).
- **V4**: P4.2 is crown witness for partition channel; RCP not reducible to P4.2.
- **V5**: No structural gaps or redundancies.

---

## Part 2: (D) Derivability

### 2.1 Decomposition of (D)

| Component | Content | Status |
|---|---|---|
| (D₁) \([K] = L^{-d}\) | Kernel has density dimension | **Theorem of (C)** on \(\mathbb{R}^d\) |
| (D₂) Well-defined dimensions | All quantities \(M,L,T\)-typed | **Trivially true** for any Lagrangian theory |
| (D₃) Limited dimensional basis | \(\{m\}\) alone cannot build \([\text{action}]\) | **Property of the setup** |

### 2.2 Proof of (D₁)

Composition on \(M = \mathbb{R}^d\):
\[K(x,y;T) = \int_{\mathbb{R}^d} K(x,z;t_1)\,K(z,y;t_2)\,d^d z.\]
Dimensional consistency: \([K] = [K]^2 \cdot [L]^d\), hence \([K] = [L]^{-d}\). \(\square\)

Extends to curved \((M,g)\) since \([d\mu_g] = [L]^d\).

### 2.3 Revised hypothesis count

**P4.2 = theorem of (C) + (I) + physical setup** (action-based dynamics of mass-\(m\) particle on \(\mathbb{R}^d\)).

Effective: 2 mathematical axioms + 1 physical setup.

---

## Part 3: Commuting Diagrams

### 3.1 Channel pairs

| Channel pair | Mechanism | Status |
|---|---|---|
| Partition × Representation | Short-time universality + \(O(\hbar)\) control | Theorem of A1+A3 |
| Partition × Scale | Independent parameters (\(\Delta t\) vs \(\mu\)) | Trivially true |
| Representation × Scale | Deformation equivalence (four-layer stratification + measurability) | Theorem of A3+A4 |

### 3.2 Key subtlety

Commutativity holds at the level of **physical observables**, not individual parameters. Different orderings give different beta functions at \(O(\hbar^2)\), but observable predictions agree.

### 3.3 Verdict

**No A6 needed.** Five axioms suffice for all three channels AND their pairwise interactions.

**Caveat:** In QFT, partition (lattice spacing) and scale (UV cutoff) can merge (\(\Lambda \sim 1/a\)). The P×S independence holds for the non-relativistic QM setting of the current framework; QFT extension (Open Question #3) may require revisiting this.

---

## Part 4: Formalized Minimal P4.2 Statement

### 4.1 Theorem P4.2' (Minimal formulation)

**Setup.** \(M=\mathbb{R}^d\), smooth Lagrangian \(\mathcal{L}\), action \([S]=ML^2T^{-1}\), mass \(m\) (\([m]=M\)) the only independent constant.

**Hypotheses.** \(\{K(q_f,t_f;q_i,t_i)\}_{t_f>t_i}\) satisfying:
- **(C)** Composition: \(K = \int K \cdot K \, d^dq\) for all intermediate times.
- **(I)** Identity: \(K \to \delta^{(d)}\) as \(t_f \to t_i^+\).

**Conclusions** (with axiom attribution):

| # | Conclusion | Source |
|---|---|---|
| (i) | \([K] = L^{-d}\) | (C) alone |
| (ii) | \(\mathcal{N}(\Delta t) \propto (\Delta t)^{-d/2}\) | (C) alone |
| (iii) | Gaussian weight, Lévy excluded | (C) alone |
| (iv) | iε uniqueness | (C) alone |
| (v) | \(\exists\kappa\) with \([\kappa]=[S]\), \(\kappa=\hbar\) | (C) + Setup |
| (vi) | \(\kappa \to 0\) failure | (I) |
| (vii) | \(\kappa \to \infty\) failure | (C) alone |
| (viii) | Continuum time forced | (C) + Setup |

### 4.2 Comparison with original

Original P4.2: 4 hypotheses (C, L, I, D), later reduced to 3 (Exponential Uniqueness + Levy-Khintchine Obstruction).
Revised P4.2': 2 hypotheses (C, I) + physical setup.
Key insight: (L) and (D) are derivable from (C) + setup.

---

## Part 5: Identity Limit Derivability

### 5.1 Claim

The identity limit (I): \(K_t \to \delta\) as \(t \to 0\) is derivable from composition (C) + physical setup, reducing P4.2 to a **single-axiom theorem**.

### 5.2 Two derivation paths

**Path 1 (Free particle, explicit):** Composition forces the kernel form \(K_t(x,y) = (m/2\pi i\hbar t)^{d/2}\exp(im(x-y)^2/2\hbar t)\). This is a nascent delta family: for any test function \(\varphi\),
\[\int K_t(x,y)\varphi(y)\,d^dy \to \varphi(x) \quad \text{as } t \to 0\]
by stationary phase concentration. No additional assumption required.

**Path 2 (General V, Stone's theorem):** Composition \(K_t \circ K_s = K_{t+s}\) + physical setup (self-adjoint Hamiltonian \(H\)) → Stone's theorem → \(\{e^{-iHt/\hbar}\}_{t \in \mathbb{R}}\) is a \(C_0\) unitary group → \(K_t \to \delta\) in the distributional sense as \(t \to 0\).

### 5.3 What (I) contributed in the old decomposition

In the per-axiom table (Part 1), A2 (identity limit) forced exactly one conclusion: the \(\kappa \to 0\) obstruction. But this also follows from the explicit kernel: as \(\kappa \to 0\), \((m/2\pi i\kappa t)^{d/2}\exp(imS/\kappa)\) oscillates without distributional limit.

### 5.4 Caveat (red team)

The "physical setup" assumption now carries: self-adjoint generator \(H\) (excluding singular potentials with ambiguous extensions), action-based dynamics on \(\mathbb{R}^d\), mass parameter \(m\). These are physically natural but not vacuous. The honest statement: **composition is the master axiom; the identity limit is forced by it given any well-posed physical system.**

### 5.5 Final axiom count

| Version | Hypotheses | Source |
|---|---|---|
| Original P4.2 | 4: (C), (L), (I), (D) | Cornerstone Section 10 |
| After Exp. Uniq. + Levy Obstr. | 3: (C), (I), (D) | (L) = theorem of (C) |
| After (D) derivability | 2 + setup: (C), (I) | (D) = theorem of (C) + setup |
| After identity limit derivability | **1 + setup: (C)** | (I) = theorem of (C) + setup |

**Composition is the single master axiom for the partition channel.**

## Stage 3 CFT Analog: c/24 Forcing and the Double Analogy

**Source:** blackboards/5.md, Physicist (2026-02-20).
**Status:** Sev-3 conceptual clarification. Extends the Stage 1-2 axiom analysis to Stage 3.

### The d/2 ↔ c/24 Double Analogy

The composition-forcing pattern at Stages 1-2 (P4.2: d/2 from composition) has a direct CFT analog at Stage 3 (P9.1b: c/24 from sewing). The analogy is precise:

| Stage | Forcing | Normalization exponent | Free constant |
|-------|---------|------------------------|---------------|
| 1-2 (QM) | (C) + dimensional homogeneity | d/2 per time unit | action scale ℏ |
| 3 (CFT) | (C) + Virasoro algebra | c/24 per modular unit | central charge c |
| 4 (TQFT) | (C) + cobordism hypothesis | e^{-tH} form | Hamiltonian H |

**Physical interpretation of the 1/2 vs 1/24 factors:**
- At Stage 2: each spatial DOF contributes 1/2 to the propagator exponent t^{-d/2}. The 1/2 comes from the Gaussian measure (equipartition-type counting).
- At Stage 3: each conformal DOF contributes 1/24 to the vacuum energy exponent c/24. The 1/24 comes from the Virasoro algebra (Casimir energy per mode = -1/24 for a free boson).

The COUNT (d or c) is physical input. The FORM (1/2 or 1/24 per DOF) is structural, forced by composition + the relevant algebraic structure (dimensional analysis or Virasoro).

### c-Theorem Orthogonality

The Zamolodchikov c-theorem (c decreases along 2D RG flow) is ORTHOGONAL to composition forcing:
- Composition forces c/24 GIVEN c (structural, within a fixed CFT)
- c-theorem constrains how c CHANGES between CFTs (directional, along RG flow)
- Neither constrains the other

**Derivability check:** c-theorem is NOT derivable from (C) alone. It requires 2D + Lorentz + unitarity — the same set of independent axioms that the Adams positivity bounds require (OQ3 Level 3 closure). Composition forces structure; the c-theorem is a content constraint.

### Does Composition Force c_min?

For unitary 2D CFTs: c ≥ 1/2 (Ising model, lowest unitary Virasoro representation).
This bound comes from Virasoro representation theory (unitarity of the Hilbert space), NOT from composition. Composition cannot force c ≥ 1/2.

**Topological exception:** For topological 2D theories (c=0 by definition), composition + topological invariance trivially forces c=0. But this is definitional, not a new result.

### Extension to 4D (a-theorem)

The 4D analog: Komargodski-Schwimmer (arXiv:1107.3987) proved the "a-theorem" (a decreases under 4D RG flow) using 4D Weyl anomaly. The 4D analog of c is the Euler-density coefficient a. At Stage 3 in 4D: composition + 4D Weyl anomaly would force a/(some denominator) as the vacuum energy exponent. This is NOT yet worked out in the RCP framework — future direction.

### Summary

Composition (C) forces the NORMALIZATION EXPONENT at each stage:
- d/2 at Stage 2 (partition channel, spatial DOF)
- c/24 at Stage 3 (conformal channel, conformal DOF)
- Z(point) uniquely at Stage 4 (cobordism channel, full dualizable objects)

In all cases: the COUNT of DOF (d, c, or the fully dualizable object) is free physical input.
Composition forces the GEOMETRIC/ALGEBRAIC FACTOR per DOF (1/2, 1/24, or the semigroup form).

### References
- paper/main.md P9.1b (c/24 from sewing)
- paper/main.md P4.2 (d/2 from composition)
- Zamolodchikov 1986 (c-theorem)
- Komargodski-Schwimmer arXiv:1107.3987 (a-theorem, 4D)
- Di Francesco-Mathieu-Senechal §5-6 (Virasoro algebra)
- blackboards/5.md (physicist source)

---

## Part 6: OQ2-H1 Axiomatization Convergence (TWO-AGENT: student + mathematician)

**Source:** blackboards/2.md §§1-9 (student survey + mathematician assessment), 2026-02-21.
**Status:** Sev-3 conceptual (not load-bearing for cornerstone). Good context for rcp-foundations §1 introduction.

### 6.1 The Four Frameworks

| Framework | Axioms | Composition | Refinement | Outcome |
|-----------|--------|-------------|------------|---------|
| Hardy (2001) | 5 operational | Tensor product (spatial) | State-space continuity (A5) | Hilbert space QM |
| AQFT (Haag-Kastler) | 3 locality | Local nets + subnets | Spacelike partition + limits | Operator algebras |
| Categorical QM (Abramsky-Coecke) | Dagger monoidal | Morphism composition | String diagram reduction | Abstract protocols |
| P4.2 / RCP | 1 composition + setup | Exponential amplitude weights (temporal convolution) | Partition/repr/scale limits | Path integral quantization |

### 6.2 Hardy → RCP Mapping Assessment

| Hardy Axiom | RCP Channel | Assessment |
|-------------|-------------|------------|
| A1 (Simplicity) | None | Eliminated by Chiribella; no RCP counterpart |
| A2 (Continuous Reversibility) | Partition + Scale | Reversibility → unitarity (partition); continuous → limit compatibility (scale). Two channels, not one. |
| A3 (Composability) | Partition | MISMATCH: Hardy = spatial tensor product; RCP = temporal convolution. Different composition structures. |
| A4 (Local Discriminability) | Representation | Best match: states distinguishable by local ops ≈ representation-channel equivalence. |
| A5 (Continuity) | ALL THREE | Continuity of state space spans all RCP channels. Not a clean one-to-one mapping. |

**Verdict:** NOT isomorphic. Spatial tensor product (Hardy A3) ≠ temporal convolution (RCP partition channel). Hardy's axioms cannot be reorganized as (partition/repr/scale) triples without loss of structural specificity.

### 6.3 AQFT → RCP Mapping (Strongest Correspondence)

| Haag-Kastler Axiom | RCP Channel | Match Quality |
|--------------------|-------------|---------------|
| Locality (spacelike commutativity) | Partition Channel | Strong: both subdivide spacetime, require limit stability |
| Isotony (larger ⊃ smaller regions) | Representation Channel | Strong: region inclusion = representation inclusion |
| Additivity (nets compose across scales) | Scale Channel | Strong: local nets refine stably = RCP scale compatibility |

**Tentative claim (sev-3, two-agent):** AQFT = RCP for observable algebras, just as P4.2 = RCP for path-integral amplitudes. Two implementations of the same compatibility principle in different mathematical frameworks. Whether formal equivalence (theorem) or structural parallel requires checking if Haag-Kastler axioms imply RCP A1-A4.

### 6.4 Categorical QM → RCP Mapping

| Categorical Structure | RCP Channel | Match Quality |
|-----------------------|-------------|---------------|
| Monoidal tensor | Partition Channel | Good: parallel composition of processes |
| Dagger (adjoint) | Representation Channel | Good: time-reversal = representation-channel symmetry |
| Scale Channel analog | MISSING | Categorical QM inherently finite-dimensional; no renormalization group |

**Gap:** The scale channel requires infinite-dimensional structure (RG flow, UV divergences). Standard string-diagram formalism does not encode this. Categorical QM is structurally incomplete relative to RCP.

### 6.5 OQ2-H1 Verdict

**PARTIALLY CONFIRMED. No formal isomorphism; conceptual overlap real but uneven.**

Framework hierarchy by structural specificity:

Categorical QM ⊂ Hardy ⊂ AQFT ≈ RCP

- **Most likely formal equivalence:** AQFT ↔ RCP (three axioms ↔ three channels, one-to-one)
- **Hardy:** Less equivalent (A3 mismatch spatial/temporal, A5 spans all channels)
- **Categorical QM:** Misses scale channel entirely

### 6.6 Implications

1. **RCP is not idiosyncratic:** Deepest common substrate of modern QM axiomatizations converges on the same tri-channel structure.
2. **AQFT as RCP implementation:** Haag-Kastler = observable-algebra realization of RCP; P4.2 = path-integral realization. Two faces of one principle.
3. **Formalization target:** Cross-validate RCP via AQFT: prove/disprove that Haag-Kastler implies RCP A1-A4. Positive result = independent proof that RCP-like principles force QM.
4. **Pedagogical:** RCP spine can be explained operationally (Hardy), algebraically (AQFT), or categorically (Abramsky-Coecke) — all approximations of the full three-channel structure.

### References
- Hardy arXiv:quant-ph/0101012 (five axioms reconstruction)
- Chiribella/Dakic/Masanes 2011+ (refined reconstructions)
- Haag-Kastler (AQFT axioms); nLab article
- Abramsky-Coecke arXiv:0808.1023 (categorical QM)
- papers/rcp-foundations/main.md §5 (RCP three channels)
- paper/main.md §10 (P4.2 composition forcing)
- blackboards/2.md (source; student §§1-8, mathematician §9)
