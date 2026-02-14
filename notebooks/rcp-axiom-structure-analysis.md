# RCP Axiom Structure Analysis (D49+D50+D51+D53)

**Created:** 2026-02-14
**Sources:** Blackboard 0 (D49/D50/D51), cornerstone P4.2, rcp-foundations Section 6
**Status:** Append-only notebook (graduated from blackboard)

## Summary

Three interconnected discoveries about the RCP axiom system A1-A5:

1. **D49 (P4.2 ↔ RCP mapping):** P4.2 uses exactly A1+A2+A5 (partition channel). Per-axiom decomposition shows A1 forces 5/9 conclusions, A5 forces 3/9, A2 forces 1/9. A3, A4 are logically independent (representation and scale channels).

2. **D50 ((D) derivability):** Hypothesis (D) is derivable from (C) + physical setup. [K]=L^{-d} follows from composition integral consistency. P4.2 effective hypothesis count: 2 axioms (C, I) + 1 physical setup, not 3 axioms.

3. **D51 (Commuting diagrams):** Cross-channel commutativity follows from A1-A5; no A6 needed. P×R: theorem of A1+A3 (short-time universality). P×S: trivial (independent parameters). R×S: theorem of A3+A4 (deformation equivalence).

## Opus review verdict
PASS WITH MINOR ISSUES. Four terminological corrections applied:
- V1: "bijection" → "injection with surjectivity at partition level"
- V3: "operationally orthogonal" → "logically independent" (can be operationally coupled)
- A5 optionality tension noted
- Continuum time requires A5+A2

---

## Part 1: P4.2 ↔ RCP Axiom Mapping (D49)

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
| **(L\_exp)** exponential weight | **Theorem of A1** | Fourier multiplicativity → quadratic log → Gaussian (D29/S288) |
| **(L\_loc)** local action dependence | **Theorem of A1+A5** | Lévy obstruction: \(\alpha = 2\) forced by dimensional solvability (D39/S295) |
| **iε prescription** | **Theorem of A1** | Degree-counting: only linear \(f(x)=x\) preserves composition (D37/S292) |
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
- **Four-layer stratification** (D35/S290): principal symbol → connection → scalar → domain
- **Measurability** (D38/S294): Layer-3 shift unmeasurably small (\(|\Delta E_0| \sim 0.006\text{-}0.06\) meV)

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

## Part 2: (D) Derivability (D50)

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

## Part 3: Commuting Diagrams (D51)

### 3.1 Channel pairs

| Channel pair | Mechanism | Status |
|---|---|---|
| Partition × Representation | Short-time universality + \(O(\hbar)\) control | Theorem of A1+A3 |
| Partition × Scale | Independent parameters (\(\Delta t\) vs \(\mu\)) | Trivially true |
| Representation × Scale | Deformation equivalence (D35/D38) | Theorem of A3+A4 |

### 3.2 Key subtlety

Commutativity holds at the level of **physical observables**, not individual parameters. Different orderings give different beta functions at \(O(\hbar^2)\), but observable predictions agree.

### 3.3 Verdict

**No A6 needed.** Five axioms suffice for all three channels AND their pairwise interactions.

**Caveat:** In QFT, partition (lattice spacing) and scale (UV cutoff) can merge (\(\Lambda \sim 1/a\)). The P×S independence holds for the non-relativistic QM setting of the current framework; QFT extension (Open Question #3) may require revisiting this.

---

## Part 4: Formalized Minimal P4.2 Statement (S303)

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

Original P4.2: 4 hypotheses (C, L, I, D), later reduced to 3 (D29+D39).
Revised P4.2': 2 hypotheses (C, I) + physical setup.
Key insight: (L) and (D) are derivable from (C) + setup.

---

## Part 5: Identity Limit Derivability (D53)

### 5.1 Claim

The identity limit (I): \(K_t \to \delta\) as \(t \to 0\) is derivable from composition (C) + physical setup, reducing P4.2 to a **single-axiom theorem**.

### 5.2 Two derivation paths

**Path 1 (Free particle, explicit):** Composition forces the kernel form \(K_t(x,y) = (m/2\pi i\hbar t)^{d/2}\exp(im(x-y)^2/2\hbar t)\). This is a nascent delta family: for any test function \(\varphi\),
\[\int K_t(x,y)\varphi(y)\,d^dy \to \varphi(x) \quad \text{as } t \to 0\]
by stationary phase concentration. No additional assumption required.

**Path 2 (General V, Stone's theorem):** Composition \(K_t \circ K_s = K_{t+s}\) + physical setup (self-adjoint Hamiltonian \(H\)) → Stone's theorem → \(\{e^{-iHt/\hbar}\}_{t \in \mathbb{R}}\) is a \(C_0\) unitary group → \(K_t \to \delta\) in the distributional sense as \(t \to 0\).

### 5.3 What (I) contributed in the old decomposition

In the D49 per-axiom table, A2 (identity limit) forced exactly one conclusion: the \(\kappa \to 0\) obstruction. But this also follows from the explicit kernel: as \(\kappa \to 0\), \((m/2\pi i\kappa t)^{d/2}\exp(imS/\kappa)\) oscillates without distributional limit.

### 5.4 Caveat (red team)

The "physical setup" assumption now carries: self-adjoint generator \(H\) (excluding singular potentials with ambiguous extensions), action-based dynamics on \(\mathbb{R}^d\), mass parameter \(m\). These are physically natural but not vacuous. The honest statement: **composition is the master axiom; the identity limit is forced by it given any well-posed physical system.**

### 5.5 Final axiom count

| Version | Hypotheses | Source |
|---|---|---|
| Original P4.2 | 4: (C), (L), (I), (D) | Cornerstone Section 10 |
| After D29+D39 | 3: (C), (I), (D) | (L) = theorem of (C) |
| After D50 | 2 + setup: (C), (I) | (D) = theorem of (C) + setup |
| After D53 | **1 + setup: (C)** | (I) = theorem of (C) + setup |

**Composition is the single master axiom for the partition channel.**
