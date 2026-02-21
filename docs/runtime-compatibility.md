# Runtime Compatibility (Human Notes)

This document is for humans maintaining this repository across different agent runtimes.
It is not a canonical protocol source. Canonical policy remains in:

- `AGENTS.md`
- `agents/shared-rules.md`

## Purpose

Different tools expose different APIs for tasks, messaging, and agent orchestration.
The project protocol should stay stable while runtime adapters vary.

## Typical Mapping

| Concept | Claude-style runtime | Codex-style runtime | GitHub-style runtime | Google-style runtime |
|--------|-----------------------|---------------------|----------------------|----------------------|
| Task board | `TaskList` / `TaskCreate` / `TaskUpdate` | Runtime task facility or file fallback | Issue/PR or file fallback | Runtime task facility or file fallback |
| Messaging | `SendMessage` + inbox | Runtime messaging or file inbox | Issue/PR comments or file inbox | Runtime messaging or file inbox |
| Agent roles | `.claude/agents/*.md` | Runtime role/subagent config | `.github` instructions/agents | Gemini/agent config files |
| Web access | Runtime web tools | Runtime web tools | Runtime web tools | Runtime web tools |

## Fallback Strategy

If a runtime lacks built-in multi-agent features:

1. Keep role prompts/personas in files.
2. Use a file-based kanban for task state.
3. Use a file-based inbox/signals for coordination.
4. Preserve the same permission model and publication workflow.

## Standard Instruction Files

- `AGENTS.md` is broadly supported as an instruction file and is canonical here.
- `CLAUDE.md` and `.github/copilot-instructions.md` are runtime-specific supplements.
- Avoid introducing non-standard top-level instruction files as policy sources.
