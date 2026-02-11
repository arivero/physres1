# C101 Red-Team: finite-step strength of Newton’s area law vs Noether

Date: 2026-02-11

## Failure modes
1. **Overclaiming strength.** Implying the area law contradicts Noether rather than simply having a larger domain of validity.
2. **Scope creep.** Reopening the derivation instead of adding a concise clarifying note.
3. **Cycle-tag leak.** Accidentally leaving cycle labels in the manuscript.

## Mitigations
- Phrase the clarification as domain/assumption comparison: polygonal equal areas are exact at finite step; Noether recovers the same invariant under smoothness + symmetry assumptions.
- Keep the addition to a short paragraph near the Noether equivalence statement; avoid touching the derivation blocks.
- Run the guard searches before finalizing.
