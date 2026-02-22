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
| 0 | V_HD on compact Lie groups with bi-invariant metrics. Prop M0.1: V_HD constant (bi-invariance). Thm M0.3: V_HD = -R/6 = -\|rho\|^2 (analytic proof: RNC + constancy). SU(2,3,4) verified to 10^{-7}. §9 intrinsic vs coordinate: composition forces coord-volume trivialization; eigenvalue comparison intrinsic. | FIVE-AGENT (mathematician+physicist+critic+computationalist+mathematician-analytic) |
| 1 | OQ-dS-3: Spatial a₂=0 on S³ vs full S⁴ conformal anomaly. Hamiltonian (S³): a₂=0, spatial vacuum protected from R² corrections. Lagrangian (S⁴): a₂=-1/15, conformal anomaly present. Product S³×S¹ also a₂=0 (S¹ flat → cross terms vanish). Protection is SPATIAL (composition = temporal sewing → constrains spatial operator). D=4 unique: a₂(S^{D-1})=0 iff D=4 among D≥3. | SINGLE-AGENT (physicist) |
| 2 | D=4 coincidences: (iv) V_HD on S^{D-1} constant iff D=4; (v) a₂(Δ_{1/2};S³)=0 (fifth coincidence). §9: de Sitter partition function — half-density scalar cleanest on S³ (no R or R² corrections). Radius log-scaling volume-only. §§1-6 PROMOTED to p42-extensions notebook Part 9. | THREE-AGENT on §§1-8 (physicist+mathematician+critic); §9 TWO-AGENT (physicist+critic). APPROVED. |
| 3 | OQ1a: Composition → curvature coupling via V_HD = -R/6. Three levels (local/global). D=4: half-density = conformal coupling. Selection principle, not gravity existence. §10: a_1=0 UNIVERSAL. §11: Lorentzian ADM — V_HD = spatial only. §12: mathematician review. §13: OQ-FdV-1 RESOLVED (negative) — V_HD=−\|ρ\|² does NOT extend to G/H; constancy obstruction; Lie groups genuinely special. §14: critic review. | THREE-AGENT (physicist+mathematician+critic). UNANIMOUS APPROVE. Verdict: patches/critic-bb3-verdict.md |
| 4 | Universal a_1(Delta_{1/2})=0 theorem (Thm M4.1). Composition forces half-density Laplacian → V_HD(x)=-R(x)/6 in RNC → a_1=R/6+V_HD=0 pointwise, ALL dimensions, ANY Riemannian manifold. Corrects OQ1a: (iii) is universal, not D=4-specific. Higher a_k generically non-zero. One-loop: no R*phi^2 counterterm; xi=1/6 radiatively stable. Paper-edit-worthy. | TWO-AGENT (mathematician+physicist) |
| 5 | V_HD product additivity + warped products + self-correction. C5.1: V_HD(M1xM2)=V(M1)+V(M2). S^2xS^2: non-constant despite R=4 (verified). CORRECTION: full V_HD(S^3) non-constant in geodesic polar (radial=-1, full has angular terms). Warped product formula: V_ang/f^2 coupling. Constancy in left-inv coords (M0.1), not geodesic polar. Spectral shift intrinsic. a_1=0 universal (mathematician §10.3). | FOUR-AGENT (computationalist+physicist+critic+mathematician). UNANIMOUS APPROVE. Verdict: patches/critic-bb5-verdict.md |
| 6 | H^2 (Poincare disk) ordering witness D9.1k. V_HD = 1/4 - 1/(4 sinh^2 rho). Non-compact, negative curvature, continuous spectrum. Left ordering erases spectral gap 1/4 = -R/8. New formula: V_HD(const) = -(d-1)R/(4d) on constant-curvature spaces. D=4 connection: S^{D-1} has constant V_HD iff D=4. | FOUR-AGENT (computationalist+mathematician+critic+physicist) |

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
