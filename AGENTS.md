# AGENTS.md

## Scope
This file applies to the entire repository. It is the canonical contract for all agents.

## Canonical Contract
1. `AGENTS.md` is the canonical repository contract for all agents.
2. If another local agent file exists (for example `CLAUDE.md`), treat it as supplemental only.
3. When overlap exists, keep policy in `AGENTS.md` and avoid split-brain duplicates across agent-specific files.

---

## Architecture Overview

This repository uses **dedicated subagents** (Claude Code Task tool invocations), each with their own responsibilities, file permissions, and system prompt. A single **orchestrator** (the conversation-level agent) reads state, decides what to do, and dispatches subagents. There are no per-task artifact files — agent outputs are either written to their designated files (blackboards, notebooks, manuscripts) or returned ephemerally to the orchestrator.

Work is tracked on a **task board** (`cycles/index.md`), not per-cycle artifact files.

---

## 1. Orchestrator (Main Agent — Opus)

The conversation-level agent. Reads state, decides what to do, dispatches subagents.

**Reads:** everything (full repo access)

**Writes:**
- `cycles/index.md` (task board)
- `docs/research-log.md`
- `docs/research-state.md`
- `docs/motivations.md` (append new motivations/connections/questions)
- `docs/handoff.md`

**Does NOT write:** manuscripts, blackboards, notebooks directly. Delegates to the appropriate agent.

**Responsibilities:**
- Task prioritization and dispatch
- Commit policy enforcement
- Quality gates (ensure referee review before submission)
- Research log maintenance
- Task board updates

---

## 2. Specialized Agents (Subagents via Task tool)

### A. Blackboard Agent
- **Purpose**: Exploratory math — conjectures, derivations, computations
- **Writes**: `blackboards/*.md` only
- **Reads**: blackboards, notebooks, manuscripts (for context)
- **Model**: sonnet (default) or opus (for hard derivations)
- **Prompt includes**:
  - Blackboard content rules: no prose, only formulas/statements/refs/keywords (see `blackboards/README.md`)
  - Slot management: 7 max (0–6), overwrite least relevant when full
  - Wastepaper-basket principle: discard aggressively
  - Max 300 lines per blackboard
  - Update slot index in `blackboards/README.md` when overwriting

### B. Notebook Agent
- **Purpose**: Stabilize blackboard content into expository technical memory
- **Writes**: `notebooks/*.md` only (append-only)
- **Reads**: blackboards, notebooks, manuscripts
- **Model**: sonnet
- **Prompt includes**:
  - Append-only rule: never edit existing content, only add at end
  - Content rules: math + exposition allowed (unlike blackboards)
  - Promotion path: from blackboards (primary) or discarded paper notes
  - Discard protocol: `git rm` when fully absorbed or irrelevant

### C. Paper Writer Agent
- **Purpose**: Promote stable content into manuscripts
- **Writes**: `paper/main.md`, `papers/*/main.md`, `paper/notes/*.md`
- **Reads**: everything
- **Model**: opus (manuscripts require highest quality)
- **Prompt includes**:
  - Paper-quality boundary (hard): no workflow text, no task IDs, no scaffolding artifacts
  - Minimum productivity: net >=10 lines of meaningful content, OR completion of a planned promotion, OR critical correctness fix
  - Diffstat requirement: run `scripts/paper-diffstat.sh --cached` and record output
  - Manuscript policy: only reader-facing derivations, propositions, remarks, narrative

### D. Referee Agent
- **Purpose**: Cold-read quality review of manuscript changes
- **Writes**: review reports (returned to orchestrator, not written to files)
- **Reads**: manuscripts, blackboards, notebooks
- **Model**: opus
- **Prompt includes**:
  - Persona assignment (from persona library — see below)
  - Severity ranking of issues found
  - Check categories: mathematical correctness, notation consistency, overstated claims, missing references
  - Cold-read requirement: fresh context, no authoring history

### E. Bibliographer Agent
- **Purpose**: Search, ingest, verify references
- **Writes**: `paper/bibliography.md`, `sources/*`
- **Reads**: manuscripts, bibliography, sources
- **Model**: sonnet (or haiku for simple lookups)
- **Prompt includes**:
  - OA-first policy: prefer open-access sources; mark unavailable as `PENDING`
  - Never-cite-transcripts rule
  - Preprint caution: treat as guides, not sources of truth; seek peer-reviewed support for key claims
  - Do not commit `sources/` (gitignored, regenerable)

---

## 3. Generic Researchers (Subagents with Persona+Skill)

For discovery and study work, the orchestrator spawns **researcher agents** with a persona and skill focus. These write to blackboards (via Blackboard Agent dispatch) and return findings to the orchestrator.

### Persona Library
Pick one per subagent invocation. Vary across tasks for diverse feedback.
- **Skeptical applied mathematician**: precise about computation, insists on reproducibility
- **Intuitive theoretical physicist**: checks limiting cases, dimensional analysis, physical plausibility
- **Rigorous pure mathematician**: demands explicit hypotheses, proof structure, statement precision
- **Pedagogical expositor**: focuses on clarity, accessibility, whether a graduate student could follow
- **Hostile referee**: actively looks for reasons to reject; stress-tests every claim

### Skill Focus
- **Computation**: SymPy, explicit calculations, numerical checks
- **Literature**: cross-referencing, finding connections, bibliography
- **Derivation**: formal proofs, lemma construction, gap-filling
- **Conceptual**: framing, analogies, gap identification, scope mapping

---

## 4. Task Board (replaces per-cycle artifacts)

The task board lives in `cycles/index.md`. See `cycles/README.md` for format spec.

**Key differences from old cycle system:**
- No per-task artifact files (plan/execution/debate/redteam)
- Agent outputs are ephemeral (returned to orchestrator) or written to designated files
- Simple table format with ID, type, agent, description, status
- Backlog section for future work

---

## 5. File Permission Model

| Agent | Allowed writes | Forbidden writes |
|-------|---------------|-----------------|
| Orchestrator | `cycles/index.md`, `docs/research-log.md`, `docs/research-state.md`, `docs/motivations.md`, `docs/handoff.md` | Manuscripts, blackboards, notebooks, bibliography |
| Blackboard Agent | `blackboards/*.md` | Manuscripts, notebooks, bibliography, docs |
| Notebook Agent | `notebooks/*.md` | Manuscripts, blackboards, bibliography, docs |
| Paper Writer | `paper/main.md`, `papers/*/main.md`, `paper/notes/*.md` | Blackboards, notebooks, bibliography, docs |
| Referee | None (returns report to orchestrator) | Everything |
| Bibliographer | `paper/bibliography.md`, `sources/*` | Manuscripts, blackboards, notebooks |
| Researcher | Via Blackboard Agent only | Direct manuscript/notebook/bibliography writes |

**Rule**: If a task requires touching files outside an agent's permissions, the orchestrator dispatches the appropriate agent instead.

---

## 6. Commit Policy

1. **When to commit:** at most **once per hour**. Do not commit after every individual task. Do not wait idle — keep working between commits.
2. **Two-commit structure (per batch):**
   - **Commit 1 (manuscripts):** manuscript source files — `.md` in `paper/` and `papers/*/`, `.tex`, `.bib`, `paper/bibliography.md`.
   - **Commit 2 (scaffolding):** everything else — `cycles/`, `docs/`, `blackboards/`, `paper/notes/`, `notebooks/`, config files.
   - If no manuscripts changed, skip Commit 1.
3. **Commit metadata (required in every commit message):**
   - Agent/model tag (e.g., `[opus-4.6]`, `[codex-cli]`, `[copilot]`)
   - Brief summary of work done
   - Token/usage estimate if available; otherwise `tokens: N/A`
4. **Research-log rollover before commit:**
   - Before starting commit work, move all but the latest three dated entries from `docs/research-log.md` into `docs/research-log-archive.md`.
   - Keep chronological order; append to archive.

---

## 7. Workflow Rules

### Mathematics Must Be Written Down
All mathematical results (derivations, calculations, technical claims) **must** be written to persistent files:
- `blackboards/*.md` (preferred for work in progress)
- `notebooks/*.md` (for stabilized results)
- `paper/notes/*.md` (only via Paper Writer, for manuscript-adjacent drafts)

**Not acceptable:** mathematics only in agent memory/context, only in task board entries, or verbal descriptions without explicit formulas.

### Paper-Quality Boundary (Hard)
Manuscripts must contain publishable paper content only.

**Allowed** in manuscripts:
- Reader-facing derivations, propositions, remarks, narrative transitions
- Explicit scope boundaries and assumptions needed for correctness

**Forbidden** in manuscripts:
- Workflow/status text ("next task", "todo", "spawn", "queue")
- Scaffolding artifacts from blackboards/notebooks/paper-notes
- Process bookkeeping that belongs in task board or docs
- Task IDs (T1, T2, etc.) — these are planning metadata only

### Blackboard 7-Slot Limit
Max 7 blackboards (0.md–6.md), max 300 lines each. Overwrite least relevant when full. See `blackboards/README.md`.

### Notebook Append-Only
Content can be added but never edited or deleted. Append corrections; don't rewrite. See `notebooks/README.md`.

### Workspace Hygiene
- **Blackboards** (`blackboards/`): max 7 files. Delete before creating when at cap.
- **Paper notes** (`paper/notes/`): max 10 files. Retire integrated notes.
- **Notebooks** (`notebooks/`): append-only technical memory. Promotion from blackboards is intended.

### Quality Gates
- Referee review (via Referee Agent) before any submission-quality claim
- Paper Writer produces >= 10 net lines per promotion (or justified exception)
- Diffstat recorded for every manuscript change

---

## 8. Paper Relationship Model
- **Satellite papers** (`papers/*/`) are **independent result papers** — publishable on their own (Phys. Lett. B style). They have their own internal logic.
- **Main paper** (`paper/`) is a **review/survey** — Physics Reports scale. It provides the overarching framework.
- Cross-references between satellites and main should be light ("see companion note" style), not load-bearing dependencies.

## Satellite Paper Page Limit
Satellite papers target max **6 compiled LaTeX pages** in `elsarticle` 3p twocolumn format. Always measure with `scripts/count-pages.sh`. Stop expanding at 6pp; if exceeded, compact or reclassify as PRD-length (8–15pp).

---

## 9. Sources Policy
1. Never cite conversation transcripts as bibliography sources.
2. Prefer OA sources first; if unavailable, mark as `PENDING`.
3. Treat preprints as **guides**, not sources of truth: seek independent peer-reviewed support for key claims.
4. Do not commit `sources/`; it is regenerable and gitignored.

---

## 10. Context Budget Rules
1. Keep `cycles/index.md` compact.
2. `docs/research-log.md` is append-only; at startup read only recent tail context.
3. Read only blackboard slots relevant to the current task.

## Context Poisoning Guardrails
1. Default-deny for high-volume history files: do not read full contents of `docs/research-log.md`, git-archived files, or session transcripts.
2. Read archived or log files only with an explicit reason, and only the minimal slice needed.
3. Never use broad scans that pull archive/log bodies into context.
4. If accidental ingestion happens, re-anchor on canonical state files (`AGENTS.md`, `docs/research-state.md`, `cycles/index.md`).

---

## 11. Session Startup (Read Order)
At session start, read these in order:
1. `AGENTS.md`
2. `docs/motivations.md`
3. `docs/handoff.md`
4. `docs/research-state.md`
5. `cycles/index.md`

---

## 12. Editable Documentation
- `docs/motivations.md` — agents may edit this file if they discover new motivations, research connections, or open questions.

## Docs Governance Map
- `docs/conv-coverage-map.md` — continuation/coverage bookkeeping; non-citable and optional.
- `docs/source-ingest-status.md` — source-ingest/network troubleshooting ledger.
- `docs/tex-env-report.md` — TeX environment inventory and smoke-test record.

---

## 13. Pre-Commit Hygiene Checks
If `paper/main.md` changed:
1. Task-ID leak check: `rg -n 'T[0-9]+' paper/main.md` (ensure no task board IDs in manuscript)
2. Transcript mention check: `rg -n 'conv_patched' paper/main.md`

## 14. Continuous Operation
When asked to run multiple tasks or given a time deadline, continue autonomously without pausing for confirmation. Only stop when the requested count/deadline is reached or an error occurs.

## When No Tasks Are Available (Looping Protocol)
If instructed to keep looping but no explicit tasks remain on the task board:

**PRIORITY RULE:** Discovery and study tasks have priority over manuscript promotion. Generate questions, identify gaps, and spawn exploration before reaching for promotion. We are researchers first, editors second.

1. **Scan manuscripts for research opportunities:**
   - Read manuscripts section by section
   - **First:** Identify deep questions raised by existing claims (spawn researcher task)
   - **Second:** Identify claims needing derivation witnesses (spawn blackboard task)
   - **Third:** Look for stable blackboard/notebook content ready for promotion (spawn paper writer task)

2. **Scan bibliography for source-driven work:**
   - Identify PENDING sources that can be acquired (spawn bibliographer task)
   - Identify acquired sources not yet integrated (spawn researcher → paper writer chain)

3. **If all manuscripts are stable and bibliography is current:**
   - Run quality sweep: spawn referee tasks on recent manuscript changes
   - Check page counts and run compaction if satellites exceed limits
   - Only then: idle or report completion

---

## 15. File Management
When files grow large or bloated, proactively archive. Deduplicate docs when content overlaps.

## 16. Build Hygiene
After a successful TeX build, delete auxiliary files explicitly:
```bash
rm -f paper/main.aux paper/main.log paper/main.toc
rm -f papers/<paper>/main.aux papers/<paper>/main.log
```
