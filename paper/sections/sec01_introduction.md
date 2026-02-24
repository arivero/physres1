# Section 1 — Introduction

*Revised 2026-02-24. Changes from main.md: H0.1 corrected (unit amplitude ≠ concentration); H0.2 promoted to theorem; new P0.0 thesis statement; explicit structure of the paper as a refinement chain.*

---

## 1.1  The foundational question

The paper does not ask "how do we quantize classical mechanics?" — that framing presupposes a quantum–classical dichotomy to be bridged by a recipe. Instead it asks:

> **Given a family of composable local approximations (polygon steps, action slices, path-integral time slices, RG scale steps), which structures survive the continuum limit, and which new parameters must emerge for that limit to be self-consistent?**

The answer is a single structural narrative:

$$
\text{Newton's polygon}
\xrightarrow{\text{§3}}
\text{continuous action}
\xrightarrow{\text{§4-5}}
\text{path integral}
\xrightarrow{\text{§6}}
\text{deformed algebra}
\xrightarrow{\text{§7}}
\text{renormalized theory}
\xrightarrow{\text{§8}}
$$

Each arrow is a *refinement passage*; each section establishes that the passage is consistent and derives what structure is preserved or forced.

---

## 1.2  Three obstruction types

Naive refinement-to-zero encounters three recurring obstructions.

**Obstruction 1 — Singular probes.**
Point-supported test variations $\eta = \delta(t - t_0)$ lie outside $C^1_c$, the classical domain of the first-variation formula. The fix is the *weak formulation* (Section 5): replace $\delta$ by a mollifier sequence $\rho_\varepsilon \rightharpoonup \delta$ and take $\varepsilon \to 0$ as a controlled limit.

**Obstruction 2 — Ordering/discretization ambiguity.**
Multiple composable discretizations converge to the same classical action but differ at $O(\hbar)$. The fix is the *gauge-equivalence theorem* for star products (Section 7, P5.2): different orderings are related by invertible maps $T_\hbar$ with $T_\hbar \to \mathrm{id}$ as $\hbar \to 0$.

**Obstruction 3 — UV divergence.**
The loop integral $\int_1^\Lambda dk/k = \log \Lambda \to \infty$ as $\Lambda \to \infty$. The fix is *RG flow* (Section 8): a running coupling $g(\Lambda)$ absorbs the divergence so that $O(g(\Lambda),\Lambda)$ converges.

---

## 1.3  ℏ, c, G as control parameters (H0.3, corrected)

$\hbar$, $c$, $G$ are not free constants — each is the unique coupling forced by one compatibility condition:

| Parameter | Compatibility | Section |
|-----------|---------------|---------|
| $\hbar$   | amplitude composition semigroup (P4.2) | §6 |
| $c$       | relativistic composition | §9 (future) |
| $G$       | gravitational composition | §9 (future) |

This paper establishes the $\hbar$ column. The $c$ and $G$ cases follow the same pattern and are deferred.

---

## 1.4  P0.0: Thesis statement

**Proposition P0.0** *(Thesis).* *Every convergent refinement family for a Lagrangian $L$ on $\mathbb{R}^d$ encodes a unique positive scale $\kappa > 0$ such that the limiting kernel $K_\infty$ has the form*
$$K_\infty(x,y,t) = \left(\frac{m}{2\pi\kappa t}\right)^{d/2} \exp\!\left(\frac{i\,S_{\rm cl}(x,y,t)}{\kappa}\right).$$
*Proposition P4.2 (Section 6) proves that $\kappa = \hbar$.*

The formal analogue is in `Section01_Introduction.lean:P0_0_unique_action_scale`.

---

## 1.5  Structure of the paper

| Section | Content | Key result |
|---------|---------|------------|
| §2 | Notation, taxonomy, mollifiers | P0.1, P0.2 (seed theorem) |
| §3 | Newtonian polygon refinement | D1.1, D1.2 (exact area law) |
| §4 | Action as additive invariant | P2.0 (E–L), P2.1 (Noether) |
| §5 | Weak forms and distributions | P3.1–P3.4 (corners/impulses) |
| §6 | Composition and path integral | **P4.2** (master theorem) |
| §7 | Deformation quantization | P5.1–P5.2 (Moyal, ordering) |
| §8 | Renormalization | P6.1–P6.3 (RG flow) |
| §9 | Unified perspective | P7.1 (three channels commute) |
| §10 | Appendices (witnesses) | D11–D12 (explicit computations) |

---

## 1.6  What H0.1 does and does not say (corrected)

The heuristic "classical recovery as concentration" is sometimes stated as "$|e^{iS/\hbar}| \to 0$ away from the classical path." This is wrong: the modulus $|e^{iS/\hbar}| = 1$ for all paths and all $\hbar > 0$. The correct statement is:

> *The oscillatory integral* $\int f(x) e^{iS(x)/\hbar} dx$ *is dominated by contributions near $\{x : dS/dx = 0\}$ as $\hbar \to 0$, by cancellation of non-stationary phases* (Riemann–Lebesgue / stationary-phase lemma).

The sharp version is **D4.2** (Section 6): away from critical points, the integral is $O(\hbar^\infty)$.

---

*Formalization: `lean/PhysRes/MainPaper/Section01_Introduction.lean`*
