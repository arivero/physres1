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

## 2026-02-09 (C13 continuation: hypothesis ladder + dimension sieve)
- Focus: tighten what is actually *forced* by half-densities vs what needs extra hypotheses to reach “Planck area”.
- Question: is the “universal area scale” claim really dimension-agnostic, or does it single out \(d=4\) only after adding gravity-specific assumptions?
- Work:
  - Rewrote the core claim as a hypothesis ladder in `papers/planck-area/main.md`: half-densities force *no* unique scale, but identifying half-densities with dimensionless scalar amplitudes requires choosing a reference half-density; requiring it to be constant and fixed by couplings introduces a \(\text{length}^{d/2}\) constant.
  - Added a crisp dimension-matching derivation: if that constant is required to be built from Newton’s constant without fractional powers, then \(d=4\) is uniquely selected and the constant has the dimension of an area (Planck area).
- Result: the “half-density → Planck area” direction is now explicitly conditional and falsifiable: it becomes a dimension-selection mechanism rather than a pure dimensional-analysis slogan.
- Sources touched (keys + status changes): none.
- Next: connect this ladder to RG language (constant vs running normalization conventions) and decide whether to keep the gravity-based sieve as the primary selection principle or one filter among many.

## 2026-02-09 (C13 continuation: study each hypothesis separately)
- Focus: modularize the argument so each hypothesis can be studied/accepted/rejected independently.
- Question: which parts are geometry, which parts are conventions, and which parts are genuinely additional “universality” axioms?
- Work: added an explicit hypothesis ledger (H2.1–H2.5) plus a “relaxation tree” of alternative branches in `papers/planck-area/main.md`.
- Result: the draft now cleanly separates (i) half-density composition facts, (ii) scalarization choices, and (iii) the extra selection principles that can single out \(d=4\).
- Sources touched (keys + status changes): none.
- Next: pick one branch to analyze next (e.g. allow background metric; allow fractional powers; replace gravity by another coupling) and see what “special dimensions” it selects.

## 2026-02-09 (C13 continuation: start with H2.5)
- Focus: test `H2.5` (analyticity / no fractional powers of couplings) as a *dimension-selection* principle.
- Question: is `H2.5` too strong, and what weaker/stronger variants are actually motivated?
- Work: refined `H2.5` discussion in `papers/planck-area/main.md` by separating:
  - the “integer-exponent” (integrality/Diophantine) reading,
  - the stronger “perturbative analyticity near zero coupling” reading (nonnegative integer powers),
  - and the relaxed setting where fractional powers are allowed (selection disappears).
- Result: `H2.5` is now treated explicitly as a knob that either produces a sharp sieve (e.g. “gravity-only → \(d=4\)”) or becomes permissive once relaxed.
- Sources touched (keys + status changes): none.
- Next: decide which couplings count as admissible “universal inputs” (e.g. is \(\Lambda\) allowed?), and test at least one additional choice (string tension / other dimensionful couplings) to compare the induced “special dimension” filters.

## 2026-02-09 (C13 continuation: run H2.3 + H2.4)
- Focus: tighten the half-density → universal area-scale hypothesis ladder by analyzing `H2.3` and `H2.4` explicitly (not just as labels).
- Question:
  1. Is `H2.3` (dimensionless scalar representative) a physical requirement or a normalization convention?
  2. What does “background-free constancy” (`H2.4`) mean operationally in kernel composition, and when is it too strong?
- Work:
  - Added `Proposition P1.3` + `Derivation D1.7` showing scalarization is a measure choice and changes of \(\sigma_\ast\) act by multiplication (unitary-equivalent scalar pictures).
  - Added `Derivation D1.8` comparing flat/affine vs metric-derived vs field-derived (dilaton-like) reference half-densities and clarified the “no extra background function” reading of `H2.4`.
  - Added `Heuristic H2.11` framing RG as scale dependence of scalarization (wavefunction renormalization viewpoint).
  - Added `Derivation D1.9` connecting the “square-root delta” normalization in oscillatory integrals to the half-density exponent \(N/2\) and the Born-rule pattern (amplitude squared yields a density).
- Result: the “universal area scale” claim is now explicitly conditional: `H2.3` is largely a convention until `H2.4` restricts the scalarization gauge freedom to a single global scale, and `H2.5` restricts how that scale may depend on couplings (analytic monomial vs dimensional transmutation).
- Sources touched (keys + status changes): none.
- Next:
  1. Add one more explicit “alternative sieve” example (e.g. gauge coupling dimensionality) clearly separated from the half-density sieve.
  2. Decide whether the delta-halving derivation belongs in the main manuscript (briefly) or stays confined to follow-up notes.
