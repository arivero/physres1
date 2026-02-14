# D46 Discovery: Ordering Equivalence Paper Scope

Date: 2026-02-14

## Question
What content should go into a satellite paper on "Ordering/Discretization as Equivalence Class" (Topic C from next-articles.md)?

## Context
- Cornerstone Section 10.2 has the f(q)p example (Weyl vs left ordering, O(ℏ) shift)
- D35+S290 developed four-layer stratification (principal symbol, connection, scalar potential, domain)
- D38+S294 showed deformation equivalence is physical (O(α²) energy shift unmeasurably small)
- Need to extend beyond the linear example to a richer symbol family

## Scope map

### Target length
6-9pp (PLB to mid-PRD range)

### Structure (8 sections)

1. **Introduction**
   - Ordering ambiguity as equivalence class, not defect
   - Classical limit as invariant (principal symbol)
   - O(ℏ) and O(ℏ²) correction layers
   - Relation to discretization prescriptions

2. **The Four-Layer Stratification**
   - Layer 1: Principal symbol (all orderings agree)
   - Layer 2: Connection term (half-density canonical, Weyl also has it)
   - Layer 3: Scalar potential (O(ℏ²) deformation freedom)
   - Layer 4: Domain (independent self-adjoint extension data)
   - Source: D35/S290 + D38/S294

3. **Worked Example 1: Position-Dependent Mass (PDM)**
   - Weyl: Ĥ_W = (1/2m(q))p² + (1/2)p²(1/m(q))
   - Half-density: Ĥ_HD = (1/2)(√m)⁻¹ p (√m)⁻¹ p (√m)⁻¹
   - Connection term: both share f'∂/∂q contribution
   - Scalar difference: −ℏ²f'²/(32mf) for f(q)=1/m(q)
   - Energy shift observable: ΔE₀ = −ℏωα₀²/16 (D38 result)

4. **Worked Example 2: Curved Configuration Space**
   - Laplace-Beltrami operator on Riemannian manifold
   - Minimal coupling: ∇†∇ (requires densitization)
   - Weyl-ordering generalization
   - Curvature potential: V_curv = (1/6)R (heat-kernel result from D26/S283)

5. **Star-Product Perspective**
   - Ordering as automorphism of ⋆-algebra
   - Moyal product vs Vey product
   - Gauge/conjugation freedom in deformation quantization
   - Bridge to Fedosov/Kontsevich formalism (outlook only)

6. **Time-Slicing Prescriptions**
   - Midpoint vs prepoint vs postpoint in path integrals
   - Connection to Stratonovich vs Itô (D25/S282)
   - How discretization choice maps to operator ordering
   - Sewing law preservation under different conventions

7. **Physical Measurability**
   - When do ordering differences matter? (Layer 3 vs Layer 1+2)
   - GaAs quantum well example: |ΔE₀| ~ 0.006-0.06 meV ≪ 0.1 meV
   - Deformation equivalence is physical, not merely formal
   - Domain effects (Layer 4) can dominate when present

8. **Conclusion**
   - Ordering equivalence class as gauge freedom
   - Half-density as canonical representative (like Lorenz gauge)
   - Forward references to RCP-foundations (representation channel)

### Key content targets
- At least 2 worked examples with explicit calculations
- Clear stratification of what's universal vs what's scheme-dependent
- Measurability analysis (when do differences matter?)
- Bridge to path-integral discretization
- Connection to star products (algebraic perspective)

### Sources
- D35/S290 (four-layer stratification)
- D38/S294 (PDM energy shift calculation)
- D26/S283 (heat kernel, curvature potential)
- D25/S282 (Itô vs Stratonovich)
- Cornerstone Section 10.2 (f(q)p example)
- Cornerstone Section 7 (deformation equivalence)

### Target audience
PRD / Annals of Physics style (detailed calculations, pedagogical)

## Success criteria
- 2+ worked examples with numerical estimates where applicable
- Clear four-layer stratification
- Star-product algebraic perspective included
- Path-integral discretization bridge
- 6-9pp compiled (300-450 lines)

## Next steps
- S301: Draft Sections 1-3 (intro + stratification + PDM example)
- C323: Create initial draft (~200-250 lines)
- C324: Expand with curved-space example + star products
- C325: Add time-slicing section
