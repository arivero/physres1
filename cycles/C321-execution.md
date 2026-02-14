# C321 Execution: RG-Fundamental Section 4 Expansion

Date: 2026-02-14

## What was expanded
Section 4 of `papers/rg-fundamental/main.md` (601 → 692 lines, +91)

## Content added
**Section 4.2: Midpoint RK2 Composition Test (~35 lines)**
- Explicit midpoint rule expansion
- Two half-steps composition verification
- Rooted-tree formula τ₁⊗τ₁ = 2τ₂
- Forward reference to rooted-tree paper Section 3

**Section 4.3: Hopf Coproduct Structure (~45 lines)**
- Explicit Δ formulas for trees τ₁, τ₂, τ₃ (chain), τ₃' (branch)
- Admissible cuts interpretation
- Counterterm recursion connection (Bogoliubov forest formula)
- Bridge to Connes–Kreimer Hopf algebra

**Section 4.4: Higher-Order Preview (~15 lines)**
- Tree count growth (1,1,2,4,9,20 for orders 1-6)
- RK4 compositional complexity
- Forward reference to rooted-tree satellite

## Diffstat
```
papers/rg-fundamental/main.md: +91 -0 (601 → 692 lines)
TOTAL: +91 -0
```

## Impact
- Section 4 now ~120 lines (was ~30), substantive expansion
- Clear bridge to rooted-tree satellite paper
- Explicit Hopf coproduct formulas (checkable examples)
- RG-fundamental now ~11.5pp (target: 12-13pp)

## Next steps
- Add ~30-50 more lines to reach 12-13pp target
- Options: expand conclusion, add subsection in Section 5, or add forward references

## Guard checks
- ✓ No cycle IDs
- ✓ All formulas self-contained
- ✓ Forward references to rooted-tree paper added
