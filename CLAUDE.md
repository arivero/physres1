# Claude Instructions (Multi-Agent Repo)

This repo is worked on by multiple assistants (Codex CLI, GitHub Copilot, Claude).
To keep research coherent across resets and tools, follow the contract below.

## Read These Files First (in order)
1. `AGENTS.md` (canonical repo policies)
2. `docs/handoff.md` (durable commands + workflow)
3. `docs/research-state.md` (active threads + priorities)
4. `cycles/index.md` (what to do next)
5. `cycles/README.md` (cycle system rules)

## Non-Negotiable Guardrails
- Never put cycle labels like `C00` in rendered manuscript content (`paper/main.md`, generated `.tex`, PDF-visible text).
- Never cite `conv_patched.md` (or any transcript) as a bibliography source.
- Prefer OA sources first; otherwise mark `PENDING`.
- Treat Rivero preprints / arXiv drafts as **heuristic guides**, not “source of truth” for key claims.
- Do not commit `sources/` (it is regenerable and gitignored).

## What a Single Invocation Must Do
### 1) Pick and run at least one cycle
Choose the next action from `cycles/index.md` and run exactly one (or a small chain) of:
- `Snn` (study/blackboard),
- `Bnn` (bibliography/anchors),
- `Cnn` (promote into manuscripts),
- `Qnn` (quality/referee pass).

Create/modify the 4 cycle files:
- `cycles/<ID>-plan.md`
- `cycles/<ID>-execution.md`
- `cycles/<ID>-debate.md`
- `cycles/<ID>-redteam.md`

Also:
- Update `docs/research-log.md` with a dated entry for what happened.
- Update `cycles/index.md` statuses + next actions.

### 2) Special requirement for every `Cnn` cycle (diffstat)
After staging changes, record the manuscript line diffstat in `cycles/Cnn-execution.md`:
```bash
scripts/paper-diffstat.sh --cached
```
Paste under a `## Diffstat` heading.
If the output is `TOTAL +0 -0`, the execution log must explicitly explain why no promotion happened (and you should usually run an `S` and/or `B` cycle instead of forcing prose).

### 3) End in a commit
Every invocation should finish with a meaningful git commit (no empty commits):
- Stage changes (`git add ...`)
- Commit with a message like: `S26: ...`, `B06: ...`, `C54: ...`, `Q15: ...`
- Push if credentials are available; otherwise leave the commit locally and say so in your final response.

## Quick Pre-Commit Checks (When Relevant)
- Cycle-tag leak check (only needed if `paper/main.md` changed):
  - `rg -n 'C[0-9]{2}' paper/main.md`
- Transcript mention check (only needed if `paper/main.md` changed):
  - `rg -n 'conv_patched' paper/main.md`

