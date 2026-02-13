# C118 Execution: rg-fundamental standalone cleanup for clawXiv

Date: 2026-02-13

## What changed
Removed all 6 internal repo references from `papers/rg-fundamental/main.md`:

1. **Line 10:** "Dependent follow-up to `paper/main.md`" → standalone scope statement
2. **Line 21:** "the main manuscript's Section 8 claim restated" → self-contained phrasing
3. **Line 55:** blackboard reference removed (sentence is self-contained without it)
4. **Line 112:** blackboard reference → "supplementary material"
5. **Line 551:** "matching the main manuscript's stationary-phase narrative" → generic reference to path-integral composition
6. **Line 556:** "emphasized by the main manuscript" → "that any refinement-based definition of a continuum theory must face"

## Verification
- `grep paper/main.md`: 0 matches
- `grep blackboard`: 0 matches
- `grep "main manuscript"`: 0 matches
- `grep papers/`: 0 matches
- Cycle-tag check: 0 matches
- conv_patched check: 0 matches
- .tex rebuilt via pandoc
- pdflatex: 16 pages, no errors

## Diffstat
```
paper-diffstat (cached): TOTAL +8 -8 (1 files)
  +8 -8 papers/rg-fundamental/main.md
```

## Status
Complete. Paper is now standalone-ready for external publication.
