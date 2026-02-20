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

## Task Management

Use `TaskCreate` to post research tasks. Agents claim from `TaskList`.
Process paper edit requests received via `SendMessage`.
Dispatch ephemeral Paper Writer (opus) or Bibliographer (sonnet) subagents as needed.

## Task Models

- **Opus**: Critic agent, Paper Writer subagent, referee reviews, hard derivations
- **Sonnet**: Physicist, Mathematician, Computationalist agents; Bibliographer subagent
- **Haiku**: Student agent (serendipitous browsing, low-cost exploration)

## Continuous Work Loop

When the user sets a work deadline, continue working continuously:
1. Create tasks from `meta/motivations.md` or `meta/research-state.md`
2. Assign to researcher agents; process their results
3. Do NOT write session summaries or stop to ask "what next?"
4. Only stop when: (a) deadline reached, (b) context exhausted, (c) no productive work remains
5. Commit periodically (60-minute minimum between commits)
