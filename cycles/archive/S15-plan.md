# S15 Plan: Difference Quotients as Counterterm Subtractions; \u03b4' from Point Splitting

## Goal
Make the slogan “even the derivative is a counterterm” precise in a toy setting that mirrors the renormalization pattern:
- regulator \u03b5 (point-splitting / finite difference),
- divergent pieces \u223c 1/\u03b5,
- subtraction (counterterm) to obtain a finite limit,
- distributional version where the limit genuinely produces a new distribution (\u03b4').

Primary target is conceptual hygiene for later promotion into the RG draft and/or delta-objects note.

## Scope
- One self-contained blackboard note with explicit formulas:
  - smooth case: Taylor expansion showing the cancellation,
  - distribution case: \u03b4' as \u03b5\u21920 limit of a difference quotient of shifted deltas,
  - optional: a minimal “RG” framing as a flow in \u03b5 of the subtraction coefficient.
- No bibliography ingestion in this cycle.
- Do not introduce BV/BRST material (known-land detour).

## Acceptance Tests
1. A new `blackboards/` note exists and states the key identities with consistent signs:
   - \u27e8\u03b4',\u03c6\u27e9 = -\u03c6'(0),
   - lim_{\u03b5\u21920} (\u03c6(-\u03b5)-\u03c6(0))/\u03b5 = -\u03c6'(0).
2. The note explicitly distinguishes \u03b4' from \u03b4(f')/stationary-set deltas (no conflation).
3. The note contains one short paragraph explaining how this toy subtraction models the structure of counterterms/point-splitting renormalization.

## Planned Outputs
- `blackboards/2026-02-10-difference-quotients-counterterms-and-delta-prime.md`
- Cycle logs: `cycles/S15-{plan,debate,execution,redteam}.md`

