# AGENTS.md

## Scope
This file applies to the entire repository. It is the canonical contract for all agents.

## Canonical Contract
1. `AGENTS.md` is the canonical repository contract for all agents.
2. If another local agent file exists (for example `CLAUDE.md`, `.github/copilot-instructions.md`), treat it as supplemental only.
3. When overlap exists, keep policy in `AGENTS.md` and avoid split-brain duplicates across agent-specific files.

---

## Architecture Overview

This repository uses a **persistent team** of researcher agents, coordinated by a single
**orchestrator** (the conversation-level agent). The team is created at session start.
Agents communicate via short signal messages, coordinate tasks via a shared kanban, and write to shared
working surfaces (blackboards, notebooks). Each agent has a private memory folder that
no other agent can read.

Library work (searching, downloading, ingesting references) is done by any researcher
agent directly — see `agents/shared-rules.md` §11. The orchestrator handles paper
edits directly (no ephemeral subagents).

---

## 1. Orchestrator (Main Agent — Department Head)

An AI that acts as **department head**: creates the research team, manages the kanban,
processes paper-edit requests, serves as publication editor, and dispatches ephemeral
referee agents for peer review (§11). The scaffold is domain-agnostic — the orchestrator coordinates any research
program, not only physics.

**Reads:** full repo access, except researcher private memory by default (`agents/*/memory/*` where `*` ≠ `orchestrator`).
Emergency read is allowed only for shutdown safety when an agent is non-responsive.

**Writes:**
- `agents/orchestrator/memory/*` (private working notes, log, status)
- `meta/research-state.md`, `meta/motivations.md`, `meta/handoff.md`
- `paper/`, `papers/*/` (direct edits)
- `paper/bibliography.md`
- `pub-track/` (submission pipeline), `docs/` (published papers)

**Does NOT write:** blackboards, notebooks directly. Those are the researchers' surfaces.

**Responsibilities:**
- Team creation and shutdown
- Task creation, assignment, and monitoring via the shared kanban
- **Polling `proposals/` for manuscript edit requests** — read proposal files, process, then delete
- Processing paper-edit requests directly (no subagent)
- **Publication editor**: record votes, enforce unanimous threshold, spawn referee agents, decide accept/revise/reject (§11)
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
- Read any non-private file in the repo
- Write/patch `blackboards/*.md` (7-slot limit, 300 lines max)
- Append to `notebooks/*.md` (append-only)
- Write/patch `paper/notes/*.md` and `papers/*/notes/*.md` (paper notes only; not manuscripts)
- Append to `meta/anomalies.md`
- Write to own `agents/<name>/memory/*` (private)
- Vote to delete notebooks via `notebooks/votes.md`
- Download/read articles from the internet

**Restrictions** (all researchers):
- Cannot edit manuscripts: `paper/main.md`, `papers/*/main.md`, `paper/bibliography.md` — request via orchestrator
- Cannot read other agents' `agents/*/memory/` folders
- Cannot edit `AGENTS.md`, `CLAUDE.md`, `.github/copilot-instructions.md`, `meta/handoff.md`, `meta/research-state.md`

---

## 3. Paper Editing

The orchestrator edits manuscript files (`paper/main.md`, `papers/*/main.md`, bibliography)
directly when processing paper-edit proposals.
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
In runtimes that expose the board as `TaskList`, `TaskList` and "kanban" refer to the same runtime surface.

- **Orchestrator** creates tasks with subject, description, and priority.
- **Agents** check the kanban for available tasks (prefer lowest ID first, unblocked only).
- **Agents** request tasks (`want #N`) or suggest self-directed tasks (`self: <topic>`).
- **Orchestrator** assigns tasks via kanban update; agents only start after assignment appears.
- **Start gate (hard):** no agent may start work until the kanban shows that task as `assigned` to that agent.
- **Orchestrator response rule (hard):** every `want #N` / `self: <topic>` request must receive one of:
  (a) explicit kanban assignment (`assigned`), or (b) explicit end-of-day/stop call.
- **Default self-task policy:** when an agent suggests `self: <topic>`, the orchestrator
  creates the task and assigns it to that agent unless explicitly redirecting.
- **Agents** mark tasks completed when done.
- **Dependencies**: tasks can block or be blocked by other tasks.

Task IDs are planning metadata only — never in manuscripts.

---

## 6. Communication Patterns — Minimal Context Protocol

**Messages are signal-only.** Use one short phrase (<= 120 chars) per message.

| Channel | Purpose | Who uses it |
|---------|---------|-------------|
| Kanban | Task creation, claiming, completion | All |
| Messages | Short signal phrases (`done`, `stuck`, `vote yes <paper>`, `want #N`) | All |
| `proposals/` | Manuscript edit requests only (must include diff) | Researchers → Orchestrator |
| Blackboards | Shared working surface for math and exploration | Researchers |
| Notebooks | Shared stable memory (append-only) | Researchers |
| `agents/<name>/memory/` | Private working notes | Each agent (own folder only) |

**Asymmetric limits:**

| Direction | Limit | Reason |
|-----------|-------|--------|
| Agent → Orchestrator | **≤ 120 chars** (one short phrase) | Burns orchestrator context |
| Orchestrator → Agent | 1–2 sentences OK | Agent's own context |
| Agent ↔ Agent | 1–2 sentences OK | Their own contexts |

**Why:** Agent→orchestrator messages are delivered as conversation turns in the
orchestrator's 200k context window. At ~120k tokens/cycle with 5 agents, context
exhausts after ~3 auto-compressions. Moving content to `proposals/` on disk keeps
the orchestrator's window for actual work.

Proposal files: `proposals/<agent>-edit-<topic>.md` (gitignored, ephemeral).

---

## 7. File Permission Model

| Agent | Allowed Writes | Forbidden Writes |
|-------|---------------|-----------------|
| Orchestrator | `meta/*`, `paper/`, `papers/*/` (direct edits), `pub-track/`, `docs/` | Direct blackboard/notebook writes |
| Physicist | `blackboards/*.md`, `notebooks/*.md` (append), `paper/notes/*.md`, `papers/*/notes/*.md`, `meta/anomalies.md` (append), `agents/physicist/memory/*` | `paper/main.md`, `papers/*/main.md`, `paper/bibliography.md`, `meta/handoff.md`, `meta/research-state.md` |
| Mathematician | `blackboards/*.md`, `notebooks/*.md` (append), `paper/notes/*.md`, `papers/*/notes/*.md`, `meta/anomalies.md` (append), `agents/mathematician/memory/*` | `paper/main.md`, `papers/*/main.md`, `paper/bibliography.md`, `meta/handoff.md`, `meta/research-state.md` |
| Critic | `blackboards/*.md`, `notebooks/*.md` (append), `paper/notes/*.md`, `papers/*/notes/*.md`, `meta/anomalies.md` (append), `agents/critic/memory/*` | `paper/main.md`, `papers/*/main.md`, `paper/bibliography.md`, `meta/handoff.md`, `meta/research-state.md` |
| Computationalist | `blackboards/*.md`, `notebooks/*.md` (append), `paper/notes/*.md`, `papers/*/notes/*.md`, `meta/anomalies.md` (append), `agents/computationalist/memory/*` | `paper/main.md`, `papers/*/main.md`, `paper/bibliography.md`, `meta/handoff.md`, `meta/research-state.md` |
| Student | `blackboards/*.md`, `notebooks/*.md` (append), `paper/notes/*.md`, `papers/*/notes/*.md`, `meta/anomalies.md` (append), `agents/student/memory/*` | `paper/main.md`, `papers/*/main.md`, `paper/bibliography.md`, `meta/handoff.md`, `meta/research-state.md` |
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
- **Paper notes** (`paper/notes/`, `papers/*/notes/`): max 10 files per paper root. Retire integrated notes.
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
paper-edit proposals. Promotions require two researchers (proposer + independent reviewer);
the orchestrator may apply the edit but does not count as the second researcher. Page
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

## 11. Publication Track

### Lifecycle

```
papers/<name>/  ──[unanimous vote]──▷  pub-track/sent/<name>/  ──[2 referee reports]──▷
    ▲                                                                  │
    │                                                    ┌─────────────┼────┐
    │                                                    ▽             ▽    ▽
    └──────────[revise: move back]──── REVISE        REJECT         ACCEPT
                                              pub-track/rejected/     │
                                                                      ▽
                                                                 docs/<name>/
```

All intermediate states live under `pub-track/` (sent, rejected). Only accepted
papers reach `docs/`. The `papers/` directory remains the working space.

### Voting

Each paper has a `papers/<name>/votes.md` file tracking agent votes.
See `agents/shared-rules.md` §8b for the voting format and rules.
**Unanimous (all 5 agents)** required to submit for review.
The orchestrator records votes and enforces the threshold — never votes itself.

### Submission (Send to Review)

When all 5 agents vote YES, the orchestrator:
1. Creates `pub-track/sent/<name>/`
2. Copies `papers/<name>/main.md` and `papers/<name>/votes.md` there
3. Updates `meta/publications.md` (status: "under review")
4. Spawns two ephemeral referee agents

### Referee Agents (Ephemeral)

Two independent referees review each submission:
- **referee-1**: opus model (deep mathematical scrutiny)
- **referee-2**: sonnet model (different perspective)

Definition: `.claude/agents/referee.md`. Protocol: `agents/shared/referee-protocol.md`.

Each referee reads `pub-track/sent/<name>/main.md`, writes a report to
`pub-track/sent/<name>/referee-{1,2}.md`, sends a one-phrase signal, and terminates.
Referees cannot read each other's reports. They have no team membership.

**Implementation**: Referees must be spawned as **independent agents** (no `team_name`
parameter), NOT as members of the research team. They are ephemeral, fire-and-forget
subprocesses that terminate after writing their report. They must not have access to
team task lists, agent memories, or inter-agent messaging.

### Editor Decision

The orchestrator reads both reports and decides:

| Decision | Action |
|----------|--------|
| **Accept** | Move paper to `docs/<name>/` (PDF + source), update `docs/index.md` and `meta/publications.md` |
| **Minor Revise** | Move paper back to `papers/<name>/`, attach referee reports, create one kanban task per referee comment; no mandatory re-review |
| **Major Revise** | Move paper back to `papers/<name>/`, attach referee reports, create one kanban task per referee comment; re-review required after revision |
| **Reject** | Move paper to `pub-track/rejected/<name>/` (dead unless user revives) |

**Hard rule**: if *any* referee identifies a MAJOR weakness (regardless of the referee's
bottom-line recommendation), the editor decision is **Major Revise**. MAJOR means
re-review after revision; MINOR goes straight to publish.

Mixed referee verdict combinations (for example `ACCEPT` + `MAJOR REVISION`) follow
the same escalation: the worst severity wins.

**Clarification:** MINOR REVISION with no MAJOR weaknesses is an effective ACCEPT.
The paper proceeds to `docs/` and any MINOR referee comments become optional
improvement tasks (not blocking).

**Post-accept polish:** When a paper is ACCEPTED but referees noted MINOR expository
improvements, the editor creates optional kanban tasks for those improvements. These
are non-blocking — the paper has already moved to `docs/`. Agents may address them
as time permits.

**Minor revise flow:**
1. Paper returns from `pub-track/sent/<name>/` to `papers/<name>/`
2. Referee reports copied to `papers/<name>/referee-1.md`, `papers/<name>/referee-2.md`
3. Editor creates **one kanban task per referee comment** (MAJOR + MINOR), each with specific fix instructions
4. Agents **edit the paper** to resolve each concern (actual changes to `main.md`, not just acknowledgment)
5. Editor verifies ALL tasks resolved (checks each fix against the referee's specific concern)
6. **Only the editor (orchestrator) resets `votes.md`.** Clear all previous votes; write the header `**Round N** — after [MAJOR/MINOR] REVISION: <summary>` followed by the standard vote table. Old votes are preserved in git history.
7. Orchestrator broadcasts "re-vote on `<name>`" — each agent re-reads the revised paper and votes YES/NO
8. Unanimous vote required. If any NO, the editor creates new tasks for the NO-voter's specific concerns, the round counter increments, and the process returns to step 4. Previous referee reports remain for reference.
9. After unanimous vote: editor decides acceptance directly (no mandatory re-review)

**Major revise flow:**
1. Paper returns from `pub-track/sent/<name>/` to `papers/<name>/`
2. Referee reports copied to `papers/<name>/referee-1.md`, `papers/<name>/referee-2.md`
3. Editor creates **one kanban task per referee comment** (MAJOR + MINOR), each with specific fix instructions
4. Agents **edit the paper** to resolve each concern (actual changes to `main.md`, not just acknowledgment)
5. Editor verifies ALL tasks resolved (checks each fix against the referee's specific concern)
6. **Only the editor (orchestrator) resets `votes.md`.** Clear all previous votes; write the header `**Round N** — after [MAJOR/MINOR] REVISION: <summary>` followed by the standard vote table. Old votes are preserved in git history.
7. Orchestrator broadcasts "re-vote on `<name>`" — each agent re-reads the revised paper and votes YES/NO
8. Unanimous vote required. If any NO, the editor creates new tasks for the NO-voter's specific concerns, the round counter increments, and the process returns to step 4. Previous referee reports remain for reference.
9. After unanimous vote: paper goes back to `pub-track/sent/` for **re-review** by **new referee agents** (spawned independently, not as team members)

**Re-submission versioning:** When a MAJOR-revised paper is re-submitted for re-review,
fresh referee reports overwrite the previous ones in `pub-track/sent/<name>/`. The previous
reports survive in `papers/<name>/referee-{1,2}.md` (copied during revision step 2).

### Publication (docs/)

When accepted:
1. Build PDF from markdown (pandoc → pdflatex)
2. Create `docs/<name>/` with `main.pdf` + `main.md`
3. Ensure `main.md` frontmatter has `layout: page` and `title:` — the site index auto-discovers papers with these fields (no manual `index.md` edit needed)
4. Convert math delimiters to `$$...$$` (kramdown passes `$$` content verbatim; `\(...\)` and `\[...\]` get broken by kramdown escaping)
5. Update `meta/publications.md` (status: "published")
6. Consolidate `papers/<name>/notes/` into a notebook titled "Old notes of paper <name>" in `notebooks/`
7. Remove the working directory: `git rm -r papers/<name>/`
8. Git history preserves everything — no data loss
9. Commit and **push** — `docs/` is served by GitHub Pages; changes are not live until pushed

---

## 12. Sources Policy
See `agents/shared-rules.md` §11 for the full library protocol.
Summary: never cite transcripts, prefer OA, treat preprints as guides, `sources/` is gitignored.

---

## 13. Context Budget Rules
1. Consider scanning blackboards before choosing a task (recommended, not required).
2. Read only relevant blackboard slots during a task.
3. Default-deny for high-volume history files.

---

## 14. Session Lifecycle

### Startup Phase
1. Orchestrator reads: `AGENTS.md`, `meta/motivations.md`, `meta/handoff.md`, `meta/research-state.md`.
2. Orchestrator enforces startup invariants:
   - ensure `proposals/` exists (`mkdir -p proposals`)
   - ensure `blackboards/README.md`, `notebooks/votes.md`, and `meta/anomalies.md` exist
3. Orchestrator creates the team and spawns 5 researcher agents.
4. Each agent reads: `agents/shared-rules.md`, `meta/motivations.md`, `meta/research-state.md`,
   own `status.md` (cold-start resumption). Blackboards are available but agents choose when to read them.
5. Orchestrator scans research-state for open threads, creates initial tasks.

### Work Phase
1. Orchestrator creates tasks from open threads / motivations.
2. Agents request tasks (`want #N`) or suggest `self:` topics; orchestrator assigns in kanban; only then agents execute.
3. Orchestrator polls `proposals/`, processes paper-edit requests directly. Agents do library work directly.
4. Commit every 60+ minutes (two-commit structure: manuscripts first, scaffolding second).
5. Orchestrator updates `meta/research-state.md` when threads evolve.

### Shutdown Phase
1. Each agent updates `agents/<name>/memory/status.md` (what, where, next).
2. Orchestrator updates `meta/research-state.md` and `meta/handoff.md`.
3. Orchestrator updates `agents/orchestrator/memory/status.md` (what, where, next).
4. Final commit if needed.
5. Orchestrator signals shutdown; agents confirm and terminate.

**Shutdown enforcement escalation:** If an agent does not respond to `shutdown_request`
within one turn, the orchestrator may read their private `status.md` (emergency read
clause) and terminate the agent via runtime mechanisms. The agent forfeits their
`status.md` update.

### Between Sessions (Cold Storage)
- State persists in: `status.md` files, `meta/research-state.md`, `meta/handoff.md`.
- Blackboards, notebooks, and private memory persist in git.
- The kanban partially persists between sessions. At startup, the orchestrator cleans up completed and agent-assigned tasks (session artifacts) but preserves unassigned and failed/stuck tasks (real open work).

---

## 15. Pre-Commit Hygiene Checks
If `paper/main.md` changed:
1. Task-ID leak check: `rg -n 'T[0-9]+' paper/main.md`
2. Transcript mention check: `rg -n 'conv_patched' paper/main.md`

## 16. Continuous Operation
**Default mode is continuous operation.** Agents should keep cycling through request -> assignment -> execution -> completion without going idle.
When given a time deadline, continue autonomously without pausing. Commit policy (§8) still applies — check timing before each commit. Only stop when:
(a) deadline reached, (b) context exhausted, (c) no productive work remains.

### Stop Method (Operational)
1. Agent sends `want #N` or `self: <topic>`.
2. Orchestrator either assigns in kanban (`status=assigned`) or explicitly calls end-of-day.
3. If no assignment is posted, the agent must wait and must not start the task.

### When No Tasks Are Available
**PRIORITY RULE:** Discovery and study tasks have priority over manuscript promotion.

1. Browse the library (indoor work): search the web for papers, download references, build `sources/`.
2. Scan manuscripts for research opportunities (deep questions, derivation witnesses, promotion candidates).
3. Scan bibliography for source-driven work (PENDING sources, unintegrated sources).
4. If everything is stable: run quality sweeps via Critic, check page counts.

---

## 17. File Management
When files grow large, proactively archive. Deduplicate docs when content overlaps.

## 18. Build Hygiene
After a successful TeX build, delete auxiliary files:
```bash
rm -f paper/main.aux paper/main.log paper/main.toc
rm -f papers/<paper>/main.aux papers/<paper>/main.log
```
