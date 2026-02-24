# 5. Dirac Distributions and Extremal Action

## 5.1 Why Weak Forms Are Necessary

Corners, impulses, and point probes require distributional test functions beyond
the $C_c^\infty$ variations of Section 4. This section develops the weak extension.

## 5.2 P3.1: Weak Stationarity

**Proposition P3.1** (stationarity via smooth test functions).  Let
$\eta\in C_c^\infty((t_i,t_f))$.  Then:
$$\delta S[q;\eta] = 0 \text{ for all such } \eta \iff
\frac{\partial\mathcal{L}}{\partial q} - \frac{d}{dt}\frac{\partial\mathcal{L}}{\partial\dot{q}} = 0 \text{ a.e.}$$

The weak first variation is:
$$\delta S[q;\eta] = \int_{t_i}^{t_f}
\left(\frac{\partial\mathcal{L}}{\partial q}(q,\dot q,t)
- \frac{d}{dt}\frac{\partial\mathcal{L}}{\partial\dot q}(q,\dot q,t)\right)\cdot\eta(t)\,dt.$$

Setting this to zero for all smooth $\eta$ supported in $(t_i,t_f)$ and applying
the du Bois-Reymond lemma gives the pointwise Euler--Lagrange equation.

Lean: `P3_1_weak_stationarity_iff_EL` (biconditional).  Status: sorry (du Bois-Reymond lemma is the gap).

## 5.3 P3.2: Localized Probing

**Proposition P3.2.** For any $t_0$ and $\varepsilon > 0$, there exists a smooth
test function $\eta$ with $\text{supp}(\eta)\subseteq(t_0-\varepsilon, t_0+\varepsilon)$
and $\int\eta = 1$.

Local probes resolve arbitrarily fine changes in the Euler--Lagrange residual.
The mollifier family of Section 2 provides the explicit construction.

## 5.4 P3.3 and P3.4: Corners vs. Impulses

### Corners (P3.3)
A **corner** is a point $t_c$ where $q$ is continuous but $\dot{q}$ is discontinuous.

**Proposition P3.3.** A corner at $t_c$ is consistent with the Euler--Lagrange equation
on $(t_i,t_c)\cup(t_c,t_f)$ provided the **junction condition** holds:
$$\frac{\partial\mathcal{L}}{\partial\dot{q}}\bigg|_{t_c^-} = \frac{\partial\mathcal{L}}{\partial\dot{q}}\bigg|_{t_c^+} \qquad (\text{continuity of momentum})$$
and no impulsive force is required.

### Impulses (P3.4)
**Proposition P3.4.** A momentum jump $\Delta p = p(t_c^+) - p(t_c^-)$ at $t_c$
is equivalent to a distributional force:
$$F(t) = \Delta p\cdot\delta(t - t_c).$$

The weak form: for all $\eta\in C_c^\infty$,
$$\int m\ddot{q}(t)\,\eta(t)\,dt = \Delta p\cdot\eta(t_c).$$

## 5.5 D3.5: Normalization Bookkeeping

**Proposition D3.5** (biconditional).
$$\int|\psi|^2 = 1 \iff \exists\,\rho\geq 0:\;|\psi|^2 = \rho\;\text{ and }\;\int\rho = 1.$$

This is a bookkeeping restatement: the forward direction sets $\rho = |\psi|^2$,
the backward direction substitutes. The non-trivial half-density content — that
$\sqrt\rho$ transforms as a half-density under coordinate change, making the
Van Vleck prefactor in Section 6 coordinate-invariant — is not captured by this
Lean formalization and remains a structural input to the composition law.

## 5.6 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| P3.1 weak stationarity (biconditional) | `P3_1_weak_stationarity_iff_EL` | sorry |
| P3.2 local probes exist | `P3_2_local_probes_exist` | sorry |
| P3.3 corner without impulse | `P3_3_corner_consistent_with_smooth_force` | sorry |
| P3.4 impulse = momentum jump | `P3_4_impulse_iff_momentum_jump` | sorry (Lean hardcodes width-2 support; should quantify over arbitrary intervals) |
| D3.5 Born rule biconditional | `D3_5_born_rule_as_half_density` | proved |
