# Research State (Living Brief)

This file is the durable "working memory" for continuing research in this repo across context resets.
It is **not** a citable source and may reference `conv_patched.md` only as an idea log.

Date: 2026-02-14

## North Star (Current Paper)
- Manuscript: `paper/main.md` (publishable artifact).
- Thesis: physically meaningful laws are those that survive controlled refinement in partition/representation/scale (Section 10: Refinement Compatibility Principle, RCP).
- Structural spine: Newton polygonal refinement → action additivity/Noether → composition law → path integral → deformation quantization + renormalization as limit-control mechanisms.
- Long thinking goal: identify the precise **mathematical obstruction/ambiguity** in the naive Newtonian "refinement \(\to 0\)" limit that motivates retaining a finite deformation parameter (the role played by \(\hbar\)) as the minimal fix, analogously to how Newton’s limit methods resolve Zeno-style refinement paradoxes.

## Hard Guardrails
1. Do not put cycle IDs like `C00` in rendered manuscript content (`paper/main.md`, generated `.tex`, PDF-visible text).
2. Do not cite `conv_patched.md` (or any chat transcript) as a bibliography source.
3. Prefer OA sources first; otherwise mark `PENDING` and rely on lawful local PDFs for ingestion.
4. Treat preprints (especially A. Rivero drafts) as idea guides; treat any preprint-only claims as heuristic until verified against independent sources.

## Novelty Guardrail (Anti-Herd)
The goal is not to repackage standard narratives. Default to:
1. **Derivation-first:** write the claim as an explicit lemma/derivation in our own words before looking for “supporting quotes”.
2. **One computation per concept:** if a section is conceptual, attach at least one toy model (delta interaction, Gaussian coarse-grain, free kernel) that actually computes something.
3. **Separate filters:** keep “half-density/normalization” distinct from other dimension-selection filters (SUSY/division algebras/hopf bundles); track them as separate hypotheses and compare outcomes rather than mixing them.
4. **Literature as anchor, not driver:** use standard sources to sanity-check and attribute, but let the argument be forced by refinement/half-density compatibility constraints.
5. **Avoid known-land detours:** keep BV/BRST material as at most an outlook paragraph; do not allocate dedicated cycles (especially bibliography cycles) to BV unless explicitly requested later. The current priority is quantization as “stationary extremes + refinement-compatible composition” and the structural emergence of an action-scale regulator (\(\hbar\)).

## Operational Loop (One Session)
1. Pick one thread + one concrete question (keep scope ≤ 1–2 pages of derivation).
2. If the work is exploratory, prefer a Study cycle (`Snn`) and write a dated note in `blackboards/` first; promote later.
3. Record decisions/results in `docs/research-log.md`; put longer math in `paper/notes/`.
4. If an external claim matters, ingest/track its primary source:
   - update `paper/bibliography.md` (key + status),
   - add/refresh `sources/<...>.md` or `sources/pending-<key>.md`.
   If this becomes a dedicated effort, open a Bibliography cycle (`Bnn`) to keep it separate from prose iteration.
5. Promote only “stable” results into `paper/main.md` (or a new follow-up manuscript directory when needed).
6. **Content-cycle accountability:** for every `Cnn` cycle, record the manuscript diffstat in `cycles/Cnn-execution.md` by running:
   - `scripts/paper-diffstat.sh --cached`
   If the diffstat reports `TOTAL +0 -0`, the execution log must explicitly explain why no promotion happened (and usually spawn an `S` and/or `B` cycle instead).
7. Run consistency checks + rebuild the PDF when manuscript text changes (delete `.aux`/`.log` after successful generation).

## S-Cycle Tool Use (Verification)
During `S` cycles we may use heavier verification tooling to keep manuscripts lean:
1. **Python/symbolic checks** (e.g. SymPy) for dimensional analysis, algebra, and toy-model computations. Record the exact command + output in the blackboard note.
2. **Lean (optional, heavy)** for formalizing small lemmas when they become load-bearing and ambiguity persists. Use sparingly; prefer “one lemma” targets rather than attempting to formalize whole sections.

## Default Scheduling Policy (Automatic)
We prioritize *topics*, but we alternate *cycle types*.

**Cycle type meaning (terminology).**
- `C`: content/prose/derivations promoted into drafts.
- `S`: study (blackboards, checks, SymPy/Lean, toy computations).
- `B`: bibliography (search/ingest/verify independent anchors; OA-first).
- `Q`: quality (referee-style pass + actionable `C`/`S`/`B` queue).

### Topic priority (what we push first)
1. Half-densities (and the Planck-area / universal scale hypothesis ladder).
2. Cornerstone paper coherence (`paper/main.md`) as the integration target.
3. RG follow-up work when it either (i) anchors a load-bearing claim in the half-density ladder (e.g. transmutation scales), or (ii) removes a blocking “independent anchor” gap.

### Cycle cadence (how we avoid unanchored prose)
Rule: never run long stretches of `C` cycles without verification support.

Default cadence:
1. `C` (promote stable prose/derivations),
2. then **exactly one** of:
   - `S` if a claim is unclear/fragile or branches are mixing,
   - `B` if a claim is load-bearing and needs an independent anchor,
   - `Q` if we made cross-cutting edits or are approaching “submission quality”,
3. then return to `C` on the half-density priority thread.

Insertion rule: run a `Q` pass at least once every 3 substantial cycles, and immediately after any cycle that threads new citations or changes dimension/notation conventions.

Exploration rule: run a `DX` (D-explore) cycle at least once every ~10 cycles, or after completing any full Recipe A chain (D → S → B → C → Q). DX cycles read `docs/anomalies.md`, probe cross-thread connections, and stress-test the central framing.

## Principle Evolution Log
Track how the central thesis has been refined. Update during D-explore (DX) cycles.

- **v0** (initial): "Physically meaningful laws are those that survive controlled refinement in partition/representation/scale."
- **v1** (composition): Added that the *mechanism* is a composition law — refinement compatibility requires that composed predictions agree with single-step predictions.
- **v2** (action additivity → Noether): The structural spine crystalized: Newton polygonal refinement → action additivity/Noether → composition law → path integral.
- **v3** (deformation parameter): The naive "refinement → 0" limit is obstructed/ambiguous; retaining a finite deformation parameter (the role of hbar) is the minimal fix. Deformation quantization + renormalization as limit-control mechanisms.
- **v4** (RCP as principle): Named the overarching idea "Refinement Compatibility Principle" (RCP): partition/representation/scale changes must commute with physical predictions.

(Next version should emerge from a DX cycle that identifies a genuine extension or correction.)

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
- Goal: make the “kernel as bi-half-density” calculus explicit for spacetime propagators/Green functions, with at least one worked computation (densitized scalar field \(\psi=|g|^{1/4}\phi\)); keep BV half-densities as outlook unless anchored by a bibliography cycle.

### 3) RG as fundamental (follow-up draft)
- Draft: `papers/rg-fundamental/main.md`.
- Goal: isolate the “RG is definitional” perspective, connect it to rooted-tree bookkeeping, and add one explicit beta-function computation in a model.

### 4) RCP as a standalone foundations note
- Goal: state RCP as commuting diagrams / equivalence relations with a minimal axiom list and a short library of worked examples.
- Seed roadmap: `docs/next-articles.md` (A).

### 5) Dirac-supported probes / corners / impulses
- Goal: a clean weak Euler–Lagrange + mollifier theorem + corner/jump conditions with one anchored model.
- Seed roadmap: `docs/next-articles.md` (B).
- **Status**: Tier 1 (S97 draft, Q94 clean, 172 lines).

### 6) Ordering/discretization as equivalence class
- Goal: extend the simple \(f(q)p\) example to a richer symbol family and present ordering as a conjugation/gauge equivalence.
- Seed roadmap: `docs/next-articles.md` (C).

### 7) Rooted trees as bookkeeping (Butcher ↔ RG)
- Goal: make the rooted-tree dictionary the primary content; do one explicit computation on each side.
- Seed roadmap: `docs/next-articles.md` (D).

### 8) Renormalization: template → real computation
- Goal: pick one toy/QFT example and show the semigroup property + scheme dependence explicitly.
- Seed roadmap: `docs/next-articles.md` (F).

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

## Publication Readiness (2026-02-14, latest refresh)
Page counts compiled with `scripts/count-pages.sh` (elsarticle 3p twocolumn = PLB format).

**PLB-length satellites (≤6pp compiled):**
1. Half-Density QFT (6pp, ~265 lines, 7 refs) — FROZEN at PLB boundary
2. Delta Objects (6pp, ~218 lines, 6 refs) — FROZEN at PLB boundary
3. Relativistic Central Orbits (6pp, ~296 lines, 2 refs) — FROZEN at PLB boundary

**Over PLB, reclassified:**
4. Dirac Probes / Corners / Impulses (7pp, ~256 lines, 6 refs) — FROZEN

**PRD-length satellites (>6pp compiled):**
5. RG Fundamental (9pp, 596 lines, 8 refs)
6. Action-Angle Indeterminacy (13pp, 240 lines, 40 refs)
7. Fermionic Mediators (13pp, 244 lines, 40 refs)
8. Uncuttable Controlled Refinement (13pp, 240 lines, 40 refs)
9. Planck Area (14pp, ~730+ lines, 9 refs) — C304+C307: parity lemma + heat-kernel witness

**Cornerstone:** paper/main.md (~1813 lines). Target: Physics Reports.
**All 9 satellites cross-referenced from cornerstone** (C146 completed the network).

Recent cornerstone additions (2026-02-14):
- C313: P5.2a (deformation equivalence is physical — four-layer stratification + GaAs energy estimate) in Section 7.4; Package B status updated in Section 9.5
- C312: P4.2c-f (hypothesis reduction 4->3, curved/interacting/Lorentzian extensions, kappa universality)
- C312: D9.1a correction (four-layer deformation equivalence stratification)
- C304-C311: delta dictionary, Ito/Stratonovich, caustics/Maslov, Pade unification, RCP crown witnesses

Recent satellite additions (2026-02-14):
- C313: planck-area Open Problem #3 closed (odd-d transmutation witness via d=3 scattering length)
- C313: RG-fundamental Remark RG-H1.9 (horizontal/vertical composition connecting P4.2 to RG)

All papers verified: clean encoding, proper YAML metadata, no internal file paths, adequate bibliography.

P00 (Planck Area v3) already live on clawXiv. No more clawXiv pushes unless explicitly requested.

## Immediate Next Actions (Low Friction)
1. Add a dated entry to `docs/research-log.md` at the start of each session (even if work is exploratory).
2. When a derivation starts to stabilize, create a dedicated note in `paper/notes/` and link it from the log.
3. Keep `docs/next-articles.md` as the "topic backlog"; keep `docs/research-log.md` as the "what happened" record.
4. Central-force bridge thread: keep same-ID S-cycle iteration if unresolved; reopen `C300` only for explicit readability pass.
5. Future work: P cycles for satellite submissions, content expansion for shorter papers, cornerstone polish.
