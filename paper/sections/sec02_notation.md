# Section 2 — Notation and Claim Taxonomy

*Revised 2026-02-24. Changes: P0.1 now carries a complete proof sketch; P0.2 (seed theorem) rewritten with non-circular hypotheses; mollifier definition upgraded from step-function placeholder to Gaussian; D0.2 (relativistic limit) retained from main.md.*

---

## 2.1  Dimension bookkeeping

| Symbol | Meaning |
|--------|---------|
| $d$ | dimension of configuration space $\mathbb{R}^d$ (nonrelativistic) |
| $D = d+1$ | spacetime dimension (relativistic) |
| $\hbar$ | action scale, units $[\text{mass} \cdot \text{length}^2 \cdot \text{time}^{-1}]$ |
| $S[\gamma]$ | action functional, $\gamma : [t_i, t_f] \to \mathbb{R}^d$ |
| $S_N[\mathbf{q}]$ | discrete action (Definition 2.2 below) |

---

## 2.2  Core objects

**Definition 2.1** *(Continuous action).*
$$S[q] = \int_{t_i}^{t_f} \mathcal{L}(q(t), \dot q(t), t)\,dt.$$

**Definition 2.2** *(Discrete action).*
For positions $q_0, \ldots, q_N \in \mathbb{R}^d$ and times $t_0 < \cdots < t_N$:
$$S_N = \sum_{k=0}^{N-1} \mathcal{L}\!\left(q_k,\; \frac{q_{k+1}-q_k}{\Delta t_k},\; t_k\right)\Delta t_k, \qquad \Delta t_k = t_{k+1}-t_k.$$

**Definition 2.3** *(Areal velocity and angular momentum, $d=2$).*
$$\dot A = \tfrac12 r^2 \dot\theta, \qquad L_{\rm ang} = mr^2\dot\theta = 2m\dot A.$$

---

## 2.3  Claim taxonomy

Every substantive claim carries one of three labels:

| Label | Meaning |
|-------|---------|
| **P** — Proposition | Mathematically intended; proof gap marked `sorry` in Lean |
| **D** — Derivation | Explicit step-by-step calculation from stated premises |
| **H** — Heuristic | Physically motivated; identified as not fully rigorous |

---

## 2.4  Mollifier sequences

For point-like probes we use the **Gaussian mollifier**:
$$\varphi_\varepsilon(x) = \frac{1}{\varepsilon\sqrt{2\pi}}\,\exp\!\left(-\frac{x^2}{2\varepsilon^2}\right), \qquad \varepsilon > 0.$$

The previous version used a step-function placeholder; the Gaussian has the property that it is $C^\infty$, has unit integral, and satisfies $\varphi_\varepsilon \ast f \to f$ uniformly on compact sets as $\varepsilon \to 0$ (**P0.3** below).

**Proposition P0.3** *(Mollifier approximation).* *For any continuous $f : \mathbb{R} \to \mathbb{R}$, any compact $K \subset \mathbb{R}$, and any $\delta > 0$, there exists $\varepsilon_0 > 0$ such that for all $0 < \varepsilon < \varepsilon_0$ and all $x \in K$:*
$$\left|(\varphi_\varepsilon \ast f)(x) - f(x)\right| < \delta.$$

*Proof.* Standard mollifier approximation; see, e.g., Evans [Evans2010].

Any use of a Dirac-supported variation in this paper is understood as a mollified limit unless explicitly labelled as a heuristic.

---

## 2.5  Temporal additivity (P0.1)

**Proposition P0.1** *(Temporal additivity of discrete action).* *For any $M, N \ge 1$:*
$$S_{M+N}(q_0,\ldots,q_{M+N}) = S_M(q_0,\ldots,q_M) + S_N(q_M,\ldots,q_{M+N}).$$

*Proof.* Direct split of the finite sum $\sum_{k=0}^{M+N-1} = \sum_{k=0}^{M-1} + \sum_{k=M}^{M+N-1}$. ∎

The Lean proof in `Section02_Notation.lean:P0_1_additive_structure` carries this out via `Finset.sum_range_add`.

---

## 2.6  Exponential seed theorem (P0.2, corrected)

The earlier version had a circular hypothesis: it assumed both "$W$ is multiplicative" and "$\log W = f \circ S$", then concluded $W = e^{c \cdot S}$ — which follows immediately from the second hypothesis alone. The corrected version separates the two conditions clearly.

**Proposition P0.2** *(Exponential seed).* *Let $S$ be an additive functional on paths (Definition 2.2 with $N \to \infty$), and let $W : \mathrm{Paths} \to \mathbb{C}^\times$ satisfy:*
1. *(Multiplicativity)* $W(\gamma_1 \mathbin{+\!\!\!+} \gamma_2) = W(\gamma_1) \cdot W(\gamma_2)$.
2. *(Action-dependence)* $\log W(\gamma)$ depends on $\gamma$ only through $S[\gamma]$, i.e. $\log W = f \circ S$ for some $f : \mathbb{R} \to \mathbb{C}$.

*Then $f$ is $\mathbb{C}$-linear (i.e. $f(s) = c \cdot s$), and*
$$W(\gamma) = e^{c \cdot S[\gamma]}$$
*for a unique constant $c \in \mathbb{C}$.*

*Proof sketch.* From (1) and $S(\gamma_1 \mathbin{+\!\!\!+} \gamma_2) = S(\gamma_1) + S(\gamma_2)$:
$$f(S_1 + S_2) = \log(e^{f(S_1)} \cdot e^{f(S_2)}) = f(S_1) + f(S_2),$$
so $f$ is additive on $\mathbb{R}$. With measurability, $f(s) = cs$. ∎

Choosing $c = i/\hbar$ and establishing $\hbar > 0$ is the role of **P4.2** (Section 6).

---

## 2.7  Reader map

| Compatibility | Symbol | Where derived |
|---------------|--------|--------------|
| Partition (temporal) | $\mathcal{C}_t$ | §3–4, §6 |
| Representation (ordering) | $\mathcal{Q}_\hbar$ | §6–7 |
| Scale (RG) | $\mathcal{R}_\Lambda$ | §8, Appendix 10.5 |

Full formal summary of the three channels: Appendix 10.3.

---

*Formalization: `lean/PhysRes/MainPaper/Section02_Notation.lean`*
