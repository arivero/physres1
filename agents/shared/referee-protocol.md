# Referee Protocol

This file defines the evaluation criteria, report format, and revision instructions
for internal peer review of satellite papers.

---

## 1. Evaluation Criteria

Referees evaluate papers on five dimensions:

| Criterion | Weight | Description |
|-----------|--------|-------------|
| **Correctness** | Critical | Are the mathematical derivations and physical arguments correct? Any errors? |
| **Novelty** | High | Does the paper present new results, or is it a restatement of known facts? |
| **Clarity** | High | Is the paper well-written? Can a competent reader follow the argument? |
| **Completeness** | Medium | Are all claims justified? Are there gaps in the logic chain? |
| **References** | Medium | Are relevant prior works cited? Is credit properly attributed? |

---

## 2. Report Format

Each referee writes a structured report using this template:

```markdown
# Referee Report: <Paper Title>

**Referee:** <referee-1 or referee-2>
**Date:** <YYYY-MM-DD>
**Paper:** <path to paper>

## Summary
<2–4 sentence summary of what the paper claims and how it argues for it.>

## Strengths
- <Strength 1>
- <Strength 2>
- ...

## Weaknesses

### MAJOR
- <Major weakness 1: description and why it matters>
- ...

### MINOR
- <Minor weakness 1>
- ...

## Verdict

**Recommendation:** <ACCEPT / MINOR REVISION / MAJOR REVISION / REJECT>

**Justification:** <1–2 sentences explaining the verdict.>

## Detailed Comments
<Line-by-line or section-by-section comments, if any. Optional for ACCEPT verdicts.>
```

---

## 3. Verdict Definitions

| Verdict | Meaning |
|---------|---------|
| **ACCEPT** | Paper is ready for publication as-is (minor typos OK). |
| **MINOR REVISION** | Small fixes needed (clarifications, missing refs, notation). No re-review required. |
| **MAJOR REVISION** | Significant issues (gaps in argument, missing results, unclear exposition). Re-review required after revision. |
| **REJECT** | Fundamental problems (incorrect results, no novel content, unsalvageable structure). |

---

## 4. Independence Requirement

- Each referee works independently. You may NOT read the other referee's report.
- You may NOT discuss the paper with other agents during the review.
- You may read any other file in the repo for context (blackboards, notebooks, other papers).

---

## 5. Revision Instructions (for authors)

Final publication-track flow is governed by `AGENTS.md` §11 (editor decision model).
Mixed verdict combinations are resolved by editor discretion.

When a paper receives MINOR REVISION:

1. Referee reports are copied to `papers/<name>/referee-1.md` and `papers/<name>/referee-2.md`.
2. The orchestrator creates kanban tasks referencing each report.
3. Agents address concerns by:
   - Reading the referee report file
   - Working on fixes via blackboards
   - Proposing paper edits via `proposals/`
4. After MINOR items are resolved or justified:
   - The `votes.md` file is reset
   - A new voting round begins
   - If unanimous YES, no mandatory re-review is required

When a paper receives MAJOR REVISION:

1. Referee reports are copied to `papers/<name>/referee-1.md` and `papers/<name>/referee-2.md`.
2. The orchestrator creates kanban tasks referencing each report.
3. Agents address concerns by:
   - Reading the referee report file
   - Working on fixes via blackboards
   - Proposing paper edits via `proposals/`
4. After MAJOR items are addressed and MINOR items are resolved or justified:
   - The `votes.md` file is reset
   - A new voting round begins
   - If unanimous YES, the paper goes back to `pub-track/sent/` for re-review

### Addressing Referee Comments

For each MAJOR item: provide a fix or a reasoned rebuttal.
For each MINOR item: fix it, or explain in the next submission why it was not changed.

Authors should NOT argue with referee recommendations in the manuscript itself —
responses go through the revision workflow, not into the paper text.
