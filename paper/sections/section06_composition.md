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
