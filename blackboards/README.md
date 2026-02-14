# Blackboards (Exploratory Notes)

This folder is for "scratchpad" research: computations, conjectures, counterexamples,
and idea sketches that are not yet stable enough to live in a manuscript draft.

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

## Hard Limit: 7 Blackboards (0–6)

Blackboards are numbered **0.md through 6.md** — no content hints in filenames.
Max **300 lines** per blackboard. Blackboards can be edited (unlike notebooks).
When all 7 slots are occupied and a new topic is needed, **overwrite** the least
relevant slot. Deletion criteria (in priority order):

1. **Already promoted** — content has been absorbed into a manuscript. Overwrite freely.
2. **Superseded** — a newer board covers the same ground. Overwrite the older one.
3. **Stale** — no sign of active use. Overwrite.
4. **Lowest priority** — least aligned with the current top thread.

## Rules
1. The blackboards are **not citable sources**.
2. They may reference idea logs, but nothing here should be cited as evidence.
3. **Blackboards are the primary location for mathematical cycle deliverables** (Rule 8 in `cycles/README.md`): All mathematical success criteria for S-cycles and D-cycles must be written here (or in `notebooks/` for stabilized material). Mathematics only in cycle logs or agent memory does NOT count as completion.
4. When an argument stabilizes, it exits the blackboard via one of two paths:
   - **To a manuscript** (via a `Cnn` cycle): content is promoted directly into
     `paper/main.md` or `papers/*/main.md`. Use this when the material is
     ready for publication prose.
   - **To a notebook** (`notebooks/`): the primary exit for stable material
     that is **not yet aimed at a specific paper section**. Append the
     blackboard content to the appropriate notebook. This is the default
     exit when no `C` cycle is imminent — notebooks are memory, blackboards
     are scratch.
   - **To paper notes** (`paper/notes/`, `papers/*/notes/`): use sparingly,
     only when the material directly supports a specific manuscript section
     as a detailed derivation or expansion. Paper notes feed `P` cycles.
5. Promotion is the exit path. Once fully promoted (to paper, notebook, or
   notes), a slot is free for reuse.

## Slot Index (update when overwriting)
| Slot | Topic | Status |
|------|-------|--------|
| 0 | Odd-d scale-supplier table + parity obstruction (D27/S284) | Active (S284) |
| 1 | Composition-compatible weight function uniqueness (D29/S288) | Active (S288) |
| 2 | Distributional obstruction for kappa -> 0 (D31/S289) | Active (S289) |
| 3 | Half-density vs Moyal ordering comparison (D35/S290) | Active (S290) |
| 4 | Mehler kernel composition: interacting witness for P4.2 (D36/S293) | Active (S293) |
| 5 | Curved-space composition test for P4.2 extension (D30/S287) | Active (S287) |
| 6 | Parametrized Fresnel regularization composition test (D37/S292) | Active (S292) |

## Before Choosing Next Task: Read All Blackboards
**When deciding what to work on next**, read the **contents** of all blackboards (not just the index):
```bash
for f in blackboards/[0-6].md; do cat "$f"; done
```

**Why:** Blackboards are the active working memory (max 7 slots, ~300 lines each, <50KB total).
Reading them all before choosing a task:
1. Avoids duplicating work already in progress
2. Reveals connections between active threads
3. Identifies ripe promotion candidates (stable results ready for C-cycles)
4. Shows which slots are stale/superseded (candidates for overwriting)

**For notebooks:** Consider random sampling (2-3 files) to check for related stable content.
Strategy: `ls notebooks/*.md | sort -R | head -n 3` then read those files.
Notebooks are memory (stable technical exposition), blackboards are scratch (active work).

## Collaboration Use (Two-Agent Discussion)
Blackboards are also the discussion surface for multi-agent reasoning.
- Use explicit speaker tags (e.g., `Agent A:` / `Agent B:`) when running adversarial or complementary passes.
- Keep disagreements and reconciliations on the board before promoting any stabilized conclusion.
- Promote only the reconciled result to notebooks/manuscripts.
