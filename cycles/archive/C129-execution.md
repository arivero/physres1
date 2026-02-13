# C129 Execution: Fix encoding and paths in delta-objects

Date: 2026-02-13

## Changes
1. YAML: filled `author: "Alejandro Rivero"`, `date: "2026"`.
2. Line 14: `paper/main.md` → "the cornerstone manuscript".
3. Line 44: `\u03b4(\u2207f)` → `δ(∇f)`.
4. Line 45: `\u03b4(f')` → `δ(f')`.
5. Line 52: `\u03b4(f')` and `\u03b4'` → `δ(f')` and `δ'`.
6. Line 60: `\u03b4'` → `δ'`.
7. Line 77: blackboard path → "the companion notes".
8. Line 79: `\u03b4(\u2207f)` → `δ(∇f)`.
9. Line 98: `\u03b4`, `\u03b4'`, `\u2013` → `δ`, `δ'`, `–`.
10. Line 104: `\u2013` → `–`.
11. Line 106: removed blackboard path reference, sentence ends at "distributional order."

## Diffstat
```
paper-diffstat (cached): TOTAL +12 -12 (1 files)
  +12 -12 papers/delta-objects/main.md
```

## PDF
Rebuilt: 4 pages, 311286 bytes. All headings render correctly with actual Unicode characters.

## Verification
`grep -c '\\u[0-9a-f]\{4\}'` returns 0 — no remaining Unicode escapes.
