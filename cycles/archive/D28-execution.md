# D28 Execution: Newton Polygonal Convergence and the Refinement-Limit Claim

Date: 2026-02-14
Status: Completed

## Decision (append-only)
- Chosen target: State an explicit convergence theorem for the kick-drift (symplectic Euler) map applied to separable central-force Hamiltonians, plus one witness failure mode (near-collision singularity).
- Why now: The manuscript (Section 3, `Heuristic H1.2`, `Remark H1.1a`) already identifies Newton's polygonal construction as a symplectic Euler integrator and hedges on convergence. A modern explicit convergence statement sharpens the RCP thesis ("structural invariants are exact at finite step; only the interpolation limit requires analytic control") and defuses potential referee objections about vague limiting claims.

## One-sentence novelty claim (append-only)
The kick-drift polygonal construction is the symplectic Euler method for separable Hamiltonians, and standard first-order convergence theory (Lipschitz force, finite time, bounded domain) gives an explicit O(h) global error bound whose hypotheses fail precisely at the central-force collision singularity -- making the manuscript's hedge both necessary and sharp.

## Scope disclaimer (append-only)
This is a scope-clarifying observation, not a new theorem. The convergence result is classical (Hairer-Lubich-Wanner); the contribution is stating it in the specific language of Section 3 and identifying the physically relevant failure mode for the central-force setting.

## Spawned cycles (planned)
- `S285`: convergence theorem statement + failure mode witness (blackboard note).
- `B33` (optional, deferred): symplectic-Euler / Newton-limit anchor(s). The standard references (Hairer-Lubich-Wanner, Nauenberg) are already cited or known; a dedicated bibliography cycle is not needed unless a referee demands a specific citation.

## Completion addendum (2026-02-14)
- `S285` completed: convergence theorem + failure mode witness written to `blackboards/6.md`.
- Blackboard slot 6 overwritten from S208 (non-perturbative contact/Pade); S208 promoted to `notebooks/nonperturbative-contact-pade.md`.
- Blackboard 2 (caustics/Maslov, S213) also promoted to `notebooks/caustics-maslov-half-density.md` during slot management (slot 2 was then reused by another concurrent cycle S282).
- Acceptance criteria met: a single promotable paragraph exists in `blackboards/6.md` Section 6, suitable for a scope-clarifying remark in the main paper via a future C cycle.
- `B33` remains deferred (no immediate need).
