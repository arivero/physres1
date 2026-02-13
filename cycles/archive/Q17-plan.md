# Q17 Plan: Quality Pass on D1.5 / D1.5b / D1.5c

## Goal
Referee-style check of the full inverse-square witness block after adding clock-choice caveat:
- internal consistency,
- model-scope discipline,
- risk of overclaim.

## Checks
1. Read D1.5, D1.5a, D1.5b, D1.5c as one argument chain.
2. Symbolic sanity for asymptotics:
   - D1.5b high-mass limit,
   - D1.5c endpoint behavior.
3. Guardrail scan in cornerstone manuscript (`paper/main.md`) for cycle-label leakage.

## Acceptance Tests
- No contradiction between D1.5b and D1.5c claims.
- Robust vs convention-sensitive conclusions are explicit.

