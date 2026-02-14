# D26 Plan: Heat Kernel / Half-Density Semantics as a QFT-Grade Witness

Date: 2026-02-14

## Goal
Produce one explicit, QFT-grade computation that unifies three threads already present in the repo:
1. kernels as bi-half-densities (measure-free composition),
2. the \(D/2\) normalization exponent as the “square-root Jacobian”,
3. curvature/local counterterms via the heat-kernel small-\(t\) expansion (with the \(a_1=(1/6-\xi)R\) coefficient as the concrete target).

## Problem statement
The half-density QFT note already contains:
- the canonical identity kernel and conjugated kinetic operator,
- a conformal-class simplification (cancellation at \(D=4\)),
- and the normal-coordinate \(V(p)=\tfrac16 R\) coefficient.

What is still missing (as a “single witness” deliverable) is a compact computation that makes the *heat kernel as a bi-half-density* explicit and ties it directly to:
- diagonal delta kernels (locality/contact terms),
- and the universal \(D/2\) pole structure in proper time / dimensional regularization.

## Inputs (read-only references)
- `papers/half-density-qft/main.md` (Derivations HD-D1.1–HD-D1.3b and heat-kernel remarks)
- `paper/main.md` (Section 6.1 half-density heuristics; Appendix 10.6 kernel witnesses)

## Expected spawns
- `S283`: one worked heat-kernel witness on a curved background in half-density language.
  - Deliverable: a blackboard note with a short derivation of the \(a_1\) coefficient (or an equally explicit equivalent statement) and a precise “what is canonical vs what is scalarization” paragraph.
- `B31` (optional): ensure the citation set is anchored (e.g. Vassilevich/Gilkey-style primary source) in the exact conventions used.

## Decision criteria
- Keep to one concrete computation; do not expand into a full heat-kernel review.
- Prefer an argument that is manifestly coordinate invariant (normal coordinates at a point are OK if the invariant output is stated clearly).

## Acceptance criteria
- A self-contained statement that can later be promoted with minimal editing:
  “In the half-density convention, the canonical diagonal delta kernel and the small-\(t\) heat-kernel asymptotics are controlled by the same \(D/2\) exponent; the leading curvature potential is \(V=\tfrac16 R\), matching conformal coupling only at \(D=4\).”
  plus a scope disclaimer about which part is conformal-class-specific vs universal.

