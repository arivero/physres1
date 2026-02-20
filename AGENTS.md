# AGENTS.md

## Scope
This file applies to the entire repository. It is the canonical contract for all agents.

## Canonical Contract
1. `AGENTS.md` is the canonical repository contract for all agents.
2. If another local agent file exists (for example `CLAUDE.md`), treat it as supplemental only.
3. When overlap exists, keep policy in `AGENTS.md` and avoid split-brain duplicates across agent-specific files.

---

## Architecture Overview

This repository uses a **persistent team** of researcher agents, coordinated by a single
**orchestrator** (the conversation-level agent). The team is created via `TeamCreate` at
session start. Agents communicate via `SendMessage`, claim tasks from a shared kanban
(`TaskList`), and write to shared working surfaces (blackboards, notebooks). Each agent
has a private memory folder that no other agent can read.

Two **ephemeral agents** (Paper Writer, Bibliographer) are dispatched by the orchestrator
on demand for manuscript editing and source ingestion.

---

## 1. Orchestrator (Main Agent — Opus)

The conversation-level agent. Creates the team, manages the kanban, processes paper-edit
requests, and dispatches ephemeral agents.

**Reads:** everything (full repo access)

**Writes:**
- `agents/orchestrator/memory/*` (private working notes, log, status)
- `meta/research-state.md`, `meta/motivations.md`, `meta/handoff.md`
- `paper/`, `papers/*/` (via Paper Writer dispatch)
- `paper/bibliography.md` (via Bibliographer dispatch)

**Does NOT write:** blackboards, notebooks directly. Those are the researchers' surfaces.

**Responsibilities:**
- Team creation and shutdown
- Task creation, assignment, and monitoring via TaskList
- Processing paper-edit requests from researcher agents (via SendMessage)
- Dispatching ephemeral Paper Writer and Bibliographer subagents
- Notebook deletion vote tallying
- Commit policy enforcement
- Quality gates (ensure Critic review before submission-quality claims)
- Research state maintenance

---

## 2. Researcher Agents (Persistent Teammates)

Five persistent agents, spawned at session start via the Task tool with `team_name` parameter.
All share `agents/shared-rules.md` as their canonical rule set. See individual
`.claude/agents/*.md` files for persona-specific guidance.

| Agent | Model | Definition | Persona |
|-------|-------|------------|---------|
| Physicist | sonnet | `.claude/agents/physicist.md` | Intuitive, limiting cases, dimensional analysis, physical plausibility |
| Mathematician | sonnet | `.claude/agents/mathematician.md` | Rigorous, demands proofs, explicit hypotheses, statement precision |
| Critic | opus | `.claude/agents/critic.md` | Hostile referee, stress-tests claims, grades issues by severity |
| Computationalist | sonnet | `.claude/agents/computationalist.md` | SymPy, numerical checks, explicit calculations |
| Student | haiku | `.claude/agents/student.md` | Curious web browser, serendipitous discovery, finds unexpected connections |

**Capabilities** (all researchers):
- Read any file in the repo
- Write/patch `blackboards/*.md` (7-slot limit, 300 lines max)
- Append to `notebooks/*.md` (append-only)
- Write to own `agents/<name>/memory/*` (private)
- Vote to delete notebooks via `notebooks/votes.md`
- Download/read articles from the internet

**Restrictions** (all researchers):
- Cannot edit `paper/`, `papers/*/`, `paper/notes/` — request via SendMessage
- Cannot read other agents' `agents/*/memory/` folders
- Cannot edit `AGENTS.md`, `CLAUDE.md`, `meta/handoff.md`

---

## 3. Ephemeral Agents (Subagents via Task Tool)

### A. Paper Writer
- **Purpose**: Promote content into manuscripts
- **Writes**: `paper/main.md`, `papers/*/main.md`, `paper/notes/*.md`
- **Reads**: everything
- **Model**: opus
- **Dispatched by**: orchestrator only (in response to researcher SendMessage requests)
- **Rules**: paper-quality boundary (hard), net >= 10 lines per promotion, diffstat required

### B. Bibliographer
- **Purpose**: Search, ingest, verify references
- **Writes**: `paper/bibliography.md`, `sources/*`
- **Reads**: manuscripts, bibliography, sources
- **Model**: sonnet
- **Dispatched by**: orchestrator only
- **Rules**: OA-first policy, never-cite-transcripts rule, preprint caution

---

## 4. Variant Creation

To create a new agent variant (e.g., a nuclear physicist or algebraic geometer):
1. Copy `.claude/agents/<base-name>.md` to `.claude/agents/<variant-name>.md`
2. Modify the Identity and Persona-Specific Guidance sections
3. Create `agents/<variant-name>/memory/` folder
4. Shared rules inherited automatically via the include reference

---

## 5. Task Management (Kanban via TaskList)

The shared kanban replaces the old `cycles/index.md` task board.

- **Orchestrator** creates tasks via `TaskCreate` with subject, description, and activeForm.
- **Agents** check `TaskList` for available tasks (prefer lowest ID first, unblocked only).
- **Agents** claim tasks via `TaskUpdate` (set owner to their name).
- **Agents** mark tasks completed via `TaskUpdate` when done.
- **Dependencies**: use `addBlocks`/`addBlockedBy` in `TaskUpdate` when tasks depend on each other.

Task IDs are planning metadata only — never in manuscripts.

---

## 6. Communication Patterns

| Channel | Purpose | Who uses it |
|---------|---------|-------------|
| TaskList | Kanban — task creation, claiming, completion | All |
| SendMessage | Paper edit requests, reports, questions, collaboration | All |
| Blackboards | Shared working surface for math and exploration | Researchers |
| Notebooks | Shared stable memory (append-only) | Researchers |
| `agents/<name>/memory/` | Private working notes | Each agent (own folder only) |

---

## 7. File Permission Model

| Agent | Allowed Writes | Forbidden Writes |
|-------|---------------|-----------------|
| Orchestrator | `meta/*`, dispatch Paper Writer for `paper/` | Direct blackboard/notebook writes |
| Physicist | `blackboards/*.md`, `notebooks/*.md` (append), `agents/physicist/memory/*` | `paper/`, `papers/`, `meta/*` |
| Mathematician | `blackboards/*.md`, `notebooks/*.md` (append), `agents/mathematician/memory/*` | `paper/`, `papers/`, `meta/*` |
| Critic | `blackboards/*.md`, `notebooks/*.md` (append), `agents/critic/memory/*` | `paper/`, `papers/`, `meta/*` |
| Computationalist | `blackboards/*.md`, `notebooks/*.md` (append), `agents/computationalist/memory/*` | `paper/`, `papers/`, `meta/*` |
| Student | `blackboards/*.md`, `notebooks/*.md` (append), `agents/student/memory/*` | `paper/`, `papers/`, `meta/*` |
| Paper Writer (eph) | `paper/main.md`, `papers/*/main.md`, `paper/notes/*.md` | blackboards, notebooks, docs |
| Bibliographer (eph) | `paper/bibliography.md`, `sources/*` | manuscripts, blackboards, notebooks |

**Rule**: if a task requires touching files outside an agent's permissions, the orchestrator dispatches the appropriate agent instead.

---

## 8. Commit Policy

1. **When to commit:** at most **once per hour**. Do not commit after every task. Keep working between commits.
2. **Two-commit structure (per batch):**
   - **Commit 1 (manuscripts):** `.md` in `paper/` and `papers/*/`, `.tex`, `.bib`, `paper/bibliography.md`.
   - **Commit 2 (scaffolding):** everything else — `meta/`, `blackboards/`, `agents/`, `notebooks/`, config.
   - If no manuscripts changed, skip Commit 1.
3. **Commit metadata (required):**
   - Agent/model tag (e.g., `[opus-4.6]`, `[codex-cli]`, `[copilot]`)
   - Brief summary of work done

---

## 9. Workflow Rules

### Mathematics Must Be Written Down
All mathematical results must be written to persistent files:
- `blackboards/*.md` (preferred for work in progress)
- `notebooks/*.md` (for stabilized results)

Mathematics only in agent memory/context does NOT count as completion.

### Paper-Quality Boundary (Hard)
Manuscripts must contain publishable paper content only.

**Allowed**: reader-facing derivations, propositions, remarks, narrative.
**Forbidden**: workflow text, task IDs, scaffolding artifacts, process bookkeeping.

### Blackboard 7-Slot Limit
Max 7 blackboards (0.md–6.md), max 300 lines each. Overwrite least relevant when full. See `blackboards/README.md`.

### Notebook Append-Only + Voting
Content can be added but never edited or deleted. Deletion requires voting (see `agents/shared-rules.md` Section 2).

### Workspace Hygiene
- **Blackboards** (`blackboards/`): max 7 files. Delete before creating when at cap.
- **Paper notes** (`paper/notes/`): max 10 files. Retire integrated notes.
- **Notebooks** (`notebooks/`): append-only. Promotion from blackboards is intended.

### Quality Gates
- Critic review before any submission-quality claim
- Paper Writer produces >= 10 net lines per promotion (or justified exception)
- Diffstat recorded for every manuscript change

---

## 10. Paper Relationship Model
- **Satellite papers** (`papers/*/`) are **independent result papers** — publishable on their own (Phys. Lett. B style).
- **Main paper** (`paper/`) is a **review/survey** — Physics Reports scale.
- Cross-references between satellites and main should be light ("see companion note" style).

### Satellite Paper Page Limit
Target max **6 compiled LaTeX pages** in `elsarticle` 3p twocolumn format. Measure with `scripts/count-pages.sh`. Stop at 6pp; if exceeded, compact or reclassify as PRD-length (8–15pp).

---

## 11. Sources Policy
1. Never cite conversation transcripts as bibliography sources.
2. Prefer OA sources first; if unavailable, mark as `PENDING`.
3. Treat preprints as guides, not sources of truth.
4. Do not commit `sources/`; it is regenerable and gitignored.

---

## 12. Context Budget Rules
1. Scan all blackboards before choosing a task.
2. Read only relevant blackboard slots during a task.
4. Default-deny for high-volume history files.

---

## 13. Session Startup (Read Order)

### Orchestrator
1. `AGENTS.md`
2. `meta/motivations.md`
3. `meta/handoff.md`
4. `meta/research-state.md`
5. TaskList (check current state)

### Researcher Agents
1. `agents/shared-rules.md`
2. `meta/motivations.md`
3. `meta/research-state.md`
4. TaskList (check for assignments)
5. All blackboards (`blackboards/[0-6].md`)

---

## 14. Pre-Commit Hygiene Checks
If `paper/main.md` changed:
1. Task-ID leak check: `rg -n 'T[0-9]+' paper/main.md`
2. Transcript mention check: `rg -n 'conv_patched' paper/main.md`

## 15. Continuous Operation
When asked to run multiple tasks or given a time deadline, continue autonomously without pausing. Only stop when the requested count/deadline is reached or an error occurs.

### When No Tasks Are Available
**PRIORITY RULE:** Discovery and study tasks have priority over manuscript promotion.

1. Scan manuscripts for research opportunities (deep questions, derivation witnesses, promotion candidates).
2. Scan bibliography for source-driven work (PENDING sources, unintegrated sources).
3. If everything is stable: run quality sweeps via Critic, check page counts.

---

## 16. File Management
When files grow large, proactively archive. Deduplicate docs when content overlaps.

## 17. Build Hygiene
After a successful TeX build, delete auxiliary files:
```bash
rm -f paper/main.aux paper/main.log paper/main.toc
rm -f papers/<paper>/main.aux papers/<paper>/main.log
```
