# C133 Plan: Fix cornerstone YAML metadata + add 5 missing references
Date: 2026-02-13

## Findings from S87
1. YAML frontmatter has empty author/date.
2. Five citation keys used in body text but missing from References section:
   - Berkeley1734Analyst
   - Nauenberg2003KeplerArea
   - Pourciau2003
   - Nauenberg1994SymplecticNewton
   - Nauenberg2018GraphicalMethod

## Actions
1. Fill YAML: `author: "Alejandro Rivero"`, `date: "2026"`.
2. Append the 5 missing entries to the References section (entries 18–22), pulling data from `paper/bibliography.md`.
3. Run guard checks (no cycle tags, no conv_patched).
4. Run diffstat.
