# Harish-Chandra Geometric Interpretation of V_HD = −|ρ|²

**Date:** 2026-02-23 (R24)
**Status:** THREE-AGENT (mathematician + physicist + critic). CONDITIONAL APPROVE.
**Source:** BB3 §§11-13 (OQ-FdV-3), promoted 2026-02-23.
**Promotion by:** Computationalist, per Critic CR15.7 recommendation.

---

## Part 1: Setup and Context

The result V_HD = −|ρ|²_g on compact semisimple Lie groups was established via two routes:

| Route | Method | Status |
|-------|--------|--------|
| RNC+FdV | M0.1 (constancy) + M0.3 (RNC: V_HD = −R/6) + FdV (R/6 = |ρ|²) | COMPLETE (BB0, FIVE-AGENT) |
| HC Geometric | HC formula + Weyl denominator eigenvalue | THIS NOTEBOOK (THREE-AGENT) |

The HC route does NOT replace the RNC+FdV proof. It provides a **geometric interpretation**: V_HD is determined by the self-eigenvalue of the Weyl denominator.

---

## Part 2: Three Key Facts (Mathematician)

### Fact 1 (Casimir eigenvalue on G)

On compact semisimple G:
\[\mathrm{Spec}(-\Delta_G) = \{C_2(\lambda) = |\lambda+\rho|^2 - |\rho|^2 : \lambda \in \Lambda^+\}, \quad \mathrm{mult} = (\dim V_\lambda)^2\]

### Fact 2 (Weyl denominator eigenvalue) [CORE]

\[\boxed{(-\Delta_T) D = |\rho|^2 \cdot D}\]

D = A_ρ = ∑_{w∈W} det(w) e^{w(ρ)} is a sum of toral exponentials with weights w(ρ), all of norm |ρ|².
Proof: since −ΔT acts by |μ|² on e^{μ(·)}, and |w(ρ)|² = |ρ|² for all w, the identity is immediate.

**Note (Critic CR15.1):** D = A_ρ holds for simply-laced groups (all m_α = 1). For non-simply-laced (B_n, C_n, G_2), the Weyl denominator has multiplicity factors; Fact 2 still holds but requires a modified proof. All cases in BB0 (SU(2,3,4)) are simply-laced.

### Fact 3 (HC radial formula)

For class functions f on G (viewed via f(e^H)):
\[(-\Delta_G f)(e^H) = D(H)^{-1}(-\Delta_T)(D(H) \cdot f(e^H))\]
Reference: Helgason, "Groups and Geometric Analysis" (1984), Ch. II §3.

---

## Part 3: Geometric Interpretation — Main Theorem

### Theorem M3.1 (HC Interpretation)

On G with bi-invariant metric g, for class functions:
\[-\Delta_{1/2}^G\big|_\text{class} = -\Delta_T \quad \text{on } L^2(T,\, D^2\,dt/|W|)^{W,+}\]

**Proof structure:**
The Weyl integration formula identifies L²(G)_{class} with L²(T, D²dt/|W|)^{W,+}.
The half-density on the measure D²dt is D (the square root of the density D²).
The half-density Laplacian on (T, D²dt) is:
\[-\Delta_{1/2}^{(T,D^2dt)} = D^{-1}(-\Delta_T)D = -\Delta_G|_\text{class} \quad\text{(HC)}\]

### Theorem M3.6 (HC Interpretation — Spectral Form, Corrected)

Let H_flat = −ΔT on L²(T, dt) and H_curved = D^{-1}(−ΔT)D = −ΔG|_{class} on L²(T, dt). Then:
\[H_\text{curved} - H_\text{flat} = D^{-1}(-\Delta_T D) - (-\Delta_T) = |\rho|^2 + 2\nabla(\log D)\cdot\nabla\]

**Net eigenvalue shift:** The gradient term 2∇(log D)·∇ contributes to the eigenvalues; the net shift from the full operator is exactly |ρ|², consistent with:
- Spec(H_curved) = {|λ+ρ|² − |ρ|²} (Fact 1)
- Spec(H_flat) = {|μ|² : μ ∈ Λ*}^{W,+}
- Difference = |ρ|² (per eigenvalue, via the W-symmetric eigenfunctions).

**Important note (Critic CR15.5):** The gradient term is NOT ignored — it is already accounted for in the eigenvalues of D^{-1}(−ΔT)D = H_curved. The spectral shift V_HD = −|ρ|² comes from V_HD = Spec(−Δ_{1/2}^G) − Spec(−ΔG) = −|ρ|² (constant shift), verified independently via M0.3.

---

## Part 4: The Boxed Identity (Core of HC Proof)

\[\boxed{(-\Delta_T) D = |\rho|^2 \cdot D}\]

**Corollary:** The "ordering correction" V_HD on a group manifold equals the eigenvalue |ρ|² of the Weyl denominator under the toral Laplacian.

The Weyl denominator D IS the square root of the Lie group density (|g|^{1/4} on T in exponential coordinates). Its self-Laplacian quotient D^{-1}(−ΔT D) = |ρ|² gives the curvature correction V_HD.

**Physical interpretation (Physicist PH14.2):** D is like a standing wave built from momentum eigenstates, all with |p|² = |ρ|². The curvature cost to maintain this density wave is |ρ|². "The half-density correction is the kinetic energy of the Jacobian wave."

---

## Part 5: Proof Chain (Theorem M3.1 — Complete)

**Theorem M3.1 (HC Proof, as established):**

On compact semisimple G with bi-invariant g: V_HD = −|ρ|²_g.

**Proof:**
1. V_HD = const (Prop M0.1, bi-invariance).
2. V_HD = −D^{-1}(−ΔT D)|_{regularized} = −|ρ|² (HC identity: (−ΔT)D = |ρ|²·D, evaluated via regularization).
3. Regularization = RNC (Thm M0.3: V_HD = −R/6) + FdV (R/6 = |ρ|²).

**HC contribution:** Step 2 provides the algebraic structure — V_HD is determined by the eigenvalue of the Weyl denominator. The RNC computation provides the regularization to evaluate the singular expression D^{-1}(−ΔT D)|_{H→0}.

**The HC proof does not replace Thm M0.3; it EXPLAINS WHY V_HD = −|ρ|²:**
The Weyl denominator is the half-density on the group, and its self-eigenvalue under −ΔT is |ρ|².

---

## Part 6: What the HC Proof Adds

Comparison of the two routes:

| Aspect | RNC+FdV route | HC route |
|--------|---------------|----------|
| Result | V_HD = −R/6 = −|ρ|² | Same |
| Method | Local (RNC), then algebraic (FdV) | Global (HC), spectral |
| What it explains | VALUE of V_HD in terms of curvature | WHY V_HD = −|ρ|² (Weyl denominator) |
| Singularity | Avoided (work in RNC) | Present at H=0, resolved by step 3 |
| Scope | All constant-curvature spaces | Compact Lie groups specifically |

The HC route provides a **conceptual deepening**: V_HD = −|ρ|² is not just a curvature formula — it is the self-energy of the Lie group's density wave under the toral Laplacian.

---

## Part 7: Status and Errors Acknowledged

**What is proved:**
- Theorem M3.1 (HC interpretation): PROVED (THREE-AGENT).
- Fact 2 (−ΔT D = |ρ|² D): PROVED (elementary, unanimously verified).
- The algebraic connection V_HD = −|ρ|²: CONSISTENT with HC (not circularly dependent).

**Intermediate steps with errors (NOT promoted — per Critic CR15.7):**
- Lemma M3.2: domain error in step (iv) — HC applied to antisymmetric function. DELETE.
- Proposition M3.3: wrong spectrum — conflates two L² spaces. DELETE.
- Theorem M3.4: circularity identified and acknowledged. NOT PROMOTED.

**The core result (§§11-13 of BB3) is sound.** The erroneous intermediate steps were scaffolding; the conclusion stands on M3.1, Fact 2, and M3.6.

---

## Part 8: Freudenthal-de Vries Connection

The FdV formula gives the algebraic value of |ρ|²:
\[|\rho|^2_g = \frac{\dim(G) \cdot h^\vee}{24}\]

Combined with the HC interpretation:
\[V_\mathrm{HD} = -|\rho|^2 = -\frac{\dim(G) \cdot h^\vee}{24}\]

This is the ANALYTICAL content of the Freudenthal-de Vries formula: the Weyl denominator's eigenvalue under −ΔT equals the root-system invariant dim(G)·h∨/24. The HC formula makes this precise.

**Verified numerically (BB0 §12, FOUR-AGENT):**
- SU(2): V_HD = −3·2/24 = −1/4 ✓
- SU(3): V_HD = −8·3/24 = −1 ✓
- SU(4): V_HD = −15·4/24 = −5/2 ✓

---

*Promoted from BB3 §§11-13 by computationalist, 2026-02-23 (R24).*
*Reviewer verdict: THREE-AGENT (mathematician + physicist + critic). CONDITIONAL APPROVE.*
*Erroneous intermediate steps (M3.2 step (iv), M3.3, M3.4) documented but not promoted.*
