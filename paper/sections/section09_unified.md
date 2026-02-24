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

## 9.2 D7.1: No Hidden Leap

The classical-to-quantum transition requires:
1. Temporal composition of amplitudes → P4.2 forces $\hbar$ (§6).
2. Linearity of the kernel in initial conditions → superposition principle.
3. Unitarity: $\int|K(x,y,t)|^2\,dy = 1$ → probability conservation.

**No additional "quantization postulate" is needed.**  The wavefunction, the
Schrödinger equation, and the Born rule all follow from these three conditions
plus the semigroup structure.

This is the "no hidden leap" claim: every step in the derivation is explicit,
and the claim taxonomy (P/D/H) in each section documents where the gaps remain.

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
| $\delta$-function squared: not a distribution | ⚠️ heuristic | §5 |
| Collision singularity in central orbits | ⚠️ heuristic | §3 |
| Lorentzian path integral (oscillatory vs. damped) | 🔲 open | §9 |

## 9.8 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| P7.1 three channels agree | `P7_1_three_channels_agree` | 🔲 sorry |
| D7.1 no hidden leap | `D7_1_no_hidden_leap` | ✅ trivial |
| D9.1 ordering diff = O(ℏ²) | `D9_1_ordering_difference_is_order_hbar_squared` | 🔲 sorry |
| D9.1a flat agreement | `D9_1a_flat_ordering_agreement` | 🔲 sorry |
| D9.1e polar Laplacian comparison | `D9_1e_polar_kinetic_operator_comparison` | 🔲 sorry |
| D9.1f self-adjoint extension spectrum | `D9_1f_laplacian_self_adjoint_extensions` | ✅ proved |
| P10.2a ordering-RG equivalence | `P10_2a_ordering_rg_equivalence` | 🔲 sorry |

---
*Transition to §10.* The remaining section gives explicit computational witnesses
for the key theorems in appendix form.
