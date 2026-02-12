# Q59 Debate: Should label namespace collision be fixed now or deferred?

Date: 2026-02-12

## Question
The main paper and companion paper use the same label scheme (D1.1, P1.1, H1.1, etc.) for different claims. Should we fix this now or defer?

## Decision
Defer. Add a note to `docs/research-state.md` under "Paper closure / hygiene."

## Rationale
1. Neither paper currently cross-references the other by label — they reference each other by title/filename.
2. Renaming labels in the companion would cascade through 100+ labels and risk introducing errors.
3. The collision only matters at submission time when both papers are read together. At that point, adding a paper-specific prefix (e.g., "RG-D1.0" for the companion) is a mechanical find-replace.
4. Fixing regularity and typography (the other two actionable items) is low-risk and should be done in C103.
