# C324 Execution: Complete Ordering Equivalence Paper

Date: 2026-02-14

## What was expanded
Sections 4-7 of `papers/ordering-equivalence/main.md` (165 → 391 lines, +226)

## Content added

**Section 4: Curved Configuration Space (~65 lines)**
- 4.1: Minimal coupling ∇†∇ (half-density prescription)
- 4.2: Weyl-ordering generalization
- 4.3: Curvature potential (Layer 3 difference, V_curv = (ℏ²/6m)R)
- 4.4: Heat kernel and Van Vleck determinant
- Proposition OE-P1.3 (geometric prescriptions agree on Layers 1+2)
- Remark OE-H1.2 (curvature potential is universal in Layer 3)

**Section 5: Star-Product Perspective (~50 lines)**
- 5.1: Moyal product (Weyl ordering correspondence)
- 5.2: Vey product and ordering equivalence
- 5.3: Conjugation and equivalence class
- Proposition OE-P1.4 (star products related by automorphism)
- Heuristic OE-H1.3 (half-density as "Lorenz gauge")

**Section 6: Time-Slicing Prescriptions (~50 lines)**
- 6.1: Midpoint vs prepoint discretization
- 6.2: Itô vs Stratonovich and ordering
- 6.3: Sewing law and composition
- Proposition OE-P1.5 (midpoint ↔ Stratonovich ↔ half-density)
- Remark OE-H1.4 (discretization as partition-channel RCP witness)

**Section 7: Physical Measurability and Conclusion (~65 lines)**
- 7.1: When do ordering differences matter? (layer-by-layer analysis)
- 7.2: Half-density as canonical gauge
- 7.3: Connection to RCP (representation channel, operational form)
- 7.4: Outlook (QFT, deformation quantization, stochastic mechanics)
- 7.5: Conclusion (ordering as gauge freedom)
- Proposition OE-P1.6 (ordering equivalence is physical equivalence)

## Key results

**Layer-by-layer measurability:**
- Layer 1 (principal symbol): never measurable (all orderings agree)
- Layer 2 (connection): universal for geometric prescriptions
- Layer 3 (scalar potential): measurable in principle, unmeasurably small in practice
- Layer 4 (domain): always measurable when present (but independent of ordering)

**RCP representation channel:**
- Ordering equivalence = representation channel of RCP
- Operational form: O_{h,θ} = O_{h',τ(θ)} ∘ T
- Four-layer stratification = compatibility datum
- Transport rule: Layer 3 scalar correction

**Canonical gauge interpretation:**
- Half-density ordering ≈ Lorenz gauge (canonical, not unique)
- Geometrically natural, connection manifest, minimal Layer 3
- Path-integral midpoint (Stratonovich) correspondence

## Diffstat
```
papers/ordering-equivalence/main.md: +226 -0 (165 → 391 lines)
TOTAL: +226 -0
```

## Combined impact (C323+C324)
- Initial: 0 lines (new satellite)
- Final: 391 lines (~7-8pp compiled estimate)
- Section count: 7 complete sections (no templates remaining)
- Proposition count: 6 (OE-P1.1 through OE-P1.6)
- Worked examples: 2 (PDM, curved space)
- Cross-references: [RCPFoundations], [RGFundamental]

## Paper status
COMPLETE at PLB+ / mid-PRD length (~7-8pp)
- All sections substantive (no templates)
- 6 propositions + 4 heuristic remarks
- 2 detailed worked examples with numerical estimates
- Star-product algebraic perspective
- Path-integral discretization bridge
- RCP representation-channel connection
- Ready for quality pass or further expansion to full PRD length

## Guard checks
- ✓ No cycle IDs
- ✓ All sections complete (no templates)
- ✓ Forward references to RCP-foundations and RG-fundamental
- ✓ Four-layer stratification consistently applied
- ✓ Numerical estimates included (GaAs quantum well example)
