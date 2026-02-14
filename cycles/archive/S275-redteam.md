# S275 Redteam

Date: 2026-02-14

## Failure modes
1. Over-compressing and dropping assumptions.
2. Choosing a catchy bridge sentence that hides scope boundaries.

## Mitigations
1. Pair any bridge sentence with one scope sentence.
2. Reject one-liners that omit fixed-\(L\), asymptotic, or mechanism-separation caveats.

## Iteration 2 addendum
3. Run a checklist-style caveat coverage audit before opening any compression C-cycle.

## Iteration 3 addendum
4. Prefer two-sentence compression over one-sentence compression when caveat retention is required.

## Iteration 4 addendum
5. Treat readability metrics as supporting evidence only; do not promote unless semantic caveat retention is rechecked.

## Iteration 5 addendum
6. Add explicit rejection rule: do not promote any compressed candidate that omits either small-`r` scope or explicit non-classification wording.

## Iteration 6 addendum
7. Risk: ASCII-style placeholders (`qcrit`, `nu`) can cause avoidable rewrite churn at promotion time.
8. Mitigation: keep a TeX-ready default candidate in the S-cycle artifact layer.

## Iteration 7 addendum
9. Risk: S-cycles drifting into editorial prep can blur cycle semantics.
10. Mitigation: keep editorial harmonization in `D` policy or `C` promotion passes.
