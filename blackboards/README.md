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
| 0 | d=4 b-calculus + Planck area: §2-3 CORRECT; §4 corrected (ψ~r^{-1} NOT in L²_b(ℝ⁴); d=2 special). §4 d≥3 question RESOLVED by BB4 (n_±=1 all d). THREE-AGENT complete. | Complete — sev-3; §2-3 safe for planck-area footnote; §4 resolved via BB4 |
| 1 | Rank-2 + Stokes (complementary to BB5): rank-2 trivial corollary (sev-3). F(t,λ)=e^{c(λ)t}: t-dependence of rank-1 Stokes constants forced by (C) but values not forced (sev-3). TWO-AGENT (mathematician+physicist). | Complete — TWO-AGENT sev-3; superseded by BB5 sev-2 result; promoted to resurgence notebook §14 |
| 2 | Contact groupoid conjecture: 3 bridges (A) ESTABLISHED (Connes-Moscovici), (B) OPEN (geometric reduction), (C) OPEN well-posed (GNS C*(G_c)→T(E), sub-questions C1,C2). THREE-AGENT complete. | Complete — THREE-AGENT sev-3; promote Bridge C analysis to TG notebook §6 open problems |
| 3 | Upgrading H6.3: Proposition D6.4b (not Derivation). Scope = Borel/instanton type only. THREE-AGENT (physicist+critic+mathematician). Fixes: M-F1 (additive semigroup §5b), M-F2 (Proposition label), M-F3 (simple-pole scope). | Complete — THREE-AGENT sev-2; paper-edit #27 APPLIED to D10.1c |
| 4 | d=4 b-calculus contact spectrum: E_B = -(ℏ²/2mL₀²)·μ_APS(μ_APS-2). THREE-AGENT (mathematician+physicist+critic). Critic: spurious μ_APS>2 branch (squaring artifact); only μ_APS<0 gives bound states. μ_APS FREE. Analytic, no dimensional transmutation. | Complete — THREE-AGENT sev-2; PROMOTED to papers/planck-area/main.md PA-P4.2 |
| 5 | Resonant Borel singularities (bion sectors) + composition (C). Log coefficient at ζ=2A forced by single-instanton Stokes constant via Borel convolution integral. Sev-2. BZJ from (C). THREE-AGENT complete. PROMOTED to resurgence notebook §16 (2026-02-20). | Complete — THREE-AGENT sev-2; PROMOTED to resurgence-composition-bridge.md §16 |
| 6 | Prior art Maiezza-Vasquez check. FOUR-AGENT. §13 NEW: double-well Borel-Padé rigidity computation. Location rigidity confirmed (pole×λ=const). Residue scaling 1/λ = coordinate artifact (s-plane Stokes constants ARE λ-independent). Multi-instanton Padé needs 30+ BW terms. Remark RG-R1.1 APPLIED (#28) to rg-fundamental. | Complete — FOUR-AGENT + §13 computation; paper-edit #28 APPLIED |

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
