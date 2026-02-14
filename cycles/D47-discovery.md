# D47 Discovery: String Tension Paper Scope

Date: 2026-02-14

## Question
What content should go into a satellite paper on "String Tension as Universal Area-Scale Supplier" (Topic J from next-articles.md)?

## Context
- Planck-area paper argues half-density normalization forces length^{d/2} scale
- In d=4, this is naturally an area scale (candidate: Planck area)
- Alternative: QCD string tension σ with [σ] = length^{-2} provides area scale
- Question: Can confinement supply the scalarization scale instead of assuming Planck area?

## Scope map

### Target length
6-8pp (PLB to mid-PRD range)

### Structure (7 sections)

1. **Introduction**
   - Half-density scalarization requires length^{d/2} scale
   - In d=4: area scale (Planck area vs string tension)
   - QCD confinement provides σ with [σ] = length^{-2}
   - Question: Is σ a viable scalarization-scale supplier?

2. **Wilson Loop and String Tension**
   - Wilson loop definition: ⟨W⟩ ~ exp(-T V(r))
   - Area law for large loops: V(r) ~ σ r (linear potential)
   - String tension σ ~ (400 MeV)² ~ (0.5 fm)^{-2}
   - Associated area scale: α_σ = 1/σ ~ 0.25 fm²

3. **Dimensional Analysis: σ as Area-Scale Supplier**
   - [σ] = energy²/ℏ²c² = length^{-2} (in natural units)
   - Scalarization scale: σ^{-1/2} = length (wrong dimension for d=4!)
   - Need: σ^{-1} = area (correct dimension)
   - Comparison: α_σ ~ 0.25 fm² vs α_P ~ 10^{-66} cm² (66 orders apart!)

4. **Universality vs Sector-Specific Scales**
   - Universality hypothesis (planck-area paper): single α for all sectors
   - σ is QCD-specific: gluon confinement, not electroweak or gravity
   - Decoupled sectors can have independent scales (D32/S286 result)
   - Transitivity of interaction: coupled systems share scale

5. **Renormalization Group and Running**
   - σ is RG-invariant (physical observable)
   - But it's a *low-energy* scale (Λ_QCD ~ 200 MeV)
   - UV behavior: asymptotic freedom → σ not fundamental
   - Comparison to 2D delta κ_* (D-section result from RG-fundamental)

6. **Half-Density Kernel with QCD Scale**
   - If σ supplied scalarization: K ~ σ^{d/4} exp(iS/ℏ)
   - Numerical mismatch: α_σ^{1/2} ~ 0.5 fm vs λ_Compton ~ 10^{-13} cm (for electrons)
   - Sector mismatch: hadronic vs leptonic/electromagnetic
   - Conclusion: σ cannot be *universal* scalarization scale

7. **Conclusion and Outlook**
   - σ is a valid area-scale supplier for QCD sector (confinement)
   - But it's not universal (sector-specific, low-energy, non-fundamental)
   - Planck area remains the only *universal* area-scale candidate
   - Outlook: multi-scale scalarization? (different α per sector)

### Key content targets
- Wilson loop area law derivation
- Numerical comparison: α_σ vs α_P vs λ_Compton
- Universality obstruction analysis
- RG running argument (asymptotic freedom)
- Clear distinction: sector-specific vs universal

### Sources
- Standard QCD textbooks (Peskin-Schroeder, Schwartz)
- Planck-area paper (scalarization hypothesis)
- D32/S286 (κ universality for coupled systems)
- RG-fundamental paper (dimensional transmutation, RG-invariant scales)

### Target audience
PRD / Physics Letters B style (concise, focused argument)

## Success criteria
- Clear area-law derivation
- Numerical α_σ estimate
- Universality obstruction argument
- RG/UV behavior analysis
- 6-8pp compiled (250-350 lines)

## Verdict
**Scope is viable but conclusion is negative**: σ is NOT a universal scalarization scale.
- Paper would argue *against* σ as Planck-area alternative
- Still valuable: clarifies what confinement can/cannot supply
- Fits RCP framework: sector-specific vs universal compatibility data

## Decision
DEFER to later session — would be valuable but requires more QCD bibliography work (Wilson loop derivation, lattice QCD σ measurements, asymptotic freedom review). Current session should focus on papers that can be completed from existing blackboard/notebook material.

## Alternative next steps
- Expand RCP-foundations from 7pp to 8-9pp (add more worked examples)
- Expand planck-area Open Problems section
- Work on blackboard material (active S-cycles)
