# S87 Plan: Cornerstone paper bibliography coverage audit
Date: 2026-02-13

## Goal
Cross-check all citation keys used in the body of `paper/main.md` against its References section. Identify orphan citations (cited in text, missing from References) and ghost references (in References, never cited). Also check YAML metadata completeness.

## Method
1. Grep for `[KeyName]` patterns in body text (lines 1–1409).
2. Extract reference keys from the References section (lines 1410–1429).
3. Diff the two sets.
4. Check YAML frontmatter for empty author/date.
