---
name: kanban
description: Atomic self-service kanban operations for the research team. Use when claiming a task, proposing a task, self-allocating work, relinquishing a task, marking a task done, reading the board, or updating the orchestrator signal. All researcher agents use this skill instead of waiting for orchestrator approval.
---

# Kanban Skill (Self-Service)

All researcher agents use `skills/kanban/scripts/kanban.sh` for atomic kanban
operations. The orchestrator retains signal authority but no longer performs
row-level edits for task assignment or completion.

## Operations

### Read the board

```bash
skills/kanban/scripts/kanban.sh read
```

Lock-free. Always read first. Check the signal line before acting:
- **GOOD DAY** — work normally (claim tasks, self-direct).
- **DO SUGGESTIONS** — propose tasks only, do not claim or start work.
- **STOP JOB** — save memory, approve any pending `shutdown_request`, terminate.

### Claim an open task

```bash
skills/kanban/scripts/kanban.sh claim <your-name> "<task-substring>"
```

Atomically writes your name into the Assignee column of the first unclaimed
row whose Task column contains the substring. Returns the resulting line.

- **Exit 0** — you own it. Start working.
- **Exit 1** — no unclaimed row matches the pattern. Pick another task.
- **Exit 2** — someone else claimed it first. Pick another task.

### Propose a task (for anyone)

```bash
skills/kanban/scripts/kanban.sh propose <source-code> "<task description>"
```

Adds a row with empty Assignee. Source codes: `or` `co` `cr` `ma` `ph` `st`.

### Self-allocate a task

```bash
skills/kanban/scripts/kanban.sh self <your-name> <source-code> "<task description>"
```

Creates a row with your name already in Assignee. Start immediately.

### Relinquish a task

```bash
skills/kanban/scripts/kanban.sh relinquish <your-name> "<task-substring>"
```

Clears your name from the matching row. The task becomes open again.

### Complete a task

```bash
skills/kanban/scripts/kanban.sh done "<task-substring>"
```

Deletes the row. Git history is the archive.

### Update the orchestrator signal (orchestrator only)

```bash
skills/kanban/scripts/kanban.sh signal "<message>"
```

Writes or replaces the `Orchestrator says:` line at the end of the kanban.

## Protocol

1. **Read before acting.** Always run `read` first. Check the signal line.
   Obey STOP JOB immediately. Under DO SUGGESTIONS, only `propose`.
2. **Claim or self-allocate before working.** Your name must appear in the
   Assignee column before you start substantive work on a task.
3. **One task at a time.** Complete or relinquish before claiming another.
4. **Inform the orchestrator.** After `claim` or `self`, send a short message
   (<=120 chars): `"claimed: <topic>"` or `"self: <topic>"`. This is
   informational — the kanban row IS the authorization, not the orchestrator's
   reply. Do not wait for a reply before starting.
5. **Delete your own completions.** When done, run `done` yourself. Then
   message: `"done: <topic>"` (<=120 chars).
6. **Pattern specificity.** Use enough of the task description to uniquely
   match. If the script warns about multiple matches, use a longer substring.
   Minimum pattern length: 3 characters.

## Atomicity

Every write operation acquires an exclusive `flock` on `meta/.kanban.lock`.
Only one agent can edit the kanban at a time. The lock is held for the
duration of a single operation (milliseconds). Read is lock-free.

## What Changed

Previously, agents announced `self: <topic>` and waited for the orchestrator
to edit the kanban (the "go" signal). Now, agents edit the kanban directly via
this script. The orchestrator still:

- Seeds initial tasks (via `propose` or `signal`)
- Manages signals (GOOD DAY / DO SUGGESTIONS / STOP JOB)
- Handles publication track, commits, shutdowns
- Can redirect agents via messages (informational steering, not gating)

The orchestrator no longer approves individual task claims.
