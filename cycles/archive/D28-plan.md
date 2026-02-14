# D28 Plan: Newton Polygonal Convergence and the Refinement-Limit Claim

Date: 2026-02-14

## Goal
Extract a referee-safe convergence statement for Newton’s polygonal (kick-drift) construction: under what hypotheses does the polygonal orbit converge to a continuous solution, and what are the minimal failure modes?

## Problem statement
Section 3 of the cornerstone paper uses a finite-step impulse model to show:
- angular momentum and equal areas are exact at each finite step for any central impulses,
- only the curve interpolation is a limiting passage.

The manuscript already hedges correctly (“whenever the limit exists”), and cites Nauenberg vs Pourciau on the historical limit debate.
What is still useful to nail down is a modern, explicit convergence statement in the language of numerical analysis:
the kick-drift map is the symplectic Euler method for separable central-force Hamiltonians.

Targets:
1. State a clean sufficient condition for convergence of the method to the true orbit on a finite time interval (e.g. smooth/Lipschitz force away from \(r=0\)).
2. Record at least one failure mode that is genuinely relevant to the central-force setting (e.g. singular potentials, near-collision, loss of global Lipschitzness).

## Inputs (read-only references)
- `paper/main.md` (Section 3.2–3.3; `Heuristic H1.2`; `Remark H1.1a`)
- `papers/relativistic-central-orbits/main.md` (for small-\(r\) singularity motivation; no edits in D/S)

## Expected spawns
- `S285`: convergence witness and/or counterexample.
  - Deliverable: a blackboard note with:
    - one explicit convergence theorem statement in modern ODE/integrator language (with hypotheses),
    - plus one computed failure mode (either analytic or a small numerical example).
- `B33` (optional): anchor reference for symplectic Euler convergence in Hamiltonian systems and/or for the Newton polygonal-limit scholarship.

## Decision criteria
- Keep the statement bounded: “finite time, away from collision, under Lipschitz force” is acceptable.
- Avoid writing a textbook chapter on symplectic integrators; one theorem + one failure mode is enough.

## Acceptance criteria
- A single paragraph that can later be promoted as a scope-clarifying remark in the main paper (via a C cycle), making explicit what “controlled refinement” means for Newton’s polygonal limit.

