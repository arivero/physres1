# GitHub Copilot Instructions (Multi-Agent Repo)

Before making suggestions or edits, read:
1. `AGENTS.md` (canonical policies)
2. `meta/handoff.md` (durable commands + workflow)
3. `meta/research-state.md` (threads + priorities)

## Guardrails
- Do **not** put task IDs in `paper/main.md` (or any PDF-visible content).
- Do **not** cite `conv_patched.md` as a source.
- Prefer OA sources; otherwise mark `PENDING`.
- Treat Rivero preprints as heuristic guides until independently verified.

## Architecture
This repo uses a persistent team of 5 researcher agents (see `AGENTS.md`).
The orchestrator manages tasks via a shared kanban and edits manuscripts directly.
Agents communicate via short signal phrases (<=120 chars). Manuscript edit requests
use `proposals/` files with diffs.
Canonical protocol is defined in `AGENTS.md` and `agents/shared-rules.md`.
