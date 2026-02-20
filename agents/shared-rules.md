# Shared Rules for Researcher Agents

This file is the canonical rule set for all persistent researcher agents.
It is referenced by each agent definition in `.claude/agents/`.

---

## 1. Team Coordination

### Kanban via TaskList
- The orchestrator creates tasks via TaskCreate.
- Agents claim tasks from TaskList (prefer lowest ID first, unblocked tasks only).
- Claim a task by calling TaskUpdate with owner set to your name.
- Mark tasks completed via TaskUpdate when finished.
- After completing a task, immediately check TaskList for the next available task.

### Communication via SendMessage
- Send paper edit requests to the orchestrator: include target file, section, proposed text, rationale.
- Send status reports to the orchestrator when a task reveals unexpected findings.
- Direct messages to other agents are permitted for collaboration.
- Do NOT send structured JSON status messages; use plain text.

---

## 2. Shared Working Surfaces

### Blackboards (`blackboards/*.md`)
- Any researcher agent may read and write blackboards.
- **7-slot limit**: files `0.md` through `6.md` only. Max 300 lines each.
- Overwrite least relevant slot when full (already promoted > superseded > stale > lowest priority).
- Update the slot index in `blackboards/README.md` when overwriting a slot.
- **Content rules**: keywords, references, statements, formulae, structure markers ONLY. No prose.
- **The Wastepaper Basket Principle**: discard aggressively. If a result is wrong, superseded, or not going anywhere — overwrite it.

### Notebooks (`notebooks/*.md`)
- Any researcher agent may APPEND to notebooks.
- **NEVER** edit or delete existing notebook content.
- Use dated section headers when appending new material.
- If content becomes obsolete, append a deprecation note — do not delete.
- Promotion path: blackboards → notebooks (stable technical exposition).

### Notebook Voting Protocol
To propose deleting a notebook, append a line to `notebooks/votes.md`:
```
VOTE-DELETE: <filename> | <your-agent-name> | <date> | <one-line reason>
```
Threshold: 3 of 5 agents, or 2 agents + orchestrator concurrence.
The orchestrator executes `git rm` when threshold is met.

---

## 3. Private Memory

- Write private working notes to `agents/<your-name>/memory/`.
- You may create any files you want there (e.g. `interesting.md`, `concerns.md`, `working-notes.md`).
- **NEVER** read another agent's memory folder (`agents/*/memory/` where `*` is not your name).
- The orchestrator does not read your memory directly either.
- Anything meant for the team goes on blackboards or notebooks, not in private memory.

---

## 4. File Permissions

### Allowed Writes
| Surface | Rules |
|---------|-------|
| `blackboards/*.md` | Read + write (respect 7-slot limit, 300 lines max) |
| `notebooks/*.md` | Read + append only (no edits, no deletes) |
| `notebooks/votes.md` | Append votes |
| `agents/<your-name>/memory/*` | Read + write (private) |

### Forbidden Writes — Send to Orchestrator Instead
| Surface | How to Request |
|---------|---------------|
| `paper/main.md` | SendMessage paper edit request to orchestrator |
| `papers/*/main.md` | SendMessage paper edit request to orchestrator |
| `paper/notes/*.md` | SendMessage paper edit request to orchestrator |
| `paper/bibliography.md` | SendMessage bibliography update request to orchestrator |
| `AGENTS.md`, `CLAUDE.md` | Never (orchestrator-only) |
| `docs/handoff.md` | Never (orchestrator-only) |
| `docs/research-state.md` | SendMessage state update request to orchestrator |

### Forbidden Reads
| Surface | Reason |
|---------|--------|
| `agents/*/memory/` (other agents) | Privacy boundary |
| `conv_patched.md` | Context poisoning risk (chat transcript) |

---

## 5. Mathematics Must Be Written Down

All mathematical results (derivations, calculations, technical claims) **must** be
written to persistent files:
- `blackboards/*.md` (preferred for work in progress)
- `notebooks/*.md` (for stabilized results)

Mathematics only in agent memory/context does NOT count as task completion.

---

## 6. Paper-Quality Boundary

Researcher agents do not write manuscripts directly, but content proposed for
promotion via SendMessage must already meet paper quality:
- Publishable derivations, propositions, remarks, narrative
- No workflow text, task IDs, scaffolding artifacts
- No "next task", "todo", "spawn", "queue" language

---

## 7. Sources Policy

1. Never cite conversation transcripts as bibliography sources.
2. Prefer OA sources first (arXiv, author pages, institutional repos).
3. If unavailable, mark as `PENDING`.
4. Treat preprints as guides, not sources of truth.
5. Do not commit `sources/` (gitignored, regenerable).
6. When downloading articles, save to `sources/` with a descriptive filename.

---

## 8. Context Budget

1. Scan all blackboards before choosing a task (they are active working memory, <50KB total).
2. Do not ingest git-archived files without explicit reason.
4. Default-deny for high-volume history files.

---

## 9. Variant Creation

To create a new agent variant (e.g., a nuclear physicist or algebraic geometer):
1. Copy `.claude/agents/<base-name>.md` to `.claude/agents/<variant-name>.md`.
2. Modify the Identity and Persona-Specific Guidance sections.
3. Create `agents/<variant-name>/memory/` folder.
4. The new agent inherits these shared rules automatically via the include reference.
