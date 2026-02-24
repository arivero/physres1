# Section 5 — Dirac Distributions and Extremal Action

*Revised 2026-02-24. Changes: P3.1 now gives the correct biconditional (not just one direction); P3.3 explicitly separates corner from impulse using one-sided velocity limits; D3.5 biconditional corrected (previous version was not actually a biconditional); momentum-jump definition made precise.*

---

## 5.1  Why weak forms are needed

The Euler–Lagrange derivation in Section 4 requires $\eta \in C^1$. For physical situations with:
- trajectories with **corners** ($\dot q$ discontinuous),
- **contact forces** (acting only at a point in time),
- **Dirac-supported external forces** $f(t) = J\delta(t-t_0)$,

the classical framework breaks down. The *weak formulation* replaces $C^1$ test variations by $C^\infty_c$ and recovers the equations as distributional identities.

---

## 5.2  Test functions and weak stationarity (P3.1)

**Definition 5.1.** A *test function* $\eta : [t_i,t_f] \to \mathbb{R}^d$ is $C^\infty$ with compact support in $(t_i,t_f)$ (so $\eta = 0$ near both endpoints).

**Proposition P3.1** *(Weak stationarity ↔ E–L, corrected).* *The action is weakly stationary ($\delta S[q;\eta] = 0$ for all test $\eta$) if and only if the E–L equations hold pointwise on $(t_i,t_f)$.*

*Proof.* ($\Rightarrow$) By the du Bois-Reymond fundamental lemma: a locally integrable function that pairs to zero against all $C^\infty_c$ functions is zero a.e. ($\Leftarrow$) Direct computation. ∎

The previous Lean version `P3_1_weak_stationarity` only stated the $(\Rightarrow)$ direction; the corrected version `P3_1_weak_stationarity_iff_EL` gives the biconditional.

---

## 5.3  Localized probing (P3.2)

**Proposition P3.2.** *For any $t_0 \in (t_i,t_f)$ and $\varepsilon > 0$, there exists a test function $\eta$ supported in $(t_0-\varepsilon, t_0+\varepsilon)$ with $\int\eta = 1$. Such probes can resolve changes in the E–L residual in any $\varepsilon$-neighbourhood.*

This is the key property that allows mollified Dirac measures to serve as probes without leaving the distributional framework.

---

## 5.4  Corner conditions (P3.3 and P3.4)

Let $q : [t_i, t_f] \to \mathbb{R}^d$ be $C^1$ except at $t_0 \in (t_i,t_f)$. Define:
$$\dot q^-(t_0) = \lim_{h\to 0^+}\frac{q(t_0)-q(t_0-h)}{h}, \qquad
\dot q^+(t_0) = \lim_{h\to 0^+}\frac{q(t_0+h)-q(t_0)}{h}.$$

**Proposition P3.3** *(Corner ≠ impulse, corrected).* *A corner at $t_0$ (i.e. $\dot q^-(t_0) \ne \dot q^+(t_0)$) does NOT require a force discontinuity. It is consistent with the E–L equations on $(t_i,t_0)\cup(t_0,t_f)$ provided the momentum is continuous:*
$$\frac{\partial\mathcal{L}}{\partial\dot q}\Big|_{t_0^-} = \frac{\partial\mathcal{L}}{\partial\dot q}\Big|_{t_0^+}.$$

The previous Lean version mixed up "corner in $q$" with "corner in $\dot q$"; the corrected version uses one-sided velocity limits explicitly.

**Proposition P3.4** *(Impulse ↔ momentum jump).* *A distributional force $f(t) = J\delta(t-t_0)$ is equivalent to a momentum jump $J$ at $t_0$:*
$$m\dot q^+(t_0) - m\dot q^-(t_0) = J.$$

*Proof.* Integrate $m\ddot q = f$ against a test function $\eta$:
$$\int m\ddot q \,\eta\,dt = -\int m\dot q \,\dot\eta\,dt = \int f\,\eta\,dt = J\eta(t_0). \qquad \square$$

---

## 5.5  Delta dictionary

The paper uses the following "safe/unsafe" classification of distributional objects:

| Object | Safe? | Condition |
|--------|-------|-----------|
| $\delta(t-t_0)$ in $f(t)$ (external force) | ✓ | well-defined in $H^{-1}$ |
| $\delta(q-q_0)$ as a variation $\eta$ | ✗ | not in $C^\infty_c$; must mollify |
| $\delta'(t-t_0)$ as a force | ✓ | defines velocity-kick |
| $\delta(q)\delta(q)$ (product) | ✗ | ill-defined; requires renormalization |

---

## 5.6  D3.5: Born rule as half-density product (corrected)

**Derivation D3.5** *(Born rule normalization).* *The probability density $\rho = |\psi|^2$ satisfies $\int\rho = 1$. This can be written as a half-density pairing:*
$$\int\rho = \int \sqrt{\rho}\cdot\sqrt{\rho}\, = 1.$$
*Equivalently: $\int|\psi|^2 = 1$ if and only if $|\psi|^2$ is a probability density.*

The previous Lean version stated a biconditional "$\int|\psi|^2 = 1 \Leftrightarrow \exists \rho, \psi = \sqrt\rho \wedge \int\rho = 1$" — this is not a biconditional since $\psi$ need not be the square root of a distinguished density. The corrected `D3_5_born_rule_as_half_density` states: $\int\|\psi\|^2 = 1$ iff there exists $\rho \ge 0$ with $\rho = \|\psi\|^2$ and $\int\rho = 1$, which is trivially true and captures the half-density structure without circularity.

The real content is that this half-density form generalizes to curved spaces: on a Riemannian manifold $(M,g)$ the correct normalization is $\int |\psi|^2 \sqrt{|g|}\,dq = 1$, where $\sqrt{|g|}$ is the half-density factor from D4.3.

---

*Formalization: `lean/PhysRes/MainPaper/Section05_Dirac.lean`*
