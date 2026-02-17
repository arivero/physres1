# Claude Note

Read and follow `AGENTS.md` first. It is the canonical repository contract.

If additional Claude-specific guidance is ever needed, keep it brief here and do not duplicate policy text already present in `AGENTS.md`.

## Subagents

Use the Task tool to dispatch subagents as described in `AGENTS.md` Sections 2-3. Key rules:
- Query subagents for concise answers only — collecting full output causes context poisoning
- The orchestrator (main agent) dispatches; subagents write to their designated files or return results
- Never let a subagent write outside its permitted file set (see `AGENTS.md` Section 5)

## Task Models

Choose the model (haiku, sonnet, opus) that is enough for the subtask:
- **Opus**: Criticism, writing, discussion, manuscript promotion, referee reviews, hard derivations
- **Sonnet**: Standard programming, blackboard math, notebook stabilization, bibliography, file management
- **Haiku**: Low-risk read-only tasks (context search, simple lookups) — never involving the file system

## Continuous Work Loop

When the user sets a work deadline (e.g., "work until 20:00"), you MUST continue working continuously until that deadline without stopping for summaries or waiting for user input. After completing a task:
1. Immediately pick the next productive task from `cycles/index.md` (task board) or `docs/motivations.md`
2. Continue the research -> blackboard -> promotion loop without pausing
3. Do NOT write session summaries or stop to ask "what next?" unless you have run out of obvious next steps
4. Only stop when: (a) the deadline is reached, (b) you run out of context, or (c) there is truly no more productive work to do
5. Commit work periodically (respecting the 60-minute minimum between commits) but keep working between commits

The goal is continuous productivity during the allocated time window, not task-by-task interaction.
