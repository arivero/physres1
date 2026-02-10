# C31 Plan

## Goal
Add an internal note that makes one key finite-dimensional mechanism explicit:
integrating out (or stationary-phase eliminating) intermediate variables produces
1. an effective action given by a Schur complement, and
2. a determinant prefactor from the eliminated block.

This is the concrete template behind why semiclassical propagators involve mixed Hessian determinants (Van Vleck) after eliminating intermediate coordinates.

## Scope
1. Add `paper/notes/van-vleck-schur-complement.md` with a quadratic model and explicit block-matrix formulas.
2. Update `docs/research-log.md` and `cycles/index.md`.

## Non-Goals
- No edits to `paper/main.md` in this cycle.
- No bibliography work.

## Acceptance Tests
1. The new note contains the explicit Schur complement formula and the Gaussian integral determinant prefactor.
2. The note states clearly what is proved (quadratic exact / stationary phase template) vs what is only analogy (continuum path integral).

