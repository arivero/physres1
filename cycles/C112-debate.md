# C112 Debate: How much of S75 to promote?

Date: 2026-02-12

## Question
S75 computed the full semigroup structure including exponential relaxation tau_{e^t}(a) = 1/2 + (a-1/2)e^{-t} and an RG interpretation table. Should the remark include the explicit flow solution and table, or just the formula + semigroup law + beta function?

## Options
1. Minimal: formula, semigroup law, beta function, one interpretive sentence.
2. Extended: add the exponential relaxation solution and the RG correspondence table.

## Decision
Option 1 (minimal).

## Rationale
The exponential relaxation follows immediately from beta(a) = 1/2 - a, so stating it would be redundant for any reader who recognizes a linear ODE. The RG table, while pedagogically useful, belongs in the blackboard rather than the manuscript — it risks making a simple point look labored. The S75-debate.md already identified this: promote the algebraic structure, not the verification details.

## Consequences / Follow-ups
- The blackboard `blackboards/2026-02-12-step-refinement-semigroup.md` retains the full computation for any reader who wants details.
- Q67 should verify the promoted formulas are self-consistent and that the closing sentence accurately represents the relationship to H6.2.
