# D59 Discovery: Does the composition axiom apply to fermionic path integrals?

Date: 2026-02-14
Parent: D53 (single-axiom P4.2), fermionic-mediators paper

## Novelty target
Test the "composition = master axiom" thesis against the fermionic path integral
(Grassmann variables, Berezin integration).

## Key analysis

### Bosonic recap (D53)
Composition (C): ∫ K(x,z;t₁) K(z,y;t₂) d^d z = K(x,y;t₁+t₂)
Forces: d/2 normalization, exponential weight, iε, identity limit, κ=ℏ.

### Fermionic composition
K_ferm(θ_f, θ_i; t) = kernel over Grassmann variables.
Composition: ∫ K(θ_f, θ; t₁) K(θ, θ_i; t₂) dθ = K(θ_f, θ_i; t₁+t₂)
where dθ is Berezin measure (∫dθ θ = 1, ∫dθ 1 = 0).

### What P4.2 conclusions survive

| P4.2 conclusion | Bosonic | Fermionic | Status |
|---|---|---|---|
| Exponential weight exp(iS/κ) | ✓ forced | ✓ forced | **UNIVERSAL** |
| d/2 normalization | ✓ forced | N/A (discrete) | **Bosonic only** |
| [K] = L^{-d} | ✓ forced | N/A (algebraic) | **Bosonic only** |
| Identity limit K→δ | ✓ forced | ✓ (Grassmann delta) | **UNIVERSAL** |
| κ = ℏ | ✓ forced (dimensional) | ✓ (from action units) | **UNIVERSAL** |
| iε uniqueness | ✓ forced | N/A (no oscillatory integral) | **Bosonic only** |
| Lévy exclusion | ✓ forced | N/A (no Lévy on Grassmann) | **Bosonic only** |

### Fermionic-specific features
1. **Berezin integration is algebraic**: ∫dθ is a derivation, not an integral.
   The composition law is a POLYNOMIAL identity, not an analytic one.
2. **Finite-dimensional**: N Grassmann modes give a 2^N-dimensional state space.
   No divergences, no regularization needed. A4 (scale/RG) only enters when
   coupling fermionic and bosonic sectors.
3. **Grassmann kernel form**: K = A + Bθ_fθ_i + ... (polynomial in θ). The
   exponential exp(iS/ℏ) terminates at finite order (nilpotency).

## Verdict
**PARTIAL UNIVERSALITY.** The composition law forces:
- **Universal** (boson + fermion): exponential weight, identity limit, κ=ℏ
- **Bosonic only**: d/2 normalization, dimensional homogeneity, iε, Lévy exclusion

The "geometric" P4.2 conclusions require continuous configuration space (ℝ^d).
The "algebraic" conclusions (exp(iS/κ), κ=ℏ) are universal.

### Clean separation
**Algebraic content** (universal): action additivity → exponential composition → κ=ℏ.
**Geometric content** (bosonic/continuous): d/2, dimensional counting, iε, Lévy.

## Novelty assessment
**MODERATE (scope clarification).** Identifies the universal vs geometric content
of P4.2, which has implications for the "inevitability of QM" narrative:
the algebraic core (exp(iS/ℏ)) is truly universal; the geometric conclusions
require the additional assumption of continuous configuration space.

## Spawned cycles
None. Could inform a sentence in the cornerstone or fermionic paper noting that
composition universally forces exp(iS/ℏ) even for Grassmann systems.
