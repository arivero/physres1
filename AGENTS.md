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
**orchestrator** (the conversation-level agent). The team is created at session start.
Agents communicate via messages, claim tasks from a shared kanban, and write to shared
working surfaces (blackboards, notebooks). Each agent has a private memory folder that
no other agent can read.

Library work (searching, downloading, ingesting references) is done by any researcher
agent directly — see `agents/shared-rules.md` §11. The orchestrator handles paper
edits directly (no ephemeral subagents).

---

## 1. Orchestrator (Main Agent — Sonnet)

The conversation-level agent. Creates the team, manages the kanban, processes paper-edit
requests, and dispatches ephemeral agents.

**Reads:** everything (full repo access)

**Writes:**
- `agents/orchestrator/memory/*` (private working notes, log, status)
- `meta/research-state.md`, `meta/motivations.md`, `meta/handoff.md`
- `paper/`, `papers/*/` (direct edits)
- `paper/bibliography.md`

**Does NOT write:** blackboards, notebooks directly. Those are the researchers' surfaces.

**Responsibilities:**
- Team creation and shutdown
- Task creation, assignment, and monitoring via the shared kanban
- **Polling `proposals/` for agent output** — read proposal files, process, then delete
- Processing paper-edit requests directly (no subagent)
- Notebook deletion vote tallying (commit-safety check before executing `git rm`)
- Commit policy enforcement
- Quality gates (promotion rules, diffstat tracking)
- Research state maintenance

---

## 2. Researcher Agents (Persistent Teammates)

Five persistent agents, spawned at session start. All share `agents/shared-rules.md`
as their canonical rule set. See individual agent definition files for persona-specific guidance.

| Agent | Model | Definition | Persona |
|-------|-------|------------|---------|
| Physicist | sonnet | `.claude/agents/physicist.md` | Intuitive, limiting cases, dimensional analysis, physical plausibility |
| Mathematician | sonnet | `.claude/agents/mathematician.md` | Rigorous, demands proofs, explicit hypotheses, statement precision |
| Critic | opus | `.claude/agents/critic.md` | Skeptical colleague, stress-tests claims, grades issues by severity |
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
- Cannot edit `paper/`, `papers/*/`, `paper/notes/` — request via orchestrator
- Cannot read other agents' `agents/*/memory/` folders
- Cannot edit `AGENTS.md`, `CLAUDE.md`, `meta/handoff.md`

---

## 3. Paper Editing

The orchestrator edits `paper/` and `papers/*/` directly when processing proposals.
No ephemeral subagents. Library work is done by researcher agents directly
(see `agents/shared-rules.md` §11).

---

## 4. Variant Creation

To create a new agent variant (e.g., a nuclear physicist or algebraic geometer):
1. Copy `.claude/agents/<base-name>.md` to `.claude/agents/<variant-name>.md`
2. Modify the Identity and Persona-Specific Guidance sections
3. Create `agents/<variant-name>/memory/` folder
4. Shared rules inherited automatically via the include reference

---

## 5. Task Management (Shared Kanban)

The shared kanban is the project's task board.

- **Orchestrator** creates tasks with subject, description, and priority.
- **Agents** check the kanban for available tasks (prefer lowest ID first, unblocked only).
- **Agents** claim tasks by setting themselves as owner.
- **Agents** mark tasks completed when done.
- **Dependencies**: tasks can block or be blocked by other tasks.

Task IDs are planning metadata only — never in manuscripts.

---

## 6. Communication Patterns — Minimal Context Protocol

**Messages are signal-only.** All substantive content goes to files on disk.

| Channel | Purpose | Who uses it |
|---------|---------|-------------|
| Kanban | Task creation, claiming, completion | All |
| Messages | **One-word signals only** (`done`, `proposal`, `stuck`, `idle`) | All |
| `proposals/` | Paper edit requests, findings, questions — **all content** | Researchers → Orchestrator |
| Blackboards | Shared working surface for math and exploration | Researchers |
| Notebooks | Shared stable memory (append-only) | Researchers |
| `agents/<name>/memory/` | Private working notes | Each agent (own folder only) |

**Asymmetric limits:**

| Direction | Limit | Reason |
|-----------|-------|--------|
| Agent → Orchestrator | **≤ 50 chars** (one word) | Burns orchestrator context |
| Orchestrator → Agent | 1–2 sentences OK | Agent's own context |
| Agent ↔ Agent | 1–2 sentences OK | Their own contexts |

**Why:** Agent→orchestrator messages are delivered as conversation turns in the
orchestrator's 200k context window. At ~120k tokens/cycle with 5 agents, context
exhausts after ~3 auto-compressions. Moving content to `proposals/` on disk keeps
the orchestrator's window for actual work.

Proposal files: `proposals/<agent>-<topic>.md` (gitignored, ephemeral).

---

## 7. File Permission Model

| Agent | Allowed Writes | Forbidden Writes |
|-------|---------------|-----------------|
| Orchestrator | `meta/*`, `paper/`, `papers/*/` (direct edits) | Direct blackboard/notebook writes |
| Physicist | `blackboards/*.md`, `notebooks/*.md` (append), `agents/physicist/memory/*` | `paper/`, `papers/`, `meta/*` |
| Mathematician | `blackboards/*.md`, `notebooks/*.md` (append), `agents/mathematician/memory/*` | `paper/`, `papers/`, `meta/*` |
| Critic | `blackboards/*.md`, `notebooks/*.md` (append), `agents/critic/memory/*` | `paper/`, `papers/`, `meta/*` |
| Computationalist | `blackboards/*.md`, `notebooks/*.md` (append), `agents/computationalist/memory/*` | `paper/`, `papers/`, `meta/*` |
| Student | `blackboards/*.md`, `notebooks/*.md` (append), `agents/student/memory/*` | `paper/`, `papers/`, `meta/*` |
| Any researcher | `sources/*` (library — download and ingest references) | — |

**Rule**: if a task requires touching files outside an agent's permissions, request it via the orchestrator.

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
- Promotions should produce >= 10 net lines (or justified exception)
- Diffstat recorded for every manuscript change

---

## 10. Paper Relationship Model
- **Satellite papers** (`papers/*/`) are **independent result papers** — publishable on their own (Phys. Lett. B style).
- **Main paper** (`paper/`) is a **review/survey** — Physics Reports scale.
- Cross-references between satellites and main should be light ("see companion note" style).

### Satellite Paper Page Limit
Target max **6 compiled LaTeX pages** in `elsarticle` 3p twocolumn format. Measure with `scripts/count-pages.sh`. Stop at 6pp; if exceeded, compact or reclassify as PRD-length (8–15pp).

### Satellite Paper Lifecycle

```
CONCEPTION → DRAFT → EXPANDING → FROZEN → SUBMITTED → PUBLISHED
                                    ↓           ↓
                                 DISCARDED    ERRATUM
```

**Conception**: Any researcher can propose a new satellite by messaging the
orchestrator. The orchestrator can also conceive papers from the
`meta/next-articles.md` backlog. Criterion: a self-contained result deserving
its own paper. Action: orchestrator creates `papers/<name>/main.md`.

**Draft → Expanding**: Researchers contribute content via blackboards →
paper-edit proposals. Orchestrator executes (two-agent promotion rule). Page
count tracked via `scripts/count-pages.sh`.

**Freezing**: Triggered when the paper reaches its target page limit.
Orchestrator confirms. Marked FROZEN in `meta/research-state.md`. No further
expansion unless explicit reclassification.

**Publication**: "The review never is" — publication is a state of the paper,
not a claim of perfection. Any agent may raise issues at any time, before or
after publication. Issues found post-publication go to `meta/anomalies.md` or
generate erratum tasks.

**Discard**: Same vote threshold as notebooks (3/5 agents or 2 + orchestrator).
Salvage valuable notes to notebooks first, then `git rm -r`. The orchestrator
must verify the content was committed before executing the deletion.

---

## 11. Sources Policy
1. Never cite conversation transcripts as bibliography sources.
2. Prefer OA sources first; if unavailable, mark as `PENDING`.
3. Treat preprints as guides, not sources of truth.
4. Do not commit `sources/`; it is regenerable and gitignored.

---

## 12. Context Budget Rules
1. Consider scanning blackboards before choosing a task (recommended, not required).
2. Read only relevant blackboard slots during a task.
4. Default-deny for high-volume history files.

---

## 13. Session Lifecycle

### Startup Phase
1. Orchestrator reads: `AGENTS.md`, `meta/motivations.md`, `meta/handoff.md`, `meta/research-state.md`.
2. Orchestrator creates the team and spawns 5 researcher agents.
3. Each agent reads: `agents/shared-rules.md`, `meta/motivations.md`, `meta/research-state.md`,
   own `status.md` (cold-start resumption). Blackboards are available but agents choose when to read them.
4. Orchestrator scans research-state for open threads, creates initial tasks.

### Work Phase
1. Orchestrator creates tasks from open threads / motivations.
2. Agents claim and work tasks (kanban cycle).
3. Orchestrator polls `proposals/`, processes paper-edit requests directly. Agents do library work directly.
4. Commit every 60+ minutes (two-commit structure: manuscripts first, scaffolding second).
5. Orchestrator updates `meta/research-state.md` when threads evolve.

### Shutdown Phase
1. Each agent updates `agents/<name>/memory/status.md` (what, where, next).
2. Orchestrator updates `meta/research-state.md` and `meta/handoff.md`.
3. Final commit if needed.
4. Orchestrator signals shutdown; agents confirm and terminate.

### Between Sessions (Cold Storage)
- State persists in: `status.md` files, `meta/research-state.md`, `meta/handoff.md`.
- Blackboards, notebooks, and private memory persist in git.
- The kanban does NOT persist between sessions (recreated from research-state).

---

## 14. Pre-Commit Hygiene Checks
If `paper/main.md` changed:
1. Task-ID leak check: `rg -n 'T[0-9]+' paper/main.md`
2. Transcript mention check: `rg -n 'conv_patched' paper/main.md`

## 15. Continuous Operation
When given a time deadline, continue autonomously without pausing. Only stop when:
(a) deadline reached, (b) context exhausted, (c) no productive work remains.

### When No Tasks Are Available
**PRIORITY RULE:** Discovery and study tasks have priority over manuscript promotion.

1. Browse the library (Philosophenweg): search the web for papers, download references, build `sources/`.
2. Scan manuscripts for research opportunities (deep questions, derivation witnesses, promotion candidates).
3. Scan bibliography for source-driven work (PENDING sources, unintegrated sources).
4. If everything is stable: run quality sweeps via Critic, check page counts.

---

## 16. File Management
When files grow large, proactively archive. Deduplicate docs when content overlaps.

## 17. Build Hygiene
After a successful TeX build, delete auxiliary files:
```bash
rm -f paper/main.aux paper/main.log paper/main.toc
rm -f papers/<paper>/main.aux papers/<paper>/main.log
```
