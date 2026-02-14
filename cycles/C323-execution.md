# C323 Execution: Initial Ordering Equivalence Paper Draft

Date: 2026-02-14

## What was created
New satellite paper: `papers/ordering-equivalence/main.md` (165 lines, initial draft)

## Structure (7 sections, 3 complete + 4 outlined)

**Complete sections:**
1. Introduction (ordering as equivalence relation, four-layer stratification, RCP representation channel, scope)
2. Four-Layer Stratification (Proposition OE-P1.1, Layers 1-4 definitions, Remark OE-H1.1)
3. Worked Example: Position-Dependent Mass (Weyl vs half-density derivations, layer-by-layer comparison, PDM harmonic oscillator numerical test, Proposition OE-P1.2)

**Outlined sections (to be expanded later):**
4. Worked Example: Curved Configuration Space (Laplace-Beltrami, curvature potential, template)
5. Star-Product Perspective (automorphism of ⋆-algebra, Moyal vs Vey, template)
6. Time-Slicing Prescriptions (midpoint vs prepoint, Itô vs Stratonovich, template)
7. Physical Measurability and Conclusion (template)

## Key content

**Four-layer stratification (Section 2):**
- Layer 1: Principal symbol (all orderings agree)
- Layer 2: Connection (geometric prescriptions share f'∂/∂q term)
- Layer 3: Scalar potential (O(ℏ²) deformation freedom)
- Layer 4: Domain (self-adjoint extension, independent of ordering)

**PDM worked example (Section 3):**
- Explicit Weyl ordering: Ĥ_W with −(ℏ²/4)f'' scalar
- Explicit half-density ordering: Ĥ_HD with −(ℏ²/8)f'' − (ℏ²/32)(f')²/f scalar
- Layer-by-layer comparison confirms Layers 1+2 agreement
- Numerical test: |ΔE₀| ~ 0.006-0.06 meV ≪ 0.1 meV resolution (GaAs parameters)
- Proposition OE-P1.2: Deformation equivalence is physical (unmeasurably small Layer 3 differences)

**RCP connection:**
- Ordering equivalence = representation channel of RCP
- Forward reference to [RCPFoundations]
- Half-density as canonical gauge (like Lorenz gauge)

## Sources
- D35/S290 (four-layer stratification discovery)
- D38/S294 (PDM energy shift calculation)
- D46/S301 (scope map + draft)
- Cornerstone Section 10.2 (f(q)p example)
- Cornerstone Section 7.4 (deformation equivalence, P5.2)

## Diffstat
```
papers/ordering-equivalence/main.md: +165 -0 (new file, foundation for 6-9pp target)
TOTAL: +165 -0
```

## Expansion path
Current: 165 lines (foundation, ~3-4pp compiled estimate)
Next steps:
- Expand Section 4 (curved space, from D26/S283, ~40 lines)
- Expand Section 5 (star products, ~35 lines)
- Expand Section 6 (time-slicing, from D25/S282, ~30 lines)
- Expand Section 7 (conclusion + measurability, ~30 lines)
Target: 6-9pp complete paper (~300-450 lines)

## Guard checks
- ✓ No cycle IDs
- ✓ Complete structure (all sections present)
- ✓ Substantive content in sections 1-3 (165 lines)
- ✓ Forward reference to RCP-foundations
- ✓ Two-layer explicit calculations (Weyl + half-density)
