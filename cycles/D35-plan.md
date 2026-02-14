# D35 Plan: Half-Density Ordering Resolution vs Deformation Equivalence

Date: 2026-02-14
Track: D-triage (discovery planning)
Priority: High (Opus scan #1 recommendation)

## Question
**Is there a tension between Section 7 (deformation quantization, all orderings equivalent) and Section 10.2 (half-density conjugation selects canonical ordering)?**

Section 7: All ordering prescriptions are equivalent (related by formal automorphisms, Proposition P5.2)
Section 10.2: Half-density conjugation *selects* a preferred ordering (Remark D9.1a: "eliminates the first-derivative ambiguity entirely")

Are these compatible, or is there a hidden tension?

## Context from blackboards + notebooks
- **Blackboard 1** (S288): Exponential form forced by composition (uniqueness theorem)
- **Notebook** (ordering-unitarity, D23/S280): For H=qp, symmetry selects α=1/2 (midpoint/Weyl)
- **Section 7** (paper/main.md): Moyal product, star-product freedom, all orderings related by O(ℏ) automorphisms
- **Section 10.2** (paper/main.md): Half-density conjugation gives canonical kinetic operator with no connection term

## Hypothesis
The tension is **apparent, not real**. Resolution:
- **Section 7**: All orderings are equivalent *at the level of physical observables* (up to O(ℏ) corrections)
- **Section 10.2**: Half-density conjugation is a *gauge choice* that eliminates connection terms in the kinetic operator

But the question is: does "eliminating connection terms" mean:
1. **Strong claim**: Half-density selects THE unique correct ordering (conflicts with Section 7)
2. **Weak claim**: Half-density is a convenient gauge (compatible with Section 7, just picks one among equivalent choices)

## In scope
1. Read Section 7 (deformation quantization) carefully for the scope of "equivalence"
2. Read Section 10.2 (half-density) carefully for the claim strength
3. Test case: For a nontrivial symbol f(q)p² + V(q), does half-density conjugation:
   - Fix the principal symbol (kinetic part) canonically?
   - Fix O(ℏ) corrections to potential V?
   - Fix O(ℏ²) terms?
4. Compare half-density result with Moyal/Weyl/Born-Jordan orderings
5. Determine: Is half-density "canonical" or "convenient"?

## Out of scope
- Full star-product calculation (use existing Moyal results from Section 7)
- Curved-space generalization (defer to future)
- Manuscript promotion (that's C-cycle after resolution)

## Success criteria
**Sharp verdict on one of these:**
1. **No tension**: Half-density is a gauge choice; Section 7 and 10.2 are complementary (different perspectives on same physics)
2. **Scope clarification needed**: Half-density fixes principal symbol only; O(ℏⁿ) freedom remains (matches Section 7's deformation freedom)
3. **Real tension**: Half-density makes unique predictions that conflict with Section 7's equivalence claim (would need manuscript revision)

## Technical approach
Test symbol: f(q)p² + V(q)

Half-density conjugation (Section 10.2):
- Kinetic operator: -(ℏ²/2m)Δ_g with Laplace-Beltrami (no connection term)
- Potential: V̂ = ?

Moyal product (Section 7):
- f(q)p² via Moyal gives operator with specific O(ℏ) corrections
- Compare with half-density result

Expected: Half-density fixes kinetic (principal) part, leaves O(ℏⁿ) freedom = Section 7's deformation gauge

## Spawned cycles (expected)
- S290: Half-density vs Moyal comparison for f(q)p² + V(q)
