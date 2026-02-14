# D45 Discovery: RG-Fundamental Expansion Scope (10pp → 12-13pp)

Date: 2026-02-14

## Current state
`papers/rg-fundamental/main.md`: 601 lines, ~10pp compiled

## Target
12-13pp to match action-angle (13pp), fermionic (13pp), uncuttable (13pp)
Need: +120-180 lines of substantive content

## Expansion opportunities

### 1. Section 4 (Rooted Trees) — PRIMARY TARGET
Current: ~30 lines (4.1 Euler step-doubling only)
Could expand to: ~100-120 lines

Add:
- **4.2: Midpoint RK2** (~35 lines)
  - Two-half-step composition test
  - Tree formula τ₁⊗τ₁ = 2τ₂
  - Explicit order-2 verification
  - Bridge to rooted-tree paper Section 3

- **4.3: Hopf Coproduct Structure** (~40 lines)
  - Explicit Δ formulas for trees τ₁, τ₂, τ₃
  - Admissible cuts interpretation
  - Antipode recursion pattern (S(L_n) for ladders)
  - Bridge to rooted-tree paper Section 6

- **4.4: Higher-Order Methods Preview** (~15 lines)
  - RK4 tree count (4 trees at order 4)
  - Compositional complexity growth
  - Forward reference to rooted-tree paper

### 2. Section 5 (2D Delta) — Secondary
Currently extensive (5.1-5.9, ~370 lines)
Could add:
- **5.10: Comparison to Fermionic RG** (~20 lines)
  - Bridge to fermionic satellite
  - Bosonic vs fermionic beta functions
  - Same compatibility principle, different sign

### 3. Section 7 (Conclusion) — Tertiary
Current: ~30 lines
Could expand to: ~50 lines
- More explicit forward pointers to satellite papers
- Stronger tie to RCP foundations paper

## Recommended path
Execute Section 4 expansion in 2 cycles:
- S300: Draft 4.2 (midpoint) + 4.3 (Hopf coproduct) content (~75 lines)
- C321: Insert drafted content into main.md

Expected result: 601 → ~720 lines (~12pp), hitting target range

## Dependencies
None (all content is self-contained, bridges to already-complete satellites)

## Success criteria
- RG-fundamental at 700-750 lines (~12-13pp)
- Section 4 substantively expanded (30 → 100+ lines)
- Clear forward references to rooted-tree paper
- Hopf coproduct formulas explicit and checkable
