# Claude Note

`AGENTS.md` is the canonical repository contract. Follow it for all policy,
permissions, workflow, and publication rules.

This file is Claude-specific glue only and must not restate repository policy.

## Claude-Specific Startup Mechanics

At session start, create the persistent team with:
- `TeamCreate("physics-research")`

Spawn these researcher agents with Task tool parameters (`team_name`, `name`):

| Name | Model | Definition |
|------|-------|------------|
| physicist | sonnet | `.claude/agents/physicist.md` |
| mathematician | sonnet | `.claude/agents/mathematician.md` |
| critic | opus | `.claude/agents/critic.md` |
| computationalist | sonnet | `.claude/agents/computationalist.md` |
| student | haiku | `.claude/agents/student.md` |

For referee reviews, use `.claude/agents/referee.md` and
`agents/shared/referee-protocol.md`.
