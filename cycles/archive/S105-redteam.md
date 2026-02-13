# S105 Red Team
Date: 2026-02-13
## Failure modes
1. **False claim nearly promoted.** The energy-preservation claim (O(h³) per step) was wrong by two orders and conceptually wrong (confusing accuracy with symplecticity). The subagent caught it. Without subagent review, this would have entered the manuscript.
2. **Fabricated numerical table.** Never write numerical values without computing them. In future blackboards, either run SymPy/Python or explicitly state "numerical values to be verified."
3. **Label D6.2a-HO fits the existing scheme** (D6.2a-sg, D6.2a1), but Section 8.4 is accumulating many sub-labels. Monitor for clutter.
