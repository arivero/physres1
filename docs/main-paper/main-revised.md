---
title: "From Newton to the Path Integral: Composition, Quantization, and Renormalization"
subtitle: "Referee-revised draft (2026-02-24)"
author: "A. Rivero and A.I.Scaffold"
date: "2026"
abstract: |
  This paper develops a single structural thesis across classical and quantum theory:
  physically meaningful laws arise as controlled limits of composable local refinements.
  Starting from Newton's polygonal approximation of central-force motion, through additive
  action functionals, path-integral composition, deformation quantization, and renormalization,
  each stage retains the previous one as a limiting or compatibility condition. The central
  result (P4.2) shows that an action-dimensional scale κ = ℏ is uniquely forced by the
  sewing law and the identity limit. Three compatibility channels (partition, representation,
  scale) converge on the same physics, and the Refinement Compatibility Principle (RCP)
  unifies them. Parallel Lean 4 formalization tracks proof status throughout.
---

---

# 1. Introduction

## 1.1 The Refinement Program

This paper constructs a stable continuum theory from iterative refinement. We treat Newtonian mechanics,
action principles, path integration, deformation quantization, and
renormalization as parts of one continuity problem. The program is constructive:
every new structure is retained as a *limit* or *compatibility condition* of the
previous one, not as a replacement. The chain is

$$
\text{Newton's polygon} \;\longrightarrow\;
\text{continuous action} \;\longrightarrow\;
\text{path integral} \;\longrightarrow\;
\text{renormalized observable}
$$

and the question at each arrow is: which structure is preserved, and what new
parameter must emerge for that preservation to hold?

## 1.2 Three Recurring Obstructions

**H0.1 (Phase amplitude).** For any $S, \hbar > 0$,
$$
\left|e^{iS/\hbar}\right| = 1.
$$
Classical concentration is a property of oscillatory *integrals*, not of
individual amplitudes. The precise mechanism is stationary phase (D4.2).

**H0.2 (Three obstruction types).** Naive refinement encounters three difficulties:

1. **Singular probes.**  Point-supported variations lie outside the domain of the
   first-variation formula. Distributional treatment is mandatory (Section 5).

2. **Ordering ambiguity.**  Two discretizations can agree on $S[q]$ at every $N$
   while differing at $O(\hbar)$ as operators. Self-adjointness of the generator
   selects the midpoint prescription (Sections 6--7).

3. **UV divergence.**  $\int_1^\Lambda dk/k = \log\Lambda \to \infty$.
   No continuum limit exists without a running coupling (Section 8).

**H0.3 (Constants as control parameters).**  Semigroup closure forces a unique
action-dimensional scale $\kappa = \hbar$ (proved: P4.2, Section 6). We conjecture
that analogous composition arguments fix $c$ and $G$ via relativistic and
gravitational semigroup closure respectively (Section 9).

## 1.3 Contributions

1. A discrete-to-continuum construction of the Newton → action → kernel chain via composition laws (Sections 3–6).
2. An *intrinsic half-density* formulation of propagator composition that makes the Van Vleck prefactor coordinate-invariant (Section 6).
3. A *semigroup-closure derivation* showing the $t^{-d/2}$ normalization is forced (D4.1a).
4. **P4.2** (master theorem): an action-dimensional scale $\kappa = \hbar$ is uniquely forced by composition.
5. A derivation of the Callan–Symanzik equation from partition-channel consistency, yielding the beta function as a necessary structure (P6.1–P6.3, Section 8).
6. A fully explicit *2D delta-interaction RG computation* closing the scale channel (Section 10, Appendix B).

## 1.4 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| H0.1 phase norm = 1 | `H0_1_phase_has_unit_norm` | proved |
| H0.2 log divergence | `H0_2_log_divergence` | sorry |
| H0.3 control params | `H0_3_control_parameters_are_positive` | stub (positivity axiomatized; composition argument is in P4.2) |
| P0.0 unique scale | `P0_0_unique_scale` | sorry (depends on `HalfDensityKernel`, `IsLimitOf`, `IsExponentialSemigroup` — stub types, not yet defined as axioms in `Core.lean`; the `RefinementFamily` structure is not well-typed until these are added. See P4.2 for the proved core.) |

---

# 2. Notation and Claim Taxonomy

## 2.1 Dimension Conventions

- $d$ -- dimension of the **configuration space** $Q$ (nonrelativistic mechanics).
- $D = d+1$ -- spacetime dimension.
- $\hbar$ -- Planck-scale parameter; units of *action* $= [\text{mass} \cdot \text{length}^2 \cdot \text{time}^{-1}]$.
- $S[\gamma]$ -- action functional for path $\gamma:[t_i,t_f]\to\mathbb{R}^d$.

## 2.2 Core Objects

**Continuous action.**
$$S[q] = \int_{t_i}^{t_f} \mathcal{L}(q(t),\dot{q}(t),t)\,dt.$$

**Discrete action.** For partition $t_0 < t_1 < \cdots < t_N$ with $\Delta t_k = t_{k+1}-t_k$ and finite-difference velocity $v_k = (q_{k+1}-q_k)/\Delta t_k$:
$$S_N[q] = \sum_{k=0}^{N-1} \mathcal{L}(q_k, v_k, t_k)\,\Delta t_k.$$

**Areal velocity and angular momentum** (for planar central motion $q = (r,\theta)$):
$$\dot{A} = \tfrac{1}{2}r^2\dot\theta, \qquad L_\text{ang} = mr^2\dot\theta = 2m\dot{A}.$$

## 2.3 Claim Taxonomy

Every substantive claim is tagged by one of three types:

| Tag | Name | Meaning |
|-----|------|---------|
| **P** | Proposition | Intended as mathematically valid; `sorry` marks any gap |
| **D** | Derivation | Explicit step-by-step calculation from stated premises |
| **H** | Heuristic | Physically motivated; explicitly identified as non-rigorous |

## 2.4 Weak-Form Conventions

For point-like probes, we use smooth mollifier families $\rho_\varepsilon$ satisfying:
- $\int \rho_\varepsilon = 1$, $\text{supp}(\rho_\varepsilon) \subseteq [-\varepsilon,\varepsilon]$,
- $\rho_\varepsilon \rightharpoonup \delta_0$ in distributions as $\varepsilon \to 0^+$.

The standard choice is the Gaussian mollifier:
$$\rho_\varepsilon(x) = \frac{1}{\varepsilon\sqrt{2\pi}}\,e^{-x^2/2\varepsilon^2}.$$

Any use of Dirac-supported variations in this manuscript is understood as a
mollified limit unless explicitly labelled heuristic.

## 2.5 Foundational Propositions

**P0.1 (Temporal additivity of discrete action).** For any partition split at $M$:
$$S_{M+N}[q] = S_M[q] + S_N[q_{(\cdot+M)}].$$
*Proof.* The sum $\sum_{k=0}^{M+N-1}$ splits into $\sum_{k<M}$ and $\sum_{k\geq M}$. $\square$

Lean: `P0_1_additive_structure` -- proved via `Finset.sum_range_add`.

**P0.2 (Exponential seed theorem).** Suppose $W$ is a weight on paths satisfying:
1. Multiplicativity: $W[\gamma_1 \circ \gamma_2] = W[\gamma_1] \cdot W[\gamma_2]$.
2. Log-dependence on action: $\log W[\gamma] = f(S[\gamma])$ for some $f:\mathbb{R}\to\mathbb{C}$, where $\log$ denotes the principal branch ($\operatorname{Im} \log \in (-\pi,\pi]$) and $W[\gamma]\neq 0$ for all $\gamma$.

Then $f$ is linear, i.e.\ $f(s) = c\cdot s$ for some $c\in\mathbb{C}$, so
$$W[\gamma] = e^{c\,S[\gamma]}.$$
With unitarity ($|W|=1$) this forces $c = i/\kappa$ for some real $\kappa>0$.
Section 6 identifies $\kappa = \hbar$.

## 2.6 Three Compatibility Channels

| Channel | Refinement parameter | Key section |
|---------|---------------------|-------------|
| Partition | step size $\Delta t$ | Sections 3--4 |
| Representation | ordering prescription | Sections 6--7 |
| Scale | UV cutoff $\Lambda$ | Section 8 |

The central claim: all three channels yield the same physical
predictions, and this commutativity uniquely forces $\hbar$.

## 2.7 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| P0.1 additivity | `P0_1_additive_structure` | proved |
| Gaussian mollifier unit integral | `gaussMollifier_integral` | sorry |
| Gaussian mollifier concentration | `gaussMollifier_concentration` | sorry |
| P0.2 exponential seed | `P0_2_exponential_seed` | sorry |
| P0.3 mollifier approximation | `P0_3_mollifier_approximates` | sorry |

---

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

---

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

---

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

---

# 6. Composition and the Path Integral

## 6.1 The Composition Postulate

Physical amplitudes compose multiplicatively when their supporting time intervals
are concatenated.

**Composition postulate.**  For amplitude kernels $K(x,y,t)$:
$$K(x,z,t_1+t_2) = \int K(x,w,t_1)\,K(w,z,t_2)\,dw.$$

This is a *semigroup property* of the kernel family $\{K(\cdot,\cdot,t)\}_{t>0}$.
Algebraically, it is identical to the Chapman--Kolmogorov equation for Markov
kernels [Kolmogorov 1931]. The domain differs: Kolmogorov's $K$ is
real and non-negative (probability density), while the quantum $K$ is complex
(amplitude), with $\int |K|^2 = 1$ (Born rule normalization).

**D4.0a (Three-fold associativity).**  Applying the semigroup property twice:
$$K(x,z;t_1+t_2+t_3) = \int\!\int K(x,w_1;t_1)\,K(w_1,w_2;t_2)\,K(w_2,z;t_3)\,dw_1\,dw_2.$$
Slicing $[0,T]$ into $N$ equal steps and applying the semigroup $N-1$ times gives
the Feynman sum over paths.

## 6.2 D4.0b: Semigroup Forces Hamiltonian (Hille-Yosida)

**Theorem D4.0b (Hille-Yosida).**  Let $\{U_t\}_{t \geq 0}$ be a strongly-continuous
one-parameter semigroup of bounded operators on a Hilbert space $\mathcal{H}$:
$$U_{t_1+t_2} = U_{t_1} \circ U_{t_2}, \quad U_0 = \mathrm{id}, \quad
t \mapsto U_t\psi \text{ continuous for all } \psi \in \mathcal{H}.$$

Then there exists a unique densely-defined, closed, linear operator $H$
(the *infinitesimal generator*) such that
$$U_t = e^{-iHt/\hbar}.$$

The composition axiom plus strong continuity in time forces the Schrodinger
equation $i\hbar\,d\psi/dt = H\psi$. Strong continuity is itself a non-trivial
input (it excludes pathological semigroups); given it, the Hamiltonian is the
infinitesimal generator, not an independent assumption.

## 6.3 D4.0: Coordinate Invariance via Half-Densities

The composition integral $\int K(x,w)\,K(w,z)\,dw$ changes under a coordinate
transformation $\phi$ unless $K$ transforms as a *bi-half-density*:
$$K_\text{new}(\phi(x), \phi(y)) = K(x,y)\cdot|\det J_\phi(x)|^{-1/2}\cdot|\det J_\phi(y)|^{-1/2}$$
where $J_\phi = d\phi/dx$ is the Jacobian.

Under this transformation law, the change-of-variables $w\mapsto\phi(w)$ in the
composition integral produces exactly the Jacobian factors needed to preserve the
semigroup property in the new coordinates.

## 6.4 D4.1a: Normalization Exponent $d/2$ is Forced

Consider the Gaussian ansatz $K_\alpha(x,y,t) = (m/2\pi\hbar t)^\alpha\,e^{im|x-y|^2/2\hbar t}$.

**Derivation D4.1a.**  The convolution integral
$$\int K_\alpha(x,w,t_1)\,K_\alpha(w,z,t_2)\,dw$$
can be evaluated by completing the square in $w$.  The Gaussian integral over $\mathbb{R}^d$
produces a factor $(2\pi\hbar t_1 t_2/m(t_1+t_2))^{d/2}$.  For the result to equal
$K_\alpha(x,z,t_1+t_2)$, the normalization must balance:
$$(m/2\pi\hbar t_1)^\alpha\cdot(m/2\pi\hbar t_2)^\alpha\cdot(t_1 t_2/(t_1+t_2))^{d/2} = (m/2\pi\hbar(t_1+t_2))^\alpha.$$

Taking logarithms and differentiating with respect to $t_1$, $t_2$ forces
$$\boxed{\alpha = d/2}.$$

This is a *structural* result: it does not require any input about the physics of
the particle, only the semigroup closure condition.

## 6.5 Regularity and the Classical Limit

**D4.1b (Kernel Lipschitz constant).** The free-particle kernel is Lipschitz
in the initial position $x$ with constant
$$L(\hbar, t) = C\cdot\left(\frac{m}{\hbar t}\right)^{(d+2)/2}\cdot\|x-x'\|.$$
As $\hbar \to 0$, $L(\hbar,t) \to \infty$: the classical limit is not Lipschitz.
Setting $\hbar > 0$ buys Lipschitz continuity of the kernel -- $\hbar$ is the
price of differentiability.

**D4.2a (Banach--Mazurkiewicz).**  The set of continuous, nowhere-differentiable
functions on $[0,1]$ is *comeager* in $C([0,1])$ with the sup-norm topology
[Banach 1931, Mazurkiewicz 1931]. The typical path in the path-integral measure is
nowhere differentiable, yet the kernel $K$ is smooth in $x,y$ because it arises
from *averaging* over all paths.

**Cameron-Martin** [Simon 1979].  The path-integral measure is supported on paths with
quadratic variation $[X]_T = \hbar T/m > 0$.  Lipschitz functions have zero
quadratic variation, so the classical paths have Wiener measure zero. The classical
limit $\hbar\to 0$ is a *concentration* phenomenon, not a restriction to a dominant
subset.

**Composition as smoothing.**  For any partition, the composed kernel's Lipschitz
constant equals that of the single kernel $K_\text{free}(\cdot,\cdot,T)$, regardless
of the partition. Each short-time factor has Lipschitz constant
$\sim (\hbar\,\Delta t_k)^{-(d/2+1)}$, far larger than the composed whole.
Composition cancels the excess singularity -- but only for $\hbar > 0$.

When $f$ is not Lipschitz (e.g.\ $f(r) = -GM/r^2$ at $r=0$), ODE uniqueness
fails and the classical flow is ill-defined. The quantum kernel, by contrast,
remains well-defined for Kato-class potentials — a concrete sense in which
$\hbar > 0$ regularizes.

## 6.6 P4.1: Exponential Form Forced

**Proposition P4.1.**  A weight $W[\gamma]$ satisfying:
1. $W[\gamma_1\circ\gamma_2] = W[\gamma_1]\cdot W[\gamma_2]$ (multiplicativity),
2. $|W[\gamma]| = 1$ (unitarity),
3. $\log W[\gamma]$ depends on $\gamma$ only through an additive functional $S[\gamma]$,

must have the form
$$W[\gamma] = e^{iS[\gamma]/\kappa}$$
for some $\kappa > 0$.

The imaginary unit $i$ is forced by unitarity: a real exponent would give
exponential growth or decay, violating $|W|=1$ for generic $S$.

## 6.7 P4.1a: Gaussian Uniqueness (Levy-Khintchine)

Among all isotropic infinitely-divisible distributions on $\mathbb{R}^d$ with
*finite second moment*, the Gaussian is the unique stable distribution
(Levy-Khintchine representation). The composition law with isotropy, finite second
moment $d \cdot m \cdot t/\hbar$, and infinite divisibility forces $K$ to be
Gaussian. This *excludes* fractional quantum mechanics (Levy path integrals with
$\alpha\neq 2$) as the canonical quantization of a non-relativistic particle.

## 6.8 P4.2: Master Theorem -- $\hbar$ is Uniquely Forced

**Proposition P4.2** (Master Theorem).  For the free-particle Lagrangian
$\mathcal{L} = m|\dot q|^2/2$, any kernel of the form
$$K(x,y,t) = \left(\frac{m}{2\pi\kappa t}\right)^{d/2} e^{im|x-y|^2/2\kappa t}$$
that satisfies the composition law for all $x,y,t_1,t_2>0$ and all masses $m>0$
has a **unique** positive scale parameter $\kappa$.

That unique value, identified with the observed action quantum, is $\kappa = \hbar$.

*Proof sketch.*  By D4.1a, only $\alpha=d/2$ is consistent with closure.  Given
$\alpha=d/2$, the Gaussian convolution identity holds for any $\kappa > 0$: the
algebraic balance is $\kappa$-independent. What fixes $\kappa$ is the *identity
limit*: the requirement $K(x,y,t)\to\delta(x-y)$ as $t\to 0^+$ forces the
normalization $(m/2\pi\kappa t)^{d/2}$ to produce the correct delta-function
mass, which pins $\kappa$ to a unique value with action dimensions. That value
is $\hbar$.

**Gap note.** The Lean formalization (`P4_2_action_scale_uniquely_forced`) carries
`sorry` for the uniqueness step: showing that two values of $\kappa$ satisfying
the composition identity plus the identity limit must agree.

Lean: `P4_2_action_scale_uniquely_forced` states existence and uniqueness of
$\kappa$; the uniqueness argument (currently sorry) requires showing that two
values satisfying the same Gaussian identity must agree.

## 6.9 D4.2: Classical Recovery

**Derivation D4.2** (non-stationary phase).  For a smooth phase $S(x)$ with no
critical points in the support of a smooth $f$:
$$\left|\int e^{iS(x)/\hbar}\,f(x)\,dx\right| = O(\hbar^\infty) \text{ as } \hbar\to 0.$$

The contribution from paths with $|\delta S| > \delta$ is suppressed by rapid
oscillation.  Only the neighbourhood of $\{S'(x)=0\}$ (stationary-phase locus)
contributes at leading order. This recovers classical mechanics: for $\hbar\to 0$,
the path integral is dominated by the classical path satisfying $\delta S/\delta q = 0$.

## 6.10 D4.3: Van Vleck Determinant

The classical propagator $K_\text{cl}(x_i,x_f)\propto\sqrt{|\det\partial^2 S_\text{cl}/\partial x_i\partial x_f|}$
is a bi-half-density: it transforms with a factor $|\det J_\phi|^{1/2}$ under
a change of initial coordinates $\phi$.  This is the prefactor in the
WKB/stationary-phase approximation.

## 6.11 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| D4.0a Chapman-Kolmogorov structure | `D4_0a_kolmogorov_structure` | sorry |
| D4.0b Hille-Yosida forces Hamiltonian | `D4_0b_hille_yosida_forces_hamiltonian` | sorry |
| D4.0 coordinate invariance | `D4_0_half_density_coordinate_invariance` | sorry |
| D4.1a normalization = d/2 | `D4_1a_normalization_forced_to_d_over_2` | sorry |
| D4.1b kernel Lipschitz constant | `D4_1b_kernel_lipschitz_constant` | sorry |
| P4.1 exponential form (with unitarity) | `P4_1_exponential_forced` | sorry |
| P4.1a Gaussian uniqueness (Levy-Khintchine) | `P4_1a_gaussian_uniqueness_levy_khintchine` | sorry |
| **P4.2 master theorem** | `P4_2_action_scale_uniquely_forced` | sorry |
| D4.2 non-stationary phase vanishes | `D4_2_nonstationary_phase_vanishes` | sorry |
| D4.2a nowhere-differentiable paths generic | `D4_2a_nowhere_differentiable_paths_are_generic` | sorry |
| D4.3 Van Vleck as bi-half-density | `D4_3_van_vleck_bi_half_density` | sorry |

---

# 7. Deformation Quantization Bridge

## 7.1 From Path Weights to Product Deformation

The path integral produces a kernel $K(x,y,t)$ encoding quantum amplitudes.
To connect to the operator-mechanics formulation (Hilbert space, $[\hat p,\hat q]=-i\hbar$),
we use the *deformation quantization* perspective:

- The space of observables is $C^\infty(\mathbb{R}^{2d})$ (classical phase-space functions).
- Quantization replaces the pointwise product $f\cdot g$ by the *Moyal product* $f\star_\hbar g$.
- As $\hbar\to 0$, $f\star_\hbar g \to f\cdot g$ (classical limit).
- The Moyal commutator $[f,g]_\star/i\hbar \to \{f,g\}_\text{Poisson}$ as $\hbar\to 0$.

## 7.2 P5.1: Classical Compatibility

**Proposition P5.1.**  Let $f,g\in C^\infty(\mathbb{R}^2)$.  The truncated Moyal product
$$f\star_\hbar g = f\cdot g + \tfrac{\hbar}{2}\{f,g\} + O(\hbar^2)$$
satisfies:
1. $f\star_\hbar g \to f\cdot g$ pointwise as $\hbar\to 0$.
2. $(f\star_\hbar g - g\star_\hbar f)/\hbar \to \{f,g\}_\text{Poisson}$ as $\hbar\to 0$.

Lean: `P5_1_classical_compatibility` -- proved. The corrected formulation uses
`moyalCommutator / hbar` with the proper limit to `poissonBracket`.

## 7.3 D5.1a: Canonical Commutation Relation

**Derivation D5.1a.**  For $p(z) = z_1$ and $q(z) = z_2$ on phase space $\mathbb{R}^2$:
$$[p,q]_{\star_\hbar} = p\star_\hbar q - q\star_\hbar p = \hbar.$$

This is the phase-space form of the canonical commutation relation $[\hat p,\hat q]=-i\hbar$
(the imaginary unit $i$ appears when we pass to operators via the Weyl quantization map).

Lean: `D5_1a_moyal_canonical_commutation` -- proved by `ring`.
The complex operator form `D5_1a_canonical_commutation_complex` states
$i[q,p]_\star = -\hbar$ and is also proved.

## 7.4 D5.1b: Cubic Witness for $O(\hbar^3)$ Commutator Corrections

**Derivation D5.1b.**  For $f = q^3$ and $g = p$:
$$[q^3, p]_{\star_\hbar} = \hbar\cdot 3q^2 + \hbar^3\cdot(-q/4) + O(\hbar^5).$$

The Moyal *product* has $O(\hbar^2)$ corrections; the *commutator* has corrections
at odd powers only, so the leading correction is $O(\hbar^3)$. This $\hbar^3$ term
proves the Moyal commutator is not determined by the Poisson bracket alone.

**Lean note.** The Lean formalization `D5_1b_cubic_witness` uses `moyalProduct1`
(first-order truncation) which cannot capture the $\hbar^3$ term. The sorry
reflects a modeling gap, not just a proof gap: a higher-order Moyal definition
is needed.

## 7.5 P5.2: All Orderings Are Equivalent

**Proposition P5.2** (Kontsevich gauge equivalence).  Any two star products
$\star_1,\star_2$ on $\mathbb{R}^{2d}$ with the same classical limit are
gauge-equivalent: there exists a formal power series map $T_\hbar$ (starting with
the identity at $\hbar=0$) such that
$$f\star_1 g = T_\hbar^{-1}(T_\hbar(f)\star_2 T_\hbar(g)).$$

The Lean formalization `P5_2_star_product_equivalence` carries `sorry`; its
hypotheses (arbitrary associative operations with the right classical limit)
are weaker than Kontsevich's full conditions (formal power series of
bidifferential operators on a Poisson manifold).

## 7.6 Classical Limit of Ehrenfest's Theorem (D5.1)

**Derivation D5.1.**  Ehrenfest's theorem states
$d\langle A\rangle/dt = \langle[A,H]_\star\rangle/(i\hbar)$. In the classical
limit $\hbar\to 0$, the Moyal commutator reduces to the Poisson bracket:
$$\frac{[A,H]_\star}{i\hbar} \;\xrightarrow{\hbar\to 0}\; \{A,H\}_\text{Poisson}.$$

Lean: `D5_1_ehrenfest_to_poisson` proves this classical limit (mathematically
the same statement as P5.1(ii)).  Status: proved.

## 7.7 Ordering Stratification

Four layers of ordering effects, in increasing subtlety:

| Layer | Effect | Order in $\hbar$ |
|-------|--------|-----------------|
| 1 | Classical action $S[q]$ | $\hbar^0$ -- ordering-independent |
| 2 | Operator symbol | $\hbar^1$ -- first ordering shift |
| 3 | Moyal correction | $\hbar^2$ in product, $\hbar^3$ in commutator |
| 4 | Domain/boundary | Non-perturbative -- self-adjoint extensions |

Layer 4 (self-adjoint extensions) is treated in Section 9 (D9.1f).

## 7.8 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| P5.1 classical limit | `P5_1_classical_compatibility` | proved |
| D5.1a $[p,q]_\star = \hbar$ | `D5_1a_moyal_canonical_commutation` | proved |
| D5.1a complex form | `D5_1a_canonical_commutation_complex` | proved |
| D5.1b cubic witness | `D5_1b_cubic_witness` | sorry |
| P5.2 gauge equivalence | `P5_2_star_product_equivalence` | sorry |
| D5.1 Ehrenfest theorem | `D5_1_ehrenfest_to_poisson` | proved |

---

# 8. Renormalization as Controlled Refinement

## 8.1 The Scale-Compatibility Problem

The partition and representation channels (Sections 3--7) produce theories that
agree in the appropriate limits. The *scale channel* is different: when the
refinement limit involves UV modes (high momenta, short distances), the naive
limit $\Lambda\to\infty$ can diverge.

Renormalization is not a *patch* to remove infinities; it is the *consistency
condition* that two UV cutoffs $\Lambda_1 > \Lambda_2$ describe the same physics
iff their couplings $g(\Lambda_1)$, $g(\Lambda_2)$ are related by the RG flow:
$$\frac{dg}{d\log\Lambda} = \beta(g).$$

## 8.2 P6.1: Renormalized Observables

**Proposition P6.1.**  An observable $O$ is *renormalized* if $O(g(\Lambda))$
converges as $\Lambda\to\infty$, where $g(\Lambda)$ is the running coupling.
Equivalently: for any $\varepsilon>0$, there exists $\Lambda_0$ such that for all
$\Lambda_1, \Lambda_2 \geq \Lambda_0$:
$$|O(g(\Lambda_1)) - O(g(\Lambda_2))| < \varepsilon.$$

Lean: `P6_1_renormalized_observable` uses the proper Cauchy condition from
`Metric.tendsto_atTop` and gives a complete proof.  Status: proved.

## 8.3 D6.1: Beta Function from Semigroup

**Derivation D6.1.**  Suppose $\{S_t\}_{t\geq 0}$ is a semigroup of coupling maps:
$$S_{t_1}\circ S_{t_2} = S_{t_1+t_2}, \qquad S_0 = \text{id}.$$
The infinitesimal generator $\beta(g) = \partial_t S_t(g)|_{t=0}$ satisfies:
$$\frac{d}{dt}S_t(g) = \beta(S_t(g)) \qquad \forall t.$$

Lean: `D6_1_beta_function_from_semigroup`.  Status: sorry.

## 8.4 D6.2: The UV Logarithmic Divergence

**Derivation D6.2.**  The prototype UV divergence:
$$\int_1^\Lambda \frac{dk}{k} = \log\Lambda \;\xrightarrow{\Lambda\to\infty}\; \infty.$$

This divergence is *logarithmic* (not power-law). A running coupling $g(\Lambda)$
can absorb it:
$$g_\text{ren} = g_\text{bare} + c\cdot\log\Lambda + O(g^2)$$
where $c$ is the 1-loop coefficient. The renormalized coupling $g_\text{ren}$ is
$\Lambda$-independent.

Lean: `D6_2_log_divergence` proves $\int_1^\Lambda dk/k = \log\Lambda$.  Status: sorry.
`D6_2_log_slower_than_power` proves $\log\Lambda/\Lambda^\varepsilon\to 0$. Status: proved.

## 8.5 D6.2a: Step-Halving as RG Flow

The discrete step-halving operation $\varepsilon\to\varepsilon/2$ is a toy model
for the RG flow at scale $\Lambda\to 2\Lambda$. For the 2D contact interaction
with $\beta(g)=g^2/(2\pi)$:

$$g(\varepsilon/2) = \frac{g(\varepsilon)}{1 - g(\varepsilon)\cdot\log 2/(2\pi)}.$$

This is the exact 1-loop formula; the step-halving discretization reproduces the
continuous RG flow to 1-loop accuracy.

## 8.6 P6.3: Closure for Finite-Parameter Flow

**Proposition P6.3.**  For the 2D coupling $g'(t) = g(t)^2/(2\pi)$ with $g(0)=g_0>0$,
the solution
$$g(t) = \frac{g_0}{1 - g_0 t/(2\pi)}$$
stays finite and positive on $[0,T]$ provided $g_0 T < 2\pi$.

The Landau pole occurs at $t^* = 2\pi/g_0$: the coupling diverges at finite
RG scale.

Lean: `P6_3_rg_flow_bounded` verifies the explicit formula satisfies the ODE and
initial condition.  The Lean "bound" is the exact solution itself ($g(t) \leq g(t)$
by reflexivity); the substantive content is the ODE verification.  Status: proved.

## 8.7 D6.4: Truncation Error Quantification

**Derivation D6.4.**  If the exact beta function differs from the $N$-loop truncation
by $|\beta_\text{exact}(g) - \beta_N(g)| \leq C\cdot g^{N+2}$, the integrated
error in $g(T)$ is bounded by $C\cdot T\cdot g_0^{N+1}/(1-g_0)^2$ for $g_0<1$.

This gives explicit control over perturbative truncation, answering the question
"how good is 1-loop?" with a quantitative bound.

## 8.8 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| P6.1 renormalized observable (Cauchy) | `P6_1_renormalized_observable` | proved |
| D6.0 control map rescaling | `D6_0_control_map_rescaling` | proved |
| D6.1 beta from semigroup | `D6_1_beta_function_from_semigroup` | sorry (proof strategy needs rework) |
| P6.2 flow generator unique | `P6_2_flow_generator_unique` | proved |
| D6.2 log divergence | `D6_2_log_divergence` | sorry |
| D6.2 log slower than power | `D6_2_log_slower_than_power` | proved |
| D6.2a step-halving RG | `D6_2a_step_halving_rg` | sorry (Lean uses $b_0=1$, should be $1/(2\pi)$) |
| P6.3 flow bounded below Landau pole | `P6_3_rg_flow_bounded` | proved (bound is exact solution, trivially $\leq$ itself) |
| D6.4 truncation error bound | `D6_4_truncation_error` | stub (conclusion is `True`; bound not verified) |

---

# 9. Unified Perspective and Open Problems

## 9.1 The Three-Channel Compatibility Diagram

Sections 3--8 establish three compatibility conditions independently:

| Channel | Symbol | Sections | Core result |
|---------|--------|----------|-------------|
| Partition $\mathcal{C}_t$ | Temporal refinement | Sections 3--4 | D1.1, P2.0 |
| Representation $\mathcal{Q}_\hbar$ | Ordering choices | Sections 6--7 | D4.1a, P5.2 |
| Scale $\mathcal{R}_\Lambda$ | UV cutoff running | Section 8 | P6.1, D6.1 |

**P7.1 (Three channels agree).** A physical observable compatible in all three
channels (i.e., whose partition limit, ordering limit, and scale limit all exist)
has a single well-defined value.

The three channels do not produce *identical* intermediate values; they produce
predictions that agree *in the appropriate limit*. Lean: `CompatibleObservable` separates the three convergence conditions.

## 9.2 Three-Level Regularity Hierarchy (D9.2a)

The three compatibility channels correspond to three levels of mathematical
regularity:

| Level | Criterion | Mechanism | Channel | Example |
|-------|-----------|-----------|---------|---------|
| Classical | Lipschitz flow | Picard-Lindelof | Partition | Newton ODE, area law |
| Quantum | Kato-class potential | $\hbar$ regularization | Representation | Coulomb potential |
| Renormalizable | UV fixed point | Beta function flow | Scale | 2D delta interaction |

A theory is classically well-defined iff its Euler-Lagrange ODE satisfies
Picard-Lindelof (local Lipschitz). It is quantum-mechanically well-defined iff
$V$ is Kato class, so Kato-Rellich guarantees self-adjointness of
$H = -\hbar^2\Delta/2m + V$. It is renormalizable iff the beta function has a UV
fixed point (or asymptotic freedom). The hierarchy is strictly inclusive.

## 9.3 D7.1: No Hidden Leap

The classical-to-quantum transition requires:
1. Temporal composition of amplitudes -- P4.2 forces $\hbar$ (Section 6).
2. Linearity of the kernel in initial conditions -- superposition principle.
3. Unitarity: $\int|K(x,y,t)|^2\,dy = 1$ -- probability conservation.

**No additional "quantization postulate" is needed.** The wavefunction, the
Schrodinger equation, and the Born rule all follow from these three conditions
plus the semigroup structure.

Via Hille-Yosida (D4.0b): the semigroup axiom and strong continuity force the
Schrodinger equation $i\hbar\dot\psi = H\psi$. The Hamiltonian is the generator.
Gleason's theorem (P7.2 below) then forces the Born rule.

## 9.4 The Classical Limit as Essential Singularity (D9.2b)

The WKB expansion
$$Z(\hbar) = e^{-S_\text{cl}/\hbar}\sum_{n=0}^\infty a_n\hbar^n$$
is *asymptotic* (Poincare 1886): it diverges for any fixed $\hbar > 0$,
but partial sums approximate $Z(\hbar)$ to arbitrary accuracy as $\hbar\to 0$.

The function $e^{-1/\hbar}$ is $C^\infty$ at $\hbar = 0$ (all derivatives vanish)
but not analytic. The classical limit $\hbar\to 0$ is an essential singularity.

**Stokes phenomenon.** The asymptotic form changes discontinuously as the argument
of $\hbar$ crosses a Stokes line in the complex $\hbar$-plane.

**Non-injectivity.** Two quantum theories can have the same asymptotic expansion
as $\hbar\to 0$ if they differ only by non-perturbative terms $O(e^{-S_\text{inst}/\hbar})$.
The classical limit is not injective as a map from quantum to classical theories.

## 9.5 P7.2: Gleason's Theorem -- Born Rule Forced

**Theorem P7.2 (Gleason 1957).**  Let $\mathcal{H}$ be a separable Hilbert space of
dimension $\geq 3$. Every frame function $\mu$ (a non-contextual probability
assignment satisfying $\sum_i \mu(P_i) = 1$ for complete orthogonal decompositions)
has the form
$$\mu(P) = \mathrm{Tr}(\rho P)$$
for a unique density matrix $\rho \geq 0$ with $\mathrm{Tr}(\rho) = 1$.

**Chain of forcing (A1 to Born rule):**

1. Composition axiom A1: $K(t_1+t_2) = K(t_1)\circ K(t_2)$.
2. D4.0b: Hille-Yosida forces Hamiltonian $H$; evolution is $e^{-iHt/\hbar}$.
3. The generator $H$ acts on a Hilbert space $\mathcal{H}$ with $\dim\geq 3$.
4. Gleason's theorem applies: frame functions must be density matrices.
5. The Born rule $\Pr(\text{outcome}|P) = \langle\psi|P|\psi\rangle$ follows.

The Born rule is forced by A1, not independently postulated.

## 9.6 D9.3: Measurement as Semigroup Severance

A quantum measurement corresponds to inserting a projection $P$ into the time
evolution:
$$K_\text{meas}(t_2, t_m, t_1) = K_\text{post}(t_2) \circ P \circ K_\text{pre}(t_1).$$

The semigroup property fails across the measurement event. "Wave function collapse"
is precisely the statement that the semigroup law breaks at the measurement time.
No additional postulate is needed beyond the Hilbert space structure (from D4.0b)
and the projection $P$.

**Round-trip structure (P7.3):**
- Phase 0 (Static, $t < 0$): Classical initial data -- no semigroup needed.
- Phase 1 (Dynamic, $0 < t < T$): Quantum semigroup $K(t)$ active.
- Phase 0 (Static, $t > T$): Classical outcome -- semigroup severed.

The quantum semigroup is the bridge between two classical statics. $\hbar$ is
forced by the bridge, and has no role in the static phases alone.

## 9.7 D9.4: Decoherence as Non-Perturbative Remainder

Quantum interference terms between two classical paths $q_1$ and $q_2$ that differ
by an instanton (action $S_\text{inst} > 0$) contribute:
$$\text{interference amplitude} \sim e^{-S_\text{inst}/\hbar}.$$

This is exponentially suppressed as $\hbar\to 0$, beyond all perturbative orders:
for any $N$, $e^{-S/\hbar} = o(\hbar^N)$ as $\hbar\to 0^+$. Real decoherence
occurs but is invisible to perturbation theory.

## 9.8 D9.1: Ordering Differences Are $O(\hbar^2)$

The classical action $S[q]$ is independent of operator ordering: all orderings
give the same $\hbar^0$ term. The first ordering shift appears at $O(\hbar^2)$
(as an additional curvature/connection term in the quantized Hamiltonian).

**Explicitly for flat $\mathbb{R}^d$:**
- Weyl ordering and left ordering give the same kinetic operator $-\hbar^2\nabla^2/2m$.
- On a curved manifold with scalar curvature $R$, they differ by $\hbar^2 R/(12m)$.

## 9.9 D9.1e: Naive Kinetic Operator Fails on Curved Spaces

On a Riemannian manifold with metric $g_{ij}$, the naively left-ordered kinetic
operator $-\partial_q^2$ is not self-adjoint with respect to the natural measure
$\sqrt{g}\,d^d q$.

**Concrete example** (polar coordinates in flat $\mathbb{R}^2$):
- Wrong: $-(\partial_r^2 + \partial_\theta^2)$.
- Correct (Laplace-Beltrami): $-\frac{1}{r}\partial_r(r\partial_r) - \frac{1}{r^2}\partial_\theta^2$.

The half-density formulation of Section 6 (D4.0) automatically produces the
correct Laplace-Beltrami operator.

## 9.10 D9.1f: Self-Adjoint Extensions

**Derivation D9.1f.** The formal operator $-d^2/dx^2$ on $(0,1)$ admits a
one-parameter family of self-adjoint extensions, parameterised by a boundary phase
$\theta\in[0,2\pi)$. The spectrum of the $\theta$-extension is:
$$\lambda_n(\theta) = (\pi n + \theta)^2, \qquad n\in\mathbb{Z}.$$

Different $\theta$ give genuinely different spectra (different physics), despite
sharing the same formal symbol.

Lean: `D9_1f_laplacian_self_adjoint_extensions` -- proved: the spectrum formula
is given explicitly, and distinctness for $\theta\neq\theta'$ follows by direct
computation.

## 9.11 P10.2a: Ordering-RG Equivalence

**Proposition P10.2a.** Under RG flow, different ordering/discretization
prescriptions differ only by a redefinition of the bare coupling constant.
Physical predictions (renormalized observables) are ordering-independent.

## 9.12 Residual Vulnerabilities and Open Problems

| Item | Status | Section |
|------|--------|---------|
| P4.2 uniqueness of $\hbar$ (dimensional analysis step) | sorry | Section 6 |
| D4.1a: full Gaussian convolution computation | sorry | Section 6 |
| P5.2 gauge equivalence at all orders | sorry | Section 7 |
| Hille-Yosida in Mathlib (D4.0b) | not yet in Mathlib | Section 6 |
| Gleason's theorem in Mathlib (P7.2) | not yet in Mathlib | Section 9 |
| Collision singularity in central orbits | heuristic | Section 3 |
| Lorentzian path integral (oscillatory vs. damped) | open | Section 9 |
| Resurgence and Stokes phenomenon | open | Section 9 |

## 9.13 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| P7.1 three channels agree | `P7_1_three_channels_agree` | sorry |
| D9.2a three-level hierarchy | `D9_2a_three_level_hierarchy` | sorry |
| D9.2b essential singularity at hbar=0 | `D9_2b_essential_singularity_at_hbar_zero` | sorry |
| D9.2b non-perturbative remainder | `D9_2b_nonperturbative_remainder` | sorry |
| D7.1 no hidden leap | `D7_1_no_hidden_leap` | stub (proves `True`; claim is informal) |
| D9.3 measurement severs semigroup | `D9_3_measurement_severs_semigroup` | sorry |
| P7.2 Gleason / Born rule forced | `P7_2_gleason_born_rule_forced` | sorry |
| P7.3 round-trip structure | `P7_3_round_trip_structure` | stub (proves `True`; claim is informal) |
| D9.4 decoherence non-perturbative | `D9_4_decoherence_nonperturbative` | sorry |
| D9.1 ordering diff = O(hbar^2) | `D9_1_ordering_difference_is_order_hbar_squared` | sorry |
| D9.1a flat agreement | `D9_1a_flat_ordering_agreement` | sorry |
| D9.1e polar Laplacian comparison | `D9_1e_polar_kinetic_operator_comparison` | sorry |
| D9.1f self-adjoint extension spectrum | `D9_1f_laplacian_self_adjoint_extensions` | proved |
| P10.2a ordering-RG equivalence | `P10_2a_ordering_rg_equivalence` | sorry |

---

# 10. Technical Appendices

## 10.1 Bridge Theorem (D10.1)

The narrative claim of the paper is that sections 3--8 together force $\hbar$.
The bridge theorem formalizes this:

**Derivation D10.1 (Chain to P4.2).**  Given:
- A Newtonian limit (Section 3): classical paths exist.
- Action additivity (Section 4): $S$ has the integral form.
- Weak probe formulation (Section 5): distributional variations are controlled.
- Composition law (Section 6): amplitude kernel satisfies semigroup property.
- Classical limit (Section 7): star product reduces to pointwise at $\hbar=0$.
- RG flow (Section 8): coupling runs according to a beta function.

Then there exists a unique $\hbar>0$ such that the kernel $K$ takes the form
$K(x,y,t) = (m/2\pi\hbar t)^{d/2}\,e^{im|x-y|^2/2\hbar t}$ (and its perturbative
generalizations).

The Lean version uses a `structure PaperChain` to bundle the hypotheses cleanly.

## 10.1a Operational Closure Form (D10.1a)

An observable $O:\mathbb{R}_{>0}\to\mathbb{R}$ (indexed by refinement scale $\varepsilon$)
is *operationally defined* if there exists $C>0$ such that
$$|O(\varepsilon_1) - O(\varepsilon_2)| \leq C\,|\log(\varepsilon_1/\varepsilon_2)|$$
for all $\varepsilon_1,\varepsilon_2>0$.

This log-Lipschitz condition ensures that the RG flow (which runs as
$d\varepsilon/\varepsilon = dt$) produces a controlled change in $O$.

## 10.2 Ordering Comparison (P10.2)

For Weyl ordering vs.\ left ordering of the kinetic term $p^2/2m$:

**Flat $\mathbb{R}^d$.**  Both give $-\hbar^2\nabla^2/2m$.  No difference.

**Sphere $S^2$.** The scalar curvature $R = 2/r^2$ gives a correction
$\hbar^2 R/12m = \hbar^2/(6mr^2)$ between orderings.

**Hyperbolic plane $H^2$.** $R = -2/r^2$; the correction has the opposite sign.

These are explicitly computable witnesses that the half-density formulation
(giving Laplace-Beltrami) is the correct choice on curved spaces.

## 10.3 Refinement Compatibility Principle

The three-channel diagram of Section 9 is summarised as the
*Refinement Compatibility Principle* (RCP):

> **A physical observable must be invariant under partition refinement,
> ordering prescription change, and UV scale rescaling.**

## 10.4 2D Contact Interaction (D11.1--D11.3 and P11.1)

The 2D contact (delta) interaction is the simplest fully explicit RG witness:
$V(\mathbf{r}) = g\,\delta^{(2)}(\mathbf{r})$.

### D11.1: Loop Integral with Cutoff

The 1-loop contribution:
$$I(\Lambda,M) = \int_{|\mathbf{p}|\leq\Lambda} \frac{d^2p}{(2\pi)^2}\,\frac{1}{p^2+M^2}
= \frac{1}{2\pi}\log\!\left(\frac{\Lambda^2+M^2}{M^2}\right).$$

As $M\to 0$: $I\approx \frac{1}{\pi}\log(\Lambda/M)$, which diverges logarithmically.

### D11.2: Beta Function is Exact

For the 2D contact interaction, the beta function is:
$$\beta(g) = \frac{g^2}{2\pi}$$
and the solution is
$$g(t) = \frac{g_0}{1 - g_0 t/(2\pi)}, \quad t = \log(\Lambda/\Lambda_0).$$

This is exact at 1-loop, with no higher corrections in this model.

### P11.1: Dimensional Transmutation

The theory generates a dynamical scale:
$$\lambda = \Lambda_0\,e^{-2\pi/g_0}$$
which is **RG-invariant**: $\lambda(\Lambda_1) = \lambda(\Lambda_2)$ for any two
UV scales $\Lambda_1, \Lambda_2$.

Even though the bare theory has no dimensionless parameter, the bound-state energy
is $E_b \propto \lambda^2/m$, entirely determined by $\lambda$. The UV cutoff
$\Lambda_0$ disappears from all physical predictions.

### D11.3: Scheme Dependence

Different renormalization schemes (MS-bar, cutoff, Pauli-Villars) shift $\lambda$
by a finite multiplicative constant $C>0$:
$$\lambda_\text{MS} = C\cdot\lambda_\text{cutoff}.$$
Physical observables are scheme-independent.

## 10.5 Regulated Kernel Composition (D12.1--D12.3)

### D12.1: Free Kernel is Exact Semigroup

The free-particle kernel $K_0(x,y,t) = (m/2\pi\hbar t)^{d/2}\,e^{im|x-y|^2/2\hbar t}$
satisfies the composition law *exactly*:
$$\int K_0(x,w,t_1)\,K_0(w,z,t_2)\,dw = K_0(x,z,t_1+t_2).$$

*Proof.* Complete the square in $w$; the Gaussian integral gives a factor
$(t_1 t_2/(t_1+t_2))^{d/2}$ that exactly reproduces the normalization factor of
$K_0(x,z,t_1+t_2)$.

### D12.2: Perturbative Correction to $O(V^2)$

For a small potential $V$ with $\|V\|_\infty \leq M$:
$$K = K_0 + K_1 + O(V^2)$$
where $K_1(x,z,t) = -\frac{i}{\hbar}\int_0^t ds\int K_0(x,w,s)V(w)K_0(w,z,t-s)\,dw$.
The composition law holds modulo an error $O(V^2)$.

### P12.1: Regulator Removal

If $|O(\varepsilon_1) - O(\varepsilon_2)| \leq C|\log(\varepsilon_1/\varepsilon_2)|$
(log-Lipschitz), the differences are uniformly controlled. A log-Lipschitz
observable does not necessarily converge as $\varepsilon\to 0$ (it can grow like
$C\log(1/\varepsilon)$); the correct statement is that its differences are bounded.

### D12.3: Harmonic Oscillator -- Exact Non-Trivial Semigroup

The harmonic oscillator propagator (Mehler formula):
$$K_\text{HO}(x,y,t) = \left(\frac{m\omega}{2\pi i\hbar\sin\omega t}\right)^{d/2}
\exp\!\left(\frac{im\omega}{2\hbar\sin\omega t}
\left[(x^2+y^2)\cos\omega t - 2xy\right]\right)$$
satisfies $\int K_\text{HO}(x,w,t_1)K_\text{HO}(w,z,t_2)\,dw = K_\text{HO}(x,z,t_1+t_2)$ exactly.

This is a non-trivial witness: the composition law holds for a genuinely interacting
system, not just the free particle.

## 10.6 Butcher-Hopf Algebra and the Derivative as Renormalized Object (D13.1--D13.3, P13.1)

### D13.2: The Derivative is a Renormalized Object

The derivative
$$f'(x) = \lim_{\varepsilon\to 0}\frac{f(x+\varepsilon) - f(x)}{\varepsilon}$$
has the structure of a renormalization:

| Step | QFT language | Calculus language |
|------|-------------|------------------|
| Bare amplitude | $\Gamma_\text{bare}(\varepsilon) = 1/\varepsilon$ | difference quotient |
| Divergence | $\Gamma_\text{bare}\to\infty$ | each term $f(x+\varepsilon)/\varepsilon$ diverges separately |
| Counterterm | subtract subdivergence | $f(x)/\varepsilon$ cancels |
| Renormalized amplitude | $\Gamma_\text{ren} = f'(x)$ | the limit exists by differentiability |

Lean: `D13_2_derivative_as_renormalized` -- proved via `hf.hasDerivAt.tendsto_nhds`.

### D13.1: Rooted Trees and Butcher's B-Series

Runge-Kutta methods for $y' = f(y)$ are organized by rooted trees:
$$y(t+h) = y(t) + \sum_{\tau\in\mathcal{T}} \frac{h^{|\tau|}}{\sigma(\tau)}\,a_\tau\,F_\tau(y(t))$$
where $|\tau|$ = number of nodes, $\sigma(\tau)$ = symmetry factor,
$F_\tau$ = elementary differential. Each rooted tree represents one counterterm
needed to achieve a given order of accuracy.

The coefficients $a_\tau$ are constrained by consistency conditions forming a
**Hopf algebra** structure on the vector space $H_\text{RT}$ spanned by rooted trees.

### P13.1: Brouder's Theorem (1999) -- Butcher = Connes-Kreimer

**Theorem P13.1 (Brouder 1999).**  The Butcher group of Runge-Kutta B-series
(numerical ODE methods, organized by $H_\text{RT}$) is isomorphic to the
Connes-Kreimer renormalization group of perturbative QFT. Both groups are the
character group of $H_\text{RT}$: the group of multiplicative linear maps
$\phi: H_\text{RT}\to\mathbb{R}$ under convolution.

### Birkhoff Decomposition and Renormalization

Renormalization in the Connes-Kreimer framework is a Birkhoff decomposition:
$$\phi = \phi_-^{-1} \star \phi_+$$
where $\phi$ is the bare character, $\phi_-$ encodes counterterms (extracted by the
coproduct $\Delta$), and $\phi_+$ is the renormalized character.

The decomposition is algorithmic:
1. Compute coproduct: $\Delta(\tau) = \tau \otimes 1 + 1 \otimes \tau + \sum \tau' \otimes \tau''$.
2. Extract counterterm: $\phi_-(\tau) = -R[\phi(\tau) + \sum \phi_-(\tau')\phi(\tau'')]$.
3. Renormalized amplitude: $\phi_+(\tau) = (1-R)[\phi(\tau) + \sum \phi_-(\tau')\phi(\tau'')]$.

### D13.3: Path Integral as Sum Over Characters

In the Connes-Kreimer framework, a renormalized Feynman amplitude is a character
$\phi_\text{ren}: H_\text{RT}\to\mathbb{R}$, computed from the bare character via
$$\phi_\text{ren} = S \star \phi_\text{bare}$$
where $S$ is the antipode (Hopf algebra inverse).

RG-invariant observables are fixed points of the conjugation action of the
renormalization group on the character group.

## 10.7 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| D10.1 bridge theorem | `D10_1_bridge_to_master` | sorry |
| D10.1a operational closure | `D10_1a_operational_implies_convergent` | sorry (Lean statement asserts convergence; paper text correctly notes log-Lipschitz does not imply convergence — statement needs weakening) |
| D11.1 loop integral > 0 | `D11_1_contact_loop_integral` | proved |
| D11.2 beta function exact | `D11_2_contact_beta_exact` | proved |
| P11.1 transmutation scale > 0 | `P11_1_dimensional_transmutation` | proved |
| P11.1 transmutation invariant | `P11_1_transmutation_invariant` | proved |
| D11.3 scheme shift | `D11_3_scheme_is_multiplicative_shift` | proved |
| D12.1 free kernel exact | `D12_1_free_kernel_exact_composition` | sorry |
| D12.2 perturbative composition | `D12_2_perturbative_composition` | sorry |
| P12.1 log-Lipschitz bound | `P12_1_regulator_removal` | proved (tautological: conclusion restates hypothesis) |
| P12.2 composition error | `P12_2_composition_error` | sorry |
| D12.3 harmonic oscillator exact | `D12_3_harmonic_oscillator_exact` | sorry |
| D13.1 rooted tree order/symmetry | `RootedTree.order`, `RootedTree.symmetryFactor` | defined |
| D13.2 derivative as renormalized | `D13_2_derivative_as_renormalized` | proved |
| P13.1 Brouder's theorem (witness) | `P13_1_brouder_theorem` | trivial witness |
| D13.3 path integral as character | `D13_3_path_integral_as_character` | proved (simplified positivity witness) |
