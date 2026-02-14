# D24 Plan: Functional Delta Objects and Stationary-Set Localization

Date: 2026-02-14

## Goal
Clarify, in a referee-safe way, which “delta objects” are legitimate in the variational/refinement narrative:
\(\delta(\nabla f)\), \(\delta(f')\), \(\delta'\), diagonal delta kernels, and the informal \(\delta(\delta S)\) slogan.

## Problem statement
Across the main paper and the delta/Dirac companion notes, we use several delta-adjacent constructions with very different meanings:
- \(\delta(f')\) or \(\delta(\nabla f)\): delta applied to a *function*, localizing on the stationary set.
- \(\delta'\): distributional derivative of delta, probing derivatives of test functions.
- diagonal delta kernels \(\delta(x-y)\): identity kernels (most naturally as bi-half-densities).
- informal “\(\delta(\delta S)\)” path-space language: tempting, but potentially meaningless without a regulator and a clear functional-analytic framework.

We need a clean dictionary that prevents category errors, and one concrete “safe vs unsafe” criterion aligned with the manuscript’s refinement-compatibility framing.

## Inputs (read-only references)
- `paper/main.md` (Section 5.5 `Derivation D3.5` / `D3.5a`)
- `papers/delta-objects/main.md` (Section 3.1a/3.1b; Outlook item 2)
- `papers/dirac-probes-corners-impulses/main.md` (Section 5 table + Schwartz impossibility discussion)
- `paper/notes/weak-euler-lagrange-jump-conditions.md` (δ vs δ′ toy model; no edits in D/S)

## Expected spawns
- `S281`: write the “dictionary + witness” blackboard.
  - Deliverable: (i) a short do/don’t table, (ii) at least two worked toy computations:
    - point splitting \((\delta(\cdot+\varepsilon)-\delta)/\varepsilon \to \delta'\),
    - stationary-set identity \(\delta(f')=\sum_i \delta(x-x_i)/|f''(x_i)|\),
    - and (optional) a more careful statement of the D3.5 “square-root delta normalization” limit with explicit hypotheses.
- `B29` (optional): acquire one clean primary anchor for the stationary-set delta identity (coarea formula / distributional change-of-variables) and for Schwartz’s impossibility theorem.

## Decision criteria
- The output must separate:
  - what is true in finite dimensions (and why),
  - what is true for distributions on \(\mathbb R^n\),
  - and what is only heuristic on path space.
- Prefer a “safe criterion” in terms of continuity/regularity of what is being probed (mollifier universality) versus diagonal singularity/products (scheme dependence).

## Acceptance criteria
- A compact “dictionary paragraph” that can be promoted later without rewriting.
- A crisp statement of when “\(\delta(\delta S)\)” is acceptable as shorthand (if ever), and what regulated substitute should be written instead.

