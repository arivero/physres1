# Research State (Living Brief)

This file is the durable "working memory" for continuing research in this repo across context resets.
It is **not** a citable source and may reference `conv_patched.md` only as an idea log.

Date: 2026-02-10

## North Star (Current Paper)
- Manuscript: `paper/main.md` (publishable artifact).
- Thesis: physically meaningful laws are those that survive controlled refinement in partition/representation/scale (Section 10: Refinement Compatibility Principle, RCP).
- Structural spine: Newton polygonal refinement → action additivity/Noether → composition law → path integral → deformation quantization + renormalization as limit-control mechanisms.

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

## Operational Loop (One Session)
1. Pick one thread + one concrete question (keep scope ≤ 1–2 pages of derivation).
2. If the work is exploratory, prefer a Study cycle (`Snn`) and write a dated note in `blackboards/` first; promote later.
3. Record decisions/results in `docs/research-log.md`; put longer math in `paper/notes/`.
4. If an external claim matters, ingest/track its primary source:
   - update `paper/bibliography.md` (key + status),
   - add/refresh `sources/<...>.md` or `sources/pending-<key>.md`.
   If this becomes a dedicated effort, open a Bibliography cycle (`Bnn`) to keep it separate from prose iteration.
5. Promote only “stable” results into `paper/main.md` (or a new follow-up manuscript directory when needed).
6. Run consistency checks + rebuild the PDF when manuscript text changes (delete `.aux`/`.log` after successful generation).

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

## Active Threads (Pick One)
### 1) Main paper: RG as foundational compatibility
- Goal: strengthen the manuscript’s thesis that RG is the scale-compatibility condition forced by composed refinement when naive limits diverge.
- Typical deliverable: one additional explicit example/computation that goes beyond the current template-level RG discussion.

### 2) Planck area / half-density scale (follow-up draft)
- Draft: `papers/planck-area/main.md`.
- Goal: make precise why half-density normalization forces a \(\text{length}^{d/2}\) scale, and why in \(d=4\) this is naturally an area scale (candidate: Planck area), with at least one concrete model computation.
- Current sub-questions: evaluate `H2.3` (dimensionless scalarization), `H2.4` (background-free constancy), `H2.5` (analyticity/no fractional powers) separately; current focus is `H2.5`.

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
- Close the `PENDING` acquisition gaps (`Dirac1933`, `Feynman1948`, `Connes1994`, `Landsman1998`) when they become blocking for revisions.
- Optional: switch to pandoc `[@Key]` citations + a `.bib` file if a formal reference list is desired (keep `sources/` out of git).

## Immediate Next Actions (Low Friction)
1. Add a dated entry to `docs/research-log.md` at the start of each session (even if work is exploratory).
2. When a derivation starts to stabilize, create a dedicated note in `paper/notes/` and link it from the log.
3. Keep `docs/next-articles.md` as the “topic backlog”; keep `docs/research-log.md` as the “what happened” record.
