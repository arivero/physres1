# C100 Debate: how much rooted-tree detail belongs in the main paper?

Date: 2026-02-11

## Question
Should `paper/main.md` include the explicit \(O(h^3)\) next-term discrepancy (and its rooted-tree identification), or should it keep only the \(O(h^2)\) control-map closure story and leave higher-order bookkeeping to follow-up notes?

## Current position
Keep the main paper’s Section 8.4 focused on the closure/control-map point, but add a *single* explicitly-scoped sentence/remark that higher-order comparison generates additional elementary differentials (rooted trees), with one concrete \(O(h^3)\) term only if it can be stated in one line without new notation debt.

## What would change my mind?
- If the \(O(h^3)\) term forces extra definitions (e.g. higher derivatives) that interrupt the flow for readers who only need the control-map intuition.

