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
  - Added `Example E3` (Yang--Mills coupling) as an explicit alternative “dimension sieve” under the H2.5 Diophantine condition.
  - Promoted a condensed version of the delta-halving normalization witness into the main manuscript as `Derivation D3.5` in `paper/main.md`.
- Result: the “universal area scale” claim is now explicitly conditional: `H2.3` is largely a convention until `H2.4` restricts the scalarization gauge freedom to a single global scale, and `H2.5` restricts how that scale may depend on couplings (analytic monomial vs dimensional transmutation).
- Sources touched (keys + status changes): none.
- Next:
  1. Optionally add one more alternative sieve (string tension / \(\alpha'\)) and compare it to the gravity-only and gauge-coupling cases.
  2. If we keep `Derivation D3.5`, consider adding one sentence tying it to half-density kernel composition (without turning the main paper into a half-density paper).

## 2026-02-09 (C13 continuation: why mention string tension?)
- Focus: answer “why string tension?” without letting it displace the half-density-first logic.
- Question: is \(\alpha'\) introduced only as a dimensionful scale, and how does it relate to \(G\) / Planck length?
- Work: added `Example E4` + `Heuristic H2.12` in `papers/planck-area/main.md` showing (i) \(\alpha'\) supplies a background-free area scale directly, (ii) it does not uniquely select \(d=4\) under strict integrality, and (iii) in stringy UV completions \(G_d\) (hence Planck length) is derived from \(\alpha'\) and dimensionless couplings (plus compactification factors).
- Result: “string tension” is not a new foundational postulate; it is one possible *source of the scalarization scale* in H2.4, with gravity/Planck scale either fundamental (gravity-only sieve) or emergent (stringy sieve).
- Sources touched (keys + status changes): none.
- Next: decide whether the paper should treat \(\alpha'\) as an allowed coupling in the Diophantine sieve or keep the focus strictly on “gravity-only → \(d=4\)”.

## 2026-02-09 (Half-density priority: normalization from semigroup)
- Focus: make half-densities operationally prioritary in the main argument by attaching an explicit calculation to the “\(d/2\) exponent”.
- Question: can we see \(t^{-d/2}\) normalization forced purely by half-density composition + semigroup closure (refinement compatibility)?
- Work: added `paper/notes/half-density-kernel-normalization.md` deriving \(B(t)=m/(2t)\) and \(A(t)\propto t^{-d/2}\) from Gaussian semigroup closure in the scalar kernel \(k_t\), interpreted as the half-density scaling exponent.
- Result:
  - one concrete toy computation now exists that ties “square-root Jacobian” to semigroup composition rather than to a priori measure choices, and
  - a condensed version was promoted into the main manuscript as `Derivation D4.1a` in `paper/main.md`.
- Sources touched (keys + status changes): none.
- Next: verify the inserted derivation stays concise and does not drag the manuscript into a full “half-density paper” (details remain in `paper/notes/half-density-kernel-normalization.md`).

## 2026-02-09 (Half-density priority: scalarization gauge)
- Focus: make the “half-densities first” stance explicit in the main manuscript without overcommitting to any Planck-scale identification.
- Question: where exactly does a *universal scale* enter if kernels are intrinsically half-densities?
- Work: added `Heuristic H4.0a` in `paper/main.md` explaining that writing kernels as scalar functions implicitly chooses a reference density/half-density, and that demanding dimensionless scalar amplitudes shifts the \(\text{length}^{d/2}\) weight into that reference choice.
- Result: the main manuscript now separates (i) intrinsic half-density composition from (ii) scalarization conventions and (iii) any universality assumptions about fixing the scalarization scale.
- Sources touched (keys + status changes): none.
- Next: decide whether to add a single forward-pointer sentence from the main manuscript to the dependent Planck-area draft, or keep that discussion entirely out of the cornerstone paper.

## 2026-02-09 (C16 start: near-diagonal scaling as the concrete witness)
- Focus: make the \(\varepsilon^{-d/2}\) factor appear explicitly from near-diagonal scaling rather than as an abstract “half-density weight”.
- Question: can we show, in the simplest coordinates \(y=x+\varepsilon v\), that half-density pullback forces the square-root Jacobian factor used in refinement limits?
- Work: added `Derivation D1.2a` to `papers/planck-area/main.md` isolating the \(|dy|^{1/2}=\varepsilon^{d/2}|dv|^{1/2}\) factor and explaining why scalar representatives must be renormalized by \(\varepsilon^{-d/2}\) to obtain nontrivial \(\varepsilon\to0\) limits (tangent-groupoid style scaling).
- Result: the “need a \(\text{length}^{d/2}\) scale” claim now has a concrete local-coordinate computation attached to it, not just dimensional analysis.
- Sources touched (keys + status changes): none.
- Next: decide whether to add a one-paragraph version of this near-diagonal scaling witness into `paper/main.md` (likely not necessary given D4.0/D4.1a), or keep it confined to the Planck-area follow-up.

## 2026-02-09 (C18 start: 1D/3D contact interactions around the 2D delta)
- Focus: broaden the “RG is definitional” witness by comparing delta/contact interactions across dimensions.
- Question: if 2D is our clean log-running example, what should we say about 3D (scattering length/unitarity) and 1D (richer fixed points on the full line)?
- Work: added Section 5.8 to `papers/rg-fundamental/main.md`:
  - 3D: linear divergence with cutoff, renormalization to a scattering length, and a short note on Wilsonian fixed points (free vs unitarity).
  - 1D: emphasize that while the pure \(\delta\) is finite, the full U(2) contact family has a nontrivial fixed-point set under scaling (Boya--Rivero flow picture) [BoyaRivero1994Contact].
- Result: the delta example is now positioned as the “marginal/log” middle case between “boundary-condition flow” (1D) and “power divergence/scattering length” (3D), making the dimension-dependence of RG structure part of the argument rather than a footnote.
- Sources touched (keys + status changes): none.
- Next: decide whether to add an independent non-Rivero anchor for the 1D U(2) classification (e.g. Albeverio/Kurasov) before polishing for publication.

## 2026-02-09 (C19 start: fixed points as quantization rules)
- Focus: decide whether the 1D fixed-point structure is relevant for the RG paper’s thesis, and if so, express it operationally.
- Question: can RG fixed points for contact interactions be reframed as *quantization rules* (finite-volume spectra / phase-shift quantization)?
- Work: added `Heuristic H1.11` + `Derivation D1.6a` to `papers/rg-fundamental/main.md` showing how scale-invariant boundary conditions give simple momentum quantization conditions on \([0,L]\), and how general point interactions shift such conditions by phases.
- Result: the 1D “rich fixed points” point now has a concrete operational interpretation (spectral quantization), rather than being only an abstract classification.
- Sources touched (keys + status changes): none.
- Next: decide whether to add an independent standard reference for the boundary-condition/point-interaction classification (optional for now).

## 2026-02-09 (C20: boundary RG + 1D delta scattering)
- Focus: make the “1D scaling flow” point computational (not just classification).
- Question: can we show, in one page, how scaling acts on boundary/contact parameters and how fixed points appear directly in spectra/scattering?
- Work:
  - Added `Derivation D1.6b` to `papers/rg-fundamental/main.md` (engineering beta function for the Dirichlet/Neumann mixing parameter \(\lambda\) and identification of Neumann/Dirichlet fixed points).
  - Added `Example E1.1` to `papers/rg-fundamental/main.md` (1D \(\delta\)-potential reflection/transmission and transparent/reflective endpoints as scale limits).
  - Rebuilt `papers/rg-fundamental/main.pdf` and deleted `.aux`/`.log` artifacts after successful generation.
- Result: the 1D thread now has a concrete “boundary RG ↔ S-matrix RG” witness that fits the “RG = compatibility” thesis without pretending a UV subtraction is present in 1D.
- Sources touched (keys + status changes): none.
- Next: decide whether to (i) keep this entirely in the RG follow-up, or (ii) promote a condensed paragraph into `paper/main.md` as a second “RG appears before QFT” witness alongside the 2D delta.

## 2026-02-09 (B00: independent anchors for point interactions)
- Focus: reduce reliance on Rivero preprints for the 1D contact-interaction discussion by adding independent anchors.
- Question: which standard sources best anchor “U(2) family of point interactions” and “delta/contact models as boundary conditions”?
- Work:
  - Added new bibliography keys in `paper/bibliography.md` for Kurasov (distribution theory / generalized coefficients), Bonneau–Faraut–Valent (self-adjoint extensions; AJP + arXiv), and Fülöp–Tsutsui / Tsutsui–Fülöp–Cheon (point interactions; arXiv anchors).
  - Ingested OA arXiv captures into `sources/` for the arXiv-available items.
  - Added Jackiw’s MIT-CTP-1937 delta-potentials note as a pending capture target for an additional 2D/3D delta anchor.
- Result: the 1D “boundary-condition parameter space” thread now has at least one non-Rivero, OA anchor and a clear next target for a 2D/3D delta anchor.
- Sources touched (keys + status changes):
  - Added `[Kurasov1996DiscontinuousTest]`, `[BonneauFarautValent2001SAE]`, `[FulopTsutsui2000Circle]`, `[TsutsuiFulopCheon2002Connection]`, `[Jackiw1991DeltaPotentials]`.
- Next: decide whether to cite Kurasov/Bonneau-Faraut-Valent directly in `papers/rg-fundamental/main.md` (optional until polish), and locate an OA-stable PDF for Jackiw’s 1991 note.

## 2026-02-09 (S00: blackboard note on RG scale as scalarization supply)
- Focus: tighten the hypothesis ladder linking half-densities to a universal area scale without overclaiming.
- Question: if H2.3+H2.4 demand a universal \(\text{length}^{d/2}\) constant, can RG invariants supply it when H2.5 is relaxed?
- Work: wrote `blackboards/2026-02-09-half-density-scale-from-RG.md` clarifying (i) what “\(d\)” refers to in the half-density weight, (ii) the general RG-invariant scale construction \(\Lambda_\ast\), and (iii) why \(d=4\) naturally yields an area scale.
- Result: we now have concrete “promotion candidates” to implement in `papers/planck-area/main.md` (likely as part of `C21`) plus an explicit list of open questions.
- Sources touched (keys + status changes): none (blackboard only).
- Next: promote the RG-invariant scale derivation + \(d\)-bookkeeping paragraph into `papers/planck-area/main.md` and rebuild the PDF.

## 2026-02-09 (C21: promote RG-scale branch into Planck-area draft)
- Focus: make the half-density \(\Rightarrow \text{length}^{d/2}\) scale discussion less programmatic by adding a general RG-invariant scale derivation and explicit \(d\)-bookkeeping.
- Question: can we state, in a single labeled derivation, how RG invariants can supply the scalarization constant (separate from the H2.5 integer-exponent sieve)?
- Work:
  - Added `Heuristic H2.14` (“what is \(d\)?”) and `Derivation D1.6a` (RG-invariant scale from \(\beta(g)\)) to `papers/planck-area/main.md`.
  - Rebuilt `papers/planck-area/main.pdf` and deleted `.aux`/`.log` artifacts after successful generation.
- Result: `papers/planck-area/main.md` now separates two distinct “scale suppliers” cleanly: (i) integer-exponent coupling monomials (H2.5) and (ii) RG-generated invariant scales (outside H2.5), with an explicit \(d=4\Rightarrow\) area specialization *conditional on the bookkeeping choice*.
- Sources touched (keys + status changes): none.
- Next: decide whether to add a short cross-link from `paper/main.md` to this follow-up (one sentence), or keep the cornerstone paper free of Planck-scale discussion.

## 2026-02-09 (Q00: PhysRev-quality pass)
- Focus: referee-style quality review without “herd narrative” drift.
- Question: are the three manuscripts (cornerstone + two dependents) internally clear about what is derived vs assumed, and are the load-bearing claims independently anchorable?
- Work: ran the Q00 checklist and recorded per-manuscript strengths/risks/actionable fixes in `cycles/Q00-execution.md`.
- Result: a concrete queue of `C`/`S`/`B` next steps, with half-densities kept primary and preprint-only claims flagged as heuristic until independently anchored.
- Sources touched (keys + status changes): none (review only).
- Next: start `C22` (implement the clarity/notation/minimal-claim fixes), then `B01` (Jackiw + half-density anchors), then `S01` (H2.5 split blackboard).

## 2026-02-09 (C22: implement Q00 clarity fixes)
- Focus: reduce referee-friction (novelty signposting, notation ambiguity) while keeping half-densities primary.
- Question: can we tighten clarity without importing Planck-scale content into the cornerstone paper?
- Work:
  - `paper/main.md`: added an explicit “Contributions” list; added \(d\)/\(D\) dimension bookkeeping; added a single forward pointer to `papers/planck-area/main.md`; clarified the Euclidean/analytic-continuation reading in the semigroup normalization derivation; changed the schematic QFT integral to \(\int d^D x\).
  - `papers/planck-area/main.md`: added a “minimal claim vs conjecture” abstract paragraph and an explicit dimension-notation note.
  - `papers/rg-fundamental/main.md`: rephrased the abstract thesis as a conditional compatibility schema; anchored the 1D U(2) point-interaction discussion with independent self-adjoint-extension references; expanded Section 7 into a tagged `C`/`S`/`B` checklist.
- Result: the three manuscripts now communicate (i) what is structurally derived vs (ii) what is an extra universality hypothesis more cleanly, and they avoid the most likely “what is \(d\)?” confusion.
- Sources touched (keys + status changes): none (used existing keys only).
- Next: run `B01` (Jackiw + semiclassical/half-density anchors) and then `S01` (H2.5 split blackboard).
