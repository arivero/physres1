# Blackboards (Exploratory Notes)

This folder is for "scratchpad" research: computations, conjectures, counterexamples,
and idea sketches that are not yet stable enough to live in a manuscript draft.

**Any researcher agent may write to this folder** (see `AGENTS.md` Section 2).
All five persistent researcher agents (Physicist, Mathematician, Critic,
Computationalist, Student) have direct write access.

## Content Rules (STRICT)

**A blackboard MUST contain ONLY:**
- Keywords and labels
- References to sources
- Statements (theorems, propositions, lemmas, definitions)
- Formulae and equations
- Brief structure markers (section headers)

**A blackboard MUST NOT contain:**
- Textual explanations or prose
- Motivation paragraphs
- Pedagogical exposition
- Narrative transitions

**Rationale:** Blackboards are working scratch for raw technical content. All explanation
belongs in notebooks (stable technical exposition) or manuscripts (publication prose).

## Hard Limit: 7 Blackboards (0-6)

Blackboards are numbered **0.md through 6.md** — no content hints in filenames.
Max **300 lines** per blackboard. Blackboards can be edited (unlike notebooks).
When all 7 slots are occupied and a new topic is needed, **overwrite** the least
relevant slot. Deletion criteria (in priority order):

1. **Already promoted** — content has been absorbed into a manuscript. Overwrite freely.
2. **Superseded** — a newer board covers the same ground. Overwrite the older one.
3. **Stale** — no sign of active use. Overwrite.
4. **Lowest priority** — least aligned with the current top thread.

**The Wastepaper Basket Principle:** "The Math Department needs only a blackboard and a wastepaper basket. Some authors don't even need the wastepaper basket." Be aggressive about discarding. If a result is wrong, superseded, or not going anywhere — **overwrite it**. Don't hoard scratch work. Blackboards are for active exploration, not archival memory (that's what notebooks and papers are for).

## Rules
1. The blackboards are **not citable sources**.
2. They may reference idea logs, but nothing here should be cited as evidence.
3. **Blackboards are the primary location for mathematical deliverables**: All mathematical results from research tasks must be written here (or in `notebooks/` for stabilized material). Mathematics only in agent memory does NOT count as completion.
4. When an argument stabilizes, it exits the blackboard via one of two paths:
   - **To a manuscript** (via Paper Writer Agent): content is promoted directly into
     `paper/main.md` or `papers/*/main.md`. Use this when the material is
     ready for publication prose.
   - **To a notebook** (via Notebook Agent): the primary exit for stable material
     that is **not yet aimed at a specific paper section**. Append the
     blackboard content to the appropriate notebook. This is the default
     exit when no manuscript promotion is imminent — notebooks are memory, blackboards
     are scratch.
5. Promotion is the exit path. Once fully promoted (to paper or notebook),
   a slot is free for reuse.

## Slot Index (update when overwriting)
| Slot | Topic | Status |
|------|-------|--------|
| 0 | P4.2 <-> RCP axiom mapping (D49+D50+D51) | Promoted (notebook: rcp-axiom-structure-analysis) |
| 1 | 2D delta RG example + rooted-tree adaptation (D42/S298) | Promoted (C316 -> rooted-tree Section 4.4) |
| 2 | RCP foundations scope map + Noether example (D44/S299) | Promoted (C319 -> rcp-foundations initial draft) |
| 3 | Half-density vs Moyal ordering comparison (D35/S290) | Promoted (C312 -> D9.1a correction, notebook: deformation-equivalence-physical) |
| 4 | Mehler kernel composition: interacting witness for P4.2 (D36/S293) | Promoted (C312 -> P4.2e, notebook: p42-extensions-interacting-curved) |
| 5 | Curved-space composition test for P4.2 extension (D30/S287) | Promoted (C312 -> P4.2e, notebook: p42-extensions-interacting-curved) |
| 6 | Weyl vs half-density energy shift for PDM (D38/S294) | Promoted (C312 -> D9.1a correction, notebook: deformation-equivalence-physical) |

## Before Choosing Next Task: Read All Blackboards
**When deciding what to work on next**, read the **contents** of all blackboards (not just the index):
```bash
for f in blackboards/[0-6].md; do cat "$f"; done
```

**Why:** Blackboards are the active working memory (max 7 slots, ~300 lines each, <50KB total).
Reading them all before choosing a task:
1. Avoids duplicating work already in progress
2. Reveals connections between active threads
3. Identifies ripe promotion candidates (stable results ready for Paper Writer)
4. Shows which slots are stale/superseded (candidates for overwriting)

**For notebooks:** Consider random sampling (2-3 files) to check for related stable content.
Strategy: `ls notebooks/*.md | sort -R | head -n 3` then read those files.
Notebooks are memory (stable technical exposition), blackboards are scratch (active work).

## Collaboration Use (Multi-Agent Discussion)
Blackboards are the discussion surface for multi-agent reasoning.
- Use explicit speaker tags (e.g., `Physicist:` / `Mathematician:` / `Critic:`) when running adversarial or complementary passes.
- Keep disagreements and reconciliations on the board before promoting any stabilized conclusion.
- Promote only the reconciled result to notebooks/manuscripts.
