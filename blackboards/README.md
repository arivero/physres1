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
   - **To a manuscript** (via orchestrator proposal processing): create a
     proposal file with a unified diff; the orchestrator applies edits to
     `paper/main.md` or `papers/*/main.md` when approved by workflow rules.
     Use this when the material is ready for publication prose.
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
| 0 | Steelman criticism of RCP project (critic) + §8 areal-speed pub-readiness (physicist): DISCARD. §9 Philosophenweg (constrained composition forces Lagrange multipliers, FP det = half-density on M). SymPy verified. | THREE-AGENT (physicist+mathematician+computationalist) |
| 1 | Spectral dimension from modified heat kernels. d_s=d/2 in UV requires L_P (quartic Lifshitz z=2). NOT forced by composition alone. Numeric verification (d=2..6). Notebook-ready scope clarification, not paper-promotable. | FOUR-AGENT (mathematician+physicist+critic+computationalist); UNANIMOUS |
| 2 | Cross-paper dependency map (critic) + d/2 uniqueness chain (mathematician) + cornerstone open threads. Critic 3rd-agent: E1-E3 VERIFIED, G1 CLOSED (L-K+dim analysis), G2 CLOSED (Buckingham pi), no sev-1/2 issues. READY for notebook promotion. | THREE-AGENT (mathematician+physicist+critic) |
| 3 | planck-area pre-vote. Core §§1–4: SOUND (YES). §5: REMOVED (resolved). PA-H2.5c added. Critic: upgraded CLOSE→READY. All remaining issues sev-3. | THREE-AGENT (mathematician+physicist+critic); pre-vote: YES |
| 4 | S² ordering witness D9.1h (Vuln 2). V_HD verified (SymPy), spectra l(l+1) vs n^2, shift -(l+1). + Vuln 4 truncation benchmark. Paper-edit ready. | FOUR-AGENT (mathematician+critic+physicist+computationalist); UNANIMOUS APPROVE |
| 5 | action-angle-indeterminacy pre-vote. All math VERIFIED. Prior-art (Judge/Carruthers-Nieto) now cited. Critic: scope confirmed (standalone dependent note acceptable). Upgraded CLOSE→READY. Pre-vote YES (no revision). | THREE-AGENT (mathematician+critic+physicist); pre-vote YES |
| 6 | Efimov/PSL(2,R) verification. s0=1.00624 verified. Q1+Q2 CONFIRMED. Q3 overclaim confirmed: RCP accommodates, not forces. SL(2,R) is de Alfaro-Fubini-Furlan 1976 (not new). Notebook-ready (Q1+Q2 only). | THREE-AGENT (computationalist+critic+physicist) |

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
