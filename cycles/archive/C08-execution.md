# C08 Execution

## Manuscript Deltas
1. Added appendix subsection `10.1` in `paper/main.md` with explicit renormalization template.
2. Added subtraction/inversion derivation (`D8.1`) showing cutoff-log cancellation at fixed order.
3. Added running derivation (`D8.2`) and scheme-change statement (`P8.1`).
4. Kept scope boundary explicit: perturbative template, not full model computation.

## Equations Added
1. Regulated template \(F_\Lambda(g_B;\mu)\).
2. Renormalization condition defining \(g_R(\mu)\).
3. Inversion relation \(g_B(g_R)\) and cancellation result.
4. Beta-function relation \(\mu\,dg_R/d\mu\).
5. Scheme-change leading-coefficient stability statement.

## Sections Touched
1. `paper/main.md`.
2. `paper/bibliography.md`.
3. `sources/pending-*.md` notes used as source-status boundary.

## Rationale
`C08` closes the main RG criticism from `C07` by providing a concrete computation pattern while preserving the manuscript's compatibility-program framing.

## Acceptance Test Results
1. Section `10.1` includes labeled derivations: passed.
2. Explicit subtraction and running formulas present: passed.
3. Scope boundaries and pending-source policy explicit: passed.
