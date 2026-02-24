# 9. Unified Perspective and Open Problems

## 9.1 The Three-Channel Compatibility Diagram

Sections 3–8 establish three compatibility conditions independently:

| Channel | Symbol | Sections | Core result |
|---------|--------|----------|-------------|
| Partition $\mathcal{C}_t$ | Temporal refinement | §3–4 | D1.1, P2.0 |
| Representation $\mathcal{Q}_\hbar$ | Ordering choices | §6–7 | D4.1a, P5.2 |
| Scale $\mathcal{R}_\Lambda$ | UV cutoff running | §8 | P6.1, D6.1 |

**P7.1 (Three channels agree).** A physical observable compatible in all three
channels (i.e., whose partition limit, ordering limit, and scale limit all exist)
has a single well-defined value.

**Correction from Lean review.** The previous formalization stated:
```lean
(∀ N ord, C_partition N = C_repr ord)   -- wrong: these are not equal!
```
The three channels do not produce *identical* intermediate values; they produce
predictions that agree *in the appropriate limit*.  The corrected version
`CompatibleObservable` separates the three convergence conditions.

## 9.1a D9.2a: Three-Level Regularity Hierarchy

**Synthesis Note §V.**  The three RCP channels correspond to three levels of
mathematical regularity in the space of dynamical theories:

| Level | Mathematical Criterion | Mechanism | RCP Channel | Example |
|-------|----------------------|-----------|-------------|---------|
| Classical | Lipschitz continuity of flow | Picard-Lindelöf uniqueness | Partition $\mathcal{C}_t$ | Newton ODE, area law |
| Quantum | Kato-class potential (form-bounded) | $\hbar$ UV regularization | Representation $\mathcal{Q}_\hbar$ | Coulomb potential |
| Renormalizable | UV fixed point (or asymptotic freedom) | Beta function flow | Scale $\mathcal{R}_\Lambda$ | 2D delta interaction |

**Level 1 — Classical.**  A theory is classically well-defined iff the Euler-Lagrange
ODE satisfies Picard-Lindelöf conditions: the Lagrangian is locally Lipschitz in $q,\dot q$.
This ensures existence and uniqueness of classical trajectories.

**Level 2 — Quantum.**  A theory is quantum-mechanically well-defined iff the
potential $V$ is in the Kato class:
$$\lim_{r\to 0}\sup_{x}\int_{|x-y|<r}\frac{|V(y)|}{|x-y|^{d-2}}\,dy = 0.$$
The Kato-Rellich theorem then guarantees that $H = -\hbar^2\Delta/2m + V$ is
self-adjoint, and the Hille-Yosida theorem provides the semigroup $e^{-iHt/\hbar}$.

**Level 3 — Renormalizable.**  A theory is renormalizable iff the beta function
$\beta(g)$ has a UV fixed point (or $\beta < 0$ for asymptotic freedom), ensuring
that the scale channel $\mathcal{R}_\Lambda$ is compatible.  Without this, the
coupling $g(\Lambda)$ diverges at a Landau pole (as in 2D QED).

The hierarchy is strictly inclusive: every renormalizable theory is quantum-mechanically
well-defined, and every QM-well-defined theory has a classical Lipschitz limit.

## 9.2 D7.1: No Hidden Leap

The classical-to-quantum transition requires:
1. Temporal composition of amplitudes → P4.2 forces $\hbar$ (§6).
2. Linearity of the kernel in initial conditions → superposition principle.
3. Unitarity: $\int|K(x,y,t)|^2\,dy = 1$ → probability conservation.

**No additional "quantization postulate" is needed.**  The wavefunction, the
Schrödinger equation, and the Born rule all follow from these three conditions
plus the semigroup structure.

**Via Hille-Yosida (§6.1b):** The semigroup axiom A1 and strong continuity force the
Schrödinger equation $i\hbar\dot\psi = H\psi$ (D4.0b).  The Hamiltonian $H$ is not
assumed — it is the generator.  Gleason's theorem (§9.2b below) then forces the Born rule.

This is the "no hidden leap" claim: every step in the derivation is explicit,
and the claim taxonomy (P/D/H) in each section documents where the gaps remain.

## 9.2a D9.2b: $\hbar = 0$ as Essential Singularity — Stokes Phenomenon

**Synthesis Note §VI.**  A key structural fact about the quantum-to-classical limit:

**The classical limit $\hbar\to 0$ is an essential singularity.**  The WKB expansion
$$Z(\hbar) = e^{-S_\text{cl}/\hbar}\sum_{n=0}^\infty a_n\hbar^n$$
is an *asymptotic series* (Poincaré 1886): it diverges for any fixed $\hbar > 0$,
but the partial sums approximate $Z(\hbar)$ to arbitrary accuracy as $\hbar\to 0$.

The function $e^{-1/\hbar}$ is $C^\infty$ at $\hbar = 0$ (all derivatives vanish)
but NOT analytic (it is not equal to its Taylor series $\equiv 0$).

**Stokes phenomenon.**  The asymptotic form of $Z(\hbar)$ changes discontinuously
as the argument of $\hbar$ crosses a *Stokes line* in the complex $\hbar$-plane.
Different Stokes sectors give different asymptotic expansions, all of which sum to
the same non-perturbative answer.

**Pointer basis interpretation.**  In decoherence theory, the "pointer basis"
is the preferred classical basis that survives the quantum-to-classical transition.
In the Stokes picture, the pointer basis is the "anti-Stokes direction" in the
complex $\hbar$-plane: the direction of approach to $\hbar = 0$ that minimizes
the Stokes oscillations.  Different pointer bases correspond to different Stokes
sectors.

**Non-injectivity.**  Two quantum theories can have the same asymptotic expansion
as $\hbar\to 0$ if they differ only by non-perturbative terms $O(e^{-S_\text{inst}/\hbar})$.
The classical limit $\hbar\to 0$ is NOT injective as a map from quantum to classical theories.

## 9.2b P7.2: Gleason's Theorem — Born Rule Forced

**Synthesis Note §IX.**

**Theorem P7.2 (Gleason 1957).**  Let $\mathcal{H}$ be a separable Hilbert space of
dimension $\geq 3$.  Every frame function $\mu$ (a non-contextual probability assignment
satisfying $\sum_i \mu(P_i) = 1$ for complete orthogonal decompositions $\{P_i\}$)
has the form
$$\mu(P) = \mathrm{Tr}(\rho P)$$
for a unique density matrix $\rho \geq 0$ with $\mathrm{Tr}(\rho) = 1$.

**Chain of forcing (A1 → Born rule):**

1. Composition axiom A1 (§1): $K(t_1+t_2) = K(t_1)\circ K(t_2)$.
2. D4.0b (§6.1b): Hille-Yosida forces Hamiltonian $H$; evolution is $e^{-iHt/\hbar}$.
3. The generator $H$ acts on a Hilbert space $\mathcal{H}$ (infinite-dimensional for
   fields, $\dim\geq 3$ for any non-trivial quantum system).
4. Gleason's theorem applies to $\mathcal{H}$: frame functions must be density matrices.
5. The Born rule $\Pr(\text{outcome}|P) = \langle\psi|P|\psi\rangle$ follows from
   taking $\rho = |\psi\rangle\langle\psi|$ (pure state density matrix).

**Conclusion:** The Born rule is forced by A1, not independently postulated.

## 9.3 D9.1: Ordering Differences Are $O(\hbar^2)$

**Derivation D9.1.** The classical action $S[q]$ is independent of operator
ordering: all orderings give the same $\hbar^0$ term.  The first ordering shift
appears at $O(\hbar^2)$ (as an additional curvature/connection term in the
quantized Hamiltonian).

**Explicitly for flat $\mathbb{R}^d$:**
- Weyl ordering and left ordering give the same kinetic operator $-\hbar^2\nabla^2/2m$.
- On a curved manifold with scalar curvature $R$, they differ by $\hbar^2 R/(12m)$.

**Lean formalization.** `D9_1_ordering_difference_is_order_hbar_squared` states
$|H_\text{ord1} - H_\text{ord2}| \leq C\hbar^2$.  Status: 🔲 sorry.
`D9_1a_flat_ordering_agreement` states flat-space equality.  Status: 🔲 sorry.

## 9.3a D9.3: Measurement as Semigroup Severance

**Synthesis Note §IX.**  A quantum measurement corresponds to inserting a
projection operator $P$ into the time evolution:

**Before measurement:** $K(t_1+t_2) = K(t_1)\circ K(t_2)$ holds.

**During measurement:** a projection $P : \mathcal{H}\to\mathcal{H}$ is applied
to the state.  The combined map is:
$$K_\text{meas}(t_2, t_\text{meas}, t_1) = K_\text{post}(t_2) \circ P \circ K_\text{pre}(t_1).$$

**Semigroup property fails:**
$$K_\text{meas}(t_2, t_m, t_1) \neq K_\text{post}(t_2+t_1)\circ P$$
in general.  The measurement breaks the composition law at $t = t_m$.

**"Wave function collapse" = semigroup severance.**  The dramatic language of
"collapse" is precisely the statement that the semigroup law breaks at the
measurement event.  No additional postulate is needed beyond:
- The Hilbert space structure (from D4.0b),
- The projection $P$ (representing the measurement apparatus and outcome).

**The 0+0/0+1/0+0 round-trip structure:**
- Phase 0 (Static, $t < 0$): Classical initial data — no semigroup needed.
- Phase 1 (Dynamic, $0 < t < T$): Quantum semigroup $K(t)$ active.
- Phase 0 (Static, $t > T$): Classical outcome — semigroup severed by measurement.

The quantum semigroup is the bridge between two classical statics.  $\hbar$ is
forced by the bridge, and has no role in the static phases alone.

## 9.3b D9.4: Decoherence as Non-Perturbative Remainder

**Synthesis Note §IX.**  Quantum interference terms between two classical paths
$q_1$ and $q_2$ that differ by an instanton (action $S_\text{inst} > 0$) contribute:
$$\text{interference amplitude} \sim e^{-S_\text{inst}/\hbar}.$$

This is:
- **Exponentially suppressed** as $\hbar\to 0$ (classical limit suppresses interference),
- **Beyond all perturbative orders**: for any $N$, $e^{-S/\hbar} = o(\hbar^N)$ as $\hbar\to 0^+$,
- **Real and observable**: physical decoherence occurs, but is invisible to perturbation theory.

The decoherence timescale satisfies $\tau_\text{dec}\sim\tau_\text{cl}\cdot e^{S_\text{dec}/\hbar}$,
which diverges exponentially in the classical limit.

**Mathematical statement (D9.4):** For any $S > 0$ and any polynomial $P$,
$$\lim_{\hbar\to 0^+}\frac{e^{-S/\hbar}}{P(\hbar)} = 0.$$
(Proved: standard real analysis, $u^n e^{-Su}\to 0$ as $u\to\infty$.)

## 9.4 D9.1e: Naive Kinetic Operator Fails on Curved Spaces

On a Riemannian manifold with metric $g_{ij}$, the naively left-ordered kinetic
operator $-\partial_q^2$ is NOT self-adjoint with respect to the natural measure
$\sqrt{g}\,d^d q$.

**Concrete example** (polar coordinates in flat $\mathbb{R}^2$):
- Wrong (not self-adjoint with $r\,dr\,d\theta$): $-(\partial_r^2 + \partial_\theta^2)$.
- Correct (Laplace-Beltrami): $-\frac{1}{r}\partial_r(r\partial_r) - \frac{1}{r^2}\partial_\theta^2$.

The half-density formulation of Section 6 (D4.0) automatically produces the
correct Laplace-Beltrami operator.

## 9.5 D9.1f: Self-Adjoint Extensions

**Derivation D9.1f.** The formal operator $-d^2/dx^2$ on $(0,1)$ admits a
one-parameter family of self-adjoint extensions, parameterised by a boundary phase
$\theta\in[0,2\pi)$.  The spectrum of the $\theta$-extension is:
$$\lambda_n(\theta) = (\pi n + \theta)^2, \qquad n\in\mathbb{Z}.$$

Different $\theta$ give genuinely different spectra (different physics), despite
sharing the same formal symbol.

**Lean formalization.** `D9_1f_laplacian_self_adjoint_extensions` is ✅ proved:
the spectrum formula is given explicitly, and distinctness for $\theta\neq\theta'$
follows by direct computation at $n=0$.

## 9.6 P10.2a: Ordering–RG Equivalence

**Proposition P10.2a.** Under RG flow, different ordering/discretization
prescriptions are equivalent: they differ only by a redefinition of the bare
coupling constant.  Physical predictions (renormalized observables) are ordering-independent.

This is the scale-channel version of P5.2 (Kontsevich gauge equivalence).

## 9.7 Residual Vulnerabilities and Open Problems

| Item | Status | Section |
|------|--------|---------|
| P4.2 uniqueness of $\hbar$ (dimensional analysis step) | 🔲 gap noted | §6 |
| D4.1a: full Gaussian convolution computation | 🔲 gap noted | §6 |
| P5.2 gauge equivalence at all orders | 🔲 gap noted | §7 |
| Hille-Yosida in Mathlib (D4.0b) | 🔲 not yet in Mathlib | §6 |
| Gleason's theorem in Mathlib (P7.2) | 🔲 not yet in Mathlib | §9 |
| $\delta$-function squared: not a distribution | ⚠️ heuristic | §5 |
| Collision singularity in central orbits | ⚠️ heuristic | §3 |
| Lorentzian path integral (oscillatory vs. damped) | 🔲 open | §9 |
| Resurgence and Stokes phenomenon | 🔲 open | §9 |

## 9.8 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| P7.1 three channels agree | `P7_1_three_channels_agree` | 🔲 sorry |
| D9.2a three-level hierarchy | `D9_2a_three_level_hierarchy` | 🔲 sorry |
| D9.2b essential singularity at ℏ=0 | `D9_2b_essential_singularity_at_hbar_zero` | 🔲 sorry |
| D9.2b non-perturbative remainder | `D9_2b_nonperturbative_remainder` | 🔲 sorry |
| D7.1 no hidden leap | `D7_1_no_hidden_leap` | ✅ trivial |
| D9.3 measurement severs semigroup | `D9_3_measurement_severs_semigroup` | 🔲 sorry |
| P7.2 Gleason / Born rule forced | `P7_2_gleason_born_rule_forced` | 🔲 sorry |
| P7.3 round-trip 0+1+0 structure | `P7_3_round_trip_structure` | ✅ trivial |
| D9.4 decoherence non-perturbative | `D9_4_decoherence_nonperturbative` | 🔲 sorry |
| D9.1 ordering diff = O(ℏ²) | `D9_1_ordering_difference_is_order_hbar_squared` | 🔲 sorry |
| D9.1a flat agreement | `D9_1a_flat_ordering_agreement` | 🔲 sorry |
| D9.1e polar Laplacian comparison | `D9_1e_polar_kinetic_operator_comparison` | 🔲 sorry |
| D9.1f self-adjoint extension spectrum | `D9_1f_laplacian_self_adjoint_extensions` | ✅ proved |
| P10.2a ordering-RG equivalence | `P10_2a_ordering_rg_equivalence` | 🔲 sorry |

---
*Transition to §10.* The remaining section gives explicit computational witnesses
for the key theorems in appendix form, including the new Butcher-Hopf algebra
section connecting ODE numerics to QFT renormalization.
