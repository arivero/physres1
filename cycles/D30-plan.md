# D30 Plan: Curved-space extension of P4.2

Date: 2026-02-14
Track: D-triage (discovery planning)
Parent: (follow-up to C309 crown jewel theorem)

## Question
**Does Proposition P4.2 (necessity of ℏ for composition-compatible refinement) extend to curved configuration spaces?**

Specifically: if M is a Riemannian manifold (not ℝᵈ), does the composition semigroup still force κ with [κ]=[action], or do metric-dependent factors create loopholes?

## Context from Haiku search (sources/)
**Critical gap identified:** Zero sources explicitly treat curved-space path integral measures or Van Vleck-Morette extensions to manifolds.

What we have:
- de Gosson (2018): Van Vleck determinant in flat space only
- Carroll (gr-qc/9712019): Riemannian geometry foundations, no QM
- Tanaka (2102.10887): heat kernels on manifolds, but for quadrature not quantum propagation
- S283 blackboard: heat-kernel witness on ℝᵈ

What we lack:
- Van Vleck-Morette propagator formalism
- DeWitt curved-space path integral work
- Metric-dependent measure corrections (√g factors)

## Hypothesis
P4.2's four hypotheses (C: composition, L: local exponential, I: identity, D: dimensional) should extend to curved M with one modification: normalization must include Van Vleck determinant √(det ∂²S/∂qᵢ∂q'ⱼ).

The key question: does the Van Vleck factor absorb ℏ, or does it carry independent metric information leaving κ=ℏ structurally necessary?

## In scope
1. Formulate P4.2 hypotheses (C/L/I/D) for Riemannian manifold M
2. Identify where metric dependence enters (measure? action? both?)
3. Determine if Van Vleck determinant creates a κ→0 or κ→∞ escape route
4. Assess bibliography needs: can we argue abstractly or need external anchors?

## Out of scope
- Full curved-space calculation (that's S287 if spawned)
- Bibliography acquisition (that's Bnn if needed)
- Manuscript promotion (that's Cnn after resolution)

## Success criteria
**Sharp verdict on one of these:**
1. P4.2 extends cleanly (Van Vleck is metric-dependent but ℏ-independent)
2. P4.2 fails on curved M (Van Vleck provides ℏ-escape via metric)
3. Extension exists but requires stronger hypotheses (e.g., geodesic completeness)

## Spawned cycles (expected)
- S287: Curved-space κ calculation (composition test on Riemannian M)
- Bnn: Van Vleck-Morette literature (if load-bearing claim needs anchor)
