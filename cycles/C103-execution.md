# C103 Execution: Runge--Kutta fix + Newton limit citations + companion regularity

Date: 2026-02-12

## Summary
- What changed in manuscripts (high level):
  - Fixed "Runge-Kutta" (hyphen) to "Runge--Kutta" (en-dash) in main paper H6.2 (line 972).
  - Added Remark R1.1 after H1.1 in Section 3.3 of the main paper: a paragraph citing the Nauenberg/Pourciau scholarly debate on the convergence of Newton's polygonal construction to a continuous orbit.
  - Added minimal-regularity parenthetical to companion (rg-fundamental) D1.0: "(The O(h^2) term requires f in C^1; the O(h^3) term requires f in C^2.)"

## Work log
1. Edited `paper/main.md` line 972: "Runge-Kutta" → "Runge--Kutta".
2. Edited `paper/main.md` Section 3.3: inserted Remark R1.1 after H1.1, citing [Nauenberg2003KeplerArea] and [Pourciau2003] per B13 recommendations.
3. Edited `papers/rg-fundamental/main.md` D1.0 rooted-tree paragraph: appended regularity parenthetical, harmonizing with main paper's D6.2a1 (per Q59 finding).

## Diffstat
```
paper-diffstat (cached): TOTAL +5 -2 (2 files)
  +4 -1 paper/main.md
  +1 -1 papers/rg-fundamental/main.md
```

## Guard checks (required before finalizing)
- No cycle IDs leaked into manuscripts: PASS (rg -n 'C[0-9]{2}' paper/main.md — no matches).
- Manuscript does not cite transcripts: PASS (rg -nF 'conv_patched' paper/main.md — no matches).

## Outputs
- Manuscripts edited:
  - `paper/main.md`
  - `papers/rg-fundamental/main.md`
- PDFs rebuilt (if applicable):
  - Not rebuilt in this cycle (typographic/text-only changes; rebuild on next full build pass).

## Spawned cycles
- `B14`: add [Nauenberg2003KeplerArea] and [Pourciau2003] entries to `paper/bibliography.md` (citation keys are now referenced in the manuscript but not yet in the ledger).
- `Q60`: referee pass on this C103.
