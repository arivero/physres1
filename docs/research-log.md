# Research Log

Chronological lab notebook for this repo.
This file is **not** a citable source; it can mention `conv_patched.md` only as an idea generator.

## Template (Copy for New Entries)

### YYYY-MM-DD
- Focus:
- Question:
- Work:
- Result:
- Sources touched (keys + status changes):
- Next:

## 2026-02-09
- Focus: establish a durable workflow for continuing research after `paper/main.tex` exists.
- Question: how to keep exploration “free” while preventing policy violations in the manuscript and bibliography?
- Work: codified an operational loop + thread list in `docs/research-state.md`.
- Result: research can proceed by logging small scoped questions, ingesting OA sources when needed, and only promoting stable results into the manuscript.
- Sources touched (keys + status changes): none.
- Next: choose one active thread and do a first logged derivation session.

## 2026-02-09 (continuation)
- Focus: shift priority from source-ingest hygiene toward “RG is fundamental” and kick off dependent follow-up drafts.
- Question: how to make RG feel definitional (not post-hoc) while keeping the main paper’s refinement/composition thesis intact?
- Work:
  - Ingested local `Areal.pdf` into `sources/areal-8e1409d4.md` and registered `[RiveroAreal]` in `paper/bibliography.md`.
  - Started follow-up drafts in `papers/planck-area/main.md` and `papers/rg-fundamental/main.md`.
  - Strengthened `paper/main.md` Section 8 with a “renormalization is definitional” heuristic and a calculus micro-model (difference quotient as counterterm subtraction).
- Result: the repo now has two parallel paper tracks plus a sharper “RG as compatibility” framing in the main manuscript.
- Sources touched (keys + status changes): added `[RiveroAreal]`.
- Next: expand `papers/planck-area/main.md` with one concrete half-density composition model and expand `papers/rg-fundamental/main.md` with one explicit beta-function computation.

## 2026-02-09 (C13 start)
- Focus: make the Planck-area follow-up less programmatic by adding one explicit kernel/half-density calculation and one cleaned “areal-speed cancellation” derivation.
- Question: where exactly does the \(\text{length}^{d/2}\) normalization scale enter when kernels are treated as half-densities?
- Work:
  - Added an explicit coordinate-change derivation for half-density pairing/composition and a dilation scaling check.
  - Added a self-contained inverse-square circular-orbit derivation showing the Planck-areal-speed \(\Rightarrow\) Compton-radius cancellation.
- Result: `papers/planck-area/main.md` now contains labeled derivations that can be promoted into a real paper draft.
- Sources touched (keys + status changes): none (used existing `[RiveroAreal]`, `[RiveroSimple]`).
- Next: tie the half-density normalization scale to a short-time propagator prefactor (stationary phase) and state precisely what part is conjectural vs derived.

## 2026-02-09 (C14 start)
- Focus: delta-function interactions as a concrete “RG is definitional” computation track.
- Question: can we produce a clean beta function in a singular QM model that matches the refinement/compatibility narrative?
- Work:
  - Ingested arXiv:`hep-th/9411081` (“Renormalization in 1-D Quantum Mechanics: contact interactions”) into `sources/9411081-51727cbf.md` and registered `[BoyaRivero1994Contact]` in `paper/bibliography.md`.
  - Added a worked \(2\)D delta-potential RG derivation (log running + dimensional transmutation) to `papers/rg-fundamental/main.md`.
  - Added a concise, self-contained \(2\)D delta RG appendix (`10.5`) to the main manuscript in `paper/main.md`.
- Result: the repo now contains an explicit nontrivial beta function computation that supports the “RG is scale-compatibility” thesis beyond the toy log template.
- Sources touched (keys + status changes): added `[BoyaRivero1994Contact]`.
- Next: add a short note on scheme dependence for the delta subtraction and connect to a rooted-tree identity/recursion for the bookkeeping bridge.

## 2026-02-09 (C14 continuation)
- Focus: close the remaining “RG fundamental” acceptance items (scheme dependence, rooted-tree bookkeeping, semigroup vs group clarity).
- Question: what changes under finite subtraction shifts, and what remains invariant?
- Work:
  - Added a finite-subtraction scheme shift and showed it rescales the RG-invariant \(\kappa_\ast\) scale without changing the beta function.
  - Added an explicit bubble-chain recursion/cancellation demonstration and a toy ladder-tree coproduct/antipode identity to make the rooted-tree link concrete.
  - Added a short semigroup-vs-group clarification: coarse-graining is non-invertible; coupling running can look invertible only under truncation/closure assumptions.
  - Updated repo policy docs (`AGENTS.md`, `docs/handoff.md`, `docs/research-state.md`, `paper/bibliography.md`) to treat Rivero preprints and `conv_patched.md` as *guides*, not sources of truth.
- Result: `papers/rg-fundamental/main.md` now supports the “RG is definitional” stance with an explicit singular-QM computation plus clarified invariants and bookkeeping structure.
- Sources touched (keys + status changes): none.
- Next: identify/ingest the external “Cristina 2D delta” reference and add one non-preprint standard source for independent validation.

## 2026-02-09 (C15 start)
- Focus: make the “semigroup vs group” point non-metaphorical and deepen the delta thread beyond the single \(T\)-matrix computation.
- Question:
  1. Can we write an explicit coarse-graining map with a visible semigroup law and visible non-invertibility?
  2. Can we re-express the \(2\)D delta interaction as a short-distance boundary condition (self-adjoint extension parameter) to make “scale from a point” intuitive?
- Work: implement an exact Gaussian coarse-graining example (integration = Schur complement), and add a boundary-condition derivation for the 2D delta bound state using the \(K_0\) short-distance expansion.
- Result:
  - `papers/rg-fundamental/main.md` now includes (i) a boundary-condition formulation of the 2D point interaction and (ii) an explicit Gaussian coarse-graining map with a semigroup law and explicit non-invertibility.
  - Rebuilt `papers/rg-fundamental/main.pdf`.
- Sources touched (keys + status changes): none.
- Next:
  1. Identify/ingest the “Cristina 2D delta” reference and align conventions.
  2. Add at least one independent (non-Rivero) validation reference for the 2D delta renormalization (OA if possible; otherwise mark `PENDING`).
  3. Decide whether the Gaussian coarse-graining section should be condensed and promoted into `paper/main.md` (as the concrete witness for “RG is a semigroup”).

## 2026-02-09 (C15 continuation: Tarrach–Manuel identified)
- Focus: locate the “Cristina 2D delta” reference and use it as the independent validation anchor.
- Question: is the intended reference the Phys. Lett. B paper on perturbative renormalization in QM (delta + Aharonov–Bohm), and can we ingest it OA?
- Work:
  - Identified the paper as Cristina Manuel and Rolf Tarrach, arXiv:`hep-th/9309013` / *Phys. Lett. B* 328 (1994) 113.
  - Ingested the arXiv PDF into `sources/9309013-6f2e5cc3.md` and registered `[ManuelTarrach1994PertRenQM]` in `paper/bibliography.md`.
  - Added citations in `paper/main.md` and `papers/rg-fundamental/main.md`.
- Result: the 2D delta computation is now triangulated against an external non-Rivero source; “Cristina’s delta” reference is no longer missing.
- Sources touched (keys + status changes): added `[ManuelTarrach1994PertRenQM]`.
- Next: optionally add a second independent reference (Jackiw/Mead–Godines/Adhikari lineage) if we want more triangulation.

## 2026-02-09 (C13 continuation: stationary phase prefactor)
- Focus: connect the “half-density needs a scale” story to an explicit short-time kernel/prefactor derivation.
- Question: where does the half-density transformation law show up concretely in the stationary-phase approximation?
- Work: added a short section to `papers/planck-area/main.md` deriving the Van Vleck determinant prefactor and interpreting it as a bi-half-density; stated explicitly that choosing a reference half-density is equivalent to choosing a universal \(\text{length}^{d/2}\) scale (area in \(d=4\)).
- Result: the Planck-area draft now directly interfaces with the main paper’s stationary-phase narrative rather than remaining purely programmatic.
- Sources touched (keys + status changes): none.
- Next: tighten the hypotheses around “universal” (what background geometry is allowed) and connect the scale choice to RG language (what runs vs what is fixed).
