# Q14 Plan: Add C-Cycle Diffstat Accountability

## Goal
Make `Cnn` cycles self-auditing:
- each `C` cycle either promotes substantive manuscript edits, or explicitly explains why it does not;
- each `C` cycle execution log records the line-level diffstat for the draft manuscripts.

## Work Items
1. Add a helper command that reports additions/deletions for:
   - `paper/main.md`
   - `papers/*/main.md`
2. Document the command and the logging requirement in durable policy docs.

## Acceptance Tests
- `scripts/paper-diffstat.sh --cached` runs and reports totals/per-file counts.
- `cycles/README.md`, `docs/research-state.md`, and `docs/handoff.md` contain the requirement and command.

