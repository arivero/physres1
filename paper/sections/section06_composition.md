# 6. Composition and the Path Integral

## 6.1 The Composition Postulate

The central structural claim of this paper: physical amplitudes compose
multiplicatively when their supporting time intervals are concatenated.

**Composition postulate.**  For amplitude kernels $K(x,y,t)$:
$$K(x,z,t_1+t_2) = \int K(x,w,t_1)\,K(w,z,t_2)\,dw.$$

This is a *semigroup property* of the kernel family $\{K(\cdot,\cdot,t)\}_{t>0}$.

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
| D4.0 coordinate invariance (corrected) | `D4_0_half_density_coordinate_invariance` | 🔲 sorry |
| D4.1a normalization = d/2 | `D4_1a_normalization_forced_to_d_over_2` | 🔲 sorry |
| P4.1 exponential form (with unitarity) | `P4_1_exponential_forced` | 🔲 sorry |
| **P4.2 master theorem** | `P4_2_action_scale_uniquely_forced` | 🔲 sorry |
| D4.2 non-stationary phase vanishes | `D4_2_nonstationary_phase_vanishes` | 🔲 sorry |
| D4.3 Van Vleck as bi-half-density | `D4_3_van_vleck_bi_half_density` | 🔲 sorry |

---
*Transition to §7.* With the path integral derived, the next section bridges to
operator mechanics via deformation quantization and the Moyal product.
