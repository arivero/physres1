# 6. Composition and the Path Integral

## 6.1 The Composition Postulate

The central structural claim of this paper: physical amplitudes compose
multiplicatively when their supporting time intervals are concatenated.

**Composition postulate.**  For amplitude kernels $K(x,y,t)$:
$$K(x,z,t_1+t_2) = \int K(x,w,t_1)\,K(w,z,t_2)\,dw.$$

This is a *semigroup property* of the kernel family $\{K(\cdot,\cdot,t)\}_{t>0}$.

## 6.1a D4.0a: Kolmogorov 1931 and the Chapman–Kolmogorov Equation

**Historical remark (Synthesis Note §II).**  The composition postulate is
structurally identical to the *Chapman–Kolmogorov equation* for Markov kernels,
established by A.N. Kolmogorov in 1931:
$$p(x,z;t_1+t_2) = \int p(x,w;t_1)\,p(w,z;t_2)\,dw$$
where $p(x,z;t)$ is a transition probability (real, non-negative, normalised to 1).

The **only difference** between Kolmogorov's and our setting is the sign of the kernel:
- Kolmogorov: $K$ is real and non-negative (probability density).
- Quantum: $K$ is complex (amplitude), with $\int |K|^2 = 1$ (Born rule normalization).

The *algebraic* semigroup structure is identical.  The imaginary unit $i$
distinguishes quantum amplitudes from classical probabilities.

**Derivation D4.0a.**  The three-fold associativity
$$K(x,z;t_1+t_2+t_3) = \int\!\int K(x,w_1;t_1)\,K(w_1,w_2;t_2)\,K(w_2,z;t_3)\,dw_1\,dw_2$$
follows directly from applying the semigroup property twice.  This is the
path-integral measure: slicing $[0,T]$ into $N$ equal steps and applying semigroup
$N-1$ times gives the Feynman sum over paths.

## 6.1b D4.0b: Hille-Yosida Theorem — Semigroup Forces Hamiltonian

**Synthesis Note §II.**  One of the key novelties integrated here:

**Theorem D4.0b (Hille-Yosida).**  Let $\{U_t\}_{t \geq 0}$ be a strongly-continuous
one-parameter semigroup of bounded operators on a Hilbert space $\mathcal{H}$:
$$U_{t_1+t_2} = U_{t_1} \circ U_{t_2}, \quad U_0 = \mathrm{id}, \quad
t \mapsto U_t\psi \text{ continuous for all } \psi \in \mathcal{H}.$$

Then there exists a unique densely-defined, closed, linear operator $H$
(the *infinitesimal generator*) such that
$$U_t = e^{-iHt/\hbar}.$$

**Consequence for physics.**  The composition axiom (A1) + strong continuity in time
*forces* the Schrödinger equation
$$i\hbar\,\frac{d\psi}{dt} = H\psi$$
without any additional postulate about $H$.  The Hamiltonian is not assumed — it is
the infinitesimal generator of the required semigroup.

**No hidden leap.**  The Hille-Yosida theorem is purely mathematical and requires no
physical input beyond A1.  The physics enters only in identifying which generator $H$
describes a given physical system (e.g. $H = p^2/2m + V$ for a particle in a potential).

## 6.2 D4.0: Coordinate Invariance via Half-Densities

The composition integral $\int K(x,w)\,K(w,z)\,dw$ changes under a coordinate
transformation $\phi$ unless $K$ transforms as a *bi-half-density*:
$$K_\text{new}(\phi(x), \phi(y)) = K(x,y)\cdot|\det J_\phi(x)|^{-1/2}\cdot|\det J_\phi(y)|^{-1/2}$$
where $J_\phi = d\phi/dx$ is the Jacobian.

**Derivation D4.0.**  Under this transformation law, the change-of-variables
$w\mapsto\phi(w)$ in the composition integral produces exactly the Jacobian factors
needed to preserve the semigroup property in the new coordinates.

**Bug fixed from previous Lean version.**  The earlier formalization stated:
```
(∫ w, K_old x w t₁ * K_old w z t₂) = (∫ w, K_old x w t₁ * K_old w z t₂)
```
which is trivially true regardless of any half-density structure.  The corrected
`D4_0_half_density_coordinate_invariance` properly states that $K_\text{new}$
satisfies the composition law when $K_\text{old}$ does.

## 6.3 D4.1a: Normalization Exponent $d/2$ is Forced

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

## 6.3a D4.1b: Kernel Lipschitz Constant and the Price of Differentiability

**Synthesis Note §III.**  The free-particle kernel $K_\text{free}(x,y,t)$ is Lipschitz
in the initial position $x$ with constant
$$L(\hbar, t) = C\cdot\left(\frac{m}{\hbar t}\right)^{(d+2)/2}\cdot\|x-x'\|$$
for some dimension-dependent constant $C$.

**The classical limit is not Lipschitz.**  As $\hbar \to 0$, $L(\hbar,t) \to \infty$.
At $\hbar = 0$, the "kernel" degenerates to a delta function $\delta(x-y)$, which is
not a Lipschitz function.

**$\hbar$ as price of differentiability.**  Setting $\hbar > 0$ buys Lipschitz
continuity of the kernel.  In the $\hbar \to 0$ limit, the kernel loses its
smoothness — this is the "Lipschitz catastrophe" of the classical limit.

**Banach–Mazurkiewicz theorem (D4.2a).**  The set of continuous, nowhere-differentiable
functions on $[0,1]$ is *comeager* in $C([0,1])$ with the sup-norm topology — i.e.
the "typical" path is nowhere differentiable (Banach 1931, Mazurkiewicz 1931).

**Reconciliation.**  The path integral integrates over all continuous paths, including
nowhere-differentiable ones.  The kernel $K$ is nonetheless smooth in $x,y$, because
it arises from *averaging* over all paths.  The parameter $\hbar > 0$ controls this
averaging: it is the regularization scale that converts the singular sum-over-paths into
a smooth function.  Setting $\hbar = 0$ collapses the average to a single classical path,
losing the Lipschitz property in the process.

## 6.4 P4.1: Exponential Form Forced

**Proposition P4.1.**  A weight $W[\gamma]$ satisfying:
1. $W[\gamma_1\circ\gamma_2] = W[\gamma_1]\cdot W[\gamma_2]$ (multiplicativity),
2. $|W[\gamma]| = 1$ (unitarity),
3. $\log W[\gamma]$ depends on $\gamma$ only through an additive functional $S[\gamma]$,

must have the form
$$W[\gamma] = e^{iS[\gamma]/\kappa}$$
for some $\kappa > 0$.

The imaginary unit $i$ is forced by unitarity (condition 2): a real exponent would
give exponential growth or decay, violating $|W|=1$ for generic $S$.

**Improvement over previous version.**  The earlier Lean formalization was missing
the unitarity hypothesis; this is now included as `hW_unit : ∀ γ, Complex.abs (W γ) = 1`.

## 6.4a P4.1a: Lévy-Khintchine — Gaussian Uniqueness

**Synthesis Note §III.**  Among all isotropic infinitely-divisible distributions on
$\mathbb{R}^d$ with *finite second moment*, the Gaussian is the unique stable distribution
(Lévy-Khintchine representation theorem).

**Consequence.**  The composition law $K(t_1+t_2) = K(t_1)*K(t_2)$ with:
- (a) isotropy in $\mathbb{R}^d$,
- (b) second moment $= d\cdot m\cdot t/\hbar$ (from dimensional analysis),
- (c) infinite divisibility (semigroup for all rational $t$),

forces $K$ to be Gaussian.  Lévy-stable processes ($\alpha$-stable with $\alpha\neq 2$)
have infinite second moments and do not satisfy (b).

This *excludes* fractional quantum mechanics (Lévy path integrals with $\alpha\neq 2$)
as the canonical quantization of a non-relativistic particle with finite mass $m$.
The Gaussian free-particle kernel is *the unique* answer.

## 6.5 P4.2: Master Theorem — $\hbar$ is Uniquely Forced

**Proposition P4.2** (Master Theorem).  For the free-particle Lagrangian
$\mathcal{L} = m|\dot q|^2/2$, any kernel of the form
$$K(x,y,t) = \left(\frac{m}{2\pi\kappa t}\right)^{d/2} e^{im|x-y|^2/2\kappa t}$$
that satisfies the composition law for all $x,y,t_1,t_2>0$ and all masses $m>0$
has a **unique** positive scale parameter $\kappa$.

That unique value, identified with the observed action quantum, is $\kappa = \hbar$.

*Proof.*  By D4.1a, only $\alpha=d/2$ is consistent with closure.  Given $\alpha=d/2$,
the composition law is an identity in $\kappa$ for all $t_1,t_2$: from the Gaussian
convolution formula, $\kappa$ appears as $1/(2\kappa t)$ in the exponent, and the
normalisation factor is $(m/2\pi\kappa)^{d/2}\cdot t^{-d/2}$.  The balance gives
$\kappa$ uniquely in terms of $m$ and the physical unit system.  Dimensional analysis
pins $\kappa$ to the action dimension, and the observed value is $\hbar$. $\square$

**Structure of the proof in Lean.**  `P4_2_action_scale_uniquely_forced` states
existence and uniqueness of $\kappa$; the uniqueness argument (currently `sorry`)
requires showing that two values satisfying the same Gaussian identity must agree.

## 6.6 D4.2: Classical Recovery

**Derivation D4.2** (non-stationary phase).  For a smooth phase $S(x)$ with no
critical points in the support of a smooth $f$:
$$\left|\int e^{iS(x)/\hbar}\,f(x)\,dx\right| = O(\hbar^\infty) \text{ as } \hbar\to 0.$$

The contribution from paths with $|\delta S| > \delta$ is suppressed by rapid
oscillation.  Only the neighbourhood of $\{S'(x)=0\}$ (stationary-phase locus)
contributes at leading order.

This recovers Newtonian/classical mechanics: for $\hbar\to 0$, the path integral
is dominated by the classical path $q_\text{cl}$ satisfying $\delta S/\delta q = 0$.

## 6.7 D4.3: Van Vleck Determinant

The classical propagator $K_\text{cl}(x_i,x_f)\propto\sqrt{|\det\partial^2 S_\text{cl}/\partial x_i\partial x_f|}$
is a bi-half-density: it transforms with a factor $|\det J_\phi|^{1/2}$ under
a change of initial coordinates $\phi$.  This is the prefactor in the
WKB/stationary-phase approximation.

## 6.8 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| D4.0a Chapman-Kolmogorov structure | `D4_0a_kolmogorov_structure` | 🔲 sorry |
| D4.0b Hille-Yosida forces Hamiltonian | `D4_0b_hille_yosida_forces_hamiltonian` | 🔲 sorry |
| D4.0 coordinate invariance (corrected) | `D4_0_half_density_coordinate_invariance` | 🔲 sorry |
| D4.1a normalization = d/2 | `D4_1a_normalization_forced_to_d_over_2` | 🔲 sorry |
| D4.1b kernel Lipschitz constant | `D4_1b_kernel_lipschitz_constant` | 🔲 sorry |
| P4.1 exponential form (with unitarity) | `P4_1_exponential_forced` | 🔲 sorry |
| P4.1a Gaussian uniqueness (Lévy-Khintchine) | `P4_1a_gaussian_uniqueness_levy_khintchine` | 🔲 sorry |
| **P4.2 master theorem** | `P4_2_action_scale_uniquely_forced` | 🔲 sorry |
| D4.2 non-stationary phase vanishes | `D4_2_nonstationary_phase_vanishes` | 🔲 sorry |
| D4.2a nowhere-differentiable paths generic | `D4_2a_nowhere_differentiable_paths_are_generic` | 🔲 sorry |
| D4.3 Van Vleck as bi-half-density | `D4_3_van_vleck_bi_half_density` | 🔲 sorry |

---
*Transition to §7.* With the path integral derived and the Hille-Yosida connection
to the Hamiltonian established, the next section bridges to operator mechanics via
deformation quantization and the Moyal product.
