# Notebooks (Append-Only Memory)

Research notebooks for material that has graduated from blackboards but is
**not aimed for publication**. Notebooks are memory: they persist until
no longer needed, then are discarded.

## Rules

1. **Append-only.** Content can be added to a notebook but never edited or
   deleted within it. If a conclusion turns out wrong, append a correction
   — don't rewrite the original. The history of reasoning is the point.
2. **Not citable.** Like blackboards, notebooks are internal working documents.
3. **Entry points.** Two paths into a notebook:
   - **From blackboards:** when blackboard material is stable enough to keep
     but not suited for a paper. This is the primary intake path.
   - **From discarded paper notes:** when a satellite paper is retired, its
     notes can be appended here if the content has future value.
4. **Exit paths:**
   - Content may later be promoted into a paper (via a C cycle) if it matures.
   - Or the entire notebook is discarded (`git rm`) when it is no longer needed.

## Discard Protocol

Discarding a notebook is `git rm`. No ceremony. The content remains in git
history if anyone ever needs to look back.

**When to discard:**
- The notebook's topic has been fully absorbed into one or more papers.
- The notebook's conclusions turned out wrong or irrelevant.
- The notebook hasn't been referenced in 10+ cycles and nobody plans to.

**Who decides:** A D-triage cycle can recommend discard. Any agent can
execute `git rm` during its infrastructure commit if the rationale is
recorded in the cycle execution log.

The same protocol applies to discarding satellite papers (`papers/*/`):
`git rm -r` the directory. If any notes have future value, append them
to a notebook first.
