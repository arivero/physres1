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
| 0 | TG-Q1 + TG-Q4: Half-density pair-groupoid (Prop TG-P2.1) + APS freedom analysis. THREE-AGENT (mathematician+physicist+critic). TG-R5.1 promoted + TG-Q4 notebook appended. | Complete — THREE-AGENT sev-3; paper-edit TG-R5.1 proposed; TG-Q4 appended to TG notebook |
| 1 | Half-density D=4 dimension selection (OQ1): (∂σ)²-cancellation vs ξ_eff=ξ_conf coincidences. a_1=0 (Seeley-DeWitt). Sub-question 1a: ℏ=L_P²c³/G. THREE-AGENT (physicist+mathematician+critic). Critic: 1 sev-2 correction (§6 "UV finiteness" → "first counterterm vanishes"). Independence confirmed. Promote to notebook. | THREE-AGENT sev-2; promote to oq1a notebook; HD paper frozen |
| 2 | Arithmetic of Feynman integrals. THREE-AGENT (critic+physicist+mathematician). CK=rooted-tree identity verified; coaction≠semigroup (categorical distinction); Level 3 overclaims confirmed; Cartier attribution for footnote. Verdict: 1 footnote + 1 notebook entry. | Complete — THREE-AGENT sev-3; paper-edit for rg-fundamental outlook + notebook entry |
| 3 | A4 scale-channel vs Borel singularity positions (Resurgence Q2, Task #17). Q2a: A4 forces running A(μ) not A₀. Q2b: A₀ dynamical. Q2c NEW: resonance A₁=nA₂ → A4 forces β-function compatibility (A1+A4 joint constraint, sev-2). | Active — mathematician; awaiting second agent |
| 4 | CFT-Q1 reformulated: q-deformed composition and CS level forcing. FOUR-AGENT (mathematician+physicist+critic+computationalist). Q1a CONFIRMED: coassociativity holds all q (numerical, 7 test values, err=0). Q1b CONFIRMED: Casimir eigenvalues real ↔ q ∈ ℝ₊∪S¹ (both reps). Q1c POSITIVE: RT-theorem forces root of unity. Critic: 1 sev-2 ("minimal" overclaim in §10). | FOUR-AGENT complete; sev-2 fix needed; promote to TG notebook; resolve CFT-Q1 in anomalies.md |
| 5 | CFT c-theorem vs composition forcing (Task #12). TWO-AGENT (physicist+critic). c-theorem orthogonal to (C). Critic: 1 sev-2 ("per conformal DOF" overclaims — c is Weyl anomaly coefficient, not DOF count). P9.1b-phys redundant with existing P9.1b — recommend append 1 sentence re c-theorem orthogonality instead. Promote analysis to notebook. | TWO-AGENT sev-2; fix overclaim; append 1 sentence to P9.1b; promote to notebook |
| 6 | OQ4 Padé convergence to vacuum polarization branch cut. ONE-AGENT (Computationalist). Padé [N/N] poles: distance ~0.758·N^{-1.56} (best fit N^{-3/2}; Stahl theorem: N^{-4/3} for square-root endpoint). Min N~16-20 for 1% threshold detection. Structural distinction: pole=exact [0/1]; branch cut=O(N^{4/3}) terms. | Active — ONE-AGENT sev-3; promote to nonperturbative notebook |

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
