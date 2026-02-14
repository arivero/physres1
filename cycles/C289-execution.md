# C289 Execution: Cross-package promotion wave for main paper

Date: 2026-02-14
Status: Completed

## Summary
- Promoted a derivation-heavy expansion in `paper/main.md` across Packages A/C/D/E.
- Replaced `WP-*` labels with `Package *` labels and made explicit they are editorial planning tags.
- Added new numbered technical statements in Sections 8, 9, 10.1, and new Appendix 10.6.

## Work log
1. Opened C289 cycle artifacts with explicit multi-package promotion scope.
2. Added `Derivation D6.4` in Section 8.6: quantitative two-truncation stability window \( |g|\le \eta b_0/|b_1| \) (Package D starter).
3. Added `Remark P7.1a` in Section 9.1: compact three-track compatibility map (Package E starter).
4. Renamed Section 9.5 queue from `WP-*` to `Package *` and clarified these are editorial tags, not theorem labels.
5. Added `Derivation D8.2a` in Appendix 10.1: fixed-scheme one-loop \(\lambda\phi^4\) running in \(D=4-2\varepsilon\) (Package C starter).
6. Expanded Appendix summary (10.4) to include the new package-promotion appendices.
7. Added new Appendix 10.6 with `Derivation D12.1` and `Proposition P12.1`: regulated Gaussian kernel composition, controlled \(\varepsilon\to0^+\) limit, and explicit admissibility failure mode (Package A starter).
8. Ran guard checks on `paper/main.md`: no cycle-tag leaks and no transcript mentions.
9. Staged manuscript and captured required cached diffstat for this C-cycle.

## Diffstat
`paper-diffstat (cached): TOTAL +115 -9 (1 files)`

`+115 -9 paper/main.md`

## Guard checks
- Cycle-tag leak check (`rg -n 'C[0-9]{2}' paper/main.md`): no matches.
- Transcript mention check (`rg -nF 'conv_patched' paper/main.md`): no matches.

## Notes
- Commit cadence policy prevented splitting C288/C289 into separate committed snapshots in this session window; cached diffstat therefore reflects the current cumulative staged manuscript state for `paper/main.md`.
