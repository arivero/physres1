# D23 Plan: Ordering vs Unitarity in the \(H=qp\) Witness

Date: 2026-02-14

## Goal
Determine what is actually implied by *unitarity/self-adjointness* in the ordering/discretization witness for \(H=qp\), and produce a referee-safe statement that does not overclaim uniqueness.

## Problem statement
The cornerstone manuscript uses the \(H=qp\) time-slicing witness to illustrate that different discretizations can share the same classical limit while differing at \(O(\hbar)\).
It also informally suggests that “requiring unitarity selects a symmetric (half-density) convention”.

This cycle’s target is to make the selection criterion precise:
1. What operator family \(\hat H_\alpha\) is induced by the \(\alpha\)-discretization (already sketched in `Derivation D4.1b`).
2. For which \(\alpha\), on which Hilbert space, and on which domain, is \(\hat H_\alpha\) symmetric / essentially self-adjoint?
3. Which requirement is actually doing the selecting:
   - symmetry/self-adjointness of the generator,
   - unitarity of the resulting propagator,
   - coordinate/measure covariance (half-density scalarization),
   - or something else?

## Inputs (read-only references)
- `paper/main.md` (Intro `Heuristic H0.2` bullet 2; Section 6.3 `Derivation D4.1b`)
- `paper/main.md` (Appendix 10.2 for the broader \(f(q)p\) ordering family)
- `papers/half-density-qft/main.md` (for the “half-density as canonical object” framing; no edits in D/S)

## Expected spawns
- `S280`: operator-domain check for the dilation generator family.
  - Deliverable: a blackboard note with a clean “adjoint + boundary term” computation for \(-i\hbar(q\partial_q + c)\) on at least one standard domain, and the mapping \(c \leftrightarrow \alpha\).
- `B28` (optional): one authoritative citation for self-adjointness/unitarity of dilation-group generators (affine group / Stone’s theorem application) in the specific \(L^2\) setting used.
- `Cxxx` (later): if the current manuscript wording overstates “unitarity selects midpoint”, open a content cycle to tighten the sentence with the verified criterion + scope disclaimer.

## Decision criteria
- If the selection depends on the underlying configuration space (e.g. \(\mathbb R\) vs \(\mathbb R_+\) and the boundary at \(0\)), that dependence must be explicit in the claim.
- Prefer a statement that is *true with minimal hypotheses*:
  “midpoint/Weyl gives a symmetric generator in the standard scalar \(L^2\) picture”
  is acceptable; “unitarity forces midpoint” is acceptable only if proved under explicit hypotheses.

## Acceptance criteria
- One-sentence “safe claim” + one-sentence scope disclaimer suitable for later promotion.
- A minimal computation witness (in the spawned S-cycle) showing which \(\alpha\) yields symmetry/self-adjointness and what fails for other \(\alpha\).

