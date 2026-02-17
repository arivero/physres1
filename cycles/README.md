# Task Board

The task board (`cycles/index.md`) tracks all active, completed, and backlogged work.
It replaces the previous per-cycle artifact system.

## Format

```markdown
## Active
| ID | Type | Agent | Description | Status |
|----|------|-------|-------------|--------|
| T1 | research | researcher(mathematician) | Description here | in-progress |
| T2 | write | paper-writer | Promote T1 findings to Section 10 | blocked-by:T1 |

## Completed (recent)
| ID | Type | Summary | Date |
|----|------|---------|------|
| T0 | review | Referee pass on Section 10 additions | 2026-02-17 |

## Backlog
- Future work items as bullet points
```

## Task Types

| Type | Agent | Purpose |
|------|-------|---------|
| `research` | Researcher (persona+skill) | Discovery, exploration, derivation |
| `blackboard` | Blackboard Agent | Write exploratory math to blackboard slots |
| `notebook` | Notebook Agent | Stabilize blackboard content into notebooks |
| `write` | Paper Writer Agent | Promote stable content into manuscripts |
| `review` | Referee Agent | Cold-read quality review of manuscript changes |
| `bibliography` | Bibliographer Agent | Search, ingest, verify references |

## Rules

1. **No per-task artifact files.** Agent outputs are ephemeral (returned to orchestrator) or written to their designated files (blackboards, notebooks, manuscripts). The task board entry is the only planning artifact.

2. **Task IDs are sequential** (`T1`, `T2`, ...). They are planning metadata only — never place them in manuscript content.

3. **Status values:** `pending`, `in-progress`, `blocked-by:Tn`, `completed`.

4. **Completed tasks** move from the Active table to the Completed table. Only keep the most recent ~20 completed tasks visible; older ones can be trimmed.

5. **Blocking dependencies** are expressed inline: `blocked-by:T1` means the task cannot start until T1 completes.

6. **Only the Orchestrator edits the task board.** Subagents return results; the orchestrator updates status.

7. **Paper-quality boundary:** Only `write` tasks (Paper Writer Agent) may modify manuscripts. All other task types must not touch manuscript files.

8. **Mathematics must be written down:** Any task claiming mathematical results must produce persistent files in `blackboards/` or `notebooks/`. Mathematics only in agent memory does not count.

9. **Minimum productivity for write tasks:** Net >= 10 lines of meaningful content, OR completion of a planned promotion, OR critical correctness fix.

## Historical Archive

The previous cycle system (D/S/B/C/Q/P with ~3280 archived cycles) is preserved in git history. To recover any old cycle file:

```bash
git log --all --oneline -- cycles/<ID>-execution.md
git show <commit>:cycles/<ID>-execution.md
```
