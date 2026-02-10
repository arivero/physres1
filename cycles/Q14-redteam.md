# Q14 Redteam: Failure Modes for C-Cycle Diffstats

## Failure Modes
1. **Quantity-over-quality:** inflating edits to “look productive”.
2. **False zeros:** new draft files not yet staged are invisible to `git diff` (untracked files).
3. **Wrong scope:** counting changes outside `paper/main.md` and `papers/*/main.md` hides that drafts were untouched.

## Mitigations
1. Treat diffstat as a log item; keep `Q` passes as the quality gate.
2. Run `scripts/paper-diffstat.sh --cached` after `git add` (captures new files).
3. Keep `C` cycles tightly scoped to draft promotion; if work is exploratory, use `S` cycles and blackboards.

