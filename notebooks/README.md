# Notebooks (Append-Only Research Notebooks)

Each notebook is a **topical research document** — one topic, coherent
exposition, written to be read. Think Newton's notebooks, not a build log.

**Any researcher agent may append to this folder** (see `agents/shared-rules.md`).

## What a notebook entry looks like

A notebook entry is a **self-contained mini-essay**: problem stated, derivation
worked through, result obtained, implications noted. It reads as exposition,
not as a session record.

**A notebook entry MUST contain:**
- Clear problem statement or question
- Mathematics with explanation (formulae, derivations, proofs)
- Context: why this matters, how it connects to the topic
- Conclusions

**A notebook entry MUST NOT contain:**
- Dates, timestamps, or session identifiers
- Agent names or attribution tags (`Physicist:`, `Critic:`, `TWO-AGENT`)
- Status markers (`APPROVED`, `PENDING`, `FOUR-AGENT UNANIMOUS`)
- References to ephemeral artifacts (blackboard slots, patch files, `tmp/` scripts)
- Workflow metadata of any kind

Git history records who wrote what and when. The notebook itself is for science.

## Rules

1. **Append-only.** New content goes at the end. Existing content is never
   edited or deleted. If a conclusion turns out wrong, append a correction.
2. **One topic per notebook.** If unrelated subtopics accumulate, split.
3. **Not citable.** Notebooks are internal working documents.
4. **Promotion = rewrite.** When moving content from a blackboard, rewrite it
   as clean exposition. Do not paste raw blackboard content. Strip speaker
   tags, status markers, and session metadata. Add the explanation that the
   blackboard omitted.
5. **Entry points:** from blackboards (primary), from discarded paper notes.
6. **Exit paths:** promotion to manuscript (two-researcher rule), or discard.

## Discard Protocol

Discarding a notebook is `git rm`. No ceremony. Content remains in git history.

**When to discard:** topic fully absorbed into papers, conclusions wrong, or
nobody references it anymore.

**Who decides:** Any agent can vote via `notebooks/votes.md`. Threshold:
3 of 5 agents, or 2 + orchestrator concurrence. The orchestrator executes
`git rm` after confirming prior commit coverage.
