# C08 Plan

## Goal
Add a concrete renormalization appendix with explicit subtraction, running, and a minimal scheme-change check.

## Scope
1. Write one regulated single-coupling template with logarithmic divergence.
2. Show explicit cancellation of cutoff logs under a renormalization condition.
3. Derive the beta function from scale differentiation.
4. Show leading beta coefficient stability under analytic scheme redefinition.

## Claims
1. A renormalization condition at scale \(\mu\) converts explicit cutoff dependence into running couplings.
2. Log-divergence cancellation can be shown directly at fixed perturbative order.
3. Scheme change modifies higher-order terms while preserving leading flow coefficient in the template.

## Risks
1. Ambiguity between fixed-bare and fixed-renormalized differentiation conventions.
2. Overclaiming scheme invariance beyond shown perturbative order.
3. Drifting into model-specific details that are not derived.

## Acceptance Tests
1. `paper/main.md` has a dedicated `C08` subsection with at least one labeled derivation.
2. Subsection includes explicit subtraction and beta-function formulas.
3. Subsection includes explicit scheme-change statement with caveat on order.
