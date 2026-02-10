# C79 Plan: Tighten `Remark D1.5a` Dimension-Selection Clarity

## Goal
Improve the readability of `Remark D1.5a` in `papers/planck-area/main.md` by adding one sentence that makes the spatial-dimension mass-scaling explicit and clarifies the special role of \(n=3\) (spacetime \(D=4\)) in the linear Compton scaling / \(G\)-cancellation story.

## Tasks
1. Add a short clarifying sentence to `Remark D1.5a` stating \(r\propto M^{-1/(4-n)}\) (for Gauss-law gravity, \(n\neq 4\)).
2. Run guardrails:
   - (No manuscript cycle-tag scan needed; `papers/*/main.md` can contain `Cnn` labels only if they are not rendered as prose. Keep none.)
3. Stage and record diffstat:
   - `scripts/paper-diffstat.sh --cached`

## Acceptance Tests
- Change is one sentence and does not overclaim (keeps "if one imposes areal speed" conditional context).
- `cycles/C79-execution.md` includes diffstat output.

