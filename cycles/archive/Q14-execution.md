# Q14 Execution: C-Cycle Diffstat Accountability

## Work Completed
- Added `scripts/paper-diffstat.sh` to summarize line additions/deletions in draft manuscripts (`paper/main.md`, `papers/*/main.md`) from `git diff --numstat`.
- Updated durable workflow docs so every `Cnn` cycle:
  - records this diffstat in `cycles/Cnn-execution.md` (recommended: run with `--cached` after staging),
  - explicitly explains “why no promotion” when the diffstat is `TOTAL +0 -0`.

## Checks Run
- Ran `scripts/paper-diffstat.sh --cached` on a clean index and observed `TOTAL +0 -0`, as expected.

