# Portability Notes

This document records which aspects of the team architecture are tool-specific
and which are portable across different AI coding assistants.

## Tool-Specific Mechanisms

These mechanisms depend on the specific AI tool being used. Each tool provides
its own implementation; the protocol files (`AGENTS.md`, `agents/shared-rules.md`)
describe the *what*, not the *how*.

| Mechanism | What it does | Claude Code | Portable fallback |
|-----------|-------------|-------------|-------------------|
| Team creation | Spawn persistent agents | `TeamCreate` | Shared config file |
| Task board | Create, claim, complete tasks | `TaskList`/`TaskCreate`/`TaskUpdate` | File-based kanban (e.g. `meta/kanban.md`) |
| Messaging | Send messages between agents | `SendMessage` | File-based inbox (`agents/shared/inbox/`) |
| Agent spawning | Start an agent with a persona | Task tool + `team_name`/`model` | Platform-specific |
| Agent definitions | Persona + startup instructions | `.claude/agents/*.md` | `.cursor/agents/`, `.copilot/agents/`, etc. |
| Web browsing | Search and fetch web pages | `WebSearch`/`WebFetch` | Any tool's web access |

### Claude Code specifics

Claude Code tool mappings live in:
- `CLAUDE.md` — team startup, model selection, continuous work loop
- `.claude/agents/*.md` — per-agent definitions with Claude Code tool references

### For other tools

To participate in this project with a non-Claude tool:
1. **Read-only** works immediately — all shared state is plain markdown.
2. **Write participation** requires understanding file permissions (`agents/shared-rules.md` §8).
3. **Task coordination** needs a file-based kanban fallback if the tool lacks a built-in task system.
4. **Messaging** needs a file-based inbox if the tool lacks inter-agent communication.

## Portable (Tool-Agnostic) Mechanisms

These work with any tool that can read/write files and run git:

| Mechanism | Files |
|-----------|-------|
| Blackboards (scratch) | `blackboards/*.md` — plain markdown |
| Notebooks (memory) | `notebooks/*.md` — plain markdown, append-only |
| Private memory | `agents/<name>/memory/` — plain markdown |
| Philosophenweg | `agents/shared/philosophenweg.md` — file protocol |
| Voting protocol | `notebooks/votes.md` — append-only text |
| Anomaly register | `meta/anomalies.md` — append-only text |
| Paper structure | `paper/`, `papers/*/` — plain markdown |
| Shared rules | `agents/shared-rules.md` — plain markdown |
| Git operations | Universal |

## Design Principle

The canonical protocol files (`AGENTS.md`, `agents/shared-rules.md`) describe
protocols in terms of *what* (write to a file, read a file, append, message the
orchestrator) rather than *which tool*. Tool-specific implementations live in
the tool's own configuration directory (e.g., `.claude/` for Claude Code).
