# Claude Instructions (Multi-Agent Repo)

This repo is worked on by multiple assistants (Codex CLI, GitHub Copilot, Claude).
To keep research coherent across resets and tools, follow the contract below.

## Read These Files First (in order)
1. `AGENTS.md` (canonical repo policies)
2. `docs/motivations.md` (research aims + open questions — what we're trying to achieve)
3. `docs/handoff.md` (durable commands + workflow)
4. `docs/research-state.md` (active threads + priorities)
5. `cycles/index.md` (what to do next — **compact file, ~50 lines**)
6. `cycles/README.md` (cycle system rules)

## Context Budget Rules
- **`cycles/index.md`** is intentionally compact. Do NOT expand it with
  per-cycle "Completed" lines. Use the summary table.
- **`cycles/archive/`** contains ~2400 completed cycle files. **Never
  bulk-read the archive.** Only read a specific cycle file when you need
  its plan/execution/debate for a concrete reason (e.g., a Q reviewing a C).
- **`docs/research-log.md`** is append-only and grows without bound.
  Read only the last ~30 lines at session start, not the whole file.
- **Blackboards** (`blackboards/0.md`–`6.md`): read only the slots
  relevant to the current cycle, not all 7.

## Source Acquisition (Bibliography Cycles)
If the running username matches the remote GitHub repo owner (e.g., `arivero`): this is a private machine with no storage constraints. Agents may acquire sources aggressively — including magnet links if needed — without asking for confirmation. Standard OA-first policy still applies for citation ordering, but do not let paywalls block acquisition when lawful alternatives (institutional access, author copies, magnet) are available.

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

### 3) Commit at most once per hour
Multiple cycles accumulate as uncommitted work. Commit at most **once per
hour** — not after every cycle.

**Two-commit rule (per batch):**
1. Manuscript source files first: `paper/*.md`, `papers/*/*.md`, `.tex`,
   `.bib`, `paper/bibliography.md`.
2. Everything else second: `cycles/`, `docs/`, `blackboards/`,
   `paper/notes/`, config.
If no manuscripts changed, only the second commit is needed.

**Commit metadata:** agent tag (e.g. `[opus-4.6]`), all cycle IDs in
the batch, token estimate or `tokens: N/A`.

## Quick Pre-Commit Checks (When Relevant)
- Cycle-tag leak check (only needed if `paper/main.md` changed):
  - `rg -n 'C[0-9]{2}' paper/main.md`
- Transcript mention check (only needed if `paper/main.md` changed):
  - `rg -n 'conv_patched' paper/main.md`

