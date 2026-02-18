# The Lipschitz Boundary: How Planck's Constant Regularizes the Classical Breakdown

**Companion note to "From Newton to the Path Integral"**

## Abstract

We develop the observation that the Lipschitz condition on force fields is the precise mathematical boundary between where classical refinement converges and where it fails, and that Planck's constant $\hbar$ functions as a universal regularization parameter that extends well-posedness beyond this boundary.  The path integral is supported on paths that are almost surely *not* Lipschitz (they are Holder-$\frac{1}{2}$), and this roughness is controlled by $\hbar$.  We show: (1) the spatial Lipschitz constant of the heat kernel scales as $m/(\hbar t)$, so $\hbar>0$ keeps it finite while $\hbar\to 0$ produces the classical Lipschitz catastrophe; (2) semigroup composition automatically improves Lipschitz bounds, providing a quantitative reading of the main paper's Proposition P4.2; (3) the Kato class of potentials (the natural domain of the Feynman--Kac formula) strictly extends the class of Lipschitz-gradient potentials, so quantum mechanics is well-defined in regimes where classical mechanics breaks down; (4) potentials outside the Kato class require renormalization, recovering the main paper's three-level failure taxonomy (H0.2) as a Lipschitz--Kato hierarchy.

---

## 1. Introduction: When Was Classical Mechanics in Doubt?

### 1.1 The calculus crisis as a consistency problem

Berkeley's 1734 critique in *The Analyst* was not philosophical nitpicking but the correct identification of a genuine logical gap: Newton's method required an increment $o$ to be simultaneously nonzero (to divide by it) and zero (to eliminate residual terms).  The crisis lasted roughly 130 years (Berkeley 1734 $\to$ Cauchy 1821 $\to$ Weierstrass 1860s).  During this entire period, the mathematical community knew the foundations were shaky -- multiple major repair attempts failed -- but practitioners used calculus anyway because it produced correct results.  The resolution did not change any physical prediction; it explained *why* the methods worked.

The structural parallel to renormalization is precise:

| Calculus (18th century) | Renormalization (20th century) |
|---|---|
| Divide by $dx$, set $dx=0$ | Integrate over all momenta, get $\infty$ |
| Formally illegal, correct results | Formally illegal, correct results |
| Resolution: $\varepsilon$-$\delta$ limits | Resolution: regularize, renormalize, remove cutoff |
| Resolution did not change predictions | Predictions stable under scheme changes |
| Revealed new structures (Lebesgue, distributions) | Revealed universality, fixed points, EFT |

### 1.2 Classical field theories still in the pre-Cauchy state

Several classical theories have *open* consistency problems right now, analogous to the pre-1821 status of calculus:

1. **Classical electrodynamics with point charges**: genuinely inconsistent as a mathematical theory.  Self-energy infinite, Abraham--Lorentz equation admits runaway solutions and preacceleration.
2. **Navier--Stokes**: unknown whether smooth solutions exist globally (Clay Millennium Prize).
3. **Classical general relativity**: well-posed as initial-value problem, but generically drives solutions into singularities (Penrose--Hawking).  Cosmic censorship unproven.
4. **Newtonian $N$-body gravity**: Xia (1992) proved that for $N\ge 5$, bodies can escape to infinity in finite time.  Triple collisions generally cannot be regularized (Siegel 1941).

### 1.3 The common thread: failure of the Lipschitz condition

All of these breakdowns share a common mathematical signature: the force field (or its analogue) ceases to be Lipschitz continuous at the singular point.  The Lipschitz condition is the precise boundary between where the classical refinement-to-zero procedure converges and where it fails.  We now develop this observation systematically.

---

## 2. The Lipschitz Condition as the Boundary of Classical Determinism

### 2.1 Picard--Lindelof and the convergence of refinement

Consider a first-order ODE system
$$
\dot{y} = f(y), \qquad y(0)=y_0, \qquad y\in\mathbb{R}^n.
$$

**Theorem (Picard--Lindelof).**
*If $f:\mathbb{R}^n\to\mathbb{R}^n$ is Lipschitz continuous with constant $L$, i.e.,*
$$
\|f(y_1)-f(y_2)\|\le L\,\|y_1-y_2\| \quad \forall\, y_1,y_2,
$$
*then for any $y_0$ there exists a unique solution for all $t\in\mathbb{R}$.*

Moreover, Newton's polygonal approximation (the explicit Euler scheme) converges:
$$
y_{k+1} = y_k + h\, f(y_k)
$$
has global error bounded by
$$
\|y_N - y(Nh)\| \le \frac{h\,M}{2L}\bigl(e^{LT}-1\bigr),
$$
where $M=\sup\|f'\|$ and $T=Nh$.  **The convergence rate depends on $L$**: as $L\to\infty$, convergence degrades and eventually fails.

This is the content of Remark H1.2a in the main paper: the polygonal orbit converges to the true continuous orbit with global error $O(h)$ *on any finite time interval where $\nabla V$ is Lipschitz -- i.e., away from the $r=0$ collision singularity*.

### 2.2 Breakdown at classical singularities

For the Newtonian gravitational force $f(r) = -GM/r^2$:
$$
\left|\frac{df}{dr}\right| = \frac{2GM}{r^3} \to \infty \quad\text{as }r\to 0.
$$

The Lipschitz constant diverges at the collision singularity.  Picard--Lindelof provides no guarantee of unique continuation, and indeed:

- **Two-body collisions** require Levi-Civita/KS regularization (embedding in higher-dimensional coordinates where the singularity becomes regular).
- **Triple collisions** generally *cannot* be regularized (Siegel 1941; McGehee 1974 showed the flow branches).
- **Non-collision singularities** (Xia 1992) produce finite-time blow-up of the entire configuration.

The Lipschitz condition is not a technicality -- it is the precise mathematical criterion separating well-posedness from breakdown.

### 2.3 The Lipschitz constant as an observable

For a central-force problem $\ddot{\mathbf{r}} = \mathbf{F}(\mathbf{r})$ with $\mathbf{F}=-\nabla V$, the relevant Lipschitz constant for the phase-space vector field $(\dot{\mathbf{r}},\dot{\mathbf{v}})=(\mathbf{v},\mathbf{F}(\mathbf{r}))$ is
$$
L_{\mathrm{phase}} = \max\left(1, \sup_{\mathbf{r}\in\Omega}\|\nabla \mathbf{F}(\mathbf{r})\|\right),
$$
where $\Omega$ is the accessible region of configuration space.  For a trajectory with minimum approach distance $r_{\min}$:
$$
L_{\mathrm{phase}} \sim \frac{2GM}{r_{\min}^3}.
$$

When angular momentum $L_{\mathrm{ang}}\neq 0$, the centrifugal barrier ensures $r_{\min}>0$, keeping $L_{\mathrm{phase}}<\infty$.  At $L_{\mathrm{ang}}=0$ (head-on collision), $r_{\min}\to 0$ and $L_{\mathrm{phase}}\to\infty$.  The Lipschitz constant encodes the proximity to classical breakdown.

---

## 3. Brownian Motion Paths: The Holder-1/2 Barrier

### 3.1 The Wiener measure exists -- on rough paths

The Euclidean path integral (Wick-rotated) is the Wiener integral.  The Wiener measure $\mathbb{W}$ is a well-defined probability measure on the space $C([0,T],\mathbb{R}^d)$ of continuous paths, with the canonical process $B_t$ being standard Brownian motion (scaled by $\sqrt{\hbar/m}$ for the quantum application).

**The paths that carry the measure are rough**: they are almost surely Holder-$\alpha$ for every $\alpha<1/2$ but *not* for $\alpha=1/2$, and they are *not* Lipschitz.  This is a fundamental structural fact, not a technical detail.

### 3.2 Proof that typical paths are not Lipschitz

**Proposition.** *Let $B:[0,T]\to\mathbb{R}$ be standard Brownian motion.  Then $B$ is almost surely not Lipschitz continuous.*

*Proof.*  The quadratic variation of a process $X$ over a partition $\pi=\{0=t_0<t_1<\cdots<t_N=T\}$ is
$$
[X]_T^{(\pi)} := \sum_{k=0}^{N-1}|X(t_{k+1})-X(t_k)|^2.
$$

For any Lipschitz function $f$ with constant $L$:
$$
[f]_T^{(\pi)} = \sum_{k=0}^{N-1}|f(t_{k+1})-f(t_k)|^2
\le L^2 \sum_{k=0}^{N-1}(\Delta t_k)^2
\le L^2 (\max_k \Delta t_k) \sum_{k=0}^{N-1}\Delta t_k
= L^2 (\max_k \Delta t_k)\, T.
$$

As $|\pi|\to 0$, this tends to zero.  **Lipschitz functions have zero quadratic variation.**

But for Brownian motion, $[B]_T = T$ almost surely (convergence in $L^2$ and a.s. along dyadic partitions).  Since $T>0$, the quadratic variation is nonzero, so $B$ is almost surely not Lipschitz.  $\square$

### 3.3 The $\hbar$-scaled quadratic variation

In the quantum application, the relevant process is $X_t = \sqrt{\hbar/m}\, B_t$, so
$$
[X]_T = \frac{\hbar}{m}\,[B]_T = \frac{\hbar T}{m}.
$$

This is the quantum signature of path roughness:

- $\hbar>0$: paths have nonzero quadratic variation; they are not Lipschitz.
- $\hbar\to 0$: $[X]_T\to 0$; paths "try to become" Lipschitz, but the measure degenerates.

The "velocity" over timescale $\Delta t$ is
$$
v_{\Delta t} \sim \frac{|X(t+\Delta t)-X(t)|}{\Delta t} \sim \frac{\sqrt{\hbar\,\Delta t/m}}{\Delta t} = \sqrt{\frac{\hbar}{m\,\Delta t}} \to \infty
$$
as $\Delta t\to 0$.  The paths are nowhere differentiable (let alone Lipschitz).  The divergence rate is controlled by $\hbar$: rougher at larger $\hbar$, smoother at smaller $\hbar$, but *never* Lipschitz for $\hbar>0$.

### 3.4 The Cameron--Martin theorem: classical paths have measure zero

The Cameron--Martin space $\mathcal{H}\subset C([0,T],\mathbb{R}^d)$ consists of absolutely continuous functions with square-integrable derivative:
$$
\mathcal{H} = \left\{h\in C([0,T],\mathbb{R}^d) : h(0)=0,\; h\in W^{1,2},\; \|h\|_{\mathcal{H}}^2 := \int_0^T |\dot{h}(t)|^2\, dt < \infty\right\}.
$$

By Morrey's inequality in 1D, $W^{1,2}([0,T])\hookrightarrow C^{0,1/2}([0,T])$, so Cameron--Martin functions are Holder-$1/2$ (and in particular, Lipschitz functions with bounded derivative are in $\mathcal{H}$).

**The Cameron--Martin theorem** states that the Wiener measure is quasi-invariant under translations by $h\in\mathcal{H}$:
$$
\frac{d\mathbb{W}(\omega+h)}{d\mathbb{W}(\omega)}
= \exp\left(\int_0^T \dot{h}(t)\cdot dB_t - \frac{1}{2}\int_0^T |\dot{h}(t)|^2\, dt\right).
$$

But -- and this is the crucial point --
$$
\mathbb{W}(\mathcal{H}) = 0.
$$

**The set of classical (smooth, Lipschitz, or even Cameron--Martin) paths has Wiener measure zero.**  The path integral is supported entirely on rough, non-Lipschitz, non-differentiable paths.  The classical trajectory, around which stationary phase concentrates as $\hbar\to 0$, lives in a set of measure zero.  The classical limit is a *concentration* phenomenon, not a restriction to a dominant subset.

---

## 4. $\hbar$ as a Universal Lipschitz Regularizer

### 4.1 The heat kernel and its spatial Lipschitz constant

The Euclidean free propagator (heat kernel) in $d$ dimensions is
$$
K_t(x,y) = \left(\frac{m}{2\pi\hbar t}\right)^{d/2}
\exp\left(-\frac{m|x-y|^2}{2\hbar t}\right).
$$

Its spatial gradient is
$$
\nabla_x K_t(x,y) = -\frac{m(x-y)}{\hbar t}\, K_t(x,y).
$$

**Proposition (Lipschitz constant of the heat kernel).**
*The Lipschitz constant of $K_t(\cdot,y)$ in the spatial variable is*
$$
\mathrm{Lip}_x(K_t) := \sup_{x\in\mathbb{R}^d}\|\nabla_x K_t(x,y)\|
= C_d \cdot \frac{m}{\hbar t} \cdot \left(\frac{m}{2\pi\hbar t}\right)^{d/2},
$$
*where $C_d = (d/e)^{1/2}$ (attained at $|x-y|=\sqrt{d\hbar t/m}$).*

*Proof.* Write $u=x-y$, $\sigma^2=\hbar t/m$.  Then
$$
|\nabla_x K_t| = \frac{|u|}{\sigma^2}\cdot (2\pi\sigma^2)^{-d/2}\exp\left(-\frac{|u|^2}{2\sigma^2}\right).
$$

In radial coordinates $r=|u|$, the function $r\mapsto r\,e^{-r^2/(2\sigma^2)}$ is maximized at $r_*=\sigma$, with value $\sigma e^{-1/2}$.  Including the angular dependence in $d$ dimensions, the directional derivative along $\hat{u}$ at $|u|=r$ involves the factor $r/\sigma^2$, and the full supremum gives the stated result (the factor $\sqrt{d}$ arises from the $d$-dimensional gradient norm at the maximum).  $\square$

The key scaling is:
$$
\boxed{\mathrm{Lip}_x(K_t) \sim \left(\frac{m}{\hbar t}\right)^{d/2+1}.}
$$

This has two critical limits:
- **$\hbar\to 0$ (classical limit):** $\mathrm{Lip}_x\to\infty$.  The kernel concentrates into a delta function, which is not Lipschitz.  This is the **Lipschitz catastrophe** of the classical limit.
- **$t\to 0^+$ (identity limit):** $\mathrm{Lip}_x\to\infty$.  The kernel approaches $\delta(x-y)$, which is the semigroup initial condition but not a Lipschitz function.

For $\hbar>0$ and $t>0$, the Lipschitz constant is finite.  **$\hbar$ regularizes the Lipschitz singularity.**

### 4.2 Composition improves Lipschitz bounds

**Proposition (Lipschitz improvement under semigroup composition).**
*Let $K_t$, $K_s$ be heat kernels with $t,s>0$.  Then:*
$$
\mathrm{Lip}_x(K_{t+s}) < \mathrm{Lip}_x(K_t) \quad\text{and}\quad \mathrm{Lip}_x(K_{t+s}) < \mathrm{Lip}_x(K_s).
$$

*Proof.* Since $K_{t+s} = K_t * K_s$ (the semigroup property) and $\|K_s\|_{L^1}=1$:
$$
\|\nabla_x(K_t * K_s)\|_\infty
= \|(\nabla_x K_t)*K_s\|_\infty
\le \|\nabla_x K_t\|_\infty \|K_s\|_1
= \mathrm{Lip}_x(K_t).
$$

But the explicit formula gives $\mathrm{Lip}_x(K_{t+s})\propto (t+s)^{-(d/2+1)}$, while $\mathrm{Lip}_x(K_t)\propto t^{-(d/2+1)}$.  Since $t+s>t$, the inequality is strict.  $\square$

**Interpretation in the paper's framework:**  Composition is a smoothing operation.  The more time slices you compose, the better the Lipschitz regularity of the total kernel.  This is the Lipschitz reading of the main paper's semigroup closure (Derivation D4.1a): the $t^{-d/2}$ normalization controls not just the amplitude but the *regularity* of the composed object.

### 4.3 The Lipschitz constant under composition: exact formula

For the $N$-fold composed kernel over a partition $0=t_0<t_1<\cdots<t_N=T$:
$$
K_T(x,y) = \int \prod_{k=1}^{N-1}d^dq_k \prod_{k=0}^{N-1}K_{\Delta t_k}(q_{k+1},q_k).
$$

By the semigroup property, $K_T$ is just the heat kernel at time $T$, regardless of the partition.  Its Lipschitz constant is
$$
\mathrm{Lip}_x(K_T) \sim \left(\frac{m}{\hbar T}\right)^{d/2+1},
$$
which is *independent of the partition*.  This is a stability result: the Lipschitz regularity of the composed kernel is determined by the total time $T$ and the scale $\hbar$, not by the fineness of the partition.

Compare with the Lipschitz constant of each short-time factor:
$$
\mathrm{Lip}_x(K_{\Delta t_k}) \sim \left(\frac{m}{\hbar\,\Delta t_k}\right)^{d/2+1} \gg \mathrm{Lip}_x(K_T)
$$
for $\Delta t_k\ll T$.  Each individual slice is "more singular" than the composed whole.  Composition is genuinely regularizing.

---

## 5. Ito Calculus and the $\hbar$-Lipschitz Connection

### 5.1 Ito's formula as a non-Lipschitz correction

For a smooth function $\phi:\mathbb{R}^d\to\mathbb{R}$ and the quantum-scaled Brownian motion $X_t = \sqrt{\hbar/m}\,B_t$:
$$
d\phi(X_t) = \nabla\phi(X_t)\cdot dX_t + \frac{\hbar}{2m}\,\Delta\phi(X_t)\,dt.
$$

The second term -- the Ito correction -- is:
- proportional to $\hbar$,
- caused by the nonzero quadratic variation $[X]_t = (\hbar/m)\,t$,
- **absent for Lipschitz paths** (which have $[X]_t=0$).

This is the stochastic calculus manifestation of the quantum correction.  The main paper's Remark D4.1d (discretization--stochastic dictionary) identifies this: the Stratonovich--Ito correction $\frac{1}{2}\sigma\sigma'dt$ has "the same structural origin as the $\alpha$-dependent $O(\hbar)$ shift in the quantum Hamiltonian."

In the Lipschitz framework, the connection is even cleaner: **the Ito correction is the price of integrating along non-Lipschitz paths.**  On Lipschitz paths the classical chain rule holds; on Brownian paths it acquires a $\hbar$-proportional correction.

### 5.2 The Feynman--Kac formula and the Lipschitz--Kato boundary

The Feynman--Kac formula gives the solution to the imaginary-time Schrodinger equation
$$
\partial_t\psi = \frac{\hbar}{2m}\Delta\psi - \frac{V}{\hbar}\,\psi
$$
as
$$
\psi(x,t) = \mathbb{E}_x\!\left[\exp\!\left(-\frac{1}{\hbar}\int_0^t V(X_s)\,ds\right)\psi_0(X_t)\right],
$$
where $X_t = x + \sqrt{\hbar/m}\,B_t$.

For this expectation to converge, one needs the exponential functional $\exp(-\hbar^{-1}\int V(X_s)\,ds)$ to be integrable.  The natural condition is:

**Definition (Kato class $\mathcal{K}_d$).**
A measurable function $V:\mathbb{R}^d\to\mathbb{R}$ belongs to the Kato class $\mathcal{K}_d$ if:
$$
\lim_{r\to 0}\sup_{x\in\mathbb{R}^d}\int_{|x-y|<r} \Phi_d(x-y)\,|V(y)|\,d^dy = 0,
$$
where $\Phi_d$ is the fundamental solution of the Laplacian:
$$
\Phi_d(z) = \begin{cases}
|z| & d=1,\\
-\log|z| & d=2,\\
|z|^{2-d} & d\ge 3.
\end{cases}
$$

---

## 6. The Kato Class: Quantum Mechanics Beyond the Lipschitz Boundary

### 6.1 The hierarchy of regularity conditions

For a potential $V:\mathbb{R}^d\to\mathbb{R}$ generating the force $\mathbf{F}=-\nabla V$, we have a strict hierarchy:

$$
\nabla V \text{ Lipschitz}
\;\subsetneq\;
V\in\mathcal{K}_d
\;\subsetneq\;
\text{all measurable } V.
$$

**Classical mechanics** (Picard--Lindelof) requires the left condition.
**Quantum mechanics** (Feynman--Kac) requires only the middle condition.
**Neither works** for potentials outside the Kato class without renormalization.

### 6.2 The Coulomb potential: Kato but not Lipschitz

The Coulomb potential $V(r)=-Ze^2/r$ in $d=3$:

1. **Not Lipschitz at origin:** $|\nabla V|=Ze^2/r^2\to\infty$ as $r\to 0$.  Classical mechanics breaks down at head-on collision.

2. **Kato class in $d=3$:** We need to check
   $$
   \sup_{x}\int_{|x-y|<r}\frac{|V(y)|}{|x-y|}\,d^3y
   = \sup_x \int_{|x-y|<r}\frac{Ze^2}{|y|\,|x-y|}\,d^3y.
   $$
   By the Hardy--Littlewood--Sobolev inequality, $1/|\cdot|\in L^3_{\mathrm{weak}}(\mathbb{R}^3)$, so the convolution $|V|*\Phi_3$ is locally bounded.  More directly: the integral is finite for small $r$ because both $1/|y|$ and $1/|x-y|$ are individually $L^1_{\mathrm{loc}}$ in 3D, and their product is $L^1_{\mathrm{loc}}$ by Holder's inequality with exponents $(3/2,3)$.  As $r\to 0$, the integral vanishes.

**Result:** The hydrogen atom is well-defined quantum-mechanically (the Schrodinger equation with Coulomb potential has a unique self-adjoint Hamiltonian, by the Kato--Rellich theorem) even though the classical trajectory problem breaks down at collision.

### 6.3 Dimensional dependence of the Kato boundary

The Kato class condition becomes more restrictive in higher dimensions.  The critical singularity exponent is:

$$
V(r)\sim r^{-\alpha}:\quad V\in\mathcal{K}_d \iff \alpha < 2 \quad\text{(for }d\ge 3\text{)}.
$$

| Singularity | $d=1$ | $d=2$ | $d=3$ |
|---|---|---|---|
| $1/r$ | Kato | Kato | Kato |
| $1/r^2$ | Not Kato | Not Kato | Borderline |
| $\delta^{(d)}(x)$ | Kato | Not Kato | Not Kato |

The 2D delta interaction from the main paper's Section 10.5 is *not* in the Kato class -- this is precisely why it requires renormalization, not just $\hbar$-regularization.

### 6.4 The three-level Lipschitz--Kato hierarchy

This gives a clean mathematical hierarchy that maps directly onto the main paper's Heuristic H0.2 (three failure modes of naive refinement-to-zero):

| Level | Condition on $V$ | Status | Resolution mechanism |
|---|---|---|---|
| 0 | $\nabla V$ Lipschitz | Classical ODE well-posed | None needed (Picard--Lindelof) |
| 1 | $V\in\mathcal{K}_d$, $\nabla V$ not Lipschitz | Classical breaks down, quantum well-posed | $\hbar>0$ (Kato--Rellich, Feynman--Kac) |
| 2 | $V\notin\mathcal{K}_d$ | Both break down | Renormalization (Section 8/10.5 of main paper) |

Level 0 corresponds to the benign case where refinement converges without control.
Level 1 corresponds to H0.2 items 1--2 (singular probes, non-uniqueness): $\hbar$ provides the control.
Level 2 corresponds to H0.2 item 3 (divergence): even $\hbar$-regularization is insufficient.

---

## 7. The Classical Limit as a Lipschitz Catastrophe

### 7.1 Concentration and degeneration

As $\hbar\to 0$, the path integral concentrates on classical trajectories by stationary phase.  In the Lipschitz framework, this concentration is a **degeneration of regularity**:

- The kernel width $\sigma=\sqrt{\hbar t/m}\to 0$, so $K_t\to\delta(x-x_{\mathrm{cl}})$.
- The Lipschitz constant $\mathrm{Lip}_x(K_t)\sim (m/\hbar t)^{d/2+1}\to\infty$.
- The quadratic variation $[X]_T=\hbar T/m\to 0$: paths "try to become" Lipschitz.
- The Cameron--Martin space $\mathcal{H}$ stays the same, but the Wiener measure collapses: the Gaussian width shrinks to zero around $h=0$.

**The classical limit is the point where the Lipschitz regularization provided by $\hbar$ is removed.**  It is well-defined only where the classical force is Lipschitz -- exactly at the points where $\hbar$ was not needed in the first place.  At classical singularities (where $L_{\mathrm{phase}}\to\infty$), the $\hbar\to 0$ limit is singular.

### 7.2 Quantitative Lipschitz--$\hbar$ trade-off

For the Coulomb problem in $d=3$, the classical Lipschitz constant at minimum distance $r_{\min}$ is
$$
L_{\mathrm{cl}} \sim \frac{GM}{r_{\min}^3}.
$$

The quantum "smearing" replaces the point particle by a wavepacket of width $\sigma\sim\sqrt{\hbar t/m}$.  The effective minimum distance is $r_{\min}^{\mathrm{eff}} = \max(r_{\min},\sigma)$, so the effective Lipschitz constant is
$$
L_{\mathrm{eff}} \sim \frac{GM}{\max(r_{\min}, \sqrt{\hbar t/m})^3}.
$$

When $r_{\min}\gg\sigma$: $L_{\mathrm{eff}}\approx L_{\mathrm{cl}}$, quantum corrections negligible.
When $r_{\min}\ll\sigma$: $L_{\mathrm{eff}}\sim GM\,(m/\hbar t)^{3/2}$, controlled by $\hbar$.

**$\hbar$ provides a universal floor on the effective approach distance**, preventing the Lipschitz constant from diverging.  This is the Lipschitz reading of the Heisenberg uncertainty principle: $\Delta x\,\Delta p\ge\hbar/2$ prevents simultaneous localization to $r_{\min}=0$ and $p=\infty$.

### 7.3 Connection to the main paper's P4.2

Proposition P4.2 of the main paper proves that $\hbar$ is a *necessary* structural constant for composition-compatible refinement.  In the Lipschitz framework:

- **(C) Composition:** $K_{t+s}=K_t*K_s$ requires each factor to be $L^1$-integrable, which holds for $\hbar>0$ but fails for the $\hbar=0$ "kernel" $\delta(x-x_{\mathrm{cl}})$ (not a function).
- **(I) Identity limit:** $K_t\to\delta$ as $t\to 0^+$ requires the Lipschitz constant to diverge, but at controlled rate $\sim 1/t^{d/2+1}$.  At $\hbar=0$, the "kernel" is already a delta for all $t>0$, so the identity limit is trivially satisfied -- but composition (C) fails.
- **(D) Dimensional homogeneity:** $[K]=L^{-d}$ forces the prefactor $(m/2\pi\hbar t)^{d/2}$, which contains $\hbar$ unavoidably.

**P4.2(iii) in Lipschitz language:** setting $\hbar\to 0$ collapses composition to Hamilton--Jacobi extremization, whose "kernel" $\delta(x-x_{\mathrm{cl}}(y))$ has infinite Lipschitz constant for $t>0$ (unless $x_{\mathrm{cl}}$ happens to be the identity, which occurs only at $t=0$).  The identity limit ceases to exist because the composed object is too singular.

---

## 8. Renormalization: When $\hbar$-Regularization is Insufficient

### 8.1 The 2D delta interaction as a Lipschitz--Kato failure

The main paper's Appendix 10.5 treats the 2D contact interaction $H=-(\hbar^2/2m)\Delta + g\,\delta^{(2)}(x)$.  In the Lipschitz--Kato hierarchy:

- $\delta^{(2)}(x)$ is not even a function, let alone in $\mathcal{K}_2$.
- The loop integral $I(E;\Lambda) = -\frac{m}{2\pi\hbar^2}\ln(\Lambda^2/k^2) + \cdots$ diverges logarithmically.
- The Lipschitz constant of the regulated kernel depends on the cutoff: schematically,
  $$
  \mathrm{Lip}_x(K_\Lambda) \sim \text{(finite)} + C\,\ln\Lambda.
  $$

The renormalization prescription (main paper's D11.2) absorbs the $\ln\Lambda$ divergence into a running coupling:
$$
\frac{1}{g_R(\mu)} = \frac{1}{g_B(\Lambda)} + \frac{m}{2\pi\hbar^2}\ln\frac{\Lambda^2}{\mu^2}.
$$

In Lipschitz terms: the effective Lipschitz constant at scale $\mu$ is *finite* (after subtraction), and it runs with scale:
$$
\beta(g_R) = \frac{m}{\pi\hbar^2}\,g_R^2.
$$

### 8.2 The RG flow as a Lipschitz-constant flow

The beta function can be read as controlling how the effective Lipschitz constant of the interaction changes with resolution scale.  At high resolution (large $\Lambda$), the bare interaction is strong and the effective Lipschitz constant is large.  At low resolution (small $\mu$), renormalization has "smoothed" the interaction, reducing the effective Lipschitz constant.

This is the Lipschitz reading of the main paper's Heuristic H6.1: *in divergent refinement problems, the renormalization prescription is part of the definition of the continuum theory, because it specifies how the effective regularity (Lipschitz constant) is maintained as the cutoff is removed.*

### 8.3 Dimensional transmutation as a Lipschitz scale

The RG-invariant scale $\kappa_*$ of the main paper's Proposition P11.1:
$$
\kappa_*^2 = \mu^2 \exp\!\left(\frac{2\pi\hbar^2}{m\,g_R(\mu)}\right)
$$
is the scale at which the running coupling becomes strong -- equivalently, the scale at which the effective Lipschitz constant diverges.  Below this scale ($k\ll\kappa_*$), the interaction is weak and the theory is perturbatively controlled (good Lipschitz bounds).  Above this scale ($k\gg\kappa_*$), the coupling grows and Lipschitz control is lost.

The bound state energy $E_B = \hbar^2\kappa_*^2/(2m)$ is therefore the energy at which the Lipschitz boundary is crossed -- the quantum analogue of the classical collision energy.

---

## 9. Composition Stability: A Lipschitz-Norm Proof

### 9.1 Statement

We give a self-contained proof that the semigroup composition law preserves Lipschitz bounds in a way that is *impossible* at $\hbar=0$.

**Proposition (Lipschitz stability of quantum composition).**
*Let $K_t^{(\hbar)}$ be the $d$-dimensional heat kernel with parameter $\hbar>0$.  For any partition $0=t_0<t_1<\cdots<t_N=T$, the composed kernel*
$$
K_T^{(\hbar)}(x,y) = \int\prod_{k=1}^{N-1}d^dq_k\prod_{k=0}^{N-1}K_{\Delta t_k}^{(\hbar)}(q_{k+1},q_k)
$$
*satisfies:*
$$
\mathrm{Lip}_x(K_T^{(\hbar)}) = C_d\left(\frac{m}{\hbar T}\right)^{d/2+1},
$$
*independent of $N$ and of the partition.  In particular, $\mathrm{Lip}_x(K_T^{(\hbar)}) < \infty$ for all $\hbar>0$, $T>0$.*

*At $\hbar=0$, the formal classical "kernel"*
$$
K_T^{(0)}(x,y) = \delta^{(d)}\big(x - x_{\mathrm{cl}}(y,T)\big)
$$
*has $\mathrm{Lip}_x = +\infty$ for all $T>0$, and composition fails to produce a finite Lipschitz constant for any partition.*

*Proof.* The first statement follows from the semigroup property $K_T^{(\hbar)} = K_{\Delta t_0}^{(\hbar)} * \cdots * K_{\Delta t_{N-1}}^{(\hbar)}$ and the explicit Gaussian formula (Section 4.1 above).

For the second statement: the gradient of a delta distribution is not a bounded function, so $\mathrm{Lip}_x=+\infty$ trivially.  Moreover, composing two classical "kernels" by integration:
$$
\int d^dq\,\delta(x-x_{\mathrm{cl}}(q,t_1))\,\delta(q-x_{\mathrm{cl}}(y,t_2))
= \delta(x - x_{\mathrm{cl}}(x_{\mathrm{cl}}(y,t_2),t_1)),
$$
which is still a delta function (with infinite Lipschitz constant) unless $x_{\mathrm{cl}}(x_{\mathrm{cl}}(y,t_2),t_1) = y$ for all $y$ (identity), which generically fails for $t_1+t_2>0$.

The composition of delta-supported kernels does *close* as a semigroup (it gives the classical flow composition), but it never produces a finite Lipschitz constant.  $\hbar>0$ is the structural ingredient that converts delta-supported kernels into Gaussian-regularized kernels with finite Lipschitz bounds.  $\square$

### 9.2 Lipschitz defect under perturbation

For a bounded potential $V$ with $\|V\|_\infty=M$, the main paper's Proposition P12.2 gives a composition-defect bound.  We can state the Lipschitz analogue:

**Corollary.**  *Under the same hypotheses as P12.2, the Lipschitz constant of the first-order Duhamel kernel satisfies*
$$
\mathrm{Lip}_x(K_{\varepsilon,V}^{(1)}(\cdot,y;t))
\le \mathrm{Lip}_x(K_t^{(\hbar)}) \cdot (1 + Mt) + M\|K_t^{(\hbar)}\|_\infty\cdot t,
$$
*which is finite for $\hbar>0$, $t>0$, and diverges as $\hbar\to 0$ at the same rate as the free kernel.*

The perturbation does not change the fundamental Lipschitz scaling; it adds a correction proportional to $Mt$, controlled by the interaction strength and duration.

---

## 10. The Holder Exponent as a Quantum Observable

### 10.1 Holder regularity of quantum paths

The typical path in the Wiener integral is Holder-$\alpha$ for $\alpha<1/2$ and not for $\alpha\ge 1/2$.  The exponent $1/2$ is *universal* -- it does not depend on $\hbar$, $m$, or the potential.  What $\hbar$ controls is the *amplitude* of the fluctuations, not the exponent:
$$
|X(t+\Delta t)-X(t)| \sim \sqrt{\frac{\hbar}{m}}\,(\Delta t)^{1/2}.
$$

The Holder constant scales as $\sqrt{\hbar/m}$, while the exponent is fixed at $1/2$.  This is analogous to the main paper's observation that $\hbar$ controls the *scale* of quantum effects while the *structural form* (exponential weighting, $d/2$ normalization) is forced by composition.

### 10.2 The Holder exponent and the diffusion equation

The Holder-$1/2$ exponent is directly connected to the diffusion equation $\partial_t u = D\,\Delta u$ with $D=\hbar/(2m)$.  The fundamental solution at time $t$ has width $\sigma=\sqrt{2Dt}=\sqrt{\hbar t/m}$, which scales as $t^{1/2}$ -- this is the macroscopic reflection of the microscopic Holder-$1/2$ regularity.

The connection to the main paper's $t^{-d/2}$ normalization (D4.1a) is now clear from the Lipschitz viewpoint: the normalization $(m/2\pi\hbar t)^{d/2}$ is the reciprocal of the $d$-dimensional Gaussian volume at width $\sigma$:
$$
\sigma^d = \left(\frac{\hbar t}{m}\right)^{d/2}
\implies
\text{normalization} = (2\pi)^{-d/2}\,\sigma^{-d} = \left(\frac{m}{2\pi\hbar t}\right)^{d/2}.
$$

The $d/2$ exponent is the half-density "square-root Jacobian" forced by semigroup composition -- and it is also the Lipschitz regularization exponent: the Lipschitz constant scales as $\sigma^{-(d+2)} = (m/\hbar t)^{(d+2)/2}$, where the extra power $1$ beyond $d/2$ comes from the gradient.

---

## 11. Summary: The Lipschitz Reading of the Refinement Program

The main paper's thesis -- that physically meaningful laws arise as controlled limits of composable local refinements -- admits a precise Lipschitz-theoretic reading:

1. **Classical mechanics works where forces are Lipschitz** (Picard--Lindelof).  Newton's polygonal scheme converges, numerical integrators are stable, and the refinement limit is unique.

2. **Classical mechanics fails where forces are not Lipschitz** (collision singularities, non-collision blow-up).  The Lipschitz constant diverges, refinement does not converge, and the theory is incomplete.

3. **Quantum mechanics ($\hbar>0$) regularizes the Lipschitz breakdown** by replacing delta-supported classical kernels with Gaussian-regularized quantum kernels whose Lipschitz constants are finite and composition-stable.  The natural domain is the Kato class, which strictly extends the classical Lipschitz domain.

4. **The classical limit $\hbar\to 0$ is a Lipschitz catastrophe**: the kernel Lipschitz constant diverges, the path-integral measure degenerates, and the theory collapses back to the classical domain -- which is well-defined only where the Lipschitz condition held in the first place.

5. **Renormalization is needed when even $\hbar$-regularization fails**: potentials outside the Kato class (2D delta, etc.) require additional subtraction to maintain finite Lipschitz bounds, and the RG flow tracks how the effective Lipschitz constant runs with scale.

6. **The path integral measure lives on non-Lipschitz paths**: the Cameron--Martin theorem shows that classical (Lipschitz) paths have Wiener measure zero.  The measure is supported on Holder-$1/2$ paths whose roughness is controlled by $\hbar$.  The classical limit is a concentration phenomenon, not a restriction to a dominant subset.

This hierarchy -- Lipschitz $\subset$ Kato $\subset$ renormalizable -- is the regularity-theoretic shadow of the main paper's three compatibility channels: partition compatibility (where Lipschitz suffices), representation compatibility (where $\hbar$-regularization is needed), and scale compatibility (where renormalization is needed).

---

## References

1. [PicardLindelof] E. Picard (1890), E. Lindelof (1894).  Standard reference: Coddington and Levinson, *Theory of Ordinary Differential Equations* (1955).
2. [KatoRellich] T. Kato, "Fundamental properties of Hamiltonian operators of Schrodinger type," *Trans. AMS* 70 (1951), 195--211.
3. [SimonKato] B. Simon, "Schrodinger semigroups," *Bull. AMS* 7 (1982), 447--526.  (Comprehensive treatment of the Kato class and Feynman--Kac formula.)
4. [CameronMartin] R. H. Cameron and W. T. Martin, "Transformations of Wiener integrals under translations," *Ann. Math.* 45 (1944), 386--396.
5. [Xia1992] Z. Xia, "The existence of noncollision singularities in Newtonian systems," *Ann. Math.* 135 (1992), 411--468.
6. [Siegel1941] C. L. Siegel, "Der Dreierstoss," *Ann. Math.* 42 (1941), 127--168.
7. [McGehee1974] R. McGehee, "Triple collision in the collinear three-body problem," *Invent. Math.* 27 (1974), 191--227.
8. [Berkeley1734Analyst] G. Berkeley, *The Analyst* (1734).
9. [Spohn2004] H. Spohn, *Dynamics of Charged Particles and their Radiation Field* (Cambridge, 2004).
