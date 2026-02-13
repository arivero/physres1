# C127 Execution: Fix Unicode escape in half-density-qft

Date: 2026-02-13

## Change
Line 182: `\u03b4'` → `δ'` in Remark HD-D5.2 title.

This was a Python/JSON Unicode escape that would produce garbled output in PDF. Now uses the actual Greek character.

## Diffstat
```
paper-diffstat (cached): TOTAL +1 -1 (1 files)
  +1 -1 papers/half-density-qft/main.md
```

## PDF
Rebuilt: 6 pages, 399825 bytes. Renders correctly.

## Guard checks
Not applicable (satellite paper, not `paper/main.md`).
