# 3. Newtonian Refinement and Area Law

## 3.1 Newton's Polygonal Argument

In Book I, Proposition I of the *Principia*, Newton proves that a centripetal
forcing rule implies equal areas swept in equal times. The proof is polygonal:
construct a piecewise-linear trajectory with impulses directed to a fixed centre,
then pass to a continuous curve by refinement [Newton 1687].

This section uses that structure directly. The key point is that the equal-area
invariant is **exact at every finite $N$**; only the *interpolation* from polygon
to curve is a limiting passage.

## 3.2 Discrete Refinement Model

Fix equal time steps $\Delta t > 0$, times $t_k = t_0 + k\Delta t$, and a fixed
centre $O$.  Let $\mathbf{r}_k$ be the position vector at $t_k$.  The stepwise model:

1. **Free inertial drift**: $\mathbf{r}_{k+1} = \mathbf{r}_k + \mathbf{v}_k^+\,\Delta t$.
2. **Central impulse at $t_k$**: $m(\mathbf{v}_k^+ - \mathbf{v}_k^-) = J_k\,\hat{\mathbf{r}}_k$.

The impulse is purely *radial* (central), so $\mathbf{r}_k \times J_k\hat{\mathbf{r}}_k = \mathbf{0}$.

## 3.3 D1.1: Angular Momentum Conservation

**Derivation D1.1** (finite-step).  At the impulse step:
$$\mathbf{L}_k^+ - \mathbf{L}_k^- = m\,\mathbf{r}_k \times (\mathbf{v}_k^+ - \mathbf{v}_k^-)
= \mathbf{r}_k \times J_k\hat{\mathbf{r}}_k = \mathbf{0}.$$
During the free drift:
$$\mathbf{L}_{k+1}^- = m\,\mathbf{r}_{k+1} \times \mathbf{v}_{k+1}^-
= m(\mathbf{r}_k + \mathbf{v}_k^+\Delta t) \times \mathbf{v}_k^+
= m\,\mathbf{r}_k \times \mathbf{v}_k^+ = \mathbf{L}_k^+.$$

Therefore $\mathbf{L}_{k+1}^- = \mathbf{L}_k^-$: **angular momentum is exactly conserved
at every finite step**. No limiting argument is needed.

**Lean formalization.** `D1_1_central_impulse_conserves_angular_momentum` (Section03_Newtonian.lean).
The central-impulse hypothesis is stated as $r_k\,\Delta\theta_k = r_{k+1}\,\Delta\theta_{k+1}$;
the conclusion is proved via `field_simp` and `linarith`.

## 3.4 D1.2: Equal Areas in Equal Times

**Derivation D1.2** (discrete equal-areas).  The area of the triangle swept in step $k$:
$$\Delta A_k = \tfrac{1}{2}\|\mathbf{r}_k \times (\mathbf{r}_{k+1}-\mathbf{r}_k)\|
= \tfrac{1}{2}\|\mathbf{r}_k \times \mathbf{v}_k^+\|\,\Delta t = \frac{\|\mathbf{L}\|}{2m}\,\Delta t.$$

For fixed $\Delta t$, $\Delta A_k$ is **independent of $k$**. This is the equal-areas
law at the polygonal level -- algebraic, not approximate.

**Bug fixed from Lean formalization.**  The previous Lean statement of D1.2
contained a bug:
```lean
let Dt_2 := t (j + 1) - t (j + 1)   -- BUG: always zero!
```
The corrected statement assumes *uniform* time steps explicitly, and the conclusion
is then an algebraic consequence of D1.1.

**D1.2a (Numerical witness).** The Lean witness `D1_2a_numerical_witness` demonstrates
that without the central-impulse constraint, angular momenta differ ($L_0 = 0.5$
vs $L_1 = 0.44$), confirming the hypothesis in D1.1 is essential.

## 3.5 P1.1: Continuous Limit

**Proposition P1.1** (refinement limit of areal velocity).  If $\max_k\Delta t_k \to 0$
under consistent refinement, the finite-step law yields
$$\frac{dA}{dt} = \frac{\|\mathbf{L}\|}{2m}$$
for the limiting trajectory, whenever the limit exists in the differentiable sense.

The continuous law $d\mathbf{L}/dt = \mathbf{r}\times\mathbf{F} = \mathbf{0}$ follows
from any smooth central force $\mathbf{F} = f(r)\hat{\mathbf{r}}$, regardless of the
power-law index.

**Convergence caveat (H1.1).** The polygon converges to the smooth orbit with global
error $O(h)$ on any interval where $\nabla V$ is Lipschitz (away from $r = 0$).
At the collision singularity, regularization is required (Levi-Civita / KS transform).

## 3.6 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| D1.1 central impulse conserves L | `D1_1_central_impulse_conserves_angular_momentum` | proved |
| D1.2 equal areas | `D1_2_equal_areas_discrete` | sorry |
| D1.2a witness (non-central breaks equality) | `D1_2a_numerical_witness` | proved |
| P1.1 continuous limit | `P1_1_areal_velocity_limit` | sorry |
| Continuous area law from central force | `P1_1_smooth_area_law_from_central_force` | sorry |
