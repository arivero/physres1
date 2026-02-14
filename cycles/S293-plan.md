# S293 Plan: Mehler Kernel Composition Check (Interacting Witness)

Date: 2026-02-14
Track: S-study (calculation)
Parent: D36 (interacting composition closure)

## Goal
Verify that composition semigroup K_t ∘ K_s = K_{t+s} forces d/2 normalization and κ-necessity for the **interacting** harmonic oscillator (V≠0), extending P4.2 beyond free particle.

## Deliverable (keep bounded)
- Target: 1-2 pages of explicit Mehler kernel composition integral
- Output: `blackboards/<slot>.md` (will choose slot per README)
- Format: Line-by-line composition showing exact closure

## Technical specification

### Mehler kernel (1D harmonic oscillator)
Exact propagator for V = (1/2)mω²q²:
```
K_t(x,y) = √(mω/2πiℏ sin ωt) exp[iS_t(x,y)/ℏ]
```
where classical action:
```
S_t(x,y) = (mω/2 sin ωt)[(x²+y²)cos ωt − 2xy]
```

### Composition integral to compute
```
K_{t+s}(x,z) = ∫_{−∞}^{∞} K_t(x,y) K_s(y,z) dy
```

Expected result:
```
K_{t+s}(x,z) = √(mω/2πiℏ sin ω(t+s)) exp[iS_{t+s}(x,z)/ℏ]
```

### Questions to answer (MUST compute in blackboard)
1. **Normalization closure:** Does √(sin ωt)^{−1} · √(sin ωs)^{−1} → √(sin ω(t+s))^{−1} after Gaussian integration?

2. **Phase closure:** Does S_t(x,y) + S_s(y,z) complete to S_{t+s}(x,z) after stationary phase?

3. **d/2 forcing:** Is the (sin ωt)^{−d/2} exponent forced by functional equation, or accidental?

4. **κ=ℏ persistence:** Does κ appear in denominator of action identically to free case, or modified by V?

5. **Short-time limit:** Extract a_1 Seeley-DeWitt coefficient from small-ωt expansion and verify a_1 = iV/ℏ

## Success criteria (verdicts)
Deliver ONE of these (with explicit calculation in blackboard):

1. **Full persistence:** Mehler composition forces d/2 and κ-necessity identically to free case (S291)
   → P4.2 extends to interacting systems without qualification (D36 verdict 1)

2. **Persistence with corrections:** d/2 forced, κ forced, but ω-dependent structure adds constraints
   → P4.2 extends with subleading refinement (D36 verdict 2)

3. **Partial escape:** Alternative normalizations possible at subleading order
   → P4.2 limited to free/leading-order (D36 verdict 3)

4. **Obstruction:** V≠0 breaks closure or weakens κ-necessity
   → P4.2 fundamentally free-particle result (D36 verdict 4)

## Scope
**In scope:**
- 1D harmonic oscillator (sufficient to test V≠0)
- Exact Mehler composition (known result, but check normalization mechanism)
- Short-time expansion to extract a_1
- Dimensional analysis of κ-dependence

**Out of scope:**
- Multi-dimensional generalization
- General potentials (harmonic is canonical interacting witness)
- Higher Seeley-DeWitt coefficients a_2, a_3, ...
- Curved-space + potential

## Where The Math Goes
**CRITICAL (Rule 8):** The explicit calculation MUST appear in the blackboard, including:
- Mehler integrand: product of two kernels with action S_t + S_s
- Completing the square in y (quadratic form with ω-dependence)
- Gaussian integral evaluation
- Normalization simplification: √(sin ωt · sin ωs / sin ω(t+s)) → 1
- Final result comparison to K_{t+s}

The cycles/S293-execution.md should contain only:
- Summary verdict (which success criterion)
- Pointer to blackboard
- Discovery flag

## Connection to existing work
- S292 (blackboards/6.md): iε uniqueness for free particle — does Mehler extend this?
- S291: Free Lorentzian composition — Mehler is interacting analog
- S287 (blackboards/5.md): Van Vleck composition (leading order) — Mehler is exact sum of all a_n
- S288 (blackboards/1.md): Exponential weight uniqueness — Mehler tests with V≠0

## Expected novelty
**Moderate-High.** Mehler composition is textbook (Schulman eq. 5.40, Feynman-Hibbs Ch. 3), but the explicit demonstration that **composition forces d/2 and κ for V≠0** (not just free) would make P4.2's generality claim rigorous by concrete witness, not just perturbative argument.

If a_1 coefficient is correctly reproduced from composition closure, this shows Seeley-DeWitt expansion is a **compatibility condition**, not an escape route.
