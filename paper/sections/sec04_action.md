# Section 4 — Action as Additive Invariant

*Revised 2026-02-24. Changes: P2.0 now gives precise smoothness hypotheses; P2.1 corrected to a genuine biconditional between $r^2\dot\theta = \mathrm{const}$ and the Euler–Lagrange equation for $\theta$; P2.2 (action uniqueness) hypothesis clarified so locality and additivity are separated; Noether theorem added as D2.2.*

---

## 4.1  Setup and smoothness assumptions

Let $q : [t_i, t_f] \to \mathbb{R}^d$ be $C^2$, $\mathcal{L}(q,\dot q, t)$ be $C^2$ in $(q, \dot q)$ and $C^1$ in $t$. Define:
$$S[q] = \int_{t_i}^{t_f} \mathcal{L}(q(t), \dot q(t), t)\,dt.$$

Test variations are $\eta \in C_c^1((t_i,t_f);\mathbb{R}^d)$ (fixed-endpoint case) or $\eta \in C_c^\infty((t_i,t_f);\mathbb{R}^d)$ (interior weak case). The first variation is:
$$\delta S[q;\eta] = \left.\frac{d}{d\varepsilon}\right|_0 S[q + \varepsilon\eta].$$

---

## 4.2  P2.0: Fundamental Lemma (Euler–Lagrange)

**Proposition P2.0.** *Under the smoothness assumptions, $\delta S[q;\eta] = 0$ for all $\eta \in C_c^\infty((t_i,t_f);\mathbb{R}^d)$ if and only if*
$$\frac{\partial\mathcal{L}}{\partial q^i}(q,\dot q,t) - \frac{d}{dt}\frac{\partial\mathcal{L}}{\partial \dot q^i}(q,\dot q,t) = 0 \quad \forall\, t \in (t_i,t_f),\; i = 1,\ldots,d.$$

*Proof.* Differentiate under the integral sign, integrate by parts (zero boundary terms from compact support), and apply the du Bois-Reymond fundamental lemma to $F(t) = \partial_q\mathcal{L} - (d/dt)\partial_{\dot q}\mathcal{L}$. ∎

The Lean formalization `Section04_Action.lean:P2_0_fundamental_variational` takes the partial derivatives of $\mathcal{L}$ as explicit hypotheses (since Lean cannot differentiate through a generic function symbol).

---

## 4.3  Temporal additivity

**Theorem.** *For any $t_i \le t_m \le t_f$:*
$$S[q, t_i, t_f] = S[q, t_i, t_m] + S[q, t_m, t_f].$$

*Proof.* Linearity of the integral: $\int_{t_i}^{t_f} = \int_{t_i}^{t_m} + \int_{t_m}^{t_f}$. ∎

Lean: `action_additivity_temporal` uses `intervalIntegral.integral_add_adjacent_intervals`.

---

## 4.4  P2.1: Geometric-variational equivalence (corrected)

The previous formulation was asymmetric: it stated "$\frac{d}{dt}\dot A = 0$ iff some EL equation," but both sides were stated inconsistently. The corrected version:

**Proposition P2.1.** *For the central-force Lagrangian $\mathcal{L} = \frac{m}{2}(\dot r^2 + r^2\dot\theta^2) - V(r)$, the Euler–Lagrange equation for $\theta$ is:*
$$\frac{d}{dt}(mr^2\dot\theta) = 0.$$
*This is equivalent to $r^2\dot\theta = \mathrm{const}$, i.e. angular-momentum conservation.* ∎

*Proof.* $\partial_\theta \mathcal{L} = 0$ (no explicit $\theta$ dependence), so E–L gives $d/dt(\partial_{\dot\theta}\mathcal{L}) = d/dt(mr^2\dot\theta) = 0$. ∎

This is the bridge between the Newtonian result (D1.2) and the variational formulation.

---

## 4.5  D2.1: Euler–Lagrange derivation

**Derivation D2.1.** By chain rule:
$$\delta S[q;\eta] = \int_{t_i}^{t_f}\!\!\left(\frac{\partial\mathcal{L}}{\partial q}\cdot\eta + \frac{\partial\mathcal{L}}{\partial\dot q}\cdot\dot\eta\right)dt.$$
Integration by parts on the second term:
$$= \left[\frac{\partial\mathcal{L}}{\partial\dot q}\cdot\eta\right]_{t_i}^{t_f} + \int_{t_i}^{t_f}\!\!\left(\frac{\partial\mathcal{L}}{\partial q} - \frac{d}{dt}\frac{\partial\mathcal{L}}{\partial\dot q}\right)\cdot\eta\, dt = 0$$
for all $\eta$ with $\eta(t_i)=\eta(t_f)=0$. By P2.0, the integrand is zero. ∎

---

## 4.6  D2.2: Noether's theorem

**Derivation D2.2** *(Noether charge conservation).* *Suppose $\mathcal{L}$ is invariant under a one-parameter family $q \mapsto q + \varepsilon \xi(q)$:*
$$\frac{d}{d\varepsilon}\Big|_0 \mathcal{L}(q+\varepsilon\xi, \dot q + \varepsilon\dot\xi, t) = 0.$$
*Then the Noether charge $Q = \partial_{\dot q}\mathcal{L} \cdot \xi(q)$ satisfies $\dot Q = 0$ along E–L solutions.*

*Proof.* Differentiate, apply E–L, and simplify. ∎

For $\xi = (0,1)$ (rotation in the $(r,\theta)$ plane), $Q = mr^2\dot\theta = L_{\rm ang}$, recovering D1.2 in the continuum.

---

## 4.7  P2.2: Action uniqueness (corrected)

**Proposition P2.2.** *A functional $F[q, t_i, t_f]$ that is (i) additive under temporal splitting and (ii) local (depends on $q$ only through $q(t)$ and $\dot q(t)$ at each $t$) must equal $\int_{t_i}^{t_f}\mathcal{L}(q(t),\dot q(t),t)\,dt$ for some $\mathcal{L}$.*

The previous version conflated locality with additivity; these are separate conditions and both are needed. The Lean version `P2_2_action_uniqueness_from_additivity` takes both as explicit hypotheses.

---

*Formalization: `lean/PhysRes/MainPaper/Section04_Action.lean`*
