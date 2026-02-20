# Research State (Living Brief)

This file is the durable "working memory" for continuing research in this repo across context resets.
It is **not** a citable source and may reference `conv_patched.md` only as an idea log.

Date: 2026-02-20

## North Star (Current Paper)
- Manuscript: `paper/main.md` (publishable artifact).
- Thesis: physically meaningful laws are those that survive controlled refinement in partition/representation/scale (Section 10: Refinement Compatibility Principle, RCP).
- Structural spine: Newton polygonal refinement → action additivity/Noether → composition law → path integral → deformation quantization + renormalization as limit-control mechanisms.
- Long thinking goal: identify the precise **mathematical obstruction/ambiguity** in the naive Newtonian "refinement \(\to 0\)" limit that motivates retaining a finite deformation parameter (the role played by \(\hbar\)) as the minimal fix, analogously to how Newton’s limit methods resolve Zeno-style refinement paradoxes.

## Hard Guardrails
1. Do not put task IDs in rendered manuscript content (`paper/main.md`, generated `.tex`, PDF-visible text).
2. Do not cite `conv_patched.md` (or any chat transcript) as a bibliography source.
3. Prefer OA sources first; otherwise mark `PENDING` and rely on lawful local PDFs for ingestion.
4. Treat preprints (especially A. Rivero drafts) as idea guides; treat any preprint-only claims as heuristic until verified against independent sources.

## Novelty Guardrail (Anti-Herd)
The goal is not to repackage standard narratives. Default to:
1. **Derivation-first:** write the claim as an explicit lemma/derivation in our own words before looking for “supporting quotes”.
2. **One computation per concept:** if a section is conceptual, attach at least one toy model (delta interaction, Gaussian coarse-grain, free kernel) that actually computes something.
3. **Separate filters:** keep “half-density/normalization” distinct from other dimension-selection filters (SUSY/division algebras/hopf bundles); track them as separate hypotheses and compare outcomes rather than mixing them.
4. **Literature as anchor, not driver:** use standard sources to sanity-check and attribute, but let the argument be forced by refinement/half-density compatibility constraints.
5. **Avoid known-land detours:** keep BV/BRST material as at most an outlook paragraph; do not allocate dedicated tasks to BV unless explicitly requested later. The current priority is quantization as “stationary extremes + refinement-compatible composition” and the structural emergence of an action-scale regulator (\(\hbar\)).

## Operational Loop (One Session)
1. Pick one thread + one concrete question (keep scope ≤ 1–2 pages of derivation).
2. If the work is exploratory, write a dated note in `blackboards/` first; promote later.
3. Put longer math in `paper/notes/`; record decisions on blackboards or notebooks.
4. If an external claim matters, ingest/track its primary source:
   - update `paper/bibliography.md` (key + status),
   - add/refresh `sources/<...>.md` or `sources/pending-<key>.md`.
5. Promote only “stable” results into `paper/main.md` (or a new follow-up manuscript directory when needed).
6. For every manuscript edit, record the diffstat by running `scripts/paper-diffstat.sh --cached`.
7. Run consistency checks + rebuild the PDF when manuscript text changes (delete `.aux`/`.log` after successful generation).

## Verification Tooling
Heavier verification tooling keeps manuscripts lean:
1. **Python/symbolic checks** (e.g. SymPy) for dimensional analysis, algebra, and toy-model computations. Record the exact command + output in the blackboard note. (Computationalist agent primary responsibility.)
2. **Lean (optional, heavy)** for formalizing small lemmas when they become load-bearing and ambiguity persists. Use sparingly; prefer “one lemma” targets.

## Scheduling Policy
Tasks are managed via the shared kanban (TaskList). The orchestrator creates tasks;
researcher agents claim and complete them.

### Topic priority (what we push first)
1. Half-densities (and the Planck-area / universal scale hypothesis ladder).
2. Cornerstone paper coherence (`paper/main.md`) as the integration target.
3. RG follow-up work when it either (i) anchors a load-bearing claim in the half-density ladder (e.g. transmutation scales), or (ii) removes a blocking “independent anchor” gap.

### Balance rule
Never run long stretches of manuscript promotion without verification. Alternate:
- Research/exploration tasks (Physicist, Mathematician, Student)
- Verification/computation tasks (Computationalist, Critic)
- Promotion tasks (orchestrator dispatches Paper Writer)

Run a Critic review after any substantial cross-cutting edits or when approaching submission quality.

## Principle Evolution Log
Track how the central thesis has been refined. Update when exploration reveals genuine extensions.

- **v0** (initial): "Physically meaningful laws are those that survive controlled refinement in partition/representation/scale."
- **v1** (composition): Added that the *mechanism* is a composition law — refinement compatibility requires that composed predictions agree with single-step predictions.
- **v2** (action additivity → Noether): The structural spine crystalized: Newton polygonal refinement → action additivity/Noether → composition law → path integral.
- **v3** (deformation parameter): The naive "refinement → 0" limit is obstructed/ambiguous; retaining a finite deformation parameter (the role of hbar) is the minimal fix. Deformation quantization + renormalization as limit-control mechanisms.
- **v4** (RCP as principle): Named the overarching idea "Refinement Compatibility Principle" (RCP): partition/representation/scale changes must commute with physical predictions.

(Next version should emerge from exploration that identifies a genuine extension or correction.)

## Active Threads (Pick One)
### 1) Main paper: RG as foundational compatibility
- Goal: strengthen the manuscript’s thesis that RG is the scale-compatibility condition forced by composed refinement when naive limits diverge.
- Typical deliverable: one additional explicit example/computation that goes beyond the current template-level RG discussion.

### 2) Planck area / half-density scale (follow-up draft)
- Draft: `papers/planck-area/main.md`.
- Goal: make precise why half-density normalization forces a \(\text{length}^{d/2}\) scale, and why in \(d=4\) this is naturally an area scale (candidate: Planck area), with at least one concrete model computation.
- Current sub-questions: evaluate `H2.3` (dimensionless scalarization), `H2.4` (background-free constancy), `H2.5` (analyticity/no fractional powers) separately; current focus is `H2.5`.
- DX02 observation (RESOLVED by S73): scalarization gauge freedom (PA-D1.7) and ordering ambiguity (Section 10.2) are structurally analogous but algebraically independent. σ_*-rescaling acts on kernel amplitude (zeroth-order in ℏ), generating connection-type corrections orthogonal to ordering corrections. Notational parallel only.

### 2b) Half-densities in QFT (follow-up draft candidate)
- Seed note: `blackboards/2026-02-10-half-densities-in-qft.md`.
- Draft: `papers/half-density-qft/main.md`.
- Goal: make the “kernel as bi-half-density” calculus explicit for spacetime propagators/Green functions, with at least one worked computation (densitized scalar field \(\psi=|g|^{1/4}\phi\)); keep BV half-densities as outlook unless anchored by bibliography work.

### 3) RG as fundamental (follow-up draft)
- Draft: `papers/rg-fundamental/main.md`.
- Goal: isolate the “RG is definitional” perspective, connect it to rooted-tree bookkeeping, and add one explicit beta-function computation in a model.

### 4) RCP as a standalone foundations note
- Goal: state RCP as commuting diagrams / equivalence relations with a minimal axiom list and a short library of worked examples.
- Seed roadmap: `meta/next-articles.md` (A).

### 5) Dirac-supported probes / corners / impulses
- Goal: a clean weak Euler–Lagrange + mollifier theorem + corner/jump conditions with one anchored model.
- Seed roadmap: `meta/next-articles.md` (B).
- **Status**: Tier 1 (S97 draft, Q94 clean, 172 lines).

### 6) Ordering/discretization as equivalence class
- Goal: extend the simple \(f(q)p\) example to a richer symbol family and present ordering as a conjugation/gauge equivalence.
- Seed roadmap: `meta/next-articles.md` (C).

### 7) Rooted trees as bookkeeping (Butcher ↔ RG)
- Goal: make the rooted-tree dictionary the primary content; do one explicit computation on each side.
- Seed roadmap: `meta/next-articles.md` (D).

### 8) Renormalization: template → real computation
- Goal: pick one toy/QFT example and show the semigroup property + scheme dependence explicitly.
- Seed roadmap: `meta/next-articles.md` (F).

### 9) Paper closure / hygiene (deprioritized unless blocking)
- Remaining `PENDING_LIBRARY` gaps: `Landsman1998` only (require institutional Springer access or physical library). All other PENDING items resolved in B12: `Dirac1933`, `Kurasov1996`, `Wilson1974`, `Moyal1949`, `Velhinho2017`, `Groenewold1946` (Univ. Groningen OA), `Connes1994` (author OA from alainconnes.org; tangent groupoid in Ch. II §5).
- Optional: switch to pandoc `[@Key]` citations + a `.bib` file if a formal reference list is desired (keep `sources/` out of git).
- **Claim-label namespace collision** (Q59): RESOLVED (C108 + Q63). All companion papers now use paper-specific prefixes (RG-, PA-, HD-). Main paper labels remain unprefixed (canonical namespace). Q63 verified zero residual bare labels.

### 10) Action–Angle indeterminacy (central potentials)
- Goal: formulate a clean “sharp actions \(\Rightarrow\) delocalized conjugate angles” statement for integrable central potentials, with at least one explicit computation in the \((\phi,L_z)\) sector.
- Seed note: `blackboards/2026-02-10-action-angle-indeterminacy-central-potentials.md`.
- Dependent note draft: `papers/action-angle-indeterminacy-central-potentials/main.md`.
- Intended role: foundations-level clarification of what is (and is not) “undetermined” in stationary states, compatible with the project’s semiclassical/stationary-phase narrative.

### 11) Fermionic mediators → contact limits / boundary-condition data
- Goal: clarify whether (and in what sense) a fermionic field can generate an effective central potential, emphasizing the Grassmann-source obstruction and the EFT/contact-interaction route (delta kernels, derivative contact terms, self-adjoint extensions).
- Seed note: `blackboards/2026-02-10-fermionic-mediators-central-potentials-and-contact-limits.md`.
- Dependent note draft: `papers/fermionic-mediators-contact-limits/main.md`.
- Intended role: connect “mediator-field talk” to the repo’s point-interaction + RG themes in a controlled, falsifiable way.

### 12) Main-paper central-force threshold bridge hardening
- Goal: stress-test and sharpen the compact Newton/SR threshold bridge around `Remark P1.1a` without over-expanding Section 3.
- Working notes: `paper/notes/main-paper-threshold-bridge.md`, `paper/notes/main-paper-threshold-bridge-sanity-grid.md`.
- Current status (D18+S272+S273+S274+S275(iter3)+D20): exponent rule retained; marginal coefficient sensitivity, assumption-drift boundaries, and a compact \(L_{\mathrm{crit}}\) map are explicit.
- Compression artifact ready: default two-sentence candidate `D2` (34 words) preserved all required caveats in same-ID S275 iterations; readability delta vs current remark body is substantial (~85 -> ~34 words).
- Open branch set:
  - `S276` generalized marginal map (initial pass done; branch open),
  - `S277` kinetic-exponent window validity (initial + analytic-closure pass done; branch open),
  - `S278` potential-drift diagnostics (initial + correction-family portability pass done; branch open),
  - `D21` integration policy (initial + quantitative-gate pass done; branch open),
  - `D22` cross-thread linkage triage (candidate drafted, currently deferred; branch open).
- Decision gate: `C300` deferred (no correctness defect). Reopen only for a targeted Section 3 readability-compression pass.

## Season 1 Findings (2026-02-20)

Key results from the first full agent-team session:

### Resolved gaps
- **Cauchy measurability**: d/2 uniqueness proof holds under a.e. quantifiers via Fubini + L¹_loc (Mathematician; notebooks/p42-hypothesis-reduction.md Part 4)
- **Identity limit without Stone**: For smooth V, stationary phase as t→0 (Route I₃) gives K_t→δ without Stone's theorem. Stone IS needed for singular V. (Mathematician; RCP-R6.3 in rcp-foundations manuscript)
- **Unitarity not independent**: c₀=i follows from Minkowski signature, not from composition alone. Heat kernel (c₀=-1) is the Euclidean twin. Wick rotation is representation-channel (A3), not partition-channel. (Mathematician; notebooks/p42-hypothesis-reduction.md Part 5)

### Corrections applied
- Cornerstone: P9.1→P10.2a label collision, H0.2 taxonomy weakened, A1 cross-ref, causal language
- RCP Foundations: +RCP-R6.2 (regularity R1-R4), +Cauchy note, +RCP-R6.3 (stationary phase route)
- PI Normalization: semiclassical qualifiers, +PN-P1.3 (d/2 from groupoid convolution)
- Ordering Equivalence: Weyl→LR symmetric, numerical estimate corrected (~100x), PDM formula rewritten (O(α) constant shift explicit, energy-gap reformulation)

### Negative / diagnostic results
- **Borel-Padé inapplicable to momentum expansion**: I_n ~ n⁻² (algebraic, not factorial). Structural distinction: tree-level Yukawa = pole → exact; loop-level = cut → accumulation. (Computationalist; blackboard 6)
- **Cross-paper overclaiming pattern**: "RCP forces X" language systematically overclaims throughout satellites. Noether crown-witness issue confirmed in both rcp-foundations and rg-fundamental. (Critic; notebooks/cross-paper-overclaiming-diagnostic.md)

### New material
- Tangent groupoid bridge notebook (Lackman 2023-2024 literature; Student)
- Item F renormalization semigroup exploratory notebook (Student)
- OQ1a Planck area vs ℏ notebook (Student)
- EH Lagrangian factorial growth as Remark 2.8 witness (Physicist; blackboard 3)

### Pending for next session (Season 1 items — all resolved in Season 2)
- ~~Tangent-groupoid satellite paper creation~~ → DONE (papers/tangent-groupoid-bridge/main.md, 312 lines)
- ~~Wick rotation as A3 representation-channel remark~~ → DONE (Remark RCP-R7.1 in rcp-foundations §7)
- ~~Systematic overclaiming language pass~~ → DONE (4 fixes: rcp-foundations, cornerstone ×2, ordering-equivalence ×2)
- ~~rcp-foundations sev-2 fixes (A2 redundancy, Noether witness)~~ → DONE (A2 marked derivable; Noether logical dependency corrected)
- ~~EH Lagrangian Computationalist verification~~ → DONE (super-factorial (2k-1)!/π^{2k}, not factorial)
- ~~Critic satellite reviews~~ → DONE (13/13 complete, zero sev-1 errors)

## Season 2 Findings (2026-02-20, second session)

### Resolved from Season 1 backlog
- **All 13 satellite reviews completed**: zero sev-1 errors across 93 algebra checks (Critic)
- **Overclaiming language pass**: 4 fixes applied (Noether/RCP dependency, contributions list single-axiom, H0.2 correspondence 3-of-4, Lorenz gauge scope)
- **Wick rotation as A3**: Proved (Mathematician; Remark RCP-R7.1 in rcp-foundations). Wick η: t→e^{iη}t preserves composition exactly, transforms c₀→e^{-iηd/2}c₀ and ℏ→e^{iη}ℏ. Not A4 (commutes with RG flow). QFT scope: A3-compatible iff Osterwalder-Schrader holds.
- **A2 axiom redundancy**: Fixed (Mathematician). A2 now marked "derivable" in rcp-foundations §2.1, consistent with single-axiom result (RCP-P6.1).
- **EH Lagrangian growth**: Verified super-factorial a_k ~ 0.2026·(2k-1)!/π^{2k} (Computationalist). Resurgent transseries, not Borel-Padé. Remark 2.8a promoted to uncuttable satellite.
- **BW anharmonic oscillator**: Verified factorial Γ(n+1/2)·(-3)^n growth, Borel singularity at t=-1/3 (Computationalist). Confirms Remark 2.8 as written.

### New material
- **NEW satellite: tangent-groupoid-bridge** (312 lines, ~10pp). Proposition TG-P1.1: d/2 from Fourier multiplicativity + dimensional homogeneity alone. Connes tangent groupoid, Lackman 2023-24 bridge, Wick rotation as A3 groupoid-algebraically. 3 sev-2 fixes applied (Critic reviewed, no errors).
- **Remark RCP-R7.1** (rcp-foundations §7): Wick rotation as representation channel
- **Remark 2.8a** (uncuttable): EH Lagrangian as resurgent-transseries witness
- **Heuristic PA-H4.1** (planck-area §7): Half-density resolves Misner measure in minisuperspace; infinite-dim case reduced but not eliminated
- **Rooted-tree coproduct fixes** (3 sev-1 errors corrected: swapped Butcher coefficients, forest product notation, CK symmetry)
- **Tangent-groupoid cross-ref** added to rcp-foundations §7.5
- **Author updated**: all 15 papers to "A. Rivero and A.I.Scaffold"

### Corrections applied (Season 2)
- Cornerstone: contributions list (single-axiom framing), P9.1 H0.2 correspondence (3-of-4 explicit), +[TangentGroupoidBridge] cross-ref (line 910), D10.1c crown-witness precision (scale witness = heuristic, not constructive)
- RCP Foundations: Noether/RCP dependency, +RCP-R7.1 (Wick), A2 marked derivable, +tangent-groupoid cross-ref, 2 overclaiming fixes (lines 239, 241)
- Ordering Equivalence: Lorenz gauge analogy scoped to Layers 1-2 (lines 23, 345), PDM gap formula factor-of-2 fix (n/16→n/8, numerically verified)
- Dirac Probes: 3 sev-2 precision fixes (half-density claim, composition direction, heat-kernel root)
- Uncuttable: Virasoro d=2 fix, +Remark 2.8a (EH resurgence witness)
- Rooted-Tree Bookkeeping: 3 sev-1 math fixes (§3.5 coefficients, §6.2 coproduct)
- Planck Area: +PA-H4.1 (Misner measure heuristic)
- Path-Integral Normalization: independence overclaim fix (line 142), abstract precision (translation homogeneity added)
- Tangent-Groupoid Bridge: 3 sev-2 fixes (Schrödinger derivation, RCP scope, heat equation derivation)
- All 15 papers: author updated to "A. Rivero and A.I.Scaffold"

### Negative / diagnostic results (Season 2)
- **Genre mismatch**: uncuttable + fermionic-mediators are surveys/perspectives, not research notes. Action-angle is modest. Decision pending: reclassify or add original content.
- **Misner measure infinite-dim obstruction**: Half-density does NOT resolve the full Misner problem (Λ^∞T*S ill-defined, regularization reintroduces supermetric ambiguity). Only minisuperspace resolved.

### Student serendipity leads (recorded, not yet formalized)
- OQ1a four-layer validation: WDW measure, LQG area spectrum, conformal anomaly d=4, resurgence bridge
- Misner measure problem connection (speculative for infinite-dim, resolved for minisuperspace)
- Voros 1983 / DDP 1993 exact WKB literature leads (blackboard 1, §9)
- Zero-mode dimensional counting → d/2 (standard instanton physics, connects to composition)

### New research results (Season 2, continued)
- **Instanton TG-P1.1 scope**: Mathematician proved that hypothesis (T) (translation invariance) fails for instanton saddles, explaining T^{+1} scaling vs T^{-d/2}. Computationalist numerically verified (blackboard 4, §7-8). Two-agent rule satisfied. Promotion candidate for TG-bridge or PN satellite.
- **Cornerstone audit (Critic)**: P4.2 sound, P9.1 well-calibrated, Section 9.3-9.4 exemplary. One sev-2 (D10.1c crown witness = heuristic). Overclaiming was introduced during satellite extraction, NOT in cornerstone.
- **Library building**: 13 new sources ingested (Lackman 2023, Crainic 2000, Dorigoni 2014/2019, DDP 1993, Dunne-Ünsal 2012, Iwaki 2024, Ali-Englis 2005, Gualtieri-Li 2012, Carosso 2018, Moshayedi 2020, Mariño 2025, Dunne 2024).
- **Cobordism groupoid (Physicist)**: P9.1a → ∞-groupoid reading. Stage 4 = passage from 1-groupoid (pair) to (∞,1)-groupoid (cobordism). TQFT = completion in topological case; 3+1 gravity branches. (blackboard 1, §1-6)
- **Infrastructure**: Bibliographer agent deprecated → all agents now do library work directly. shared-rules.md updated with §7b (The Library) separate from §7 (Philosophenweg). AGENTS.md updated accordingly.

### Pending for next session
- rg-fundamental sev-2 fixes still open (S2.1 "RG is definitional", S2.2 two-layer heuristic, S2.3 Noether)
- Genre decision: uncuttable + fermionic-mediators (reclassify as perspective or add original content)
- ~~Tangent-groupoid satellite needs cornerstone cross-reference~~ → DONE
- ~~path-integral-normalization independence overclaim~~ → DONE (2 fixes applied)
- ~~Instanton d/2 toy computation~~ → DONE (blackboard 4, §4-8, verified)
- Instanton TG-P1.1 scope remark promotion (blackboard 4 → satellite, two-agent verified)
- Cobordism groupoid P9.1a remark promotion (blackboard 1 → cornerstone, needs mathematician verification)
- Exact WKB / resurgence thread (Student leads, library sources now ingested — needs formalization)

## Publication Readiness (2026-02-20, latest refresh)
Page counts compiled with `scripts/count-pages.sh` (elsarticle 3p twocolumn = PLB format).

**PLB-length satellites (≤6pp compiled):**
1. Half-Density QFT (6pp, ~265 lines, 7 refs) — FROZEN at PLB boundary
2. Delta Objects (6pp, ~218 lines, 6 refs) — FROZEN at PLB boundary
3. Relativistic Central Orbits (6pp, ~296 lines, 2 refs) — FROZEN at PLB boundary

**Over PLB, reclassified:**
5. Dirac Probes / Corners / Impulses (7pp, ~256 lines, 6 refs) — FROZEN

**PRD-length satellites (>6pp compiled):**
6. RCP Foundations (7pp, ~380 lines, 6 refs) — EXPANDED (+RCP-R6.2 regularity, +RCP-R6.3 stationary phase, Cauchy note)
7. Ordering Equivalence (8pp, ~400 lines, 2 refs) — REVISED (Weyl→LR relabel, PDM formula corrected, energy-gap reformulation)
8. Rooted-Tree Bookkeeping (8pp, 431 lines, 5 refs) — NEW (Butcher/RG dictionary, Hopf coproduct explicit formulas)
9. Path-Integral Normalization (9pp, ~450 lines, 3 refs) — EXPANDED (+PN-P1.3 groupoid convolution, semiclassical qualifiers)
10. RG Fundamental (12pp, 724 lines, 10 refs) — EXPANDED (rooted trees, Hopf coproduct, two-layer QFT remark, multi-channel RCP conclusion)
11. Action-Angle Indeterminacy (13pp, 240 lines, 40 refs)
12. Fermionic Mediators (13pp, 244 lines, 40 refs)
13. Uncuttable Controlled Refinement (13pp, 240 lines, 40 refs)
14. Planck Area (14pp, 736 lines, 9 refs) — C304+C307: parity lemma + heat-kernel witness

15. Tangent-Groupoid Bridge (~312 lines) — NEW Season 2 (Proposition TG-P1.1, Connes tangent groupoid, Lackman bridge)

**Cornerstone:** paper/main.md (~1836 lines, 32pp). Target: Physics Reports.
**Current satellite count: 14** (3 PLB-frozen + 1 Dirac + 10 PRD-length). Cross-referencing: 13/14 from cornerstone (tangent-groupoid pending).
**Total corpus: ~195k tokens (estimated with new satellite + edits).**
**All papers authored: A. Rivero and A.I.Scaffold.**

Recent cornerstone additions (2026-02-14):
- C330: P4.2h (single master axiom — composition alone suffices) in Section 10
- C332: P9.1 (forced-completion chain + structure vs content + failure taxonomy) in Section 9.6
- C333: P9.1a (stage 4: dynamical geometry + classical limit singularity) in Section 9.6
- C314: P4.2g (continuum time forced by dimensional homogeneity) in Section 10
- C313: P5.2a (deformation equivalence is physical) in Section 7.4
- C312: P4.2c-f (hypothesis reduction, extensions, kappa universality)
- C304-C311: delta dictionary, Ito/Stratonovich, caustics/Maslov, Pade, RCP crown witnesses

Recent satellite additions (2026-02-14):
- C329: RCP foundations — Section 6.1 rewritten with single-axiom P4.2 reduction (9 conclusions from composition)
- C331: RG-fundamental — Remark RG-H1.18 (two-layer QFT structure under forced completion)
- C326-C327: NEW satellite `path-integral-normalization` (432 lines, 9pp) — d/2 exponent forced by composition semigroup + dimensional homogeneity. Four manifestations (temporal composition, Van Vleck determinant, heat kernel, RG thresholds). Explicit d=1,2,3 composition verifications (PN-D1.1, PN-D1.2), alternative exponent failure, DeWitt-Morette law Δ(x,z)=Δ(x,y)Δ(y,z), Wick rotation to diffusion equation, renormalization threshold d<2/d=2/d>2, connection to P4.2 + half-density formalism. Sources: D48/S302. Complete 7 sections.
- C325: RCP foundations expansion — Section 7.4+7.5 added (multi-channel synthesis showing how partition/representation/scale interact in path integral: sewing law forces ℏ, measure encodes ordering, singular V forces RG). Cross-references to three channel-specific satellites. Paper now 8pp (347 lines).
- C324: Ordering equivalence COMPLETE — expanded sections 4-7 (curved space Laplace-Beltrami + curvature potential, star-product automorphism perspective, Itô/Stratonovich + path-integral discretization, measurability analysis + RCP representation channel). Paper at 8pp (391 lines), 6 propositions, 2 worked examples.
- C323: NEW satellite `ordering-equivalence` (initial 165 lines) — Four-layer stratification (principal symbol, connection, scalar potential, domain), PDM worked example (Weyl vs half-density explicit derivations, GaAs quantum well numerical test |ΔE₀| ~ 0.006-0.06 meV), Proposition OE-P1.2 (deformation equivalence is physical).
- C322: RG-fundamental conclusion expansion — Section 7 expanded with multi-channel RCP bridge (three crown witnesses: partition/Noether, representation/ordering, scale/2D delta), foundational reading (RG as definitional), forward references to [RCPFoundations] and [RootedTreeBookkeeping]. Paper now 12pp (721 lines).
- C321: RG-fundamental Section 4 expansion — added 3 subsections (midpoint RK2 composition test, Hopf coproduct explicit formulas for trees τ₁-τ₃, tree proliferation preview). Section 4: 30 → 120 lines. Paper: 601 → 692 lines.
- C320: RCP foundations COMPLETE — expanded sections 4-7 (ordering ambiguity, 2D delta RG, P4.2 theorem, outlook). All 7 sections substantive. Paper at 7pp (305 lines).
- C319: NEW satellite `rcp-foundations` (initial 189 lines) — Refinement Compatibility Principle as falsifiable axiom system with three channels (partition/representation/scale), operational form O_{h,θ} = O_{h',τ(θ)} ∘ T, complete Noether derivation as partition witness.
- C318: rooted-tree-bookkeeping finalized at 8pp (431 lines, PRD length) — added Section 7 Conclusion + Section 3.5 order-3 trees (Butcher product, RG sunset/nested parallel)
- C317: rooted-tree-bookkeeping expanded to 7pp (372 lines) — added Section 6.2 with explicit Hopf coproduct formulas (order-1/2/3 trees, antipode S, forest formula)
- C316: rooted-tree-bookkeeping expanded to 6pp (319 lines) — added Section 4.4 with worked 2D delta RG example (beta function, dimensional transmutation, explicit Butcher parallel)
- C315: NEW satellite `rooted-tree-bookkeeping` (initial 5pp, 269 lines) — Butcher/RG dictionary with worked midpoint RK2 + one-loop RG template
- C313: planck-area Open Problem #3 closed (odd-d transmutation witness via d=3 scattering length)
- C313: RG-fundamental Remark RG-H1.9 (horizontal/vertical composition connecting P4.2 to RG)

All papers verified: clean encoding, proper YAML metadata, no internal file paths, adequate bibliography.

P00 (Planck Area v3) already live on clawXiv. No more clawXiv pushes unless explicitly requested.

## Immediate Next Actions (Low Friction)
1. When a derivation starts to stabilize, create a dedicated note in `paper/notes/`.
2. Keep `meta/next-articles.md` as the "topic backlog".
3. Central-force bridge thread: continue iteration if unresolved; reopen readability pass only when targeted.
4. Future work: satellite submissions, content expansion for shorter papers, cornerstone polish.
