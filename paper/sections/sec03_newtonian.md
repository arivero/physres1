# Section 3 — Newtonian Refinement and Area Law

*Revised 2026-02-24. Changes: D1.2 bug fixed (Δt₂ was computed as t(j+1)−t(j+1) = 0 in the Lean formalization, giving a trivially true statement); D1.2a witness corrected (the equal-area property is algebraic, not approximate; the witness now checks that a non-central force breaks it); P1.1 convergence statement sharpened; H1.2 (symplectic integrator connection) retained.*

---

## 3.1  Source-critical framing

Newton's *Principia* Book I, Proposition I proves that any central-impulse force produces equal areas in equal times. The proof is polygonal: a piecewise-linear trajectory with central impulses at each vertex is constructed, and the equal-area property is proved at every finite step. The continuous limit is then invoked by Lemma 3 (Book I, §1).

This section extracts the exact algebraic structure from that argument and proves it as a theorem, not an approximation.

---

## 3.2  Discrete model

Fix equal time steps $\Delta t > 0$, center of force $O$, and position vectors $\mathbf{r}_k$ at time $t_k = t_0 + k \Delta t$.

**Dynamics:**
1. Free inertial drift: $\mathbf{r}_{k+1} = \mathbf{r}_k + \mathbf{v}_k^+ \Delta t$.
2. Central impulse at vertex $t_k$: $m(\mathbf{v}_k^+ - \mathbf{v}_k^-) = J_k \hat{\mathbf{r}}_k$.

The angular momentum before the impulse: $\mathbf{L}_k^- = m \mathbf{r}_k \times \mathbf{v}_k^-$.

---

## 3.3  D1.1: Angular momentum is exactly conserved

**Derivation D1.1** *(Central impulse preserves $\mathbf{L}$).* *At each vertex:*
$$\mathbf{L}_k^+ - \mathbf{L}_k^- = m \mathbf{r}_k \times (\mathbf{v}_k^+ - \mathbf{v}_k^-)
= \mathbf{r}_k \times J_k\hat{\mathbf{r}}_k = \mathbf{0}.$$
*During free drift:*
$$\mathbf{L}_{k+1}^- = m \mathbf{r}_{k+1} \times \mathbf{v}_{k+1}^-
= m(\mathbf{r}_k + \mathbf{v}_k^+\Delta t) \times \mathbf{v}_k^+
= m\mathbf{r}_k \times \mathbf{v}_k^+ = \mathbf{L}_k^+.$$
*Therefore $\mathbf{L}$ is constant at every finite step.* ∎

This is an exact algebraic identity, not an approximation. The proof in `Section03_Newtonian.lean:D1_1_central_impulse_conserves_angular_momentum` formalises this via `linarith`.

---

## 3.4  D1.2: Equal areas in equal times

**Derivation D1.2** *(Equal areas, corrected).* *The area swept in step $k$ is:*
$$\Delta A_k = \tfrac12 \|\mathbf{r}_k \times \mathbf{v}_k^+\| \Delta t = \frac{\|\mathbf{L}\|}{2m}\Delta t.$$
*Since $\|\mathbf{L}\|$ and $\Delta t$ are the same for all steps, $\Delta A_k$ is independent of $k$.* ∎

**Bug fixed in D1.2 (Lean).** The previous formalization had:
```lean
let Δt_2 := t (j + 1) - t (j + 1)  -- always 0!
```
The corrected version uses equal fixed steps $\Delta t$ and states the areal law as a consequence of D1.1 (not as an independent claim).

**Witness D1.2a** *(Central vs non-central force).* For a central force, equal areas holds exactly. For a non-central force (e.g. a uniform gravitational field), it fails: the numerical values $\Delta A_0 \neq \Delta A_1$ in the first two steps. The Lean witness `D1_2a_numerical_witness` demonstrates the failure case (angular momenta $L_0 = 0.5$ vs $L_1 = 0.44$ for the non-central discretization), confirming that the central-force hypothesis in D1.1 is essential.

---

## 3.5  P1.1: Continuous limit

**Proposition P1.1** *(Areal velocity, continuous limit).* *If $r, \theta : [t_i,t_f] \to \mathbb{R}$ are $C^1$ and the discrete steps use equal $\Delta t = (t_f - t_i)/N$, then:*
$$\sup_{k < N} \left|\frac{\Delta A_k}{\Delta t} - \frac{1}{2}r(t_k)^2 \dot\theta(t_k)\right| = O(1/N) \to 0.$$

*For a smooth central force $\mathbf{F} = f(r)\hat{\mathbf{r}}$:*
$$\frac{d}{dt}\left(r^2\dot\theta\right) = \mathbf{r} \times \mathbf{F}/m = 0,$$
*so $r^2\dot\theta$ is constant (continuous area law).* ∎

---

## 3.6  Heuristics and open points

**H1.1** *(Impulse model is a scaffold, not ontology).* The kick-drift model is a convergent approximation, not a claim that nature acts in discrete kicks.

**H1.2** *(Symplectic integrator connection).* The kick-drift scheme is the symplectic Euler integrator for $H = |\mathbf{p}|^2/2m + V(r)$; it preserves $d\mathbf{p} \wedge d\mathbf{r}$ at each finite step. This connects to the observation in Section 8 that RG counterterms must preserve symmetries of the theory.

**Convergence failure mode.** At the collision singularity $r = 0$ the force is not Lipschitz; the polygonal scheme fails there. The structural invariants (D1.1, D1.2) are exact at every finite step regardless; only the limit passage breaks down.

---

*Formalization: `lean/PhysRes/MainPaper/Section03_Newtonian.lean`*
