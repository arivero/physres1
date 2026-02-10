# Q11 Plan: Quality Pass After Adding H4.0b Sidebar to `paper/main.md`

## Goal
Referee-style pass focused on the new H4.0b sidebar:
- ensure it is properly scoped (conformal class, heuristic, scale-neutral),
- ensure it does not blur \(d\) vs \(D\),
- ensure guardrails: no cycle labels leaked into `paper/main.md`.

## Checks
1. Guardrail scan: `rg -n 'C[0-9]{2}' paper/main.md`.
2. Read-through around H4.0a/H4.0b for flow and clarity.
3. Verify cross-links target existing files.

## Acceptance Tests
- No guardrail violations.
- Any wording ambiguity corrected.

