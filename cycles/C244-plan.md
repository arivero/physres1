# C244 — Plan

## Goal
Promote S204 result into HD-QFT paper as Remark HD-D1.3b:
"Normal-coordinate computation: V = (1/6)R matches conformal coupling
only at D=4."

Also update HD-D1.3a to reconcile its "conformal-class-specific" caveat
with the general-metric result.

## Scope
- Add Remark HD-D1.3b (~8-10 lines) after HD-D1.3a in Section 3
- Update HD-D1.3a to clarify that "conformal-class-specific" applies to
  gradient-correction structure, not to the leading-order coefficient
- Add Berger 2003 or equivalent reference if needed

## Reviewer-driven revisions (from S204 review)
1. Use "matching" language, not "selection" — present as conditional:
   "IF conformal coupling is required AND half-density normalization,
   THEN D=4 is the unique compatible dimension at leading order."
2. Clarify that V = (1/6)R is pointwise (at center of normal coords).
3. Frame as connecting a known fact (a₁ = (1/6−ξ)R) to the half-density
   program, not claiming novelty of the underlying mathematics.

## Acceptance tests
1. Paper compiles (mental check: no TeX-breaking syntax).
2. Remark is self-contained and references HD-D1.3/HD-D1.3a.
3. HD-D1.3a updated consistently.
4. Diffstat shows substantive additions.
