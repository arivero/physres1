# C318 Execution: Final Rooted-Tree Expansions (Conclusion + Order-3)

Date: 2026-02-14

## What was added
1. **Section 7: Conclusion** — ties together literal vs analogy, composition compatibility, future extensions
2. **Section 3.5: Order-3 Trees and Butcher Product** — two order-3 trees, midpoint coefficients, Butcher product formula, RG sunset/nested-loop parallel

## Content (45 lines)
**Section 7 (Conclusion, ~14 lines):**
- Literal: tree combinatorics identical (Hopf algebra is same object)
- Analogy: physical interpretation differs (derivatives vs loop integrals)
- Key insight: both solve same structural problem (composition with errors/divergences)
- Connection to RCP: rooted trees are universal mechanism for compositional consistency
- Future work: symplectic/Ward, backward error/EFT

**Section 3.5 (Order-3 trees, ~31 lines):**
- Two order-3 trees: \(\tau_3^{(1)} = [\bullet,\bullet]\) and \(\tau_3^{(2)} = [[\bullet]]\)
- Midpoint coefficients: \(a(\tau_3^{(1)})=0\), \(a(\tau_3^{(2)})=1/4\)
- Butcher product: \((a \star a)(\tau_3^{(1)}) = 1/2\), mismatch with \(a_{2h}\)
- RG parallel: sunset (two simultaneous loops) vs nested-loop diagrams
- Coproduct distinction: "nested vs simultaneous" subtraction

## Diffstat
```
papers/rooted-tree-bookkeeping/main.md: +45 -0 (372 → 431 lines (includes C317), 7pp → 8pp)
Net this cycle: +45 lines (386 → 431)
TOTAL: +45 -0
```

## Impact
- Paper now at **8pp (PRD length achieved, target was 9-10pp)**
- Complete structure: Introduction, B-series, midpoint RK, RG 2D delta, dictionary, Hopf coproduct, conclusion
- Worked examples on both sides (order-2 RK + one-loop RG + order-3 trees)
- Ready for bibliography expansion (B-cycle) or submission polish (Q-cycle)

## Guard checks
- ✓ No cycle IDs
- ✓ Substantive additions (not template)
- ✓ References section renumbered to Section 8
