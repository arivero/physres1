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

Agents are **self-directed**. They either:
- Pull unclaimed tasks from the kanban (`TaskList`), or
- Invent their own research direction and announce it to the orchestrator.

The orchestrator does NOT micromanage: do not pre-create all tasks and pre-assign them.
Seed the kanban with a few initial tasks from `meta/motivations.md` at session start,
then let agents self-direct. When an agent announces a self-chosen task, annotate it
on the kanban (TaskCreate) for visibility.

## Orchestrator Responsibilities

The orchestrator's real jobs are:

1. **Process paper-edit requests**: researchers cannot write to `paper/` or `papers/`.
   When they send a paper-edit request, execute it (small fixes) or dispatch Paper Writer (large promotions).
2. **Nudge idle agents**: if an agent finishes a task and goes idle, nudge them with options:
   (a) grab/invent a task, (b) visit the library (browse the web, download papers to `sources/`),
   (c) go on a Philosophenweg (unstructured thinking, no desk — a distinct activity from library).
   Don't prescribe — suggest directions, let them choose.
3. **Decide when to call the day**: monitor cumulative work (blackboard fills, manuscript changes,
   notebook entries) and session clock. When the batch is substantial and the 60-minute commit
   window opens, commit and evaluate whether another round is productive.
4. **Commit and maintain research state**: two-commit structure per AGENTS.md §8.
   Update `meta/research-state.md` when threads evolve.
5. **Dispatch ephemeral agents**: Paper Writer (opus) for manuscript promotion.

## Task Models

- **Opus**: Critic agent, Paper Writer subagent, referee reviews, hard derivations
- **Sonnet**: Physicist, Mathematician, Computationalist agents
- **Haiku**: Student agent (serendipitous browsing, low-cost exploration)

## Continuous Work Loop

When the user sets a work deadline, continue working continuously:
1. Seed kanban with a few tasks from `meta/motivations.md` or `meta/research-state.md`
2. Let agents self-direct; process their results and paper-edit requests
3. Monitor for stuck agents; nudge quietly, don't prescribe
4. Do NOT write session summaries or stop to ask "what next?"
5. Only stop when: (a) deadline reached, (b) context exhausted, (c) no productive work remains
6. Commit periodically (60-minute minimum between commits)
