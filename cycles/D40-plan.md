# D40 Plan: Discrete-Time Composition and Continuum Forcing

Date: 2026-02-14
Track: D-triage (discovery planning)
Priority: Medium (tests whether P4.2 constraints force continuum limit)

## Question
**Does composition force the continuum limit (Δt → 0), or can discrete-time formulations satisfy P4.2's hypotheses (C)+(I)+(D)?**

P4.2 proves κ-necessity for continuous-time propagators K_t(x,y). But quantum mechanics is often formulated on discrete time lattices (Feynman's checkerboard, lattice field theory, numerical simulation).

**Gap:** If discrete time is compatible with (C)+(I)+(D), then the continuum limit is **optional** (a convenience, not necessity). If incompatible, then P4.2 forces **both** κ-necessity **and** continuum time.

## Context

### P4.2 Hypotheses (Continuous Time)
- **(C) Composition:** K_T = ∫ K_t₁(x,y) K_t₂(y,z) dy with T = t₁ + t₂
- **(I) Identity limit:** K_t → δ as t → 0⁺
- **(D) Dimensional homogeneity:** [K] = [length]^{−d}, parameters from {m, ℏ}

### Discrete-Time Analogues

**Checkerboard model (Feynman):** Spacetime lattice with spacing ε. Propagator:
```
K_nε(x,y) = composition of n single-step kernels K_ε
```

**Lattice QFT:** Euclidean time lattice with spacing a_t. Transfer matrix:
```
T(a_t) = exp(−a_t H)
```

**Trotter product:** Approximate e^{−iHt/ℏ} via:
```
e^{−iHt/ℏ} ≈ [e^{−iH(t/N)/ℏ}]^N as N → ∞
```

## Hypothesis

Discrete time **violates** (I) or (D), forcing continuum limit:

**Option 1 (Identity obstruction):** Discrete K_ε cannot satisfy lim_{ε→0⁺} K_ε = δ while maintaining composition closure (non-trivial dynamics).

**Option 2 (Dimensional obstruction):** Lattice spacing ε introduces length scale incompatible with {m, ℏ}-only parametrization required by (D).

**Option 3 (Composition obstruction):** Discrete semigroup K_nε = (K_ε)^n requires special fine-tuning (e.g., Trotter splitting) to approach continuum, breaking (C)'s naturalness.

## Concrete Witnesses

### Test 1: Feynman Checkerboard (1+1D)

Feynman's original checkerboard: Dirac equation discretized on spacetime lattice ε×ε.

Single-step kernel:
```
K_ε(x, x±ε) = (1/2) exp(±imc²ε/ℏ)
```

**Check:**
- Composition: (K_ε)^n gives n-step propagator. Does this reproduce continuum Dirac propagator as ε → 0?
- Identity: Does lim_{ε→0⁺} K_ε(x,y) = δ(x−y)?
- Dimensions: [ε] = [length] = [time]·[c]. Can {m, ℏ} alone determine ε?

### Test 2: Lattice Free Particle (Euclidean)

Discrete-time free particle on spatial lattice with spacing a, time step ε:
```
K_ε(x,y) = (const) exp(−m(x−y)²/(2ℏε))
```

**Check:**
- Composition: (K_ε)^n should give K_{nε}. Gaussian convolution: works in continuum, but discrete lattice?
- Identity: As ε → 0, does K_ε → δ? Requires normalization (const) → ε^{−d/2}.
- Dimensions: Lattice spacing a and time step ε are **external inputs**, not derivable from {m, ℏ}.

### Test 3: Trotter Splitting (Operator Approach)

For H = T + V, Trotter product:
```
e^{−iHε/ℏ} ≈ e^{−iTε/(2ℏ)} e^{−iVε/ℏ} e^{−iTε/(2ℏ)} + O(ε³)
```

**Check:**
- Composition: (Trotter)^n approaches e^{−iHnε/ℏ} only to O(ε²). **Exact** composition requires ε → 0 limit.
- Identity: As ε → 0, reproduces 𝟙. But for finite ε, there's O(ε) deviation.
- Dimensions: Time step ε is input, not output. Violates (D) unless ε emerges from {m, ℏ, ...}.

## Expected Obstructions

**Dimensional obstruction (most likely):** Discrete formulations require lattice spacing ε (or a, a_t) as **external input**. Hypothesis (D) demands parameters built from {m, ℏ} only. For free particle:
```
[ℏ/(mc)] = [length] (Compton wavelength)
[ℏ/(mc²)] = [time] (Compton time)
```

But choosing ε = ℏ/(mc) fixes the **scale**, violating the semigroup's **scale-invariance** (composition must hold for arbitrary t).

**Identity obstruction (secondary):** Discrete K_ε with finite ε cannot concentrate to δ (spread over lattice sites). As ε → 0, normalization diverges unless properly regulated — forcing continuum.

**Composition incompatibility (structural):** Discrete semigroups (K_ε)^n require ε-dependent corrections (Trotter error O(ε²)) to match continuum. **Exact** composition forces ε → 0.

## In Scope
1. Feynman checkerboard: explicit single-step kernel, dimensional analysis
2. Lattice free particle: Gaussian discrete convolution, normalization
3. Trotter product: error analysis, composition exactness

## Out of Scope
- Full lattice QFT formalism
- Renormalization of lattice theories (separate issue)
- Numerical convergence theorems (focus on structural necessity)

## Success Criteria

**One of these verdicts:**

1. **Dimensional obstruction:** Discrete formulations require lattice spacing ε as external input, violating (D)'s {m, ℏ}-only constraint.
   → P4.2 forces **both** κ-necessity **and** continuum time.

2. **Identity obstruction:** Finite-ε kernels cannot satisfy lim_{ε→0⁺} K_ε = δ while maintaining dynamics.
   → Continuum required by (I).

3. **Composition inexactness:** Discrete semigroups require ε-dependent corrections to match continuum composition.
   → (C) forces ε → 0 for exact closure.

4. **Discrete formulation compatible:** Lattice can satisfy (C)+(I)+(D) with ε emergent from {m, ℏ}.
   → Continuum is convenience, not necessity. (Unexpected, but if true, major discovery.)

## Technical Approach

### Dimensional Analysis

Free particle: [m] = M, [ℏ] = ML²T^{−1}.

Possible length scales:
- Compton wavelength: λ_C = ℏ/(mc) = [length]
- de Broglie wavelength: λ_dB = ℏ/p (momentum-dependent)

**Can ε be fixed from {m, ℏ} alone?**
- λ_C is a **fixed** scale (violates semigroup scale-invariance)
- λ_dB is **state-dependent** (not universal kernel property)

Lattice spacing ε must be **arbitrary** to allow composition at any scale t. But (D) forbids external dimensional inputs beyond {m, ℏ}. **Tension.**

### Feynman Checkerboard

Single-step kernel (1+1D, ±1 moves):
```
K_ε(x, x+ε) = (1/2) exp(imcε/ℏ)
K_ε(x, x−ε) = (1/2) exp(−imcε/ℏ)
```

Continuum limit: As ε → 0, recover Dirac propagator?

Standard result (Feynman 1965): Yes, but requires:
- ε = cΔt (light-cone constraint)
- N-step composition with N → ∞, ε → 0, Nε = t fixed

**The limit ε → 0 is mandatory.** Finite ε gives non-relativistic deviations.

### Gaussian Discrete Convolution

Lattice points {na}, n ∈ ℤ. Discrete Gaussian:
```
K_ε(na, ma) ∝ exp(−m(n−m)²a²/(2ℏε))
```

Normalization: Σ_m K_ε(na, ma) = 1 for all ε > 0?

Continuum limit: a → 0, K_ε(na, ma) → (m/(2πℏε))^{1/2} exp(−m(x−y)²/(2ℏε)) (Gaussian).

But discrete sum ≠ integral unless a → 0. **Continuum forced.**

## Connection to Existing Work

- P4.2 (paper/main.md lines 610-612): Hypotheses (C)+(I)+(D)
- D29/S288 (notebooks/p42-hypothesis-reduction.md): Composition forces exponential weight
- D39/S295 (notebooks/p42-hypothesis-reduction.md): (D) forces α=2 (Gaussian), excluding Levy jumps
- Feynman (1965), *Quantum Mechanics and Path Integrals*, Ch. 2: Checkerboard model

## Novelty Assessment

**Moderate.** Lattice formulations and continuum limits are well-studied. But the question "does P4.2's (D) hypothesis **force** continuum time, or is it compatible with discrete?" is novel to this project.

Expected result: **Verdict 1** (dimensional obstruction). Lattice spacing ε is an external input not derivable from {m, ℏ}, violating (D). Continuum time is necessary, not optional.

## Expected Outcome

**P4.2 extension:** Composition + identity + dimensional homogeneity force **both**:
1. κ = ℏ (action scale necessity)
2. **Continuum time** (discrete formulations require external ε, violating (D))

This would strengthen P4.2's inevitability thesis: not just "quantum mechanics requires ℏ" but "quantum mechanics requires continuum spacetime parametrization."
