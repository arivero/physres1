# 4. Action as Additive Invariant

## 4.1 Setup

Assume $q:[t_i,t_f]\to\mathbb{R}^d$ is $C^2$ and variations $\eta$ are $C^\infty_c((t_i,t_f))$.
The action is
$$S[q] = \int_{t_i}^{t_f}\mathcal{L}(q(t),\dot{q}(t),t)\,dt$$
and stationarity is $\delta S[q;\eta] = 0$ for all admissible $\eta$.

## 4.2 P2.0: Fundamental Lemma

**Proposition P2.0** (Euler--Lagrange, vector form).
The action is stationary for all compactly supported $\eta$ if and only if the
Euler--Lagrange equations hold:
$$\frac{\partial\mathcal{L}}{\partial q^i} - \frac{d}{dt}\frac{\partial\mathcal{L}}{\partial\dot{q}^i} = 0, \qquad i = 1,\ldots,d,$$
pointwise on $(t_i, t_f)$.

*Proof sketch.* Expand $\delta S[q;\eta] = \int[(\partial_q\mathcal{L})\cdot\eta + (\partial_{\dot q}\mathcal{L})\cdot\dot\eta]\,dt$.
Integrate by parts (the boundary terms vanish since $\eta(t_i)=\eta(t_f)=0$).
Apply the du Bois-Reymond fundamental lemma. $\square$

Lean: `P2_0_fundamental_variational` in Section04_Action.lean.
The first-variation formula is modelled as `firstVariation`, with explicit partial
derivative hypotheses `h_deriv_q` and `h_deriv_v`.  Status: sorry.

## 4.3 P2.1: Geometric-Variational Equivalence

**Proposition P2.1.** For the polar Lagrangian
$\mathcal{L} = \tfrac{m}{2}(\dot{r}^2 + r^2\dot\theta^2) - V(r)$,

$$\text{Angular momentum conservation} \iff \text{E-L equation for } \theta.$$

Concretely: $\frac{d}{dt}(mr^2\dot\theta) = 0 \iff \frac{\partial\mathcal{L}}{\partial\theta} - \frac{d}{dt}\frac{\partial\mathcal{L}}{\partial\dot\theta} = 0$.

Lean: `P2_1_geometric_variational_equivalence` in Section04_Action.lean.  Status: sorry.

## 4.4 Temporal Additivity

**Theorem** (action additivity).  For $t_i \leq t_m \leq t_f$:
$$S[q; t_i, t_f] = S[q; t_i, t_m] + S[q; t_m, t_f].$$

*Proof.* Split the integral: $\int_{t_i}^{t_f} = \int_{t_i}^{t_m} + \int_{t_m}^{t_f}$. $\square$

Lean: `action_additivity_temporal` in Section04_Action.lean.
Uses `intervalIntegral.integral_add_adjacent_intervals` with a `ContinuousOn` hypothesis.  Status: proved.

## 4.5 P2.2: Lagrangian Form is Unique

**Proposition P2.2.** Any functional $F(q, t_i, t_f)$ that is
- **additive**: $F(q,t_i,t_f) = F(q,t_i,t_m) + F(q,t_m,t_f)$ for all $t_m$, and
- **local**: $F(q,t_i,t_f) = \int_{t_i}^{t_f}\lambda(q(t),\dot{q}(t),t)\,dt$,

must take the Lagrangian form $F = S[\cdot;L]$ for some $L$.

The locality hypothesis already provides the integral form with an integrand
$\lambda(q,\dot q,t)$; the theorem extracts $L = \lambda$. The non-trivial
content — that a local additive functional cannot depend on higher derivatives or
cross-time correlations — is encoded in the locality hypothesis itself, not derived
from it.

Lean: `P2_2_action_uniqueness_from_additivity` in Section04_Action.lean.  Status: proved
(the proof extracts $L$ from the locality hypothesis; the Ostrogradsky argument in
Section 4.6 provides the physical justification for that hypothesis).

## 4.6 Why No Higher Derivatives

The Ostrogradsky argument: if $\mathcal{L}$ depends on $\ddot q$, the Hamiltonian
has a linear momentum and is generically unbounded below (Ostrogradsky instability).
Stability therefore forces $\mathcal{L} = \mathcal{L}(q, \dot q, t)$.

In the refinement language: a local action depending on $\ddot q$ would require
two consecutive time steps to specify, breaking the single-step additive structure.

## 4.7 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| P2.0 Euler-Lagrange | `P2_0_fundamental_variational` | sorry |
| P2.1 geometric-variational equivalence | `P2_1_geometric_variational_equivalence` | sorry |
| Temporal additivity | `action_additivity_temporal` | proved |
| P2.2 Lagrangian uniqueness | `P2_2_action_uniqueness_from_additivity` | proved |
