# Q57 Execution: referee pass on C100 step-halving/rooted-tree polish

Date: 2026-02-11

## Findings (C100)
- **Correctness:** the Euler step-doubling expansion and the \(O(h^3)\) branch-tree coefficient match the standard Taylor series for smooth \(f\); no new contradictions with the control-map narrative.
- **Clarity:** `paper/main.md` invokes \(F([\bullet,\bullet])\) without ever defining the \(F(\cdot)\) elementary-differential map in that manuscript; the RG note defines \(F([\bullet])\) inline, so the main paper would benefit from a matching first-use definition.
- **Hygiene:** `cycles/C100-execution.md` still lacks the required cached diffstat and guard-check outputs, leaving the cycle incomplete from a logging standpoint.
- **Scope:** the new branch-tree term implicitly assumes \(f\) is at least \(C^2\); neither manuscript states that smoothness requirement next to the \(O(h^3)\) remark.

## Required follow-ups
- `D15`: backfill `cycles/C100-execution.md` with the `scripts/paper-diffstat.sh --cached` output and record the guard checks for the committed `C100` diff.
- `C102`: define \(F([\bullet])\) / \(F([\bullet,\bullet])\) on first use (or drop the \(F\) notation) and state the \(C^2\) smoothness scope for the \(O(h^3)\) branch-tree term in both `paper/main.md` and `papers/rg-fundamental/main.md`.

## Optional follow-ups
- `S69` (if the tree dictionary grows): precompute the \(O(h^4)\) Euler discrepancy and identify the order-4 rooted trees so promotion can stay ahead of any future expansion.
