# C113 Execution: Fix Section 9 signaling gaps (DX03 spawns)

Date: 2026-02-12

## Summary
- Two targeted edits to Section 9, both improving forward-signaling for recently added blocks.

## Work log
1. **Section 9.1 (line 1039):** Changed "divergent refinement is controlled by renormalization maps and RG semigroup consistency" to add parenthetical: "(`Remark D6.2a-sg` gives the explicit semigroup law and beta function in a toy model)."
2. **Section 9.3 (line 1100):** After "ordering appears as deformation-equivalence choice," added: "A complementary geometric resolution exists: half-density conjugation selects a canonical ordering for kinetic operators by eliminating the connection term (`Remark D9.1a`, Appendix §10.2)."

## Diffstat
```
paper-diffstat (cached): TOTAL +2 -2 (1 files)
  +2 -2 paper/main.md
```

## Guard checks (required before finalizing)
- No cycle IDs leaked into manuscripts: CLEAN
- Manuscript does not cite transcripts: CLEAN

## Outputs
- Manuscripts edited:
  - `paper/main.md` (Sections 9.1 and 9.3)

## Spawned cycles
- `Q68`: referee pass on C113
