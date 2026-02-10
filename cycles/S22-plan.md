# S22 Plan: Formalize the “Control Map \(\tau\)” for Comparing Refinements

## Goal
Write a derivation-first, transcript-independent formulation of the “control map \(\tau\)” idea (from the 9803035 thread) in the language of this repo:
- discretizations/refinements produce families of amplitudes/kernels,
- coarse-graining is integration + (sometimes) rescaling,
- a continuum object exists only if different refinements can be compared by a **parameter-flow map** \(\tau\) (RG-style compatibility).

This is the missing technical glue between:
1) “stationary extremes of the action” (classical support) and
2) “refinement-compatible composition” (RG as a consistency/compatibility condition).

## Scope
- Produce one blackboard note stating:
  1. a clean *definition* of a refinement map and a coarse-graining operator,
  2. a precise “commuting diagram” compatibility condition involving \(\tau\),
  3. one worked toy example where the diagram closes exactly (Gaussian kernel semigroup),
  4. interpretation: \(\tau\) as renormalization condition (what is invariant vs scheme).
- No manuscript promotion in this cycle.

## Acceptance Tests
1. The note contains a boxed “compatibility equation” of the form:
   \[
   \mathcal C_{b}\big(A_{h,\theta}\big)=A_{bh,\tau_b(\theta)}
   \quad\text{(or equivalent)},
   \]
   where \(\mathcal C_b\) is coarse-graining and \(\theta\) denotes parameters (at minimum the action-scale regulator).
2. The note separates what is *derived* (diagram/definitions) from what is *heuristic* (claims about existence/uniqueness of \(\tau\)).
3. The note explicitly avoids treating preprints as “source of truth”: it is written as our own formulation.

## Planned Outputs
- `blackboards/2026-02-10-control-map-tau-refinement-compatibility.md`
- Cycle logs: `cycles/S22-{plan,debate,execution,redteam}.md`

