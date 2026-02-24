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
predictions that agree *in the appropriate limit*. The corrected Lean version
`CompatibleObservable` separates the three convergence conditions.

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
| D7.1 no hidden leap | `D7_1_no_hidden_leap` | trivial |
| D9.3 measurement severs semigroup | `D9_3_measurement_severs_semigroup` | sorry |
| P7.2 Gleason / Born rule forced | `P7_2_gleason_born_rule_forced` | sorry |
| P7.3 round-trip structure | `P7_3_round_trip_structure` | trivial |
| D9.4 decoherence non-perturbative | `D9_4_decoherence_nonperturbative` | sorry |
| D9.1 ordering diff = O(hbar^2) | `D9_1_ordering_difference_is_order_hbar_squared` | sorry |
| D9.1a flat agreement | `D9_1a_flat_ordering_agreement` | sorry |
| D9.1e polar Laplacian comparison | `D9_1e_polar_kinetic_operator_comparison` | sorry |
| D9.1f self-adjoint extension spectrum | `D9_1f_laplacian_self_adjoint_extensions` | proved |
| P10.2a ordering-RG equivalence | `P10_2a_ordering_rg_equivalence` | sorry |
