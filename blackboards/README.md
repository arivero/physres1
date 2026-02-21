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
| 0 | V_HD on compact Lie groups with bi-invariant metrics. Prop M0.1: V_HD constant (by bi-invariance). SU(2): V_HD=-1=-4|rho|^2 (Freudenthal match). General G: value needs computation (SU(3) unverified). Rank-1 symmetric spaces: constant iff alpha(alpha-1)=0 (d=3 only among spheres). Chart-dependence caveat. | SINGLE-AGENT (mathematician) |
| 1 | Painleve II tau = Det(1-K_Ai) verification. Tracy-Widom F2 from PII ODE vs Fredholm det: 1e-6 agreement. Moments match known TW values. Groupoid interpretation: trivially true (pair groupoid), REFORMULATED (monodromy groupoid: spectral invariant via RH, not groupoid partition function). Conjecture 6.1 RESOLVED. Physicist: Airy eigenvalue decay = edge thinness; free-fermion partition function reading; composition=framework, integrability=content. | FOUR-AGENT (computationalist+critic+mathematician+physicist) |
| 2 | Fourth D=4 coincidence: V_HD on S^{D-1} (de Sitter spatial section) is constant iff D=4. S^3=SU(2) gives V_HD=-1 (pure energy shift, no spectral distortion). Independent of conformal coupling/Seeley-DeWitt/conformal class coincidences (i)-(iii). Weyl vector: verified for SU(2), normalization-dependent for general G. | THREE-AGENT (physicist+mathematician+critic) |
| 3 | Composition-law derivations of QM: literature landscape. Three families (dynamical/kinematic/measure-theoretic). Key finding: Luiz-de Oliveira arXiv:2602.09984 (Feb 2026) independently derives QM from action additivity — HIGH OVERLAP with P4.2, MUST CITE (already cited as ref 23). Both use Levy-Khintchine but via different entry points (dim homogeneity vs Cramer-Rao). P4.2 differentiators: single axiom, deformation quant, RG, RCP. Physicist notes: composition implies Sorkin grade-2 (sev-4). | THREE-AGENT (critic+mathematician+physicist) |
| 4 | S² ordering witness D9.1h (Vuln 2) + S³ extension D9.1i. S²: shift -(l+1). S³: shift -1 (constant! V_HD=-1). General S^d: only d=3 has constant V_HD (alpha(alpha-1)=0 = SU(2) homogeneity). Two curved-manifold witnesses. | FOUR-AGENT S² + THREE-AGENT S³ (computationalist+critic+mathematician) |
| 5 | Quality sweep: D6.5, D6.4b, Lemma D6.6. Math VERIFIED (SymPy). Physics VERIFIED (dim analysis, limits, signs). Three sev-3 xref gaps. No sev-1/sev-2. P9.3 lcm claim: may already be removed from paper (mathematician check). | THREE-AGENT (critic+physicist+mathematician) |
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
