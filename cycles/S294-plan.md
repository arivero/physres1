# S294 Plan: Position-Dependent Mass Energy Shift (Weyl vs Half-Density)

Date: 2026-02-14
Track: S-study (calculation)
Parent: D38 (Observable O(ℏ²) from D35 stratification)

## Goal
Compute the ground-state energy difference ΔE₀ = E₀^Weyl − E₀^HD between Weyl and half-density prescriptions for position-dependent mass f(q) = 1 + αq², determining whether D35's layer-3 deformation freedom has measurable consequences.

## Deliverable (keep bounded)
- Target: 1-2 pages of perturbation theory calculation
- Output: `blackboards/<slot>.md` (will choose slot per README)
- Format: First-order energy shift ⟨0|(H_W − H_HD)|0⟩ with numerical estimate

## Technical specification

### Model Hamiltonian
Position-dependent mass with harmonic trap:
```
H₀ = −(ℏ²/2m)∂² + (1/2)mω²q²
```

Perturbation (f(q) = 1 + αq²):
```
H = −(ℏ²/2)f(q)∂² + (1/2)mω²q²
```

### Two prescriptions (from blackboards/3.md)

**Weyl ordering:**
```
H_W = −(ℏ²/2)[f(q)∂² + f'(q)∂ + (1/4)f''(q)]
     = −(ℏ²/2)[(1+αq²)∂² + 2αq∂ + α/2]
```

**Half-density:**
```
H_HD = −(ℏ²/2)[f(q)∂² + Q_HD(q)]
```
where Q_HD comes from conjugation |g|^{1/4} with g^{−1} = 1+αq².

### Questions to answer (MUST compute in blackboard)
1. **Operator difference:** What is (H_W − H_HD) explicitly? Isolate O(ℏ²) terms.

2. **Ground state:** Use harmonic oscillator |0⟩ with ⟨q²⟩₀ = ℏ/(2mω), ⟨q⁴⟩₀ = 3ℏ²/(4m²ω²).

3. **Energy shift:** Compute ΔE₀^(1) = ⟨0|(H_W − H_HD)|0⟩ to first order in α.

4. **Numerical estimate:** For semiconductor parameters (m* ~ 0.07m_e, ℏω ~ 10 meV), what is |ΔE₀| in meV?

5. **Observability:** Compare to experimental resolution (~0.1 meV for spectroscopy).

## Success criteria (verdicts)
Deliver ONE of these (with explicit calculation in blackboard):

1. **Unmeasurably small:** |ΔE₀| ~ 10⁻³ meV ≪ 0.1 meV
   → D38 verdict 1 (deformation equivalence is physical)

2. **Measurable but consistent:** |ΔE₀| ~ 0.1 meV
   → D38 verdict 2 (equivalent within error bars)

3. **Measurably distinct:** |ΔE₀| ~ 1 meV ≫ resolution
   → D38 verdict 3 (prescriptions make different predictions)

4. **First-order vanishes:** ΔE₀^(1) = 0, need higher orders
   → D38 verdict 4 (equivalence stronger than expected)

## Scope
**In scope:**
- 1D harmonic trap as unperturbed system
- First-order perturbation theory in α
- Explicit operator expectation values ⟨0|q^n∂^m|0⟩
- Numerical estimate for GaAs quantum well

**Out of scope:**
- Higher-order corrections in α
- Excited states (ground state sufficient)
- Multi-dimensional systems
- Strong-coupling regime

## Where The Math Goes
**CRITICAL (Rule 8):** The explicit calculation MUST appear in the blackboard, including:
- Weyl operator: −(ℏ²/2)[(1+αq²)∂² + 2αq∂ + α/2]
- Half-density Q_HD term (from g^{−1} = 1+αq² conjugation)
- Difference operator (H_W − H_HD) simplified
- Expectation value ⟨0|(...)|0⟩ with Gaussian ground state
- Numerical substitution for semiconductor parameters

The cycles/S294-execution.md should contain only:
- Summary verdict (which success criterion)
- Pointer to blackboard
- Discovery flag

## Connection to existing work
- D35/S290 (blackboards/3.md): Four-layer stratification, f(q)p² comparison (source for Q_HD)
- Paper Section 7 (P5.2): Deformation equivalence claim being tested
- Paper Section 10.2 (D9.1a): Half-density prescription

## Expected novelty
**Moderate.** Position-dependent mass ordering is known (von Roos parameters). But explicit test of whether D35's layer-3 deformation freedom has observable consequences in realistic condensed matter systems is novel to this project. Expected result: |ΔE₀| ~ ℏ²α/(ma²) ~ 10⁻³ meV, confirming equivalence is physical.

## Experimental context
**Semiconductor quantum wells (GaAs/AlGaAs):**
- Effective mass: m* ~ 0.07m_e
- Confinement: a ~ 10 nm → mω ~ ℏ/a² → ℏω ~ 10 meV
- Spectroscopy resolution: ~0.1 meV (photoluminescence)
- Mass variation: Δm*/m* ~ α ~ 0.1–1 at interfaces

If |ΔE₀| ≪ 0.1 meV, prescriptions are experimentally indistinguishable.
