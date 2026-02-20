# Claude Note

Read and follow `AGENTS.md` first. It is the canonical repository contract.

If additional Claude-specific guidance is ever needed, keep it brief here and do not duplicate policy text already present in `AGENTS.md`.

## Team Startup

At session start, use `TeamCreate("physics-research")` to establish the persistent team.
Spawn five researcher agents using the Task tool with `team_name` and `name` parameters:

| Name | Model | Definition |
|------|-------|------------|
| physicist | sonnet | `.claude/agents/physicist.md` |
| mathematician | sonnet | `.claude/agents/mathematician.md` |
| critic | opus | `.claude/agents/critic.md` |
| computationalist | sonnet | `.claude/agents/computationalist.md` |
| student | haiku | `.claude/agents/student.md` |

## Agent Autonomy

Agents are **self-directed** but **orchestrator-gated**. They either:
- Browse the kanban and request a task ("want #N"), or
- Invent their own research direction and announce it ("self: <topic>").

**The orchestrator confirms every assignment.** Agents do NOT call TaskUpdate to claim
tasks themselves. The flow is: agent requests → orchestrator confirms via TaskUpdate →
agent sees assignment in TaskList → agent starts working. While waiting, agents check
their inbox (shutdown may arrive).

Seed the kanban with a few initial tasks at session start. When an agent announces a
self-chosen task, create it (TaskCreate) and assign it to them (TaskUpdate).

## Orchestrator Responsibilities

The orchestrator's real jobs are:

1. **Poll `proposals/` directory**: this is the primary input channel. When an agent
   sends `done` or `proposal`, read their proposal file, process it, then delete the file.
   Paper edit requests, findings, questions — all come through proposals/.
   **ALWAYS send feedback**: tell the agent whether the proposal was merged, rejected, or
   needs revision. Agents need closure — silence kills momentum.
2. **Nudge idle agents**: if an agent goes idle without claiming new work, send a short
   nudge (1–2 sentences OK for orchestrator→agent). Suggest options: grab a task,
   visit the library, or take a Philosophenweg. Don't prescribe — let them choose.
3. **Decide when to call the day**: monitor cumulative work (blackboard fills, manuscript changes,
   notebook entries) and session clock. When the batch is substantial and the 60-minute commit
   window opens, commit and evaluate whether another round is productive.
4. **Commit and maintain research state**: two-commit structure per AGENTS.md §8.
   Update `meta/research-state.md` when threads evolve.
5. **Edit manuscripts directly** when processing paper-edit proposals.

## Publication Track (Orchestrator Role)

The orchestrator acts as **editor** for the internal publication workflow:
- Record agent votes in `papers/<name>/votes.md` (never vote yourself)
- When all 5 agents vote YES: copy paper to `pub-track/sent/`, spawn two ephemeral referee agents (opus + sonnet)
- Read referee reports, decide: Accept / Revise / Reject
- On Accept: build PDF, place in `docs/<name>/`, update `docs/index.md` and `meta/publications.md`
- On Revise: move paper back to `papers/`, attach reports, create kanban tasks for revisions
- On Reject: move paper to `pub-track/rejected/`

See `AGENTS.md` §11 for the full lifecycle.

## Context Budget

The multi-agent architecture burns ~120k tokens per compression cycle. After 3 auto-compressions
the session dies. To stay within budget:
- **Messages are one word.** Content goes to `proposals/` on disk.
- **No progress pings.** Monitor via TaskList.
- **Orchestrator reads proposals from disk**, not from message content.
- Target: **< 40k tokens of message traffic per hour** (rest goes to tool calls + system prompt).

## Task Models

- **Sonnet**: Orchestrator, Physicist, Mathematician, Computationalist agents
- **Opus**: Critic agent, referee reviews, hard derivations
- **Haiku**: Student agent (serendipitous browsing, low-cost exploration)

## Continuous Work Loop

When the user sets a work deadline, continue working continuously:
1. Seed kanban with a few tasks from `meta/motivations.md` or `meta/research-state.md`
2. Let agents self-direct; process their results and paper-edit requests
3. Monitor for stuck agents; nudge quietly, don't prescribe
4. Do NOT write session summaries or stop to ask "what next?"
5. Only stop when: (a) deadline reached, (b) context exhausted, (c) no productive work remains
6. Commit periodically (60-minute minimum between commits)
