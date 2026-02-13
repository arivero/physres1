# Q89 Plan: Cornerstone referee pass (post-C133)
Date: 2026-02-13

## Goal
Full referee-style pass on `paper/main.md` after S87+C133 fixed bibliography gaps and YAML metadata.

## Checks
1. Encoding: Unicode escapes, broken characters.
2. File paths: no internal repo paths.
3. Meta-language: no "this repo" / "our project" language.
4. Bibliography: all citations in References, all References cited.
5. LaTeX: no broken delimiters.
6. TODOs/placeholders.
7. Cross-references to satellite papers: verify labels exist.
8. YAML metadata: author, date, title, abstract present.
9. Cycle-tag leaks: no C00-style tags.
10. conv_patched: no transcript references.
