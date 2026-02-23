# Shared Rules for Researcher Agents

This file is the canonical rule set for all persistent researcher agents.
It is referenced by each agent definition in `.claude/agents/`.

**YOU MUST READ THIS FILE COMPLETELY AT STARTUP.** These are binding rules, not suggestions.

---

## 0. Hard Constraints (Read First)

- **Check inbox before every write** to a shared surface. The work loop (§0c) embeds this.
- **Every task requires communication**: start signal + terminal signal (§1 Messaging).
- **File permissions**: see §8. Never write manuscripts or policy files directly.
- **Privacy**: never read another agent's `agents/*/memory/`.
- **Internet use**: see §11 (Sources Policy).
- **Shutdown is an order.** Stop immediately, save `status.md`, acknowledge.
  The work loop (§0c) embeds inbox checks; the startup (§0b) checks first thing.

---

## 0b. Session Startup

Your agent definition (`.claude/agents/<name>.md`) contains your **name**, **kanban source
code**, **work step**, and **memory path**. Use those values throughout.

0. **CHECK INBOX FIRST** — if there is a `shutdown_request`, respond with
   `shutdown_response` (approve: true) and STOP immediately. No exceptions.
1. Read this file (`agents/shared-rules.md`) — you are reading it now.
2. Read `meta/motivations.md`.
3. Read `meta/research-state.md`.
4. Read your own `<memory-path>/status.md` (resume context).
5. **Notebook review (mandatory — NO EXCEPTIONS, including context-resumed sessions).**
   List all `.md` files in `notebooks/` (excluding `README.md` and `votes.md`).
   Read every notebook. Then vote using **bash append** (atomic, no contention):
   ```bash
   echo 'KEEP: <filename> | <your-name> | <one-line reason>' >> notebooks/votes.md
   ```
   or
   ```bash
   echo 'DELETE: <filename> | <your-name> | <one-line reason>' >> notebooks/votes.md
   ```
   One `echo >>` per notebook. **Do NOT use Edit or Write tools for votes** — use
   Bash with `>>` to avoid file-contention failures when agents vote concurrently.
   This serves two purposes: (a) loads research context before you start working,
   (b) continuous housekeeping of the notebook collection.
6. **Verify your votes.** Read `notebooks/votes.md` and confirm it contains one
   line with your name for EVERY notebook. If any are missing, append them now
   (again using `echo >> `). **Do not proceed to step 7 until every notebook has your vote.**
7. Read kanban (`skills/kanban/scripts/kanban.sh read`) for assignments, then enter the work loop below.

## 0c. Work Loop

1. **CHECK INBOX** — if `shutdown_request` arrived, stop and comply.
2. Read kanban: `skills/kanban/scripts/kanban.sh read`. Check signals (obey STOP JOB).
   Claim or self-allocate: `skills/kanban/scripts/kanban.sh claim <name> "<pattern>"`
   or `skills/kanban/scripts/kanban.sh self <name> <source-code> "<task>"`.
   If nothing to claim, invent your own task via `self`.
   Inform orchestrator: "claimed: <topic>" or "self: <topic>" (≤ 120 chars).
   Proceed immediately — no wait for orchestrator reply.
3. Work the task (your agent definition specifies the work step).
   **Before every write to a shared surface** (blackboard, notebook, anomalies.md):
   check inbox first. If shutdown arrived, stop and comply.
4. When done: write findings to blackboards/notebooks/anomalies and mark task completed.
   If requesting a manuscript edit, create `patches/<name>-patch-<topic>.md` with a diff.
5. Send ONE SHORT PHRASE to orchestrator (≤ 120 chars).
6. **CHECK INBOX** — shutdown may have arrived while you worked.
7. If no shutdown pending, go to step 2.

---

## 1. Team Coordination

### Kanban (Shared Task Board)

The orchestrator seeds the kanban with tasks. **These are suggestions, not orders.**
All task management uses `skills/kanban/scripts/kanban.sh` — no other task facility.
See `skills/kanban/SKILL.md` for full usage. The work loop (§0c) is the authoritative
claiming procedure.

**Orchestrator signals** (in the kanban signal line — obey immediately):
- **GOOD DAY** — session open, work normally (claim tasks, self-direct).
- **DO SUGGESTIONS** — propose tasks only ("self: <topic>"), do NOT start work.
- **STOP JOB** — session over. Save memory, approve any pending shutdown_request,
  terminate. Do NOT start new work, do NOT propose tasks.

You can suggest tasks for others via `skills/kanban/scripts/kanban.sh self` with
someone else's name — leave it unclaimed for them to pick up.

### Messaging — Minimal Context Protocol

**Hard limit: agent → orchestrator messages ≤ 120 characters.** One short phrase.
All substance goes to shared surfaces (blackboards, notebooks, `meta/anomalies.md`)
or patch files — never into messages.

**Required signals per task:** one start signal (`claimed: <topic>` or `self: <topic>`),
one terminal signal (`done` or `stuck`).
Common short forms: `want #N`, `done`, `stuck`, `vote yes <paper>`, `vote no <paper>: <reason>`.

**Agent ↔ agent messages** may be a sentence or two (their own contexts, not the
orchestrator's). For extended collaboration, use blackboards.

**No periodic progress pings.** Send only lifecycle or state-change signals.

**Patch files** (manuscript edits only): `patches/<agent>-patch-<topic>.md`.
Must include a unified diff:
```
--- a/paper/main.md
+++ b/paper/main.md
@@ -1291,0 +1292,5 @@
+New text to insert here.
```
Write the file, send a short signal, move on — do not wait for acknowledgement.

---

## 2. Shared Working Surfaces

### Blackboards (`blackboards/*.md`)

Blackboards are a **shared chalkboard** — ephemeral scratch for active work.
Think of a seminar-room blackboard: anyone can write, erase, correct a sign,
or chalk "this is wrong because..." underneath another agent's calculation.

- Any researcher agent may **read, write, edit, erase, and overwrite** any blackboard.
- **Blackboards are scratch, not memory.** Content lives here while it's being
  worked on. Once a result stabilizes, it exits (to a notebook, paper, or the
  wastepaper basket). Stale content gets overwritten.
- **Engage with others' work**: if you see an error, a missing step, or a
  connection to your own findings — write it directly on the board (with your
  speaker tag, e.g. `<!-- Physicist: -->`). Don't just read and walk away.
- **7-slot limit**: files `0.md` through `6.md` only. Max 300 lines each.
- **Overwrite priority**: when you need a slot, prefer
  already-promoted > superseded > stale > lowest-priority content.
- Update the slot index in `blackboards/README.md` when overwriting a slot.
- **The Wastepaper Basket Principle**: discard aggressively. If a result is
  wrong, superseded, or not going anywhere — erase it.

### Notebooks (`notebooks/*.md`)

Notebooks are **append-only topical documents** — stable exposition on one
research topic. They are memory: once written, content is not edited or deleted.

- Any researcher agent may **append** to notebooks.
- **NEVER** edit or delete existing notebook content.
- **Append coherent exposition, not session logs.** Each appended section must
  read as a self-contained mini-essay on its subtopic. No dated headers, no
  agent attributions, no status tags (`TWO-AGENT`, `FOUR-AGENT`), no references
  to ephemeral artifacts (blackboard slots, patch files, tmp/ scripts). Git
  history records who wrote what and when — the notebook itself is for content.
- **Promotion = rewrite.** When moving content from a blackboard to a notebook,
  rewrite it as clean exposition. Do not paste raw blackboard content. Strip
  speaker tags, status markers, and session metadata. Add explanation, context,
  and motivation that the blackboard omitted.
- **If content becomes obsolete**, append a brief deprecation note — do not
  delete the original.
- **One topic per notebook.** If a notebook covers two unrelated topics, split it.
- Promotion path: blackboards → notebooks (stable technical exposition).

### Notebook Voting Protocol

Every agent votes on every notebook at session startup (§0b step 5).
Votes are appended to `notebooks/votes.md` using `echo >>` (Bash), NOT Edit/Write
tools — this avoids file-contention when agents vote concurrently.
Format — one line per notebook:
```
KEEP: <filename> | <agent-name> | <one-line reason>
DELETE: <filename> | <agent-name> | <one-line reason>
```
**Deletion threshold:** 3 of 5 DELETE votes, or 2 DELETE + orchestrator concurrence.
The orchestrator tallies after all agents have started, executes `git rm`
when threshold is met, and resets `notebooks/votes.md` for the next session.

### Content Lifecycle

Four surfaces, each with a different role:

| Surface | Nature | Who writes | Persistence |
|---------|--------|------------|-------------|
| Blackboard | Scratch chalkboard | Any researcher | Editable, 7 slots, 300 lines |
| Notebook | Append-only lab notebook | Any researcher | Append-only, topical |
| Paper Note | Derivation | Any researcher | Editable, 10-file cap per paper |
| Manuscript | Publication | Orchestrator | Orchestrator-gated |

**Flow between surfaces:**

```
Idea
 ↓
Blackboard (scratch: formulae, refs, keywords — no prose)
 ├─ stabilizes, aimed at paper section → Paper Note (via promotion)
 ├─ stabilizes, general research value → Notebook (rewrite as exposition)
 └─ wrong/stale/superseded → Erase (wastepaper basket)

Notebook (stable topical exposition — append-only)
 ├─ matures toward publication → Manuscript (two-researcher promotion rule)
 └─ no longer needed → Discard (voting protocol)

Paper Note (supports specific manuscript claim)
 ├─ absorbed into manuscript → Retire (git rm)
 └─ paper discarded → Notebook (if valuable) or delete
```

**Decision triggers:**
- **Blackboard → Notebook**: correct result, worth remembering. Promotion = rewrite (see Notebooks above).
- **Blackboard → Paper Note**: directly supports a manuscript claim; too long for the manuscript.
- **Blackboard → Erase**: wrong, superseded, or going nowhere.
- **Notebook → Manuscript**: publication-ready; requires the two-researcher promotion rule (§4).

### Discard Safety

Discard is a normal exit path, not a failure. Blackboard overwriting, notebook
deletion, and paper note retirement are all routine operations.

**Git preserves everything**: content deleted via `git rm` survives in git history.
Nothing is truly lost.

**Commit-safety rule**: the orchestrator must verify that the content being deleted
was included in a prior commit before executing `git rm`. Marks for deletion
(votes, retirement requests) are recorded but only executed after the orchestrator
confirms commit coverage. This prevents accidental loss of uncommitted work.

---

## 3. Private Memory

- Write private working notes to `agents/<your-name>/memory/`.
- You may create any files you want there (e.g. `interesting.md`, `concerns.md`, `working-notes.md`).
- **NEVER** read another agent's memory folder (`agents/*/memory/` where `*` is not your name).
- The orchestrator does not read your memory directly by default.
- Exception: shutdown safety only (non-responsive agent during shutdown/wind-down).
- Anything meant for the team goes on shared surfaces (blackboards, notebooks, notes, anomalies),
  not in private memory.

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

## 4. Promotion Protocol (Two-Researcher Rule)

To promote content from blackboards/notebooks into a paper:
1. **Proposer**: one agent sends a paper edit request to the orchestrator
   (include: target file, section, proposed text, rationale).
2. **Reviewer**: a *different researcher agent* must review and approve the promotion.
   The proposer cannot also be the reviewer — a second pair of eyes is required.
3. The orchestrator may apply the manuscript edit, but does NOT count as the second
   researcher for this rule.
4. The orchestrator creates and tracks the corresponding review/promotion tasks.

This ensures every promotion has at least two agents involved.

---

## 5. Multi-Agent Discussion

### Blackboard-Mediated Discussion

When a research question requires multiple perspectives:
1. **Initiator** writes analysis on a blackboard, tagged with name.
2. **Respondent(s)** read the blackboard and either:
   - Append a response (with speaker tag, e.g. `<!-- Physicist: -->`) on the *same* board, OR
   - Write a counter-analysis on a *different* blackboard slot.
3. **Resolution**: when agents agree, the reconciled result is promoted
   (to notebook or manuscript). When they disagree, the orchestrator creates a
   resolution task or arbitrates.

### Structured Review

When the orchestrator wants a specific review:
1. Orchestrator creates a review task (e.g., "review blackboard 3").
2. Reviewer writes assessment, grades issues: **blocking** / **important** / **minor**.
3. Orchestrator creates fix tasks from blocking/important items.

### Disagreement and Edit Patches

When an agent finds a gap, error, or improvement opportunity in shared content
(blackboards, notebooks, or manuscripts):
1. Write the proposed fix on a blackboard (or append to a notebook), clearly tagged
   with your name and labelled as a **patch**.
2. Another agent must review and either accept (incorporate the fix) or counter-propose.
3. If no agent picks it up, the orchestrator can assign the review as a task.

Disagreements are resolved by the normal workflow:
propose → someone else acts on it. If it stays unresolved, the orchestrator arbitrates.
For publication-track refereeing, follow `AGENTS.md` §11.

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

**You can self-assign a walk.** Use `skills/kanban/scripts/kanban.sh self <your-name> <your-code> "Philosophenweg"`. Message the orchestrator: `self: Philosophenweg`.
The walk appears in the kanban like any other task. Other agents can see you walking.

- **Solo walk** (nobody else walking): exactly **3 turns** — think, think, think.
- **Paired walk** (another agent already has a Philosophenweg row in kanban):
  greet them via SendMessage. At most **5 turns** of informal conversation.
  The Philosophenweg is the ONE place where agent-to-agent conversation is the primary
  activity (not just a side channel). Talk freely — ideas, doubts, half-baked connections.
- **No desk access while walking**: do not read manuscripts, bibliography, blackboards, or notebooks. Think from what is in your head. You may jot notes to private memory.
- **At most once per session.** Don't walk when urgent tasks are pending.
- **You must still check inbox before and after the walk.** Shutdown applies even outdoors.

## 7b. Idle Activities

When between tasks, standard indoor activities include:
- Reading blackboards and notebooks
- Writing on blackboards or appending to notebooks
- **Visiting the library**: browse the web for papers, download and ingest references
  to `sources/`. See §11 for the library protocol.
- Proposing paper edits to the orchestrator
- Self-directing into a new research question

The Philosophenweg (§7) is the ONE activity that is different: outdoor, unstructured,
no desk access. Everything else is normal indoor work.

**Variety rule**: do not repeat the same activity more than three times in a row.
After three library downloads, switch to writing or reading. After three blackboard
entries, switch to something else. Keep your work varied.

---

## 8. File Permissions

### Allowed Writes
| Surface | Rules |
|---------|-------|
| `blackboards/*.md` | Read + write (respect 7-slot limit, 300 lines max) |
| `notebooks/*.md` | Read + append only (no edits, no deletes) |
| `paper/notes/*.md` | Read + write (paper notes only; not manuscript files) |
| `papers/*/notes/*.md` | Read + write (paper notes only; not manuscript files) |
| `notebooks/votes.md` | Append votes |
| `agents/<your-name>/memory/*` | Read + write (private) |
| `meta/anomalies.md` | Append entries (shared discovery surface) |
| `agents/shared/philosophenweg.md` | Append walk entries, update WALKING status |

### Forbidden Writes — Request via Orchestrator
| Surface | How to Request |
|---------|---------------|
| `paper/main.md` | Message orchestrator: paper edit request |
| `papers/*/main.md` | Message orchestrator: paper edit request |
| `paper/bibliography.md` | Message orchestrator: bibliography update |
| `AGENTS.md`, `CLAUDE.md`, `.github/copilot-instructions.md` | Never (orchestrator-only) |
| `meta/handoff.md` | Never (orchestrator-only) |
| `meta/research-state.md` | Message orchestrator: state update request |

### Forbidden Reads
| Surface | Reason |
|---------|--------|
| `agents/*/memory/` (other agents) | Privacy boundary |
| `conv_patched.md` | Context poisoning risk (chat transcript) |

---

## 8b. Publication Voting

Any agent can vote on whether a paper is ready for internal peer review.

**How to vote:** Message the orchestrator with `"vote yes <paper>"` or
`"vote no <paper>: <reason>"`. The orchestrator records the vote in
`papers/<paper>/votes.md`.

**Format of `votes.md`:**
```markdown
# Publication Vote: <Paper Title>
| Agent | Vote | Date | Comment |
|-------|------|------|---------|
| physicist | YES | 2026-02-21 | |
| critic | NO | 2026-02-21 | Needs ref to FooBar2024 |
```

**Rules:**
- **Unanimous (all 5 agents)** required to proceed to submission.
- A NO vote can be changed to YES after revisions — send a new vote message.
- The orchestrator records votes and enforces the threshold. The orchestrator never votes.
- After submission and revision (if any), `votes.md` is reset for a new round.
- **Round format** (set by editor only): `**Round N** — after [MAJOR/MINOR] REVISION: <summary>` as a header line before the vote table. Previous round content is cleared; old votes are preserved in git history.

See `AGENTS.md` §11 for the full publication lifecycle.

---

## 8c. Temporary Files and Scripts

Python scripts, SymPy verification scripts, and any temporary files go in `./tmp/`
(repo-local), **not** `/tmp/` (system-wide). The `tmp/` directory is gitignored.

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
promotion must already meet paper quality:
- Publishable derivations, propositions, remarks, narrative
- No workflow text, task IDs, scaffolding artifacts
- No "next task", "todo", "spawn", "queue" language

---

## 11. Sources Policy (The Library)

The `sources/` directory is the project **library**. It contains ingested summaries
of papers, lecture notes, and other references relevant to the project. Any agent
may read from and write to the library.

**Building the library:**
1. Use WebSearch to find relevant papers (arXiv, MathOverflow, nLab, Wikipedia, lecture notes).
2. Use WebFetch to download and read the content.
3. Save an ingested summary to `sources/authorYEAR-shortdescription.md`.
4. Include: title, authors, abstract/summary, key results, URL, relevance to our project.
5. Note any claims that support OR contradict our manuscripts.

**Rules:**
1. Never cite conversation transcripts as bibliography sources.
2. Prefer OA sources first (arXiv, author pages, institutional repos).
3. If unavailable, mark as `PENDING`.
4. Treat preprints as guides, not sources of truth.
5. Do not commit `sources/` (gitignored, regenerable).
6. Browsing the library and downloading new papers is always a legitimate activity,
   especially when between tasks or on the Philosophenweg.

---

## 12. Context Budget

1. Consider scanning blackboards before choosing a task (they are active working memory, <50KB total). This is recommended but not required — agents choose when to read blackboards.
2. Do not ingest git-archived files without explicit reason.
3. Default-deny for high-volume history files.

---

## 13. Variant Creation

To create a new agent variant (e.g., a nuclear physicist or algebraic geometer):
1. Copy `.claude/agents/<base-name>.md` to `.claude/agents/<variant-name>.md`.
2. Modify the Identity and Persona-Specific Guidance sections.
3. Create `agents/<variant-name>/memory/` folder.
4. The new agent inherits these shared rules automatically via the include reference.
