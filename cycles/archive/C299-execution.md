# C299 Execution: Promote critical-exponent bridge into Section 3.3

Date: 2026-02-14
Status: Completed

## Summary
- Promoted one compact bridge remark in `paper/main.md` that links Newtonian and SR central-force threshold exponents via \(q_{\mathrm{crit}}=\nu+1\), with explicit scope boundary.

## Work log
1. Opened C299 artifacts after completing `D17`, `S270`, and `S271` launch-gate prerequisites.
2. Updated Section 3.3 paragraph on central-force generality with a cleaner companion-note transition.
3. Added `Remark P1.1a` with a bounded asymptotic derivation and Newton/SR instantiations.
4. Ran manuscript guard checks (`Cnn` leak and `conv_patched`) with no matches.
5. Staged manuscript and captured cached diffstat.

## Diffstat
`paper-diffstat (cached): TOTAL +4 -1 (1 files)`

`+4 -1 paper/main.md`

## Guard checks
- Cycle-tag leak check (`rg -n 'C[0-9]{2}' paper/main.md`): no matches.
- Transcript mention check (`rg -n 'conv_patched' paper/main.md`): no matches.

## Notes
- The promoted remark intentionally remains asymptotic and non-load-bearing, pointing readers to companion detail for full relativistic orbit analysis.
