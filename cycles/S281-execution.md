# S281 Execution: Delta-Object Dictionary + Witness Computations

Date: 2026-02-14
Status: Completed

## Work performed
- Catalogued all five delta-object types across the manuscripts (delta-objects paper, dirac-probes paper, main paper Sections 5.5/5.6, weak-EL notes).
- Produced a 5-row dictionary table with object, definition, domain, and math status.
- Produced a do/don't table with 5 safe/unsafe pairs.
- Derived the single safe/unsafe criterion: **mollifier universality** (the result is scheme-independent iff the mollifier-sequence limit is unique).
- Worked two toy computations:
  - **Witness A:** Point splitting for delta': proved (delta(x+eps)-delta(x))/eps -> delta'(x) in D' by testing against arbitrary smooth test functions.
  - **Witness B:** Stationary-set identity: proved delta(f'(x)) = sum_i delta(x-x_i)/|f''(x_i)| by distributional change of variables, with multi-dimensional extension via coarea formula.
- Wrote a complete analysis of when delta(delta S) is acceptable (never literally; acceptable as shorthand only when immediately accompanied by a regulated substitute or flagged as heuristic).
- Drafted a compact dictionary paragraph ready for promotion to a manuscript.

## Artifacts produced
- `blackboards/1.md`: delta-object dictionary + safe/unsafe criterion + two witnesses + dictionary paragraph (overwriting promoted self-adjoint extension content)

## Commands run (if any)
None (pure derivation work).

## Result
- The dictionary and criterion are stable and self-contained.
- The promotion-ready paragraph (Section 6 of blackboard 1) can be inserted into the delta-objects paper Outlook or the main paper Section 5.5/5.6 in a future C cycle.
- The mollifier-universality criterion cleanly separates the five cases: objects 1-3 are mollifier-universal (safe), object 4 is well-posed but requires renormalization for d>=2, object 5 is heuristic-only.

## Promotion candidate (pointer)
- Location: `blackboards/1.md`, Section 6 ("Dictionary Paragraph")
- Target manuscripts: `papers/delta-objects/main.md` (new Section 5a or Outlook item 2 replacement); `paper/main.md` (Section 5.6 addendum or new Remark)

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **no**
- The five-way classification and mollifier-universality criterion are implicit in the existing manuscripts but have not been collected into a single unified statement before. This is a synthesis/organization contribution, not a new mathematical result.

## Spawned cycles
- Future `Cxx`: promote dictionary paragraph into delta-objects paper and/or main paper
- `B29` (optional, deferred): acquire clean primary anchor for coarea formula / distributional change-of-variables standard reference
