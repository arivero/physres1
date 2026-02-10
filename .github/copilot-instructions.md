# GitHub Copilot Instructions (Multi-Agent Repo)

Before making suggestions or edits, read:
1. `AGENTS.md` (canonical policies)
2. `docs/handoff.md` (durable commands + workflow)
3. `docs/research-state.md` (threads + priorities)
4. `cycles/index.md` and `cycles/README.md` (cycle system)

## Guardrails
- Do **not** put cycle labels like `C00` in `paper/main.md` (or any PDF-visible content).
- Do **not** cite `conv_patched.md` as a source.
- Prefer OA sources; otherwise mark `PENDING`.
- Treat Rivero preprints as heuristic guides until independently verified.

## Expected Workflow Per Invocation
1. Pick the next cycle from `cycles/index.md` and execute it (`S`/`B`/`C`/`Q`).
2. Write/update the four cycle files: `<ID>-plan`, `<ID>-execution`, `<ID>-debate`, `<ID>-redteam`.
3. Update `docs/research-log.md` (dated entry) and `cycles/index.md` (status + next action).
4. If it is a `C` cycle:
   - After staging, run `scripts/paper-diffstat.sh --cached` and paste the output into `cycles/Cnn-execution.md`.
5. Finish with a real commit (no empty commits). Push if available.

