# Notebooks (Append-Only Memory)

Research notebooks for material that has graduated from blackboards but is
**not aimed for publication**. Notebooks are memory: they persist until
no longer needed, then are discarded.

**Any researcher agent may append to this folder** (see `AGENTS.md` Section 2 and `agents/shared-rules.md`).

## Content Rules (STRICT)

**A notebook CAN contain:**
- Textual explanation and exposition
- Mathematics (formulae, derivations, proofs)
- Pedagogical narrative
- Context and motivation
- Complete worked examples

**A notebook is APPEND-ONLY:**
- New content is always added at the end
- Existing content is NEVER edited or rewritten
- If content becomes obsolete, add a deprecation note but do not delete
- Use dated section headers when appending new material

**Contrast with blackboards:** Blackboards contain ONLY keywords, references, statements, and formulae (no prose explanation). Notebooks add the textual exposition that explains the mathematics.

## Rules

1. **Append-only.** Content can be added to a notebook but never edited or
   deleted within it. If a conclusion turns out wrong, append a correction
   — don't rewrite the original. The history of reasoning is the point.
2. **Not citable.** Like blackboards, notebooks are internal working documents.
3. **Entry points.** Two paths into a notebook:
   - **From blackboards**: when blackboard material is stable enough to keep
     but not suited for a paper. This is the primary intake path.
   - **From discarded paper notes:** when a satellite paper is retired, its
     notes can be appended here if the content has future value.
4. **Exit paths:**
   - Content may later be promoted into a paper (via orchestrator + Paper Writer) if it matures.
   - Or the entire notebook is discarded (`git rm`) when it is no longer needed.

## Discard Protocol

Discarding a notebook is `git rm`. No ceremony. **The content remains in git
history** — nothing is truly lost. Discard is a normal exit path, not a failure.

**When to discard:**
- The notebook's topic has been fully absorbed into one or more papers.
- The notebook's conclusions turned out wrong or irrelevant.
- The notebook hasn't been referenced in recent work and nobody plans to.

**Who decides:** Any agent can vote for deletion via `notebooks/votes.md`.
The orchestrator executes `git rm` when the vote threshold is met
(3 of 5 agents, or 2 + orchestrator concurrence).
See `agents/shared-rules.md` Section 2 for the voting protocol.

**Commit-safety rule:** The orchestrator must verify the notebook was included
in a prior commit before executing `git rm`. This prevents accidental loss of
uncommitted work.

The same protocol applies to discarding satellite papers (`papers/*/`):
`git rm -r` the directory. If any notes have future value, append them
to a notebook first.

**The Wastepaper Basket Principle:** "The Math Department needs only a blackboard and a wastepaper basket. Some authors don't even need the wastepaper basket." **Use the wastepaper basket**. If a notebook's conclusions are wrong, or the material has been fully absorbed into papers, or nobody's using it — discard it (`git rm`). Memory is for stable useful content, not for hoarding failed explorations. When in doubt, throw it out.
