# C112 Plan: Promote S75 semigroup result to Section 8.4

Date: 2026-02-12

## Goal
Add a remark (D6.2a-sg) to Section 8.4 extending D6.2a from b=2 step-halving to general b-fold refinement, stating the semigroup law and continuous beta function.

## Target manuscripts (must edit >=1)
- `paper/main.md` (yes)

## Scope
In scope:
- Insert Remark D6.2a-sg after D6.2a, before D6.2a1
- General formula tau_b(a) = a/b + (b-1)/(2b)
- Semigroup law tau_b o tau_c = tau_{bc}
- Continuous beta function beta(a) = 1/2 - a
- Closing sentence linking to H6.2

Out of scope:
- Full induction proof (routine, stays in blackboard)
- Exponential-relaxation solution (follows immediately)
- Butcher-group multi-parameter extension (already in H6.2)

## Minimum promotion bar
One remark block (~7 lines) with formula, composition law, beta function, and interpretive sentence.

## Allowed files
- `paper/main.md`
- `cycles/C112-*.md`

## Forbidden files
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`
- `docs/`

## Acceptance criteria
- At least one manuscript changed (substantively).
- Diffstat recorded in `cycles/C112-execution.md`.
- Guard check passes: no cycle IDs in manuscripts.
