# 3. Newtonian Refinement and Area Law

## 3.1 Newton's Polygonal Argument

In Book I, Proposition I of the *Principia*, Newton proves that a centripetal
forcing rule implies equal areas swept in equal times. The proof is polygonal:
construct a piecewise-linear trajectory with impulses directed to a fixed centre,
then pass to a continuous curve by refinement [Newton 1687].

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

**Gap note.** The Lean formalization of D1.2 carries `sorry`. The difficulty is that
D1.1 conserves $r\,\Delta\theta$ (specific angular momentum), while $\Delta A_k$
involves $r^2\,\Delta\theta$. In Newton's geometric proof, the equal-area property
follows from the triangles sharing a common base direction; the Lean encoding needs the full cross-product formulation rather than the
polar decomposition to close this step. The planned fix is to reformulate
D1.1's Lean hypothesis using $\|\mathbf{r}_k \times \mathbf{v}_k\|$ directly.

**D1.2a (Numerical witness).** The Lean witness `D1_2a_numerical_witness` demonstrates
that without the central-impulse constraint, angular momenta differ ($L_0 = 0.5$
vs $L_1 = 0.44$), confirming the hypothesis in D1.1 is essential.

## 3.5 P1.1: Continuous Limit

**Proposition P1.1** (refinement limit of areal velocity).  If $\max_k\Delta t_k \to 0$
under consistent refinement, the finite-step law yields
$$\frac{dA}{dt} = \frac{\|\mathbf{L}\|}{2m}$$
for the limiting trajectory, provided $r\in C^2$, $\theta\in C^2$, and $\nabla V$ is Lipschitz on the domain.

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
| Continuous area law from central force | `P1_1_smooth_area_law_from_central_force` | proved |
