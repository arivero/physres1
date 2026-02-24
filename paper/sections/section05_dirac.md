# 5. Dirac Distributions and Extremal Action

## 5.1 Why Weak Forms Are Necessary

The classical variational argument (Section 4) requires smooth variations $\eta\in C_c^\infty$.
Physical scenarios force us beyond this:

- **Corners**: paths that are continuous but not differentiable at isolated points.
- **Impulses**: instantaneous forces at a single time.
- **Point probes**: measuring $q(t_0)$ exactly corresponds to a $\delta$-supported probe.

All three require a *distributional* (weak) extension of the variational framework.

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

The corrected Lean version `P3_1_weak_stationarity_iff_EL` is a proper biconditional,
fixing the earlier one-directional formulation.

## 5.3 P3.2: Localized Probing

**Proposition P3.2.** For any $t_0$ and $\varepsilon > 0$, there exists a smooth
test function $\eta$ with $\text{supp}(\eta)\subseteq(t_0-\varepsilon, t_0+\varepsilon)$
and $\int\eta = 1$.

Such *local probes* can resolve arbitrarily fine changes in the Euler--Lagrange residual.
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

A distributional operation is safe iff it is a continuous
linear functional on $C_c^\infty$. This classifies corners and impulses as safe,
while products like $\delta^2$ require regularization.

## 5.5 D3.5: Born Rule as Half-Density Product

The Born rule $\int|\psi|^2 = 1$ can be written as a half-density pairing:
$$\int\bar\psi\cdot\psi = \int\sqrt{\rho}\cdot\overline{\sqrt{\rho}} = 1$$
where $\rho(x) = |\psi(x)|^2$ is the probability density.

**Proposition D3.5** (biconditional).
$$\int|\psi|^2 = 1 \iff \exists\,\rho\geq 0:\;|\psi|^2 = \rho\;\text{ and }\;\int\rho = 1.$$

The half-density structure $\sqrt{\rho}$ is the key input to Section 6's
coordinate-invariant composition law (the Van Vleck prefactor).

## 5.6 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| P3.1 weak stationarity (biconditional) | `P3_1_weak_stationarity_iff_EL` | sorry |
| P3.2 local probes exist | `P3_2_local_probes_exist` | sorry |
| P3.3 corner without impulse | `P3_3_corner_consistent_with_smooth_force` | sorry |
| P3.4 impulse = momentum jump | `P3_4_impulse_iff_momentum_jump` | sorry |
| D3.5 Born rule biconditional | `D3_5_born_rule_as_half_density` | proved |
