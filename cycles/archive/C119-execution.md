# C119 Execution: planck-area standalone cleanup

Date: 2026-02-13

## What changed
Removed all 7 internal repo references from `papers/planck-area/main.md`:

1. **Line 12:** "companion to `paper/main.md`" → "isolates one technical point often implicit in treatments of path integrals"
2. **Line 29:** "`paper/main.md` (Section 6)" → "the structural reason why kernel composition in the path-integral formalism is coordinate-invariant"
3. **Line 157:** cross-references to `papers/half-density-qft/main.md` and `blackboards/...` → "a direct computation gives"
4. **Line 315:** "as noted in the main manuscript (Section 8.4)" → removed; "Proposition P6.2 in main text" → self-contained description; "Remark D6.2a-sg" → inline description
5. **Line 383:** "The main manuscript uses" → "In the standard path-integral formalism"
6. **Line 498:** "`papers/relativistic-central-orbits/main.md`" → "a mechanical special-relativistic model"
7. **Lines 684–689:** "Interface with the Main Paper" → "Connection to the Refinement-Composition Framework"; "The main manuscript argues" → "The broader program"

## Verification
- grep for internal refs: 0 matches
- Cycle-tag check: 0 matches
- conv_patched check: 0 matches
- .tex rebuilt, pdflatex: 22 pages, no errors

## Diffstat
```
paper-diffstat (cached): TOTAL +9 -9 (1 files)
  +9 -9 papers/planck-area/main.md
```
