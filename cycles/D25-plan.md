# D25 Plan: Random Impulses, Stochastic Calculus, and Time-Slicing Conventions

Date: 2026-02-14

## Goal
Test whether the “\(N\)-impulse” refinement scaffold (Dirac-probes companion) admits a clean stochastic interpretation, and whether the variational/midpoint convention corresponds to Stratonovich (vs Itô) in a way that can be stated without handwaving.

## Problem statement
The Dirac-probes note flags an outlook idea:
random impulses with prescribed statistics could provide an “honest” probabilistic model whose refinement limit resembles the path-integral time-slicing.
It also flags a related subtlety: midpoint (Stratonovich) vs prepoint (Itô) conventions can change finite drift terms in stochastic limits.

This cycle triages the physics/maths content:
1. Pick a minimal random-kick model that is not trivial (e.g. additive noise or multiplicative noise).
2. Identify which discretization convention corresponds to which stochastic integral.
3. Compute at least one explicit “convention difference” term (Itô correction) and map it back to the time-slicing choice.

## Inputs (read-only references)
- `papers/dirac-probes-corners-impulses/main.md` (Outlook items 1 and 4)
- `paper/main.md` (Section 6.3 ordering/discretization framing)

## Expected spawns
- `S282`: minimal stochastic-kick computation.
  - Deliverable: a blackboard note with one explicit toy model where midpoint vs prepoint produces a different effective drift/energy increment, and a short mapping to the “ordering/discretization” language of the main paper.
- `B30` (optional): one authoritative anchor for Itô vs Stratonovich conversion in the chosen model class.

## Decision criteria
- Avoid “stochastic mechanics” scope creep: the target is a minimal, checkable computation, not a philosophical program.
- Preference: choose a model that actually exhibits an Itô correction (multiplicative noise), otherwise the convention issue is invisible.

## Acceptance criteria
- A single clean statement of the form:
  “midpoint discretization corresponds to Stratonovich; converting to Itô adds the correction term …”
  with hypotheses and one explicit computed witness.

