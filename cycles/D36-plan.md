# D36 Plan: Interacting Composition Closure (Mehler Kernel Witness)

Date: 2026-02-14
Track: D-triage (discovery planning)
Priority: High (Opus scan recommendation, extends D34/D30/D37 beyond free particle)

## Question
**Does composition semigroup closure force d/2 normalization and κ-necessity for *interacting* (V≠0) short-time kernels, or do the Seeley-DeWitt correction terms provide an escape route?**

D34/S291 (Lorentzian), D30/S287 (curved space), and D37/S292 (iε uniqueness) all verified P4.2 for the *free* particle (exact Gaussian kernels). But P4.2 claims κ-necessity for **general Lagrangians with V≠0**.

Gap: The short-time kernel with potential is:
```
K_t(x,y) = N(t) Δ^{1/2}(x,y) exp(iS_cl/κ) [1 + a_1(x,y)t + a_2(x,y)t² + ...]
```

where the Seeley-DeWitt coefficients a_n break exact Gaussian closure. Does composition of the *corrected* kernel still force d/2 and κ-necessity, or can non-exponential weights mimic the semigroup at subleading order?

## Context from completed cycles
- **D37/S292** (blackboards/6.md): iε uniqueness from composition alone
- **D34/S291**: Lorentzian composition for free particle
- **D30/S287** (blackboards/5.md): Curved-space Van Vleck composition (leading order)
- **D29/S288** (blackboards/1.md): Functional equation forces exponential weight

All of these work with exact or leading-order kernels. The a_n corrections are O(t), O(t²), etc., and were not tested for composition closure.

## Hypothesis
The a_n coefficients are *forced by composition* (Seeley-DeWitt recursion relations are compatibility conditions), and the d/2 exponent + κ-necessity persist at all orders. No non-exponential weight can match the corrected semigroup.

## Concrete witness: Harmonic oscillator (Mehler kernel)
The 1D harmonic oscillator V = (1/2)mω²q² has an **exact** propagator (Mehler kernel):
```
K_t(x,y) = √(mω/2πiℏ sin ωt) exp(i·(mω/2ℏ sin ωt)·[(x²+y²)cos ωt − 2xy])
```

This kernel:
1. Is exact (all Seeley-DeWitt coefficients summed)
2. Composes exactly: K_t ∘ K_s = K_{t+s}
3. Has known short-time expansion: a_1 = iV(x)/ℏ + O(ω²)
4. Tests whether non-free composition preserves d/2 and κ

##In scope
1. Write Mehler kernel composition integral explicitly
2. Verify K_t ∘ K_s = K_{t+s} exactly (known result, but check normalization)
3. Extract short-time expansion and identify a_1 coefficient
4. Check if d/2 normalization is forced by composition (it should be)
5. Determine if κ-necessity persists with V≠0

## Out of scope
- General potentials (focus on harmonic oscillator)
- Higher Seeley-DeWitt coefficients a_2, a_3, ... (a_1 suffices)
- Multi-dimensional generalization
- Curved-space + potential (defer)

## Success criteria
**One of these verdicts:**

1. **Full persistence:** Mehler composition forces d/2 and κ-necessity identically to free case
   → P4.2 extends to interacting systems without qualification

2. **Persistence with corrections:** d/2 forced, κ-necessity forced, but a_n structure adds constraints
   → P4.2 extends with refined understanding of subleading terms

3. **Partial escape:** Mehler allows alternative normalizations at subleading order
   → P4.2 scope limited to free/leading-order

4. **Obstruction:** V≠0 breaks composition closure or weakens κ-necessity
   → P4.2 fundamentally free-particle result

## Technical approach
### Mehler kernel (1D)
```
K_t(x,y) = √(mω/2πiℏ sin ωt) exp[iS_t(x,y)/ℏ]
```
where
```
S_t(x,y) = (mω/2 sin ωt)[(x²+y²)cos ωt − 2xy]
```

### Composition integral
```
K_{t+s}(x,z) = ∫ K_t(x,y) K_s(y,z) dy
```

Expected: Gaussian integral in y (quadratic phase) yields K_{t+s}(x,z) exactly.

### Checks
1. **Prefactor:** Does √(sin ωt)^{-1} · √(sin ωs)^{-1} = √(sin ω(t+s))^{-1} after integration?
2. **Phase:** Does S_t(x,y) + S_s(y,z) → S_{t+s}(x,z) after stationary phase?
3. **d/2 exponent:** Is the (sin ωt)^{-d/2} scaling forced by composition functional equation?

## Spawned cycles (expected)
- S293: Mehler kernel composition check
- Potentially compare to heat kernel (Euclidean oscillator) for signature independence

## Connection to existing work
- D37/S292: iε uniqueness (free particle) — does it extend to Mehler?
- D30/S287: Van Vleck composition (leading order + V) — Mehler is exact sum
- S288: Functional equation for weight — Mehler tests this with V≠0

## Novelty assessment
**Moderate.** Mehler composition is textbook (Schulman, Feynman-Hibbs). But the explicit check that d/2 and κ-necessity are forced **by composition for V≠0** (not just free particle) would strengthen P4.2 by showing the crown jewel is not a free-particle artifact.

If successful, this would make P4.2's claim "composition forces κ for general V" rigorous by explicit witness, not just perturbative argument.
