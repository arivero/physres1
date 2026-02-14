# D38 Plan: Observable O(ℏ²) Signature from Stratification

Date: 2026-02-14
Track: D-triage (discovery planning)
Priority: Medium (Opus scan recommendation, concretizes D35 findings)

## Question
**Does D35's four-layer stratification predict a measurable O(ℏ²) difference between half-density and Weyl prescriptions for position-dependent mass systems?**

D35/S290 (blackboards/3.md) identified four layers of quantization freedom:
1. Principal symbol (all agree)
2. Connection term (half-density fixes uniquely)
3. **Scalar potential O(ℏ²)** (deformation freedom persists)
4. Domain/extensions (independent)

Gap: Layer 3 differences are "within deformation equivalence class," but does this mean physically indistinguishable, or merely asymptotically equivalent? For H = f(q)p², half-density gives geometric curvature potential Q_HD, Weyl gives −(ℏ²/4)f″. These differ at O(ℏ²).

## Hypothesis
For specific f(q) (e.g., position-dependent effective mass in condensed matter), the O(ℏ²) energy shift ΔE = E_Weyl − E_HD is **nonzero but unmeasurably small** in typical systems, confirming deformation equivalence is physical, not just formal.

Alternative: ΔE is large enough to distinguish prescriptions experimentally (would challenge equivalence).

## Concrete witness: 1D position-dependent mass
Model: H = −(ℏ²/2)f(q)∂²/∂q² + V_ext(q) with f(q) = 1 + αq²

Systems:
- Semiconductor heterostructures (position-dependent effective mass m*(z))
- BEC in optical lattices (spatially varying interaction strength)
- Curved 1D waveguides

## In scope
1. Compute ground-state energy E₀ for H_Weyl vs H_HD to first order in α
2. Express ΔE₀ = E₀^Weyl − E₀^HD in terms of (ℏ, m, α, ω)
3. Estimate numerical magnitude for realistic parameters
4. Compare to experimental energy resolution

## Out of scope
- Higher excited states (ground state sufficient)
- Multi-dimensional systems
- Strong-coupling regime (α ≫ 1)
- Non-perturbative methods

## Success criteria
**One of these verdicts:**

1. **Unmeasurably small:** |ΔE₀| ≪ experimental resolution for all realistic parameters
   → Deformation equivalence is physical (D35 layer-3 freedom has no observable consequence)

2. **Measurable but consistent:** |ΔE₀| ~ resolution, but both prescriptions within error bars
   → Equivalence holds practically; prescriptions are gauges

3. **Measurable and distinct:** |ΔE₀| ≫ resolution for some systems
   → Prescriptions make different predictions (challenges Section 7 equivalence claim)

4. **First-order vanishes:** ΔE₀ = 0 at O(α), need higher orders
   → Equivalence stronger than expected

## Technical approach
### Hamiltonians (1D)
Weyl:
```
H_W = −(ℏ²/2)[f(q)∂² + f'(q)∂ + (f″/4)]
```

Half-density (from blackboards/3.md):
```
H_HD = −(ℏ²/2)[f(q)∂² + Q_HD(q)]
```
where Q_HD = (geometric curvature term from conjugation).

### Perturbation theory
Ground state |0⟩ of H₀ = −(ℏ²/2)∂² (free particle or harmonic trap).

First-order shift:
```
ΔE₀^(1) = ⟨0| (H_W − H_HD) |0⟩
```

For f(q) = 1 + αq², expand to O(α).

### Numerical estimate
Semiconductor heterostructure typical parameters:
- m* ~ 0.07m_e (GaAs)
- Confinement length ~ 10 nm
- ℏω ~ 10 meV

Compute |ΔE₀| in meV and compare to spectroscopy resolution (~0.1 meV).

## Spawned cycles (expected)
- S294: Position-dependent mass energy shift calculation
- Potentially B-cycle for experimental parameters (heterostructure data)

## Connection to existing work
- D35/S290 (blackboards/3.md): Four-layer stratification, f(q)p² comparison
- Paper Section 7: Deformation equivalence claim (P5.2)
- Paper Section 10.2: Half-density prescription (D9.1a)

## Novelty assessment
**Moderate.** Position-dependent mass quantization is well-studied (von Roos 1983, BenDaniel-Duke 1966). But the explicit energy shift between half-density and Weyl *as a test of deformation equivalence* is novel to this project. If |ΔE| is unmeasurably small, this justifies treating equivalence as physical (not just formal); if measurable, it clarifies the scope of Section 7's claim.

## Expected result
Based on dimensional analysis: ΔE₀ ~ (ℏ²α/ma²) where a is confinement length. For semiconductor parameters, this is ~10⁻³ meV, below resolution. Verdict 1 (unmeasurably small) expected.
