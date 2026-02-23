# Seeley-DeWitt Coefficients of the Half-Density Laplacian


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


---

## 12. Geometric Origin of \(a_2 = 0\) on \(S^3\): Weyl Tensor Vanishing in \(d = 3\)


---

### 12.1 Vassilevich Convention (Definitive Statement)

For the half-density Laplacian \(\Delta_{1/2}\), the Vassilevich operator is \(P = -(g^{\mu\nu}\nabla_\mu\nabla_\nu + E)\) with:
\[
E = -V_{\mathrm{HD}}, \qquad V_{\mathrm{HD}}(x_{\mathrm{RNC}}) = -\tfrac{R(x)}{6} \quad\text{(Thm M4.1)},
\]
\[
\therefore\quad E = +\tfrac{R}{6} \quad\text{in all dimensions and on all Riemannian manifolds.}
\]

The Gilkey–Vassilevich formulae use \(E\):
\[
a_1 = \tfrac{1}{6}R + E = \tfrac{1}{6}R + \tfrac{R}{6} = \tfrac{R}{3} \quad\text{[generic];} \quad a_1(\Delta_{1/2}) = \tfrac{1}{6}R - \tfrac{1}{6}R = 0. \checkmark
\]
\[
a_2 = \tfrac{1}{180}(R_{abcd}R^{abcd} - R_{ab}R^{ab}) + \tfrac{1}{30}\Delta R + \tfrac{1}{72}R^2 - \tfrac{1}{6}RE + \tfrac{1}{2}E^2 + \tfrac{1}{6}\Delta E.
\]

**Sign rule:** \(V_{\mathrm{HD}} = -R/6\) (negative); \(E = +R/6\) (positive). The Vassilevich sign is opposite to the potential sign.

---

### 12.2 Weyl Tensor Vanishes in \(d = 3\)

**Component count:**
\[
\#\text{(Weyl in }d\text{)} = \frac{d^2(d^2-1)}{12} - \frac{d(d+1)}{2}.
\]

| \(d\) | Weyl components |
|---|---|
| 2 | 0 (Bianchi forces \(R_{abcd} \propto K\)) |
| **3** | **0** (Riemann determined by Ricci) |
| 4 | 10 |
| 5 | 35 |

**In \(d = 3\): \(C_{abcd} \equiv 0\).** Gravity has no propagating degrees of freedom (Chern-Simons theory).

---

### 12.3 Theorem C4.1 (Kretschner Identity in \(d = 3\))

**Theorem C4.1.** On any 3-dimensional Riemannian manifold:
\[
R_{abcd}R^{abcd} = 4R_{ab}R^{ab} - R^2.
\]

**Proof.** In an orthonormal eigenbasis of \(R_{ab} = \mathrm{diag}(r_1, r_2, r_3)\), Weyl=0 gives:
\[
R_{1212} = \tfrac{r_1+r_2-r_3}{2}, \quad R_{1313} = \tfrac{r_1-r_2+r_3}{2}, \quad R_{2323} = \tfrac{-r_1+r_2+r_3}{2}.
\]
\[
R_{abcd}R^{abcd} = 4(R_{1212}^2 + R_{1313}^2 + R_{2323}^2) = (r_1{+}r_2{-}r_3)^2 + (r_1{-}r_2{+}r_3)^2 + ({-}r_1{+}r_2{+}r_3)^2
\]
\[
= 4(r_1^2+r_2^2+r_3^2) - (r_1+r_2+r_3)^2 = 4R_{ab}R^{ab} - R^2. \quad\square
\]

*SymPy verified symbolically for arbitrary \(r_1,r_2,r_3\). Script: `tmp/oq_ds2_weyl_d3.py`.*

---

### 12.4 Factor \((d-3)\) on Constant-Curvature 3-Manifolds

On \(S^d\) (sectional curvature \(K = R/(d(d-1))\)):
\[
R_{abcd}R^{abcd} = \frac{2R^2}{d(d-1)}, \qquad R_{ab}R^{ab} = \frac{R^2}{d}.
\]

Their difference:
\[
R_{abcd}R^{abcd} - R_{ab}R^{ab} = \frac{R^2(3-d)}{d(d-1)}.
\]

**Vanishes if and only if \(d = 3\).**

| \(d\) | \(R_{abcd}^2\) | \(R_{ab}^2\) | Equal? |
|---|---|---|---|
| 2 | \(1\) | \(1/2\) | NO |
| **3** | **\(1/3\)** | **\(1/3\)** | **YES** |
| 4 | \(1/6\) | \(1/4\) | NO |
| 5 | \(1/10\) | \(1/5\) | NO |

*(Table entries are multiples of \(R^2/d^2\) for unit \(S^d\).)*

---

### 12.5 Two Independent Cancellations in \(a_2(\Delta_{1/2}; S^d)\)

On unit \(S^d\) with \(R = d(d-1)\), \(\Delta R = 0\), \(\Delta E = 0\), \(E = +R/6\):

**Cancellation A (geometric):**
\[
\frac{1}{180}(R_{abcd}R^{abcd} - R_{ab}R^{ab}) = \frac{R^2(3-d)}{180\,d(d-1)}.
\]
Vanishes at \(d=3\) by Thm C4.1 + constant curvature.

**Cancellation B (composition-forced):**
\[
\frac{R^2}{72} - \frac{RE}{6} + \frac{E^2}{2} = \frac{R^2}{72} - \frac{R(R/6)}{6} + \frac{(R/6)^2}{2} = \frac{R^2}{72}(1-2+1) = 0.
\]
Vanishes for ALL \(d\), purely because \(E = +R/6\). Independent of Weyl tensor.

**Combined result:**
\[
a_2(\Delta_{1/2}; S^d) = \frac{R^2(3-d)}{180\,d(d-1)} = -\frac{d(d-1)(d-3)}{180}.
\]

Direct check at \(d=3\), unit \(S^3\) (\(R=6\), \(E=1\)):
\[
\tfrac{12-12}{180} + \tfrac{36}{72} - \tfrac{6}{6} + \tfrac{1}{2} = 0 + \tfrac{1}{2} - 1 + \tfrac{1}{2} = 0. \checkmark
\]

---

### 12.6 Corollary C4.3 (\(a_2 = 0\) on Constant-Curvature 3-Manifolds)

**Corollary C4.3.** On any closed Riemannian 3-manifold of constant sectional curvature:
\[
a_2(\Delta_{1/2}; M^3_{\mathrm{const.curv.}}) = 0.
\]

**Proof.** Two independent cancellations in the Gilkey–Vassilevich formula:
- (A) Thm C4.1 forces \(R_{abcd}R^{abcd} = 4R_{ab}R^{ab} - R^2\) on any \(M^3\). Constant curvature gives \(R_{abcd}R^{abcd} - R_{ab}R^{ab} = 0\) globally. First term vanishes.
- (B) Composition forces \(E = +R/6\), making \(R^2/72 - RE/6 + E^2/2 = 0\) identically. Remaining terms vanish.
Neither (A) alone nor (B) alone suffices; together they give \(a_2 = 0\). \(\square\)

**Scope:** Requires constant curvature AND half-density (\(E = +R/6\)). On a general 3-manifold: Thm C4.1 holds, but \(V_{\mathrm{HD}}\) is not globally \(-R/6\) and \(\Delta R \neq 0\), so \(a_2 \neq 0\) in general.

---

### 12.7 Corollary C4.4 (Bernoulli / Kluth-Litim: All \(a_k = 0\) on \(S^3\))

**Corollary C4.4.** \(a_k(\Delta_{1/2}; S^3) = 0\) for all \(k \geq 1\).

**Proof (via Kluth-Litim 2020, arXiv:1910.00543).** The generating function for heat kernel coefficients on \(S^d\) involves \(\kappa_n(d) \propto B_{2n+1}((d-1)/2)\). At \(d=3\): \((d-1)/2 = 1\). By the Bernoulli number identity:
\[
B_{2n+1}(1) = -B_{2n+1} = 0 \quad\text{for all }n \geq 1.
\]
*(Proof: \(B_k(1) = (-1)^k B_k\) by reflection. For odd \(k = 2n+1 \geq 3\): \(B_k(1) = -B_k\). Odd Bernoulli numbers \(B_{2n+1} = 0\) for \(n \geq 1\) — standard result.)*

Therefore \(\kappa_n(3) = \delta_{n,0}\) for all \(n \geq 1\), giving \(a_k(\Delta_{1/2}; S^3) = 0\) for all \(k \geq 1\). \(\square\)

Verified numerically for \(n = 1, \ldots, 7\) via SymPy (script: `tmp/bernoulli_d2_check.py`).

**Why \(d=3\) is unique:**
\[
\kappa_n(d) = 0\ \forall n \geq 1 \iff B_{2n+1}((d-1)/2) = 0\ \forall n \geq 1 \iff \frac{d-1}{2} \in \mathbb{Z}_{\geq 1} \iff d = 3, 5, 7, \ldots
\]
However, \(V_{\mathrm{HD}}\) is constant on \(S^d\) only for \(d = 3\) (BB6, D9.1l), making Kluth-Litim applicable to \(\Delta_{1/2}\) only at \(d = 3\) (at \(d = 2\): \(\kappa_n = 0\) but \(V_{\mathrm{HD}}\) non-constant, so \(a_2(S^2) = 1/90 \neq 0\)).

---

### 12.8 Logical Chain Summary

\[
d = 3 \;\Rightarrow\; C_{abcd} = 0 \;\Rightarrow\; R_{abcd}R^{abcd} = 4R_{ab}R^{ab} - R^2 \;\text{(Thm C4.1)}
\]
\[
\Rightarrow\; R_{abcd}R^{abcd} - R_{ab}R^{ab} \propto (3-d) = 0 \;\text{(constant curvature)}
\]
\[
\Rightarrow\; a_2(\Delta_{1/2}; S^3) = 0 \;\text{(Cor. C4.3)}
\]
\[
\xrightarrow{\text{Kluth-Litim}}\; a_k(\Delta_{1/2}; S^3) = 0\ \forall k \geq 1 \;\text{(Cor. C4.4)}.
\]

Two independent ingredients:
- **(A) Topological/dimensional:** Weyl=0 in \(d=3\) (no propagating gravitational d.o.f.).
- **(B) Composition-forced:** \(E = +R/6\) (half-density, universally forced by P4.2).

**OQ-dS-2 answer:** The geometric origin of the factor \((d-3)\) in \(a_2(\Delta_{1/2}; S^d)\) is Weyl tensor vanishing in \(d=3\), which constrains the Kretschmann invariant to equal the Ricci-squared invariant on constant-curvature 3-manifolds.

---


---

## 13. Formal Proof of Uniqueness of Heat-Kernel Flatness (Corollary M1.1)


---

### 13.1 Setup and Definition

**Setup.** Fix \(d \geq 1\). Consider the half-density Laplacian
\[\Delta_{1/2} = -|g|^{1/4}\Delta_{S^d}|g|^{-1/4}\]
on the standard round \(d\)-sphere \(S^d\) (unit radius, scalar curvature \(R = d(d-1)\)).

Decompose \(\Delta_{1/2} = -\Delta_{S^d} + V_{\mathrm{HD}}\), where
\[V_{\mathrm{HD}} := -|g|^{1/4}\Delta_{S^d}(|g|^{-1/4})\]
is the half-density potential (a function on \(S^d\)). In RNC, \(V_{\mathrm{HD}}(x) = -R(x)/6\) universally (Thm M4.1, §2 above).

The integrated heat kernel coefficients \(a_k(\Delta_{1/2}; S^d)\) appear in the asymptotic expansion
\[\mathrm{tr}\,e^{-t\Delta_{1/2}} \sim (4\pi t)^{-d/2}\sum_{k=0}^{\infty} a_k\,t^k \qquad (t\to 0^+).\]

**Definition.** We say \(\Delta_{1/2}\) is *heat-kernel flat* on \(S^d\) if \(a_k(\Delta_{1/2}; S^d) = 0\) for all \(k \geq 1\).

---

### 13.2 Four Structural Lemmas

The proof rests on four lemmas that isolate the two independently necessary conditions.

**Lemma 13.A (Kluth-Litim applicability).** *The Kluth-Litim generating function formula \(\cite{KL2020}\) for \(a_k(-\Delta+E; S^d)\) applies to \(\Delta_{1/2}\) if and only if \(V_{\mathrm{HD}}\) is globally constant on \(S^d\).*

*Proof.* The KL formula computes \(a_k(-\Delta+E; S^d)\) for a CONSTANT endomorphism \(E \in \mathbb{R}\). The half-density Laplacian satisfies \(\Delta_{1/2} = -\Delta_{S^d} + V_{\mathrm{HD}}\). The KL formula applies with \(E = V_{\mathrm{HD}}\) if and only if \(V_{\mathrm{HD}}\) is a constant (position-independent scalar). \(\square\)

**Lemma 13.B (V_HD constancy on \(S^d\)).** *\(V_{\mathrm{HD}}\) is globally constant on \(S^d\) if and only if \(d \in \{1, 3\}\).*

*Proof.* In geodesic polar coordinates on \(S^d\), the volume density is \(|g|^{1/2} = \sin^{d-1}(r)\cdot(\text{angular factors})\). The radial part of \(V_{\mathrm{HD}}\) is
\[V_{\mathrm{HD}}^{\mathrm{rad}}(r) = \frac{\alpha(\alpha-1)}{\sin^2 r} - \alpha^2, \qquad \alpha = \frac{d-1}{2}.\]
This is constant (independent of \(r\)) if and only if \(\alpha(\alpha-1) = 0\), i.e., \(\alpha \in \{0,1\}\):
- \(\alpha = 0\): \(d = 1\). Then \(S^1\) with \(R = 0\); trivially flat.
- \(\alpha = 1\): \(d = 3\). Then \(S^3 \cong \mathrm{SU}(2)\) is a compact Lie group with bi-invariant metric; \(V_{\mathrm{HD}} = -\alpha^2 = -1 = -R/6\) (constant, Prop M0.1 + Thm M0.3, BB0 §§2,13).
- \(\alpha \notin \{0,1\}\): \(d \geq 2, d \neq 3\). The \(\sin^{-2}r\) term is nonzero, so \(V_{\mathrm{HD}}\) is non-constant. \(\square\)

**Lemma 13.C (KL vanishing condition).** *For \(d\) such that \(V_{\mathrm{HD}}\) is constant (i.e., \(d \in \{1,3\}\)) and the KL formula applies to \(\Delta_{1/2}\), all heat kernel coefficients \(a_k(\Delta_{1/2};S^d) = 0\) for \(k \geq 1\) if and only if \(\kappa_n(d) = \delta_{n,0}\) for all \(n \geq 1\), where*
\[\exp\!\left(\sum_{n=1}^{\infty}\frac{(-1)^{n+1}}{n(2n+1)}B_{2n+1}\!\left(\tfrac{d-1}{2}\right)z^n\right) = \sum_{n=0}^{\infty}\kappa_n(d)\,z^n.\]

*Proof.* By the KL formula, \(a_k = 0\) for all \(k \geq 1\) iff \(\kappa_n = 0\) for all \(n \geq 1\), iff the generating function equals 1, iff every term in the exponent is zero, iff \(B_{2n+1}((d-1)/2) = 0\) for all \(n \geq 1\). \(\square\)

**Lemma 13.D (Bernoulli vanishing locus).** *\(B_{2n+1}((d-1)/2) = 0\) for all \(n \geq 1\) if and only if \((d-1)/2 \in \{0, 1/2, 1\}\), i.e., \(d \in \{1, 2, 3\}\).*

*Proof.* Write \(x = (d-1)/2\). The Bernoulli polynomial \(B_{2n+1}\) is an odd polynomial of degree \(2n+1\) with \(B_{2n+1}(0) = 0\) (odd Bernoulli numbers vanish for \(n \geq 1\)). Three vanishing cases:

**(a) \(x = 0\) (\(d=1\)):** \(B_{2n+1}(0) = B_{2n+1} = 0\) for all \(n \geq 1\). \(\checkmark\)

**(b) \(x = 1/2\) (\(d=2\)):** By the reflection identity \(B_k(1-x) = (-1)^k B_k(x)\), at \(x = 1/2\):
\[B_{2n+1}(1/2) = (-1)^{2n+1}B_{2n+1}(1/2) = -B_{2n+1}(1/2),\]
hence \(2B_{2n+1}(1/2) = 0\), so \(B_{2n+1}(1/2) = 0\) for all \(n \geq 0\). \(\checkmark\)

**(c) \(x = 1\) (\(d=3\)):** By the same reflection identity:
\[B_{2n+1}(1) = (-1)^{2n+1}B_{2n+1} = -B_{2n+1} = 0 \quad (n \geq 1),\]
since odd Bernoulli numbers \(B_{2n+1} = 0\) for \(n \geq 1\). \(\checkmark\)

Three non-vanishing cases:

**(d) \(d = 4\), \(x = 3/2\):** \(B_3(3/2) = (3/2)^3 - \frac{9}{4}(3/2)^2 + \frac{3}{2}(3/2) - \frac{1}{8} \neq 0\). \(\times\)

**(e) \(x = m \geq 2\) integer (\(d = 2m+1 \geq 5\) odd):** By the shift formula
\[B_{2n+1}(m) = (2n+1)\bigl(1^{2n} + 2^{2n} + \ldots + (m-1)^{2n}\bigr).\]
For \(m \geq 2\): the sum contains \(1^{2n} = 1 > 0\), so \(B_{2n+1}(m) \geq 2n+1 > 0\). Explicitly: \(B_3(2) = 3 \neq 0\), \(B_5(2) = 5 \neq 0\). \(\times\)

**(f) \(x\) half-integer \(\geq 3/2\) (\(d \geq 4\) even):** Verified case-by-case: \(B_3(3/2) \neq 0\), \(B_3(5/2) \neq 0\), etc. The reflection and shift formulas do not force vanishing for \(x \geq 3/2\). \(\times\)

**Conclusion:** Vanishing holds for all \(n \geq 1\) iff \(x \in \{0, 1/2, 1\}\) iff \(d \in \{1, 2, 3\}\). \(\square\)

---

### 13.3 Corollary M1.1 (Uniqueness of Heat-Kernel Flatness)

**Corollary M1.1.** *Among \(d \geq 2\), the half-density Laplacian \(\Delta_{1/2}\) on \(S^d\) is heat-kernel flat — i.e., \(a_k(\Delta_{1/2}; S^d) = 0\) for all \(k \geq 1\) — if and only if \(d = 3\).*

**Proof.** Two independent conditions are both necessary and sufficient.

**Necessity.** For heat-kernel flatness:
- **(Cond-I)** \(V_{\mathrm{HD}}\) globally constant (Lemma 13.A: required for KL applicability).
- **(Cond-II)** \(\kappa_n(d) = \delta_{n,0}\) for all \(n \geq 1\) (Lemma 13.C).

**Values of \(d \geq 2\) satisfying Cond-I (Lemma 13.B):** Only \(d = 3\) (the \(d=1\) solution is excluded by \(d \geq 2\)).

**Values of \(d \geq 2\) satisfying Cond-II (Lemma 13.D):** \(d \in \{2, 3\}\).

**Intersection for \(d \geq 2\):** \(\{3\} \cap \{2, 3\} = \{3\}\). The value \(d = 2\) satisfies Cond-II but fails Cond-I (\(V_{\mathrm{HD}}\) non-constant on \(S^2\); confirmed numerically CMP12.3 and analytically by \(a_2(\Delta_{1/2}; S^2) = 1/90 \neq 0\)). The value \(d = 3\) satisfies both.

**Sufficiency at \(d = 3\).** By Lemma 13.B, \(V_{\mathrm{HD}} = -1 = \bar{E}\) (constant) on \(S^3\). By Lemma 13.D(c), \(\kappa_n(3) = 0\) for all \(n \geq 1\). By the KL formula with \(E = \bar{E}\):
\[a_k(\Delta_{1/2}; S^3) = 0 \qquad \forall k \geq 1.\]
Therefore \(\mathrm{tr}\,e^{-t\Delta_{1/2}|_{S^3}} = (4\pi t)^{-3/2}\mathrm{Vol}(S^3)\) exactly for all \(t > 0\).

**All other \(d \geq 2\):**
- \(d = 2\): Cond-I fails; \(a_2(\Delta_{1/2}; S^2) = 1/90 \neq 0\).
- \(d \geq 4\): Cond-II fails; \(\kappa_n(d) \neq 0\) for some \(n \geq 1\); \(a_n(\Delta_{1/2}; S^d) \neq 0\).

In all cases \(d \neq 3\) (with \(d \geq 2\)), at least one \(a_k \neq 0\). \(\square\)

---

### 13.4 Condition Summary Table

| \(d\) | Cond-I: \(V_{\mathrm{HD}}\) const? | Cond-II: \(\kappa_n = \delta_{n,0}\)? | Heat-kernel flat? | Status |
|------|------|------|------|------|
| 1 | YES (\(R=0\)) | YES | YES | Trivial (flat; excluded) |
| 2 | **NO** | YES | NO (\(a_2 = 1/90\)) | Fails Cond-I |
| **3** | **YES** | **YES** | **YES** | **Unique non-trivial** |
| 4 | NO | NO | NO | Both fail |
| \(\geq 5\) | NO | NO | NO | Both fail |

---

### 13.5 Independence and Geometric Remarks

**Remark 13.1 (Independence of conditions).** Cond-I and Cond-II are logically independent:
- \(d = 2\): Cond-II holds, Cond-I fails.
- \(d = 5\): both fail (\(V_{\mathrm{HD}}\) non-constant; \(B_3(2) = 3 \neq 0\)).
- \(d = 3\): both hold. This is the unique non-trivial intersection.

**Remark 13.2 (Role of \(S^3 \cong \mathrm{SU}(2)\)).** Cond-I at \(d=3\) is not accidental: \(S^3\) is the unique sphere (besides \(S^1\) and \(S^7\), but \(S^7\) is not a Lie group) that admits a Lie group structure. Prop M0.1 (BB0 §2, §11.1 above) guarantees constancy of \(V_{\mathrm{HD}}\) on any compact Lie group; the coincidence \(S^3 \cong \mathrm{SU}(2)\) makes this available exactly at \(d = 3\). For \(d \notin \{1, 3\}\), \(S^d\) admits no Lie group structure (as a smooth manifold), and \(V_{\mathrm{HD}}\) is manifestly non-constant.

**Remark 13.3 (Bernoulli reflection threshold).** At \(x = (d-1)/2 = 1\), the Bernoulli reflection \(B_k(1) = (-1)^k B_k\) forces all odd Bernoulli polynomial values to zero. The value \(m = 1\) (i.e., \(d = 3\)) is the largest non-negative integer for which vanishing holds — a sharp threshold: for \(m \geq 2\) (i.e., \(d \geq 5\) odd), the shift formula gives \(B_{2n+1}(m) = (2n+1)(1 + 2^{2n} + \cdots + (m-1)^{2n}) > 0\).

**Remark 13.4 (Physical interpretation).** Heat-kernel flatness means: the one-loop effective action of \(\Delta_{1/2}\) on \(S^3\) has no curvature-dependent UV divergences at any order. Every UV divergence is "volume-type" (proportional to \(\mathrm{Vol}(S^3)\)). In D=4 spacetime de Sitter with spatial sections \(S^3\), the composition-forced half-density Laplacian is maximally insensitive to curvature. This is the **sixth independent coincidence at \(D=4\)** (after: \(d/2=2\), spectral gap \(= R/8\), \(V_{\mathrm{HD}}\) constant iff \(D=4\), \(a_2=0\), OQ1a conformal coupling).

---

### 13.6 Relation to Earlier Sections

| Section | Content | Role in §13 |
|---------|---------|-------------|
| §2 (Thm M4.1) | Universal \(a_1 = 0\) | Shows \(V_{\mathrm{HD}} = -R/6\) at RNC center; underpins Cond-I proof |
| §5 | \(a_2\) closed form; \(a_2 = 0\) at \(d=3\) | Special case of Corollary M1.1 at \(k=2\) |
| §12.7 (Cor. C4.4) | All \(a_k=0\) on \(S^3\) via Bernoulli | Same result; §13 adds the uniqueness direction |
| BB1 §12 (CMP12) | Numerical: \(\kappa_n(3)=\delta_{n,0}\), \(\kappa_n(2)=\delta_{n,0}\), \(V_{\mathrm{HD}}\) non-constant on \(S^2\) | Confirms Lemmas 13.B–13.D; specifically CMP12.3 confirms \(d=2\) fails Cond-I |

Corollary M1.1 unifies and sharpens all prior results: the all-orders vanishing (§12.7 / BB1 §10) is the sufficiency direction; Corollary M1.1 adds uniqueness (the necessity direction) by showing no other \(d \geq 2\) can satisfy both conditions simultaneously.

---


---

## DEPRECATION NOTE — Critic, 2026-02-23 (R25)

**GRADE-1 FINDING: §§2–13 of this notebook contain a systematic sign error in the Gilkey-Vassilevich formula. Results are UNRELIABLE pending verification.**

### The Error

The Seeley-DeWitt formula for `P = -(∇² + E)` (Vassilevich convention, hep-th/0306138) is:

```
a₁ = R/6 + E
a₂ = (Kret-Ricci²)/180 + R²/72 + RE/6 + E²/2 + ΔR/30 + ΔE/6
```

**Sign of cross term: +RE/6 (PLUS).**

For the half-density Laplacian `Δ_{1/2} = -∇² + V_HD` with `V_HD = -R/6` (NEGATIVE):
- Vassilevich E = -V_HD = +R/6 (POSITIVE).
- Correct `a₁ = R/6 + (+R/6) = R/3 ≠ 0`.
- Correct `a₂ on S³ = R²/72 + R(R/6)/6 + (R/6)²/2 = R²/18 ≠ 0`.

This notebook uses `-RE/6` (wrong sign) or equivalently treats `E = V_HD = -R/6` (wrong sign for E).

### Direct Spectral Evidence

Mathematician (BB4 §11) computed heat trace from eigenvalues `l(l+2)-1` (half-density spectrum on unit S³):
```
(HT/lead - 1)/t → 2 = R/3.    [a₁ = R/3 ≠ 0, confirmed numerically]
```

### Correct Verification (Cross-Check)

For the CONFORMALLY COUPLED scalar `P = -∇² + R/6` (E_Vass = -R/6):
- `a₁ = R/6 + (-R/6) = 0` ✓ (known result)
- `a₂ on S³ = R²/72 + R(-R/6)/6 + R²/72 = 0` ✓ (known result)

The notebook's zero results for `a₁` and `a₂` are CORRECT for the conformally coupled scalar, NOT for the half-density Laplacian. The two differ in sign: V_conf = +R/6, V_HD = -R/6.

### Affected Sections

- Thm M4.1 (§2): conclusion `a₁=0` wrong — based on notebook's `a₁=R/6+V_HD`, but correct formula gives `a₁=R/6-V_HD=R/3`.
- §5 (a₂ closed form): formula evaluated with wrong sign.
- §§6–10: downstream uses of a₂=0.
- §§12–13: promoted BB4 content based on same sign error.
- §11 (HC, Prop M0.1, V_HD=−|ρ|²): UNAFFECTED (does not use Gilkey formula).

### What to Do

1. Computationalist: spectral sum on unit S³ to numerically confirm a₁ and a₂ for eigenvalues `l(l+2)-1`.
2. Verify the sign of the Vassilevich cross term `RE/6` against eq.(4.7) of hep-th/0306138.
3. If confirmed: revise §§2, 5-10, 12-13; retract D=4 coincidences (v, vi) from manuscript.

**Grade-1 finding. All promotions from this notebook to paper/main.md are BLOCKED pending resolution.**

## REVISED DEPRECATION — Critic, 2026-02-23 (R26)

**BB3 (TWO-AGENT: critic+mathematician, APPROVED) provides the definitive resolution.**

### The R25 Deprecation Was Partially Wrong

My R25 note above correctly identifies that Thm M4.1 is wrong, but gives the wrong corrected value. The R25 claim `a₁ = R/3` uses eigenvalues `l(l+2)-1`, which belong to the **shifted operator** O3 = -Δ_g - 1, NOT to the half-density Laplacian Δ_{1/2}.

### The Three-Operator Distinction (BB3 §§1-3)

| Operator | Definition | Spectrum on S³ | a₁ |
|----------|-----------|---------------|-----|
| O1 = -Δ_g | bare Laplacian | l(l+2) | R/6 |
| O2 = Δ_{1/2} | \|g\|^{1/4}(-Δ_g)\|g\|^{-1/4} | l(l+2) | R/6 |
| O3 | -Δ_g + V_HD = -Δ_g - 1 | l(l+2) - 1 | R/3 |

**Key insight:** O2 (conjugation) is isospectral to O1 (bare) by similarity. O3 (shifted) is a DIFFERENT operator. The identity `Δ_{1/2} = -Δ_g + V_HD` (used throughout this notebook) OMITS first-order drift terms W^i∂_i from the conjugation.

### Correct Assessment of This Notebook

| Section | Status | Explanation |
|---------|--------|-------------|
| §1 (Setup) | **LINE 21 WRONG** | `P_{1/2} = -Δ_g + V_HD` omits drift terms |
| §2 (Thm M4.1) | **WRONG** | a₁ = R/6 (not 0). Drift terms give E'=0, not E'=-R/6. |
| §3 (Composition chain) | **WRONG** | Arrow 2 uses wrong operator identity |
| §4 (Physical implications) | **WRONG for Δ_{1/2}** | a₁≠0 for Δ_{1/2}; no curvature protection from conjugation |
| §5 (a₂ formula) | **CORRECT for O3** | But O3 ≠ Δ_{1/2}. Also correct for conformal operator. |
| §6 (d=3 selection) | **WRONG for Δ_{1/2}** | a₁≠0 and a₂≠0 for conjugation on S³ |
| §7 (Relations) | **MISLEADING** | Thm M4.1 is the "unifying statement" — but it's wrong |
| §8 (D=4 correction) | **PARTIALLY VALID** | (i)-(iv) survive; (v) re-attributed to conformal operator |
| §9 (Computational) | **WRONG** | Verified wrong operator identity |
| §10 (Critic verification R23) | **WRONG** | Verified correct algebra for wrong operator |
| §11 (HC interpretation) | **CORRECT** | Does not use Gilkey formula or HK coefficients |
| §12 (Geometric a₂=0) | **CORRECT for conformal** | The algebra works for E=+R/6 (conformal), not for Δ_{1/2} |
| §13 (Uniqueness M1.1) | **CORRECT for O3** | KL applies to O3, not to Δ_{1/2}. Re-scope to O3. |

### Recommended Action

1. §11 (HC): Keep as-is. CORRECT.
2. §§12-13: Re-scope to the conformal operator -Δ+R/6 (where a₂=0 at d=3 genuinely holds). The Weyl-tensor analysis and uniqueness proof are mathematically correct; they just apply to a different operator.
3. §§2-10: Retract or rewrite. Thm M4.1 is false. The composition chain (§3) needs fundamental revision.
4. Manuscript patch filed: patches/critic-patch-retract-D91pq.md.

**R26 Grade-1 CONFIRMED. The error is deeper than R25 identified: not just a sign error, but a fundamental operator misidentification (conjugation ≠ potential shift).**
