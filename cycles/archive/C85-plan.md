# C85 Plan: Concrete Witness for \(c\) as a Control Parameter (Rest-Energy Subtraction)

## Goal
Add one concrete, nonstandard witness in `paper/main.md` for why \(c\) functions as a control parameter in limit-compatibility:
the naive \(c\to\infty\) limit of the relativistic action does not exist without an explicit subtraction convention.

## Target
1. Add `Derivation D0.2` in Section 2.4:
   - expand the relativistic free-particle action at large \(c\),
   - show the divergent \(-mc^2(t_f-t_i)\) term,
   - interpret its removal as an allowed additive counterterm (no effect on classical E-L; global phase in quantum).
2. Add a one-sentence pointer near `Heuristic H0.3` that a concrete instance appears later (`Derivation D0.2`).

## Acceptance
1. Manuscript edits exist and are coherent with the refinement/limit-control thesis.
2. `cycles/C85-execution.md` records manuscript diffstat via `scripts/paper-diffstat.sh --cached`.
3. Commit and push.

