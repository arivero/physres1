# C317 Execution: Expand Rooted-Tree Outlook with Hopf Coproduct

Date: 2026-02-14

## What was added
Section 6.2 "Hopf Coproduct: Explicit Example" in `papers/rooted-tree-bookkeeping/main.md`

## Content (53 lines)
1. **Coproduct definition:** Admissible cuts, "top part ⊗ bottom parts" interpretation
2. **Explicit formulas:**
   - Order-1: \(\Delta(\bullet) = \bullet \otimes 1 + 1 \otimes \bullet\)
   - Order-2: \(\Delta([\bullet]) = [\bullet] \otimes 1 + 1 \otimes [\bullet] + \bullet \otimes \bullet\)
   - Order-3 (two examples): \([\bullet,\bullet]\) and \([[\bullet]]\) with forest terms
3. **Connection to composition:** \(\bullet \otimes \bullet\) term = grafting (Butcher) / nested subdivergence (RG)
4. **Antipode \(S\) and forest formula:** Explicit \(S([\bullet]) = -[\bullet] + \bullet^2\) calculation
5. **Why it matters:** Coproduct is the explicit recipe for tree composition/subtraction

## Diffstat
```
papers/rooted-tree-bookkeeping/main.md: +53 -0 (319 → 372 lines, 6pp → 7pp)
TOTAL: +53 -0
```

## Impact
- Paper now at **7pp (over PLB, approaching PRD target 9-10pp)**
- Makes Hopf algebra concrete (not just mentioned in dictionary table)
- Connects coproduct formulas to midpoint RK (Section 3) and 2D delta (Section 4) examples
- Old Section 6.2 renumbered to 6.3

## Next expansion paths
- Add symplectic RK worked example (~1-2pp) → Section 3.5 or 6.1 expansion
- Add backward error analysis (~1pp) → Section 6.1 or new Section 6.4
- Target: reach 9-10pp PRD length

## Guard checks
- ✓ No cycle IDs
- ✓ Substantive addition (explicit formulas, not template prose)
- ✓ Consistent with existing structure
