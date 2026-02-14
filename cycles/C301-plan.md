# C301 Plan: Newton Polygonal Convergence Theorem + Failure Mode

Date: 2026-02-14
Parent: D28+S285

## Goal
Promote the modern convergence theorem and collision-singularity failure mode from blackboard slot 6 into the main paper Section 3, following Heuristic H1.2.

## Scope
Add one new remark (`Remark H1.2a`) after `Heuristic H1.2` in Section 3.3.

The remark will:
1. State the O(h) global convergence theorem for symplectic Euler under Lipschitz forces
2. Identify the collision singularity as the failure mode where Lipschitz hypothesis breaks
3. Connect back to the existing hedge in H1.1a

## Source
- `blackboards/6.md` Section 6 (promotable paragraph)
- S285 full derivation provides the technical backup

## Target file
- `paper/main.md` Section 3.3, insert after line 232 (after Heuristic H1.2)

## Acceptance criteria
1. New remark added to manuscript
2. Remark is self-contained (no forward references to unproven claims)
3. Connects to existing H1.1a hedge
4. Preserves section flow to 3.4
5. Diffstat shows net positive addition to Section 3
