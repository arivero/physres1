# C93 Execution: Submission-Readiness Cleanup (Remove “Continuation” Language + Add One Attribution Anchor)

Date: 2026-02-11

## Summary
- Rewrote remaining Appendix 10 editorial/versioning phrasing (“continuation…”) as neutral standalone-paper language.
- Added a lightweight attribution anchor `[TongQMLectures]` for the standard \(e^{im\phi}\) separation-of-variables statement in `Remark D4.2b`.
- Updated `# References` via `scripts/update_references.py` and rebuilt `paper/main.tex` / `paper/main.pdf`.

## Work log
- Cleaned headings/intro sentences in Section/Appendix 10 to remove draft-history language.
- Added a single citation marker in the central-potential angle remark (no change to the derivation content).
- Regenerated the manuscript reference list from `paper/bibliography.md`.
- Rebuilt PDF artifacts and removed aux/log files.

## Diffstat
Paste output of:
```bash
scripts/paper-diffstat.sh --cached
```

paper-diffstat (cached): TOTAL +8 -7 (1 files)
  +8 -7 paper/main.md

## Guard checks (required before finalizing)
- No cycle IDs leaked into manuscripts:
  - `rg -n 'C[0-9]{2}' paper/main.md`
- Manuscript does not cite transcripts:
  - `rg -nF 'conv_patched' paper/main.md`

## Outputs
- Manuscripts edited:
  - `paper/main.md`
- PDFs rebuilt (tracked):
  - `paper/main.pdf`

## Spawned cycles
- (Optional) `Q50`: final referee pass for reader flow after the editorial cleanup.
