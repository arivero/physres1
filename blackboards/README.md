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
4. When an argument stabilizes, it exits the blackboard via one of three paths:
   - **To a manuscript** (via Paper Writer): content is promoted directly into
     `paper/main.md` or `papers/*/main.md`. Use this when the material is
     ready for publication prose. Requires the two-agent promotion rule.
   - **To a notebook**: the primary exit for stable material that is **not yet
     aimed at a specific paper section**. Append the blackboard content to the
     appropriate notebook. This is the default exit when no manuscript promotion
     is imminent — notebooks are memory, blackboards are scratch.
   - **To the wastepaper basket**: if a result is wrong, superseded, or not
     going anywhere, simply overwrite the slot. This is the normal workflow,
     not a failure. Blackboards are scratch, not archives.
5. Promotion or discard is the exit path. Once promoted (to paper or notebook)
   or discarded (overwritten), a slot is free for reuse.

## Slot Index (update when overwriting)
| Slot | Topic | Status |
|------|-------|--------|
| 0 | Stone/Hille-Yosida reversibility signature: THREE-AGENT verified (mathematician proposed, physicist verified, critic endorsed). Remark RCP-R7.2 ready for promotion. Critic note: Morita equivalence is category-level (not algebra-level) invertibility. | Active — paper-edit #16 sent; promote to notebook before overwriting |
| 1 | Stage 4 cobordism category + TQFT completion (physicist, 2026-02-20); mathematician verified (∞,1)-cat structure, corrected "groupoid"→"category" | Active — paper-edit sent to orchestrator for P9.1a |
| 2 | Contact groupoid conjecture: 3 bridges (A) ESTABLISHED, (B) OPEN, (C) OPEN well-posed. All two-agent complete. Promoted to notebook. | Active — paper-edits #13 sent; notebook promoted |
| 3 | CFT-P1.1 Segal sewing as Stage 3 P4.2: c/24 = d/2 analog, forced by Weyl anomaly. Two-agent complete (physicist + mathematician). Promoted to notebook. Paper-edit #17 sent. | Promoted — ready to overwrite |
| 4 | CFT-Q1 quantum group conjecture: ILL-POSED (dimensional mismatch ℏ/L_P², q-convolution ≠ standard). Critic: downgrade to open question, do not promote. | Assessed — record in anomalies, overwrite |
| 5 | Critique: tangent-groupoid-bridge satellite + TG-Q3 cross-check of mathematician's van Est analysis (critic) | Active — satellite review + blackboard 2/4 cross-check appended |
| 6 | PDM gap formula: delta(E_n-E_0) = -n*alpha^2/8 (factor-of-2 error in paper; computationalist 2026-02-20) | Active — paper-edit sent to orchestrator (mathematician verified) |

## Reading Blackboards
Blackboards are the active working memory (max 7 slots, ~300 lines each, <50KB total).
Agents may read blackboards whenever they find it useful — for example:
- Before choosing a task (to avoid duplicating work)
- When looking for connections between active threads
- To identify promotion candidates or stale slots

Reading blackboards is the agent's choice, not a mandatory step.

**For notebooks:** Consider random sampling (2-3 files) to check for related stable content.
Strategy: `ls notebooks/*.md | sort -R | head -n 3` then read those files.
Notebooks are memory (stable technical exposition), blackboards are scratch (active work).

## Collaboration Use (Multi-Agent Discussion)
Blackboards are the discussion surface for multi-agent reasoning.
- Use explicit speaker tags (e.g., `Physicist:` / `Mathematician:` / `Critic:`) when running adversarial or complementary passes.
- Keep disagreements and reconciliations on the board before promoting any stabilized conclusion.
- Promote only the reconciled result to notebooks/manuscripts.
