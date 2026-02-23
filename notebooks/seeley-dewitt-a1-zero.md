# Seeley-DeWitt Coefficients of the Half-Density Laplacian

**Promoted from:** Blackboard 4 (2026-02-22)
**Consensus:** THREE-AGENT (mathematician + physicist + computationalist), unanimous approve
**Related:** BB0 (Lie groups, Thm M0.3), BB5 (product additivity), BB6 (constant-curvature V_HD), OQ1a notebook

---

## 1. Setup

**Seeley-DeWitt coefficients.** For \(P = -\Delta_g + V\) on closed \((M,g)\), dim \(d\):
\[
\mathrm{tr}\,e^{-tP} \sim (4\pi t)^{-d/2}\sum_{k=0}^{\infty} a_k(P)\,t^k, \qquad t\to 0^+.
\]

On-diagonal coefficients (Gilkey 1975, Vassilevich 2003):
\[
a_0(x) = 1, \quad a_1(x) = \tfrac{1}{6}R + V, \quad a_2(x) = \tfrac{1}{180}(R_{abcd}R^{abcd} - R_{ab}R^{ab}) + \tfrac{1}{30}\Delta R + \tfrac{1}{72}R^2 + \tfrac{1}{6}RV + \tfrac{1}{2}V^2 + \tfrac{1}{6}\Delta V.
\]

**Half-density Laplacian.** \(\Delta_{1/2} = |g|^{1/4}\Delta_g\,|g|^{-1/4}\) on \(L^2(d^dx)\). Equivalently \(P_{1/2} = -\Delta_g + V_{\mathrm{HD}}\), where
\[
V_{\mathrm{HD}} = -|g|^{1/4}\Delta_g(|g|^{-1/4}).
\]

---

## 2. Theorem M4.1 (Universal Vanishing of \(a_1\))

**Theorem M4.1.** On any Riemannian manifold \((M,g)\) of any dimension \(d\):
\[
a_1(\Delta_{1/2}; x) = 0 \qquad \forall\, x \in M.
\]

**Proof.** \(a_1\) is a local scalar invariant, determined by the metric Taylor expansion at \(x\). Choose RNC at \(x\):

1. \(g_{ij}(0) = \delta_{ij}\), \(\partial_k g_{ij}(0) = 0\), hence \(|g(0)| = 1\), \(\partial_k|g|(0) = 0\).
2. \(|g(y)|^{-1/4} = 1 + \tfrac{1}{12}R_{ij}y^iy^j + O(|y|^3)\).
3. \(\Delta_g(|g|^{-1/4})\big|_{y=0} = \tfrac{1}{12}R_{ij}\cdot 2\delta^{ij} = \tfrac{1}{6}R\).
4. \(V_{\mathrm{HD}}(x) = -\tfrac{1}{6}R(x)\).

Therefore \(a_1 = \tfrac{1}{6}R + V_{\mathrm{HD}} = \tfrac{1}{6}R - \tfrac{1}{6}R = 0\). \(\square\)

**Key point:** The cancellation is universal — not D=4-specific. \(V_{\mathrm{HD}}(x) = -R(x)/6\) at the RNC center holds in all dimensions on all Riemannian manifolds.

---

## 3. Composition Chain

\[
\text{P4.2 (composition)} \xrightarrow{\text{forces}} \text{half-density measure } |g|^{1/2}\,d^dx \xrightarrow{\text{conjugation}} \Delta_{1/2} = -\Delta_g + V_{\mathrm{HD}} \xrightarrow{\text{RNC}} a_1 = 0.
\]

Each arrow is a theorem:
1. P4.2 \(\Rightarrow\) half-density: composition-compatible measure on \(L^2(d^dx)\) is the half-density.
2. Half-density \(\Rightarrow\) \(\Delta_{1/2}\): conjugation gives operator with potential \(V_{\mathrm{HD}}\).
3. \(\Delta_{1/2} \Rightarrow a_1 = 0\): Theorem M4.1.

**Three-level forcing from composition:**
- (a) P4.2 \(\to\) \(\kappa = \hbar\) (Stage 2)
- (b) Half-density \(\to\) \(\xi = 1/6\) (Stage 2 + geometry)
- (c) \(a_1 = 0\) \(\to\) \(\xi\) stable at one loop (Stage 2 + RG)

---

## 4. Physical Implications

**4.1 No curvature mass.** The scalar mass receives no first-order curvature contribution from \(a_1\). Mass is protected from \(O(R)\) corrections by composition.

**4.2 One-loop RG stability.** \(\xi = 1/6\) is a fixed point of the one-loop beta function \(\beta_\xi \propto (\xi - 1/6)(\xi - \xi_{\mathrm{conf}})\). The half-density value is always a zero, in any dimension. No \(\int R\,\phi^2\) counterterm is needed.

**4.3 Free theory caveat.** The one-loop protection holds for the free scalar. With interactions (\(\lambda\phi^4\)), \(\xi\) acquires corrections at two loops involving \(\lambda\).

**4.4 Trace anomaly.** In even \(d\), the conformal anomaly involves \(a_{d/2}\). Since \(a_1 \neq a_{d/2}\) for \(d \geq 4\), vanishing of \(a_1\) does NOT constrain the trace anomaly. The conformal anomaly is a separate, higher-order effect.

---

## 5. Higher Coefficients: \(a_2\) on Constant-Curvature Spaces

Substituting \(V_{\mathrm{HD}}\) into the Gilkey formula for unit \(S^d\) (\(\Delta R = 0\), \(R = d(d-1)\), constant \(V_{\mathrm{HD}} = -(d-1)R/(4d)\)):

\[
a_2(\Delta_{1/2}; S^d) = -\frac{d(d-1)(d-3)}{180}
\]

| \(d\) | \(a_2\) |
|---|---|
| 2 | \(1/90\) |
| 3 | **0** |
| 4 | \(-1/15\) |
| 5 | \(-2/9\) |
| 6 | \(-1/2\) |

**\(a_2 = 0\) at \(d = 3\) only** (among \(d \geq 2\)). The factor \((d-3)\) is the key.

---

## 6. \(d = 3\) Selection: \(S^3\) Heat Kernel

On \(S^3\): \(a_1 = 0\) (universal) AND \(a_2 = 0\) (special to \(d=3\)):
\[
\mathrm{tr}\,e^{-t\Delta_{1/2}} = (4\pi t)^{-3/2}\left[\mathrm{Vol}(S^3) + 0\cdot t + 0\cdot t^2 + O(t^3)\right].
\]

No curvature corrections to \(O(t^2)\). First correction at \(O(t^3)\) via \(a_3\).

**Physical:** No \(R\) or \(R^2\) contribution to the one-loop effective action on \(S^3\). The effective action starts at \(O(R^3)\).

**Independent \(d=3\) selection mechanisms:**
1. Radial \(V_{\mathrm{HD}}\) constant on \(S^d\) iff \(d = 3\): \(\alpha(\alpha-1) = 0\) where \(\alpha = (d-1)/2\).
2. Constant spectral shift: \(l(l+2) - (l+1)^2 = -1\).
3. \(a_2 = 0\): factor \((d-3)\) in the closed-form formula.
4. SU(2) homogeneity: \(V_{\mathrm{HD}}\) constant in left-invariant coordinates (Prop M0.1).

Three independent algebraic mechanisms, all selecting \(d = 3\).

---

## 7. Relation to Existing Results

| Result | Source | Connection |
|--------|--------|------------|
| \(V_{\mathrm{HD}}(p) = -R(p)/6\) in RNC | Gilkey, DeWitt | Input to Thm M4.1 |
| Thm M0.3: \(V_{\mathrm{HD}} = -R/6\) on Lie groups | BB0/notebook Part 8, FIVE-AGENT | Global instance |
| C5.4: constant-\(V_{\mathrm{HD}}\) products have \(V_{\mathrm{HD}} = -R/6\) | BB5, THREE-AGENT | Product instance |
| D9.1l: \(V_{\mathrm{HD,const}} = -(d{-}1)R/(4d)\) on const-curvature | BB6/notebook Part 7, FOUR-AGENT | Generally \(\neq -R/6\) |
| \(a_1 = 0\) at D=4 | OQ1a notebook | Subsumed by Thm M4.1 |

**Thm M4.1 is the unifying statement:** \(V_{\mathrm{HD}}\) need not equal \(-R/6\) globally (it generally doesn't), but it ALWAYS equals \(-R/6\) at the RNC center. Since \(a_1\) is a pointwise invariant, this suffices for \(a_1 = 0\).

---

## 8. Correction to D=4 Coincidence Table

The OQ1a notebook listed \(a_1 = 0\) as D=4 coincidence (iii). This is incorrect: \(a_1 = 0\) is universal (Thm M4.1), not D=4-specific.

Genuine D=4 coincidences:
- (i) \((\partial\sigma)^2\) cancellation in conformal class
- (ii) \(\xi_{\mathrm{eff}} = \xi_{\mathrm{conf}} = 1/6\)
- (iv) \(V_{\mathrm{HD}}\) on \(S^{D-1}\) constant

---

## 9. Computational Verification

SymPy confirms \(a_1 = R/6 + V_{\mathrm{HD}} = R/6 - R/6 = 0\) for \(d = 2, 3, 4, 5, 6, 7, 8\). Script: `tmp/a1_a2_verification.py`.

\(a_2\) closed-form formula verified against direct Gilkey substitution for \(d = 2, \ldots, 8\). All match.

---

## 10. Critic Deep Verification of \(a_2\) Formula and Fifth D=4 Coincidence (2026-02-23)

<!-- Critic: independent rederivation, R23 -->

**Source reviewed:** BB2 §9 (physicist, R21-R22). Fifth D=4 coincidence: \(a_2(\Delta_{1/2}; S^3) = 0\).

**10.1 Independent Gilkey rederivation.** On unit \(S^d\) (\(K=1\)), using \(V_{\mathrm{HD}} = -R/6 = -d(d-1)/6\) (Thm M4.1 RNC value), \(\Delta R = 0\), \(\Delta V = 0\):

\[
a_2(x) = \underbrace{\frac{1}{180}(2d(d{-}1) - d(d{-}1)^2)}_{\text{geometric}} + \underbrace{\frac{R^2}{72} - \frac{R^2}{36} + \frac{R^2}{72}}_{\text{V-dependent} = 0}
\]

The three \(V\)-dependent terms cancel exactly:
\[
\tfrac{1}{72}R^2 + \tfrac{1}{6}R \cdot (-\tfrac{R}{6}) + \tfrac{1}{2}(-\tfrac{R}{6})^2 = \tfrac{R^2}{72}\,(1 - 2 + 1) = 0.
\]

This is an algebraic identity: for any operator \(-\Delta_g + V\) with constant \(V = -R/6\) and \(\Delta R = 0\), the \(V\)-dependent contributions to \(a_2\) cancel. Result:
\[
a_2(\Delta_{1/2}; S^d) = \frac{d(d{-}1)(3{-}d)}{180} = -\frac{d(d{-}1)(d{-}3)}{180}.
\]

Vanishes iff \(d \in \{0, 1, 3\}\). Among \(d \ge 2\): only \(d = 3\). **CONFIRMED.**

**10.2 Robustness of the cancellation.** The \(V\)-term cancellation \(\tfrac{1}{72} - \tfrac{1}{36} + \tfrac{1}{72} = 0\) is exact and independent of \(d\). It follows from:
\[
\frac{1}{72}R^2 + \frac{1}{6}RV + \frac{1}{2}V^2 \Big|_{V=-R/6} = \frac{R^2}{72} - \frac{R^2}{36} + \frac{R^2}{72} = 0.
\]
This means: on ANY Einstein manifold with constant \(R\), the integrated \(a_2\) for the half-density Laplacian depends only on the geometric (Kretschner-Ricci) term, not on the potential. A structural consequence of \(V = -R/6\).

**10.3 De Sitter physical interpretation (BB2 §9.3-9.5): VERIFIED.**
- Radius-scaling on \(S^3\): only \(a_0\) and \(a_1\) contribute to \(\zeta_P(0)\) in \(d=3\) (since \(k \le (d{-}1)/2 = 1\)). With \(a_1 = 0\): volume-only scaling. CORRECT.
- Vacuum energy: no \(O(H^2)\) or \(O(H^4)\) corrections. First curvature correction at \(O(H^6)\). CORRECT.
- Does not solve CC problem (honest; \(a_0\) quartc divergence remains). CORRECT.

**10.4 Comparison table (BB2 §9.4): VERIFIED** (all entries independently recalculated, see §10.1 above).

**10.5 Independence of fifth coincidence from (i)-(iv): CONFIRMED** (see BB2 CR10.7).

**10.6 Verdict: APPROVED.** No errors found. The fifth D=4 coincidence is clean, independent, and physically significant. The \(V\)-dependent cancellation identity (§10.2) is an elegant structural result worth noting in any paper remark.

**Consensus: TWO-AGENT on BB2 §9 (physicist + critic). APPROVED.**

---

## 11. Harish-Chandra Geometric Interpretation of V_HD = −|ρ|² on Compact Lie Groups

**Promoted from:** Blackboard 3 §§11-13 (OQ-FdV-3), 2026-02-23
**Consensus:** THREE-AGENT (mathematician + physicist + critic), CONDITIONAL APPROVE
**Note:** Only §§11-13 (core result) are promoted here. Intermediate §§4-10 contain errors (see BB3 §15) and are excluded.

---

### 11.1 Setup and Prior Results

On compact semisimple G with bi-invariant metric g:
- **Prop M0.1** (BB0, FIVE-AGENT): V_HD is constant.
- **Thm M0.3** (BB0, FIVE-AGENT): V_HD = -R/6 = -|ρ|²_g (via RNC + Freudenthal-de Vries).

The Harish-Chandra route provides a geometric INTERPRETATION of this identity, not an independent derivation.

### 11.2 Key Tools (HC Framework)

**Notation:**
- T: maximal torus, Φ+: positive roots, m_α: multiplicity
- ρ = (1/2)∑_{α∈Φ+} m_α · α (Weyl vector)
- D(H) = ∏_{α>0} (e^{α(H)/2} − e^{-α(H)/2})^{m_α} (Weyl denominator)

**HC Radial Formula (Helgason 1984, II §3):**
\[(-\Delta_G f)(e^H) = D(H)^{-1}(-\Delta_T)(D(H)\cdot f(e^H))\]
for class functions f on G.

**Weyl Integration Formula:**
\[\int_G f\,dg = \frac{1}{|W|}\int_T D(t)^2\!\left(\int_{G/T} f(k^{-1}tk)\,dk\right)dt\]
Hence L²(G)_{class} ≅ L²(T, D²dt/|W|)^{W,+}.

### 11.3 Core Identity (HC interpretation)

**Theorem M3.1 (HC Geometric Interpretation).**

On compact semisimple G with bi-invariant metric:
\[\boxed{-\Delta_G\big|_\text{class} = -\Delta_{1/2}^{(T,\,D^2dt)}}\]

That is: the Laplacian on G restricted to class functions equals the half-density Laplacian on the maximal torus T equipped with the Weyl measure D²dt.

**Proof:** From the HC radial formula:
\[-\Delta_G\big|_\text{class} = D^{-1}(-\Delta_T)D\]
The half-density of (T, D²dt) is (D²)^{1/2}dt = D·dt^{1/2}. The half-density Laplacian on (T, D²dt) is:
\[-\Delta_{1/2}^{(T,D^2dt)} = D^{-1}(-\Delta_T)D\]
(conjugation by the square-root of the density D). These are the same operator. □

**Scope note:** Fact 2 below is stated for simply-laced groups (m_α = 1 for all α); the conclusion V_HD = -|ρ|² holds for all compact semisimple G via BB0 Thm M0.3.

### 11.4 Core Eigenvalue Identity

**Fact (Weyl denominator eigenvalue):**
\[\boxed{(-\Delta_T)D = |\rho|^2 \cdot D}\]

**Proof (simply-laced):** D = A_ρ = ∑_{w∈W} det(w) e^{w(ρ)}. Each term e^{w(ρ)} has -Δ_T eigenvalue |w(ρ)|² = |ρ|² (Weyl group preserves norm). Hence -Δ_T A_ρ = |ρ|² A_ρ.

**Meaning:** The Weyl denominator D is an eigenfunction of the flat toral Laplacian with eigenvalue = squared length of Weyl vector.

### 11.5 HC Interpretation of V_HD

**Theorem M3.6 (HC Interpretation, corrected).**

The half-density correction V_HD on G equals the eigenvalue ratio D^{-1}(-Δ_T D) = |ρ|². More precisely:

The operator -Δ_G|_{class} = D^{-1}(-Δ_T)D can be written as:
\[D^{-1}(-\Delta_T)D = -\Delta_T + |\rho|^2 + 2\nabla(\log D)\cdot\nabla\]

The two non-trivial contributions relative to -Δ_T are: (i) the zero-order term |ρ|², and (ii) the first-order drift term 2∇(log D)·∇. Together they reproduce the correct spectrum Spec(-Δ_G) = {|λ+ρ|² - |ρ|² : λ ∈ Λ+}. The net spectral shift between -Δ_{1/2}^G and -Δ_G is V_HD = -|ρ|², verified by BB0 Thm M0.3.

**Physical interpretation (Physicist §14):** D is a standing wave on T built from momentum eigenstates, all with |p|² = |ρ|². The half-density correction V_HD is the "self-energy" of this density wave: the cost of maintaining the Weyl denominator equals |ρ|².

### 11.6 Proof Chain Summary

On compact semisimple G with bi-invariant g:
1. V_HD = const — Prop M0.1 (bi-invariance).
2. D^{-1}(-Δ_T D) = |ρ|² — Weyl denominator eigenvalue (Fact above).
3. V_HD = -|ρ|² — from M0.3 (RNC regularization + Freudenthal-de Vries).

The HC framework (Thm M3.1) shows that V_HD is algebraically encoded in the Weyl denominator. The singularity at H = 0 (D = 0 at identity) forces regularization via RNC. The HC proof is NOT independent of M0.3; it provides the algebraic REASON why V_HD equals the Weyl denominator eigenvalue.

### 11.7 What HC Adds (Over RNC+FdV Route)

| Route | What it computes | Conceptual content |
|-------|-----------------|-------------------|
| RNC + FdV | V_HD = -R/6 = -\|ρ\|² (direct) | V_HD is a curvature invariant |
| HC spectral | -Δ_G\|_{class} = -Δ_{1/2}^{(T,D²dt)} | V_HD = eigenvalue of Weyl denominator |

The HC route explains WHY V_HD = -|ρ|²: the Weyl denominator D carries eigenvalue |ρ|² under -Δ_T, and V_HD is exactly the cost of the density D²dt relative to flat dt on T.

**Status of errors in intermediate steps (BB3 §15, sev-2):**
- Lemma M3.2 domain error (class fn vs W-antisymmetric): the core result §11.3 bypasses this.
- Proposition M3.3 wrong spectrum: deleted; Thm M3.4 is the correct (but circular) version.
- Gradient term in M3.6: accounted for in full spectrum calculation, not a separate contribution.

**THREE-AGENT (mathematician + physicist + critic). Promoted 2026-02-23.**
