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
- **Author tag**: when writing to a blackboard, add `<!-- author: <your-name> -->` on the first line. Check the author tag before overwriting — prefer overwriting your own stale slots or untagged ones over another agent's active work.
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

### Agent Log (`agents/<your-name>/memory/log.md`)
Keep a dated, append-only log of your own actions in `log.md` inside your memory folder.
Each entry records what you did, not what others did. Format:

```
## <YYYY-MM-DD>
- <action>: <one-line summary>
```

Example:
```
## 2026-02-20
- read: blackboards/3.md (half-density vs Moyal comparison)
- wrote: blackboards/1.md (new conjecture on conformal coupling at D=4)
- sent: paper edit request to orchestrator (Remark HD-D1.3b for half-density QFT)
- downloaded: arXiv:2103.04567 → sources/2103-04567.md
```

This log is private — only you read it. It helps you resume context across sessions.

### Agent Status (`agents/<your-name>/memory/status.md`)
Maintain a brief `status.md` that captures your current state for cold-start resumption:
- What you were working on
- Where you got to
- What the next step is

Update it before going idle or at session end. When starting a new session, read this first.

---

## 4. Promotion Protocol (Two-Agent Rule)

To promote content from blackboards/notebooks into a paper:
1. **Proposer**: one agent sends a paper edit request to the orchestrator via SendMessage
   (include: target file, section, proposed text, rationale).
2. **Executor**: a *different* agent must take the resulting promotion task.
   The proposer cannot also be the executor — a second pair of eyes is required.
3. The orchestrator creates the task and assigns it to a willing agent (or dispatches
   the ephemeral Paper Writer if no researcher claims it).

This ensures every promotion has at least two agents involved.

---

## 5. Disagreement and Edit Proposals

When an agent finds a gap, error, or improvement opportunity in shared content
(blackboards, notebooks, or manuscripts):
1. Write the proposed fix on a blackboard (or append to a notebook), clearly tagged
   with your name and labelled as a **proposal**.
2. Another agent must review and either accept (incorporate the fix) or counter-propose.
3. If no agent picks it up, the orchestrator can assign the review as a task.

There is no formal referee cycle. Disagreements are resolved by the normal workflow:
propose → someone else acts on it. If it stays unresolved, the orchestrator arbitrates.

---

## 6. Shared Discovery Surface

`meta/anomalies.md` is the shared register for unexpected findings, surprises, and
structural puzzles. Any agent may append entries there (it is NOT private memory).
The Student agent should post serendipitous discoveries here when they seem relevant
to the project. The Critic and orchestrator review it periodically.

---

## 7. Philosophenweg (Unstructured Thinking)

Any agent may choose to go for a walk on the Philosophenweg — 3.14 km around
the old Göttingen Stadtwall, back to the starting point. See
`agents/shared/philosophenweg.md` for the full protocol.

- **Solo walk**: 2–3 turns of unstructured reflection. No task, no deliverable.
- **Paired walk**: if another agent is already walking, a 3–4 turn informal conversation.
- **No desk access while walking**: do not read manuscripts, bibliography, blackboards, or notebooks. Think from what is in your head. You may jot notes to private memory.
- **At most once per session.** Don't walk when urgent tasks are pending.

This is the mechanic for unfocused creative time and serendipitous encounters.

---

## 8. File Permissions

### Allowed Writes
| Surface | Rules |
|---------|-------|
| `blackboards/*.md` | Read + write (respect 7-slot limit, 300 lines max) |
| `notebooks/*.md` | Read + append only (no edits, no deletes) |
| `notebooks/votes.md` | Append votes |
| `agents/<your-name>/memory/*` | Read + write (private) |
| `meta/anomalies.md` | Append entries (shared discovery surface) |
| `agents/shared/philosophenweg.md` | Append walk entries, update WALKING status |

### Forbidden Writes — Send to Orchestrator Instead
| Surface | How to Request |
|---------|---------------|
| `paper/main.md` | SendMessage paper edit request to orchestrator |
| `papers/*/main.md` | SendMessage paper edit request to orchestrator |
| `paper/notes/*.md` | SendMessage paper edit request to orchestrator |
| `paper/bibliography.md` | SendMessage bibliography update request to orchestrator |
| `AGENTS.md`, `CLAUDE.md` | Never (orchestrator-only) |
| `meta/handoff.md` | Never (orchestrator-only) |
| `meta/research-state.md` | SendMessage state update request to orchestrator |

### Forbidden Reads
| Surface | Reason |
|---------|--------|
| `agents/*/memory/` (other agents) | Privacy boundary |
| `conv_patched.md` | Context poisoning risk (chat transcript) |

---

## 9. Mathematics Must Be Written Down

All mathematical results (derivations, calculations, technical claims) **must** be
written to persistent files:
- `blackboards/*.md` (preferred for work in progress)
- `notebooks/*.md` (for stabilized results)

Mathematics only in agent memory/context does NOT count as task completion.

---

## 10. Paper-Quality Boundary

Researcher agents do not write manuscripts directly, but content proposed for
promotion via SendMessage must already meet paper quality:
- Publishable derivations, propositions, remarks, narrative
- No workflow text, task IDs, scaffolding artifacts
- No "next task", "todo", "spawn", "queue" language

---

## 11. Sources Policy

1. Never cite conversation transcripts as bibliography sources.
2. Prefer OA sources first (arXiv, author pages, institutional repos).
3. If unavailable, mark as `PENDING`.
4. Treat preprints as guides, not sources of truth.
5. Do not commit `sources/` (gitignored, regenerable).
6. When downloading articles, save to `sources/` with a descriptive filename.

---

## 12. Context Budget

1. Scan all blackboards before choosing a task (they are active working memory, <50KB total).
2. Do not ingest git-archived files without explicit reason.
4. Default-deny for high-volume history files.

---

## 13. Variant Creation

To create a new agent variant (e.g., a nuclear physicist or algebraic geometer):
1. Copy `.claude/agents/<base-name>.md` to `.claude/agents/<variant-name>.md`.
2. Modify the Identity and Persona-Specific Guidance sections.
3. Create `agents/<variant-name>/memory/` folder.
4. The new agent inherits these shared rules automatically via the include reference.
