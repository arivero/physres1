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

## 2026-02-09 (S01: split H2.5 on a blackboard)
- Focus: tighten the half-density \(\Rightarrow\) universal scale ladder by preventing “branch leakage” inside H2.5.
- Question: which “no fractional powers” constraint do we actually mean (integrality, perturbative analyticity, or something else), and where does dimensional transmutation sit?
- Work: wrote `blackboards/2026-02-09-h2-5-split.md` separating H2.5a (integrality), H2.5b (analyticity), and a distinct transmutation branch (RG invariant scales), with explicit notes on what “\(D=4\Rightarrow\) area” does and does not mean in each branch.
- Result: we now have a clean branch map plus promotion candidates to tighten `papers/planck-area/main.md` without overclaiming.
- Sources touched (keys + status changes): none (blackboard only).
- Next: execute `B01`, then promote the S01 promotion candidates into the Planck-area draft.

## 2026-02-09 (B01: Jackiw + Van Vleck anchors)
- Focus: reduce preprint dependence by adding independent, OA-stable anchors for (i) delta/contact lore and (ii) semiclassical prefactors.
- Question: can we capture an OA Jackiw source for 2D/3D delta potentials and a primary Van Vleck anchor for semiclassical prefactors?
- Work:
  - Ingested an OA Jackiw PDF mirror into `sources/` and updated `[Jackiw1991DeltaPotentials]` status in `paper/bibliography.md`.
  - Added `[VanVleck1928Correspondence]` (PNAS 1928; DOI `10.1073/pnas.14.2.178`) via PMC capture and registered it in `paper/bibliography.md`.
- Result: the bibliography ledger now contains independent anchors suitable for referee-facing citations; the remaining work is to thread them into manuscript citation points during the next promotion cycle.
- Sources touched (keys + status changes):
  - `[Jackiw1991DeltaPotentials]` moved `PENDING` → acquired.
  - Added `[VanVleck1928Correspondence]`.
- Next: start the next content promotion cycle (`C23`) to integrate the S01 branch-map statements + add the new citations at the Van Vleck/2D-delta touchpoints.

## 2026-02-09 (C23: promote S01 split + thread new anchors)
- Focus: tighten the half-density \(\Rightarrow\) scale hypothesis ladder and reduce referee friction by threading independent anchors into the exact touchpoints.
- Question: can we make the “no fractional powers” sieve unambiguous (integrality vs analyticity vs transmutation) and cite standard sources where the semiclassical/delta lore is invoked?
- Work:
  - `papers/planck-area/main.md`: split H2.5 into H2.5a (integrality) and H2.5b (perturbative analyticity), and made dimensional transmutation an explicitly separate branch; added `[VanVleck1928Correspondence]` at the semiclassical prefactor derivation.
  - `paper/main.md`: added `[VanVleck1928Correspondence]` at `Derivation D4.3` and `[Jackiw1991DeltaPotentials]` at the Appendix 10.5 entry point.
  - `papers/rg-fundamental/main.md`: added `[Jackiw1991DeltaPotentials]` as an independent anchor for the 2D/3D delta discussion.
- Result: the half-density “universal scale” ladder now has explicit branch control, and the key folklore touchpoints have independent anchors suitable for referee-facing citations.
- Sources touched (keys + status changes): none (used B01 additions).
- Next: optionally run a quick Q-pass (`Q01`) to sanity-check claim/citation placement after these promotions.

## 2026-02-10 (Q01: post-promotion quality pass)
- Focus: fast claim/citation/notation sanity after B01/S01/C23.
- Question: did the recent promotions introduce any citation mismatch, dimension ambiguity, or overclaiming?
- Work: recorded a short referee-style review and actionable queue in `cycles/Q01-execution.md`.
- Result: the next concrete steps are now: (i) `S` convention-map note for delta normalizations, (ii) `B` ingest the intended Cristina 2D-delta reference, (iii) add one modern semiclassical-propagator reference (OA or `PENDING`) to support the prefactor formula beyond attributional anchors.
- Sources touched (keys + status changes): none (review only).
- Next: execute the next `S` cycle on the half-density priority thread (default: the convention-map blackboard), then return to `C`.

## 2026-02-10 (S02: scalarization gauge running ↔ wavefunction renormalization)
- Focus: explore whether the “scalarization gauge” for half-densities admits a useful RG interpretation (without category errors).
- Question: can a scale-dependent scalarization convention \(\sigma_\ast(\mu)\) be viewed as a \(Z(\mu)\) factor on scalar representatives, and does that sharpen the half-density \(\Rightarrow\) universal scale story?
- Work: wrote `blackboards/2026-02-10-scalarization-gauge-running.md` formalizing the bookkeeping identification \(\sigma_\ast(\mu)\sim Z(\mu)^{1/2}\sigma_0\) and separating geometric density weights from anomalous RG scaling.
- Result: two promotion candidates were extracted (but not promoted yet): a short bridge sentence for the Planck-area draft and a guardrail sentence preventing geometric/RG conflation.
- Sources touched (keys + status changes): none (blackboard only).
- Next: return to a `C` cycle on the half-density priority thread if the promotion candidates are deemed stable.

## 2026-02-10 (C24: promote scalarization-running note)
- Focus: tighten the Planck-area hypothesis ladder by making the “RG as scalarization running” remark explicit and adding a short branch summary.
- Question: can we state, in one labeled derivation, the sense in which a running scalarization convention is equivalent to a \(Z(\mu)\) factor, without reifying conventions as physics?
- Work: updated `papers/planck-area/main.md` with a branch-summary paragraph (end of Section 3.2), `Derivation D1.8a` (scalarization running \(\leftrightarrow Z(\mu)\)), and a guardrail `Heuristic H2.11a` (geometric weight \(\neq\) anomalous dimension).
- Result: the draft now has a precise bookkeeping statement connecting the half-density scalarization gauge to the standard “wavefunction renormalization” language, while keeping physical content tied to RG invariants.
- Sources touched (keys + status changes): none.
- Next: optionally start a bibliography cycle to find an OA modern semiclassical-propagator reference for the Van Vleck prefactor formula (beyond heritage/attribution anchors).

## 2026-02-10 (S03: interpret H2.5b analyticity)
- Focus: remove ambiguity in H2.5b (“perturbative analyticity”) when couplings are dimensionful.
- Question: can H2.5b be stated without smuggling in explicit \(\mu\)-dependence, and how does it relate to the monomial sieve vs transmutation?
- Work: wrote `blackboards/2026-02-10-h2-5b-meaning.md` defining a concrete reading (“analytic in dimensionless couplings \(\hat g(\mu)\)”) and showing that \(\mu\)-independent dimensionful constants then require either an engineering-dimension monomial (sieve) or non-analytic transmutation (outside H2.5b).
- Result: extracted two promotion candidates to tighten H2.5b language in `papers/planck-area/main.md` without overclaiming.
- Sources touched (keys + status changes): none (blackboard only).
- Next: promote the stable clarification sentence(s) into the Planck-area draft in the next `C` cycle.

## 2026-02-10 (C25: clarify H2.5b in the draft)
- Focus: remove the remaining ambiguity in H2.5b inside `papers/planck-area/main.md`.
- Question: how do we state “perturbative analyticity” for dimensionful couplings without accidentally introducing explicit \(\mu\)-dependence?
- Work: added `Heuristic H2.5b1` explaining that analyticity is naturally in dimensionless \(\hat g(\mu)\), and that \(\mu\)-independent universal constants then require either the monomial sieve (analytic, no explicit \(\mu\)) or non-analytic transmutation (outside H2.5b).
- Result: the H2.5 branch structure is now explicit enough that readers can see exactly where \(D=4\) enters (gravity-only sieve) versus where it does not (fractional powers / transmutation).
- Sources touched (keys + status changes): none.
- Next: per cadence, follow with one `B` cycle (bibliography search/ingest) when network is available to find a modern OA semiclassical-prefactor reference; otherwise proceed with local-only `S` tasks.

## 2026-02-10 (S04: delta convention map)
- Focus: pin the 2D/3D delta-contact loop integrals and scheme constants in *our* conventions (to preempt factor objections).
- Question: do the \(I_d(E;\Lambda)\) asymptotics and imaginary parts match the formulas used in `papers/rg-fundamental/main.md` / `paper/main.md`, and how does the \(2e^{-\gamma}\) constant map to finite-subtraction scheme dependence?
- Work: wrote `blackboards/2026-02-10-delta-convention-map.md` with explicit cutoff integrals, SymPy checks (commands + outputs), and the scheme-constant ↔ transmutation-scale rescaling map.
- Result: the 2D/3D loop formulas match once the \(1/(2\pi)^d\) measures and log-branch choice are fixed; scheme dependence is cleanly a rescaling of \(\kappa_\ast\) (hence of the boundary-length \(R\)).
- Sources touched (keys + status changes): none (study only).
- Next: per cadence, return to `C` to optionally promote a short “convention map” paragraph into `papers/rg-fundamental/main.md` (or keep it blackboard-only until the Cristina 2D-delta reference is ingested).

## 2026-02-10 (C26: promote S04 convention map into RG note)
- Focus: reduce “up to conventions” objections in the singular-QM witness by pinning measures, asymptotics, and scheme constants inside the RG note itself.
- Question: can we state the convention map *succinctly* without derailing the compatibility narrative?
- Work:
  - Added Section 5.9 (“Convention Map”) to `papers/rg-fundamental/main.md` fixing the \((2\pi)^{-d}\) measure conventions and quoting the 2D/3D cutoff asymptotics.
  - Added an explicit sentence stating that finite subtraction shifts rescale \(\kappa_\ast\) (hence \(R\)) while leaving the beta function unchanged.
  - Refreshed the forward queue in Section 7 to remove items completed by `B01`/`S04`.
- Result: the RG note is now self-contained about the load-bearing convention choices and makes the scheme dependence of \(2e^{-\gamma}\) (as a finite log constant) explicit.
- Sources touched (keys + status changes): none.
- Next: start a new `S` cycle on “delta as a half-density kernel / identity operator” and how that interfaces with the scalarization-gauge story (blackboard first, then promote).

## 2026-02-10 (S05: delta as a bi-half-density kernel)
- Focus: tighten the half-density-first story by making the “delta” objects precise as Schwartz kernels on half-densities (not scalar functions).
- Question: can we extract the \(\varepsilon^{-d/2}\) normalization exponent directly from the identity kernel, and connect it cleanly to the scalarization-gauge scale \(L_\ast^{d/2}\)?
- Work: wrote `blackboards/2026-02-10-delta-as-half-density-kernel.md` deriving the identity kernel \(\delta(x-y)|dx|^{1/2}|dy|^{1/2}\), its near-diagonal scaling \(\varepsilon^{-d/2}\), and the scalarization identity \(k_{\mathrm{Id}}=L_\ast^d\delta\) under \(\sigma_\ast=L_\ast^{-d/2}|dx|^{1/2}\); also recorded the rank-one contact-kernel factorization \(V=g|0\rangle\langle0|\) as a tensor product of two distributional half-densities.
- Result: we now have a clean, coordinate-free “delta” witness that supports the half-density normalization exponent and clarifies what “\(\delta^{1/2}\)” can safely mean in operator/kernel terms.
- Sources touched (keys + status changes): none (study only).
- Next: promote the stable paragraph(s) into `papers/planck-area/main.md` (and optionally add a one-line clarifier in `paper/main.md` if it improves the cornerstone narrative without bloating it).

## 2026-02-10 (C27: promote S05 delta-kernel witness)
- Focus: strengthen the Planck-area draft’s half-density scaling section with the cleanest concrete example: the half-density identity (delta) kernel.
- Question: can we make the \(\varepsilon^{-d/2}\) exponent and the scalarization-scale \(L_\ast^{d/2}\) appear in one short labeled derivation without adding distribution-theory baggage?
- Work: added `Derivation D1.2b` to `papers/planck-area/main.md` stating the identity kernel \(K_{\mathrm{Id}}=\delta^{(d)}(x-y)|dx|^{1/2}|dy|^{1/2}\), computing its near-diagonal scaling, and showing how choosing \(\sigma_\ast=L_\ast^{-d/2}|dx|^{1/2}\) makes the scalar representative \(k_{\mathrm{Id}}=L_\ast^d\delta^{(d)}\) dimensionless.
- Result: the draft now has an explicit “delta” witness that (i) lives naturally in the half-density formalism and (ii) exhibits the same normalization exponent as the general near-diagonal scaling lemma.
- Sources touched (keys + status changes): none.
- Next: per cadence, run policy checks + commit; then pick the next study target (likely tightening the half-density \(\Rightarrow\) universal area-scale branch conditions, or a B-cycle for the semiclassical-prefactor modern anchor when network is available).

## 2026-02-10 (S06: admissible couplings behind H2.5)
- Focus: keep the half-density \(\Rightarrow\) scale ladder honest by stating what “counts as a coupling” in H2.5 and by separating coordinate-dependent vs invariant sieve statements.
- Question: is “no fractional powers of couplings” a real hypothesis, or just a coordinate artifact unless we fix an admissibility rule?
- Work: wrote `blackboards/2026-02-10-h2-5-coupling-admissibility.md` clarifying that H2.5a (integrality/monomial sieve) is coordinate dependent unless one fixes an admissibility rule, while H2.5b (analyticity at a base point) is stable under analytic reparametrizations; proposed a tentative Rule A excluding scheme parameters (\(\mu\), cutoffs, finite subtraction constants) and scalarization gauges from the coupling set; and recorded how admitting \(\Lambda_d\) or \(\alpha'\) changes the “dimension sieve” without changing half-density facts.
- Result: we now have a concrete, promotable “admissible couplings” knob to keep H2.5 meaningful and to avoid mixing the gravity-only sieve with other scale suppliers.
- Sources touched (keys + status changes): none (study only).
- Next: return to a content cycle to promote Rule A + the coordinate-(in)variance clarification into `papers/planck-area/main.md`.

## 2026-02-10 (C28: promote admissible-couplings knob)
- Focus: make H2.5 “no fractional powers” non-vacuous in the Planck-area draft by stating an admissibility rule for which symbols count as couplings.
- Question: can we block the trivial loophole “rename a root as a coupling” without over-formalizing theory space?
- Work: added `Heuristic H2.7a` to `papers/planck-area/main.md`, stating a lightweight admissibility convention: couplings come from local action coefficients after canonical field normalization; only analytic reparametrizations near a base point are allowed; and \(\mu\)/cutoffs/finite subtraction constants and the scalarization scale \(L_\ast\) are excluded from the coupling set.
- Result: H2.5a is now explicitly presented as coordinate dependent unless the admissibility convention is fixed, while H2.5b (analyticity) is flagged as the more invariant “no roots” form.
- Sources touched (keys + status changes): none.
- Next: policy check + commit; then consider an optional `Q02` pass (redundancy/notation) or proceed to `B02` when network allows.

## 2026-02-10 (Q02: quality pass after C26–C28)
- Focus: referee-style sanity check on the Planck-area and RG follow-up drafts after the delta/identity-kernel and admissible-couplings additions.
- Question: did the recent clarifiers introduce redundancy, hidden assumptions, or new “convention fight” surfaces?
- Work: recorded findings + action queue in `cycles/Q02-execution.md`.
- Result: the drafts remain hypothesis-clean; the main open blocker is still `B02` (modern semiclassical prefactor anchor), plus optional future compression of D1.2a/D1.2b if Section 3 grows.
- Sources touched (keys + status changes): none.
- Next: run `B02` when network is available; optionally do a small `C` compression pass later.

## 2026-02-10 (C29: tiny clarity tweaks after Q02)
- Focus: incorporate the lowest-friction Q02 readability fixes into the Planck-area draft without churning content.
- Question: can we preempt redundancy/confusion between the general near-diagonal scaling lemma and the identity-kernel witness?
- Work: in `papers/planck-area/main.md`, added (i) a one-sentence cross-pointer from D1.2a to D1.2b, and (ii) a one-sentence disclaimer that “canonical normalization” in the admissible-couplings rule is itself a convention knob.
- Result: the draft reads more intentionally (general lemma → canonical example) while keeping the hypothesis ladder unchanged.
- Sources touched (keys + status changes): none.
- Next: attempt `B02` when network/DNS permits; otherwise continue with local `S` cycles (e.g. transmutation scale supplier from compatibility).

## 2026-02-10 (S07: \u03b4(f') on the critical set and stationary-phase weights)
- Focus: clarify the “delta” objects behind the “stationary extremes of action” argument in a half-density-first way.
- Question: in the clean finite-dimensional, nondegenerate case, how does \(\delta(f')\) concentrate on critical points and how do its weights relate to the stationary-phase prefactor?
- Work: wrote `blackboards/2026-02-10-delta-on-critical-set.md` deriving \(\delta(\varphi)=\sum \delta_{x_i}/|\varphi'(x_i)|\), specializing to \(\delta(f')=\sum \delta_{x_i}/|f''(x_i)|\), defining a distributional half-density \(\delta^{1/2}_f\sim \sum \delta_{x_i}/\sqrt{|f''(x_i)|}\,|dx|^{1/2}\), and noting that stationary phase produces the same \(1/\sqrt{|f''|}\) amplitude weights.
- Result: we now have a clean bridge between (i) “stationarity as a delta-supported density” and (ii) “amplitudes as half-densities whose squared modulus gives densities”, without invoking any transcript or functional-integral claims as theorems.
- Sources touched (keys + status changes): none (study only).
- Next: open a content cycle to promote a short paragraph into `paper/main.md` (and optionally a longer note in `paper/notes/`), keeping it citation-light and hypothesis-labeled.

## 2026-02-10 (C30: promote \u03b4(f') weights into the main paper)
- Focus: strengthen Section 5.5’s “extremal measures” analogy by making the critical-point weights explicit and tying them to stationary-phase prefactors.
- Question: can we state the nondegenerate identity \(\delta(f')=\sum \delta_{x_i}/|f''(x_i)|\) and its square-root relation to stationary-phase amplitudes in a few lines?
- Work: added `Derivation D3.5a` to `paper/main.md` immediately after `Derivation D3.5`, stating the nondegenerate \(\delta(f')\) identity and noting that stationary phase yields the corresponding amplitude weights \(1/\sqrt{|f''|}\).
- Result: the manuscript now makes explicit (in the finite-dimensional sanity-check setting) why “amplitudes are half-densities; probabilities are densities” is the natural scaling pattern behind the square-root Jacobian exponent.
- Sources touched (keys + status changes): none.
- Next: policy check + commit; then either attempt `B02` again if DNS recovers, or run an `S` cycle on the multi-dimensional \(\delta(\nabla f)\) / Van Vleck determinant link.

## 2026-02-10 (S08: \u03b4(\u2207f) determinant weights and Van Vleck structure)
- Focus: extend the \(\delta(f')\) critical-set identity to \(n\) dimensions and clarify how its determinant weights mirror the semiclassical Van Vleck prefactor.
- Question: what is the precise multi-dimensional form of \(\delta(\nabla f)\), and why does stationary phase produce the square-root of the same determinant?
- Work: wrote `blackboards/2026-02-10-delta-gradient-and-van-vleck.md` recording the vector identity \(\delta^{(n)}(F)=\sum \delta^{(n)}(x-x_i)/|\det DF|\), specializing to \(F=\nabla f\) (Hessian determinant), and noting the stationary-phase amplitude weights \(1/\sqrt{|\det \mathrm{Hess}\,f|}\); also sketched (structurally) how mixed Hessians like Van Vleck’s arise after eliminating intermediate variables (Schur complements/Jacobi fields).
- Result: we now have a clean determinant-level bridge between “delta on stationary conditions” and the semiclassical prefactor, in a form that can be promoted into a short `paper/notes/` lemma or a one-sentence clarifier near D4.3 if desired.
- Sources touched (keys + status changes): none (study only).
- Next: decide whether to promote a one-sentence clarifier into `paper/main.md` near D4.3, or keep this determinant story in `paper/notes/` until `B02` is unblocked.

## 2026-02-10 (C31: Schur-complement template for Van Vleck)
- Focus: make the “mixed Hessian determinant after eliminating intermediates” mechanism explicit in a finite-dimensional model.
- Question: can we show, without invoking functional determinants, why integrating out intermediate variables naturally produces (i) determinant prefactors and (ii) Schur-complement-corrected mixed endpoint Hessians?
- Work: added `paper/notes/van-vleck-schur-complement.md` with an exact quadratic Gaussian-elimination computation and the corresponding block-matrix (Schur complement) formulas, plus a stationary-phase remark.
- Result: we now have a self-contained algebraic template that explains the emergence of Van Vleck–type mixed Hessian determinants after time slicing/elimination.
- Sources touched (keys + status changes): none.
- Next: commit; optionally add a one-line pointer near `Derivation D4.3` once `B02` is available (so the semiclassical prefactor has a modern anchor).

## 2026-02-10 (Q03: main-paper sanity check after D3.5a)
- Focus: quick referee-style check that Section 5.5 stayed concise after adding D3.5a.
- Question: does the new delta-weights remark read as clarification (not as an overclaim)?
- Work: reviewed Section 5.5 and recorded findings in `cycles/Q03-execution.md`.
- Result: D3.5/D3.5a read as one unit and remain short; no edits needed.
- Sources touched (keys + status changes): none.
- Next: `B02` when DNS/network works; otherwise continue local derivations.

## 2026-02-10 (B02: modern semiclassical prefactor anchor)
- Focus: add one modern OA reference that explicitly states the Van Vleck propagator prefactor formula, to complement the heritage `[VanVleck1928Correspondence]` citation.
- Question: can we cite an OA source that writes the Van Vleck propagator/prefactor and “Van Vleck density” explicitly (so D4.3 has a modern anchor)?
- Work:
  - Added `[deGosson2018ShortTimePropagators]` (Entropy 2018; PMCID `PMC7512447`) to `paper/bibliography.md`.
  - Threaded the citation into `paper/main.md` at `Derivation D4.3`.
- Result: `Derivation D4.3` is now supported by both an early Van Vleck tradition anchor and a modern explicit OA formula reference.
- Sources touched (keys + status changes): added `[deGosson2018ShortTimePropagators]` (OA via PMC; captured in `sources/de-gosson-2018-a2bad87d.md`).
- Next: optional tiny `C` pass to add a one-sentence pointer to `paper/notes/van-vleck-schur-complement.md` near D4.3 for referee-friendliness.

## 2026-02-10 (S09: point interaction as half-density kernel)
- Focus: unify the delta/contact RG witness with the half-density-first kernel calculus.
- Question: what is the coordinate-free kernel of a point interaction, and how does its scaling clarify where a physical length scale can enter upon scalarization?
- Work: wrote `blackboards/2026-02-10-point-interaction-as-half-density-kernel.md` formulating the point interaction as a rank-one operator \(g|0\rangle\langle0|\) with kernel \(g\,\delta(x)\delta(y)|dx|^{1/2}|dy|^{1/2}\), and checking the dilation scaling of the point-supported half-density \(\delta(x)|dx|^{1/2}\) to make the \(d/2\) exponent explicit; recorded a conditional interpretation that RG invariants (e.g. \(\kappa_\ast\) in 2D) can supply scalarization scales if one adds a universality hypothesis, keeping convention vs physics separation explicit.
- Result: we now have a concrete “delta/contact” bridge that reinforces the half-density priority thread without mixing it with RG running as a category error.
- Sources touched (keys + status changes): none (study only).
- Next: promote a short remark into `papers/rg-fundamental/main.md` (and optionally a bridge sentence into `papers/planck-area/main.md`) if it reads cleanly.

## 2026-02-10 (C32: promote point-interaction half-density remark)
- Focus: make the point-interaction kernel statement explicit in the RG follow-up draft to reduce “delta as a scalar function” confusion.
- Question: can we add a minimal half-density kernel remark without derailing the RG computation narrative?
- Work: added `Heuristic H1.12` to `papers/rg-fundamental/main.md`, writing the point interaction as a rank-one operator \(g|0\rangle\langle0|\) with kernel \(g\,\delta(x)\delta(y)|dx|^{1/2}|dy|^{1/2}\), and explicitly separating canonical half-density kernels from scalarization conventions (and from RG-invariant physical scales).
- Result: the RG note now contains a coordinate-free kernel statement that aligns the delta witness with the repo’s half-density-first stance.
- Sources touched (keys + status changes): none.
- Next: commit; then decide whether to start a new short draft unifying “delta objects” (identity kernel, critical-set delta, point interaction) or keep promoting small bridges into existing drafts.

## 2026-02-10 (C33: new draft unifying delta objects)
- Focus: create a coherent synthesis note collecting the repo’s three main “delta” roles under the half-density-first viewpoint.
- Question: can we unify (i) the identity delta kernel, (ii) \(\delta(\nabla f)\) concentration on stationary points, and (iii) point interactions \(g|0\rangle\langle0|\) into one consistent semantics?
- Work: started `papers/delta-objects/main.md`, including (a) the identity kernel as a bi-half-density with the explicit near-diagonal \(\varepsilon^{-d/2}\) scaling computation, (b) the nondegenerate identities for \(\delta(f')\) and \(\delta^{(n)}(\nabla f)\) with determinant weights, and (c) the rank-one point-interaction kernel as a bi-half-density distribution; kept the functional-integral extension explicitly heuristic.
- Result: we now have a dedicated bridge draft that can later be merged into an appendix or spun into a standalone short note, and it is not just an outline (it contains explicit computations).
- Sources touched (keys + status changes): none.
- Next: commit; then start a QFT-oriented study cycle extending the half-density-first stance beyond QM/statics (e.g. propagators as bi-half-densities, BV half-densities).

## 2026-02-10 (S10: half-densities in QFT + distribution toolbox for extremals)
- Focus: extend the “half-density prioritary” thread into QFT (spacetime propagators + densitized fields) and clarify which delta/distribution objects correspond to “extremal conditions”.
- Question: can we (i) express QFT propagators canonically as bi-half-density kernels, and (ii) separate \(\delta\), \(\delta'\), and \(\delta(f')\) so “delta for extremals” stays unambiguous?
- Work:
  - Wrote/extended `blackboards/2026-02-10-half-densities-in-qft.md` with the densitized scalar field computation \(\psi=|g|^{1/4}\phi\), an explicit coordinate formula for the conjugated kinetic operator, and the interpretation of propagators as bi-half-density kernels; flagged BV half-densities as a structural theme (heuristic here).
  - Added `blackboards/2026-02-10-distribution-theory-for-extremals.md` distinguishing \(\delta\) (evaluation), \(\delta'\) (derivative evaluation), and \(\delta(f')\) (stationary-set localization), and recording weak Euler–Lagrange as a distributional equality (corner/jump terms appear automatically).
- Result: half-densities remain the organizing representation in QFT kernels as well as QM kernels; and we now have a compact distribution-theory “delta dictionary” to prevent conflations when discussing stationary/extremal constraints.
- Sources touched (keys + status changes): none (study only; BV anchors queued).
- Next: `C34` start `papers/half-density-qft/main.md` (wave 1: densitized scalar field + kernel semantics), and `C35` tighten `papers/delta-objects/main.md` with an explicit \(\delta(f')\) vs \(\delta'\) clarifier + weak Euler–Lagrange corner remark.

## 2026-02-10 (C34: start half-densities-in-QFT follow-up draft)
- Focus: create a dependent follow-up draft that makes the half-density kernel calculus explicit for QFT spacetime propagators, with one worked computation (densitized scalar field).
- Question: can we state QFT propagators canonically as bi-half-density kernels and separate “canonical objects” from scalarization conventions (e.g. \(\sqrt{|g|}\))?
- Work:
  - Added `papers/half-density-qft/main.md` (wave 1) with a worked densitized scalar field computation \(\psi=|g|^{1/4}\phi\), an explicit coordinate formula for the conjugated Laplacian on half-densities, and the propagator kernel written as a canonical bi-half-density.
  - Updated `papers/README.md` to list the new draft (and the delta-objects draft).
- Result: the repo now has a concrete QFT-facing follow-up paper that extends the half-density-first stance beyond QM kernels, while keeping BV/field-space themes explicitly “outlook only” pending independent anchors.
- Sources touched (keys + status changes): none.
- Next: a short `Q` pass for concision/overreach, then `C35` to tighten `papers/delta-objects/main.md` with a \(\delta(f')\) vs \(\delta'\) clarifier and a weak Euler–Lagrange/corners bridge.

## 2026-02-10 (Q04: quality pass on half-density QFT draft)
- Focus: quick referee-style check of `papers/half-density-qft/main.md` to ensure wave-1 scope, conservative phrasing, and clean separation of canonical kernels vs scalarization conventions.
- Findings: the draft stays concise; the densitized-field derivation is explicit; BV is contained as outlook only; one minor wording risk (“precisely”) is queued as an optional micro-edit.
- Action queue:
  - `C`: optional soften “precisely” → “appear as diagonal-supported distributions” and optionally add a one-line relation between scalar Green functions (with \(d^Dx\sqrt{|g|}\)) and the half-density Green kernel (with \(d^Dx\)).
  - `B`: if BV is promoted, open a bibliography cycle and ingest authoritative anchors.

## 2026-02-10 (C35: clarify \u03b4(f') vs \u03b4' and weak Euler\u2013Lagrange in delta-objects draft)
- Focus: resolve “which delta?” ambiguity in `papers/delta-objects/main.md`, especially for extremal conditions in Lagrangian mechanics.
- Work: added a short subsection distinguishing \(\delta(f')\) (delta applied to a derivative constraint, localizing stationary points) from \(\delta'\) (derivative of the delta distribution, probing derivatives of test functions), and added a brief weak Euler\u2013Lagrange bridge noting how corners/impulses generate delta terms automatically.
- Result: the delta-objects synthesis note now cleanly separates stationary-set deltas from derivative-of-delta probes, aligning the “delta for extremals” language with distribution theory.
- Sources touched (keys + status changes): none.

## 2026-02-10 (Q05: review delta-objects clarifier)
- Focus: quick referee-style pass on `papers/delta-objects/main.md` after adding the \(\delta(f')\) vs \(\delta'\) distinction.
- Findings: the clarifier works and the half-density spine remains intact; one minor precision tweak is queued for §3.4 (corners/jumps often yield \(\delta\)-type terms, while \(\delta'\) typically appears at higher distributional order).
- Action queue:
  - `C`: optional micro-edit in `papers/delta-objects/main.md` §3.4 to soften the \(\delta'\) claim (and optionally add a one-line pointer to `blackboards/2026-02-10-distribution-theory-for-extremals.md`).
  - `S`: if needed, do an explicit toy corner/jump computation in a blackboard note.

## 2026-02-10 (C36: micro-edit half-density QFT draft kernel dictionary)
- Focus: small clarity/precision improvements in `papers/half-density-qft/main.md` (wave 1).
- Work: softened abstract wording about counterterms/contact terms to “distributions supported on the diagonal”, and added an explicit relation between the scalar Green function \(G_g\) (defined with the \(\sqrt{|g|}\,d^Dx\) pairing) and the half-density Green kernel \(\widetilde G\): \(\widetilde G=|g|^{1/4}G_g|g|^{1/4}\).
- Result: the QFT follow-up draft now makes the “this is mostly a convention change” dictionary explicit, reducing the chance of measure/delta-normalization confusion.
- Sources touched (keys + status changes): none.

## 2026-02-10 (C37: soften \u03b4' corner phrasing in delta-objects)
- Focus: implement the minor precision tweak queued by `Q05` in `papers/delta-objects/main.md` §3.4.
- Work: softened the corner/jump remark so it refers to delta kernels and their derivatives (\(\delta,\delta',\ldots\)) depending on distributional order, and added a pointer to `blackboards/2026-02-10-distribution-theory-for-extremals.md`.
- Result: the synthesis note no longer suggests \(\delta'\) is the generic corner term, while preserving the “extremals are distributional” message.
- Sources touched (keys + status changes): none.

## 2026-02-10 (S11: corners/impulses as explicit \u03b4 defects in weak Euler\u2013Lagrange)
- Focus: one explicit toy computation showing how corners/jumps generate \(\delta\) terms in distributional Euler–Lagrange, and when \(\delta'\) can appear (higher distributional order).
- Work: added `blackboards/2026-02-10-corners-and-impulses-weak-euler-lagrange.md` deriving:
  - a corner (jump in \(\dot q\)) implies \(\ddot q\sim (v_+-v_-)\delta(t-t_\ast)\),
  - for \(L=\frac{m}{2}\dot q^2\), extremality forces \(v_+=v_-\),
  - a delta forcing in time produces a controlled jump \(m(v_+-v_-)=J\),
  - \(\delta'\) arises for discontinuous \(q\) (or differentiated impulses / higher-derivative actions).
- Result: we now have a concrete “worked corner” computation that can be cited if we later promote the corners/impulses thread beyond a remark.
- Sources touched (keys + status changes): none.

## 2026-02-10 (S12: contact loop integrals in 1D/2D/3D)
- Focus: record the explicit cutoff loop integrals \(I_d(E;\Lambda)\) controlling contact-interaction renormalization in \(d=1,2,3\) spatial dimensions.
- Work: added `blackboards/2026-02-10-contact-loop-integrals-1d-2d-3d.md` with consistent normalization and the 1D (finite), 2D (log divergent), and 3D (linear divergent) asymptotics, including the imaginary parts from the \(+i0\) prescription.
- Result: we now have a compact “dimension table” for delta/contact divergences that can be promoted into `papers/rg-fundamental/main.md` to clarify why 2D is the cleanest log-RG witness while 3D is power-subtraction and 1D simple \(\delta\) is finite.
- Sources touched (keys + status changes): none.

## 2026-02-10 (C38: fix 3D \(I_3\) sign/prefactors in RG draft + S12 note)
- Focus: resolve a convention/sign inconsistency in the 3D contact loop integral (\(+i0\) prescription) and align the S12 blackboard normalization with the RG draft’s convention map.
- Work:
  - Corrected the imaginary sign in the 3D loop integral \(I_3(E;\Lambda)\) in `papers/rg-fundamental/main.md` (§5.8.1 and §5.9) and adjusted the displayed scattering-length parameterization accordingly.
  - Added a one-line reminder of \(1/(x+i0)=\mathrm{PV}(1/x)-i\pi\delta(x)\) in the convention map.
  - Fixed missing factors of 2 in `blackboards/2026-02-10-contact-loop-integrals-1d-2d-3d.md` (1D and 3D prefactors).
- Result: the RG draft and the supporting study note now agree on the 2D/3D conventions, and the 3D imaginary sign matches the \(+i0\) rule.
- Sources touched (keys + status changes): none.

## 2026-02-10 (Q06: check RG draft consistency after 3D sign fix)
- Focus: quick referee-style consistency check of `papers/rg-fundamental/main.md` after correcting the 3D \(I_3\) imaginary sign.
- Findings: §5.8.1 and §5.9 now agree on the 3D sign/prefactors; no remaining occurrences of the old \(+i\) term were found; the 3D scattering-length parameterization is consistent with the corrected convention (up to overall \(T\) normalization).
- Action queue: none required for correctness.

## 2026-02-10 (S13: scale-sieve note: gravity-only vs \u03b1' allowed)
- Focus: study which admissible universal couplings can supply the half-density scalarization scale \(\text{length}^{D/2}\) under an “integer powers only” sieve, clarifying the string-tension/area-scale logic.
- Work: added `blackboards/2026-02-10-scale-sieve-gravity-vs-alpha-prime.md` deriving:
  - gravity-only \((G_D)^n\) forces \(D=4\) (no fractional powers),
  - \(\alpha'\)-allowed \((\alpha')^m\) forces \(D\equiv0\pmod 4\) via \((\alpha')^{D/4}\),
  - mixed \((G_D)^n(\alpha')^m\) gives a dimension-matching constraint but no unique \(D\) without further admissibility rules.
- Result: we now have a clean “sieve comparison” block ready to promote into `papers/planck-area/main.md` without importing string dynamics.
- Sources touched (keys + status changes): none.

## 2026-02-10 (Q07: review H2.5/H2.7 sieve examples in planck-area draft)
- Focus: referee-style pass on `papers/planck-area/main.md` around H2.5/H2.7 and Examples E1–E4 to ensure hypotheses are cleanly separated and \(\alpha'\) is framed as an admissibility variant.
- Findings: the knob separation is strong; “gravity-only ⇒ \(d=4\)” is correctly scoped; \(\alpha'\) is correctly presented as changing the sieve outcome (dimensions divisible by 4), but could be rephrased slightly to reduce “string-theory-true” overtones.
- Action queue:
  - `C`: optional micro-edit to reframe Example E4 as “universal area parameter admitted” (string as example), keeping UV-completion remarks heuristic/outlook.
  - `B`: only if the UV-completion scaling becomes load-bearing, ingest an authoritative anchor.

## 2026-02-10 (C39: anti-herd micro-edit of \u03b1' sieve example in planck-area draft)
- Focus: implement the Q07 action item by reframing the \(\alpha'\) example as an admissibility knob (“a universal area parameter \(\alpha_\ast\) is admitted”), with string theory as a parenthetical example.
- Work: updated `papers/planck-area/main.md` Example E4 to use \(\alpha_\ast\) generically (keeping the \(d\equiv0\pmod4\) sieve), and rewrote H2.12 to state the gravity-from-\(\alpha_\ast\) scaling relation dimensionally (\(G_d\propto g^2(\alpha_\ast)^{(d-2)/2}\)) before specializing to the string case.
- Result: the scale-sieve content is unchanged, but the narrative no longer sounds like it depends on string dynamics; \(\alpha'\) is now clearly an admissibility variant.
- Sources touched (keys + status changes): none.

## 2026-02-10 (C40: add Schur-complement pointer near Van Vleck derivation)
- Focus: referee-friendliness in the cornerstone manuscript’s semiclassical prefactor discussion.
- Work: added a single pointer sentence near `Derivation D4.3` in `paper/main.md` to the explicit Schur-complement elimination template note `paper/notes/van-vleck-schur-complement.md`.
- Result: readers can see, without extra prose, where the “mixed Hessian after eliminating intermediates” mechanism is worked out algebraically.
- Sources touched (keys + status changes): none.

## 2026-02-10 (S14: \u03b7 as action scale forced by oscillatory weights + kernel composition)
- Focus: stay close to quantization (avoid BV): explain why an \(\hbar\)-like action scale is structurally required when defining oscillatory action weights and delta-normalized composable kernels.
- Work: added `blackboards/2026-02-10-hbar-as-action-scale-and-kernel-normalization.md` with:
  - the “dimensionless exponent forces an action scale” argument,
  - stationary phase showing \(\hbar\) as the small parameter selecting extremals,
  - the short-time kernel normalization showing \(\hbar\) enters the prefactor once delta initial condition and composition are imposed.
- Result: we have a compact support note aligning the repo’s “stationary extremes + refinement compatibility” narrative with the unavoidable appearance of an action-scale constant in quantization.
- Sources touched (keys + status changes): none.

## 2026-02-10 (C42: promote \u03b7-prefactor point into main paper)
- Focus: integrate the S14 “\(\hbar\) enters the prefactor via delta normalization” point into the cornerstone manuscript with minimal prose.
- Work: added one sentence after `Derivation D4.1a` in `paper/main.md` noting that the delta initial condition fixes the remaining normalization constant and forces \(\hbar\) into the prefactor (standard scalar constant given parenthetically).
- Result: the kernel-composition normalization story now makes explicit that \(\hbar\) is required not only for a dimensionless phase but also for delta-normalized composition.
- Sources touched (keys + status changes): none.

## 2026-02-10 (C43: durable steering: avoid BV detours; prioritize \u03b7/regulator thread)
- Focus: record the current research steering decision so it survives restarts.
- Work: updated `docs/research-state.md` to explicitly avoid BV/BRST beyond outlook (no dedicated cycles unless later requested), and updated `cycles/index.md` to deprioritize BV bibliography accordingly.
- Result: the repo’s “anti-herd” guardrail now explicitly keeps us focused on quantization via stationary extremes + refinement-compatible composition and on the structural emergence of an action-scale regulator (\(\hbar\)).
- Sources touched (keys + status changes): none.

## 2026-02-10 (S15: difference quotients as counterterm subtractions; \u03b4' from point splitting)
- Focus: make the slogan “even the derivative is a counterterm” precise as a toy model for “regulate \(\to\) subtract \(\to\) limit”, with an explicit distributional companion producing \(\delta'\).
- Work: added `blackboards/2026-02-10-difference-quotients-counterterms-and-delta-prime.md`:
  - smooth case: \(f(x+\varepsilon)/\varepsilon = f(x)/\varepsilon + f'(x) + O(\varepsilon)\), so subtraction cancels the \(1/\varepsilon\) divergence;
  - “scheme dependence”: subtracting \((1/\varepsilon+z_0)f(x)\) leaves \(f'(x)-z_0 f(x)\), fixed by the condition \(D(1)=0\Rightarrow z_0=0\);
  - distribution case: \((\delta(\cdot+\varepsilon)-\delta)/\varepsilon \to \delta'\) with \(\langle\delta',\varphi\rangle=-\varphi'(0)\);
  - explicit warning not to conflate \(\delta'\) with stationary-set deltas \(\delta(f')\).
- Result: we now have a compact, derivation-first toy model that can be promoted into the RG narrative without importing external literature.
- Sources touched (keys + status changes): none.

## 2026-02-10 (C44: promote S15 micro-model + \u03b4' identity into RG/delta drafts)
- Focus: incorporate the stable S15 results into the follow-up drafts, keeping the content minimal and cross-linked.
- Work:
  - Updated `papers/rg-fundamental/main.md` Section 3 to include:
    - an explicit Taylor expansion that exposes the regulated \(1/\varepsilon\) divergence,
    - a finite counterterm ambiguity \(z_0\) and a normalization condition \(D(1)=0\) that fixes it,
    - a distributional “contact term” remark: \((\delta(x+\varepsilon)-\delta(x))/\varepsilon \to \delta'(x)\), with sign fixed by pairing.
  - Added a one-line pointer in `papers/rg-fundamental/main.md` to `blackboards/2026-02-10-contact-loop-integrals-1d-2d-3d.md` for unified 1D/2D/3D loop integral normalization.
  - Extended `papers/delta-objects/main.md` with an explicit point-splitting realization of \(\delta'\) and a pointer to `blackboards/2026-02-10-difference-quotients-counterterms-and-delta-prime.md`.
- Result: the RG draft’s calculus micro-model now better matches the renormalization skeleton (divergence + subtraction + finite scheme fixing), and the delta-objects note now includes a concrete identity tying \(\delta'\) to a regulated limit.
- Sources touched (keys + status changes): none.

## 2026-02-10 (Q08: quality pass after S15/C44 promotions)
- Focus: referee-style verification of the newly promoted “derivative as counterterm” micro-model and the \(\delta'\) point-splitting identity, plus a manuscript-policy guardrail scan.
- Checks:
  - `rg -n 'C[0-9]{2}' paper/main.md` (no matches).
  - Read-through of `papers/rg-fundamental/main.md` Section 3 and `papers/delta-objects/main.md` Section 3.1b for sign/wording consistency.
- Findings: no correctness issues found; sign conventions for \(\delta'\) are consistent with \(\langle\delta',\varphi\rangle=-\varphi'(0)\); “toy model” framing is explicit.
- Action queue: none (bibliography anchoring remains a separate, future `B` cycle when needed).
- Sources touched (keys + status changes): none.

## 2026-02-10 (S16: conformal half-density Laplacian; D=4 simplification)
- Focus: compute \(\widetilde\Delta=|g|^{1/4}\Delta_g|g|^{-1/4}\) explicitly in a conformally flat metric \(g_{\mu\nu}=e^{2\sigma}\delta_{\mu\nu}\), and see whether any dimensions are singled out by simplifications.
- Work: added `blackboards/2026-02-10-half-density-laplacian-conformal-metric.md` deriving
  \[
  \widetilde\Delta\psi
  =e^{-2\sigma}\Big(
  \partial^2\psi
  -2\,\partial\sigma\cdot\partial\psi
  -\frac{D}{2}(\partial^2\sigma)\psi
  +\frac{D(4-D)}{4}(\partial\sigma)^2\psi
  \Big),
  \]
  and highlighting that the \((\partial\sigma)^2\) coefficient cancels at \(D=4\) in this conformal ansatz.
  The note records a SymPy coefficient/sign check in a reduced \(\sigma=\sigma(x)\) toy case (D=2,3,4,5) with zero difference.
- Result: we have a concrete, derivation-first “special dimension” observation for half-density conjugation in a conformal background; it is queued as heuristic until given a coordinate-free interpretation.
- Sources touched (keys + status changes): none.

## 2026-02-10 (C45: promote conformal half-density Laplacian example into QFT draft)
- Focus: promote the checked S16 computation into the half-density QFT follow-up draft as a compact worked example, with careful caveats.
- Work: updated `papers/half-density-qft/main.md` by adding `Derivation D1.3`, expanding \(\widetilde\Delta=|g|^{1/4}\Delta_g|g|^{-1/4}\) for \(g_{\mu\nu}=e^{2\sigma}\delta_{\mu\nu}\) and noting the \(D=4\) cancellation of the \((\partial\sigma)^2\) term **within the conformal ansatz**, with a pointer to `blackboards/2026-02-10-half-density-laplacian-conformal-metric.md` for details and the SymPy check.
- Result: the QFT half-density draft now has a concrete “scalarization gauge dependence” computation and an independent D=4 simplification observation, kept explicitly heuristic.
- Sources touched (keys + status changes): none.

## 2026-02-10 (S17: conformal rescaling weight-family; D=4 intersection for half-densities)
- Focus: reframe the conformal half-density Laplacian computation as a one-parameter conjugation family \(O_a=e^{a\sigma}\Delta_g e^{-a\sigma}\) to isolate why the half-density choice \(a=D/2\) is special at \(D=4\) (within the conformal ansatz).
- Work: added `blackboards/2026-02-10-conformal-rescaling-and-half-density-laplacian-family.md` deriving the boxed formula
  \[
  O_a\psi
  =e^{-2\sigma}\Big(
  \partial^2\psi
  +(D-2-2a)\,\partial\sigma\cdot\partial\psi
  +\big(-a\,\partial^2\sigma + a(a-(D-2))(\partial\sigma)^2\big)\psi
  \Big),
  \]
  and identifying two independent “simplicity” conditions:
  - no first-derivative term: \(a=(D-2)/2\),
  - no \((\partial\sigma)^2\) term: \(a\in\{0,D-2\}\).
  Specializing to half-densities (\(a=D/2\)) shows the \((\partial\sigma)^2\) term cancels only when \(D/2=D-2\Rightarrow D=4\).
  The note records a SymPy check (generic \(D,a\)) in a reduced \(\sigma=\sigma(x)\) toy model.
- Result: we have a cleaner, knob-separated statement of the D=4 simplification as an “intersection point” for half-density scalarization within the conformal class; interpretation as a dimension filter remains explicitly heuristic.
- Sources touched (keys + status changes): none.

## 2026-02-10 (C46: add conformal operator-simplicity D=4 filter to planck-area draft)
- Focus: record an independent “special dimension” filter in `papers/planck-area/main.md` that is distinct from the H2.5 coupling-dimension sieve: simplicity of scalarization-gauge dependence of the half-density kinetic operator in a conformal class.
- Work: added `Heuristic H2.6a` to `papers/planck-area/main.md`, stating that for \(g_{\mu\nu}=e^{2\sigma}\delta_{\mu\nu}\),
  \[
  \widetilde\Delta=|g|^{1/4}\Delta_g|g|^{-1/4}
  \]
  contains a \((\partial\sigma)^2\) term with coefficient \(D(4-D)/4\), hence cancels at \(D=4\) within the conformal ansatz. The draft explicitly contrasts this operator-simplicity filter with the H2.5 scale sieve and links to `papers/half-density-qft/main.md` (Derivation D1.3) and `blackboards/2026-02-10-conformal-rescaling-and-half-density-laplacian-family.md`.
- Result: the Planck-area draft now tracks two orthogonal ways \(D=4\) can appear once extra criteria are added: (i) coupling-dimension sieve, and (ii) operator-simplicity under scalarization-gauge (conformal) changes.
- Sources touched (keys + status changes): none.

## 2026-02-10 (Q09: quality pass after adding H2.6a operator-simplicity filter)
- Focus: referee-style check of the new conformal D=4 operator-simplicity heuristic (H2.6a), plus the manuscript-policy guardrail scan.
- Checks:
  - `rg -n 'C[0-9]{2}' paper/main.md` (no matches).
  - Read-through of `papers/planck-area/main.md` around `Heuristic H2.6a` for caveats and separation from H2.5.
  - Cross-link verification to `papers/half-density-qft/main.md` (Derivation D1.3) and `blackboards/2026-02-10-conformal-rescaling-and-half-density-laplacian-family.md`.
- Findings: no correctness issues found; the coefficient \(D(4-D)/4\) and the \(D=4\) cancellation match S16/S17; wording stays explicitly heuristic and scale-neutral.
- Action queue: none (an optional future S-cycle would be to seek an invariant formulation or test beyond the conformal ansatz).
- Sources touched (keys + status changes): none.

## 2026-02-10 (S18: derivatives of the diagonal delta kernel via Lie derivatives)
- Focus: clarify “derivatives of the delta” in the half-density kernel language used across QM/QFT/RG drafts, emphasizing a connection-free (Lie derivative) formulation suitable for contact terms and counterterms.
- Work: added `blackboards/2026-02-10-derivatives-of-diagonal-delta-kernel.md`:
  - records the canonical identity kernel \(\delta_{\mathrm{diag}}=\delta^{(D)}(x-y)|dx|^{1/2}|dy|^{1/2}\),
  - derives the coordinate-free identity \((\mathcal L_{V_x}+\mathcal L_{V_y})\delta_{\mathrm{diag}}=0\), hence \(\mathcal L_{V_x}\delta_{\mathrm{diag}}=-\mathcal L_{V_y}\delta_{\mathrm{diag}}\) (generalizing \(\partial_x\delta(x-y)=-\partial_y\delta(x-y)\)),
  - links point splitting/difference quotients to \(\delta'\) and ties the story to diagonal-support counterterms in QFT.
- Result: we have a compact “contact term algebra” dictionary entry that is compatible with the repo’s measure-free half-density semantics.
- Sources touched (keys + status changes): none.

## 2026-02-10 (C47: promote delta-kernel derivative algebra into half-density QFT draft)
- Focus: strengthen the QFT half-density draft’s contact-term section with a precise kernel identity for derivatives of the diagonal delta, and connect it to point splitting (\(\delta'\)).
- Work: updated `papers/half-density-qft/main.md` Section 5 by adding:
  - a coordinate-free identity for the diagonal delta kernel \(K_{\mathrm{Id}}\): \((\mathcal L_{V_x}+\mathcal L_{V_y})K_{\mathrm{Id}}=0\), hence \(\mathcal L_{V_x}K_{\mathrm{Id}}=-\mathcal L_{V_y}K_{\mathrm{Id}}\), presented as the intrinsic form of \(\partial_x\delta(x-y)=-\partial_y\delta(x-y)\);
  - a short point-splitting reminder \((\delta(x+\varepsilon)-\delta(x))/\varepsilon\to\delta'\) with sign fixed by pairing.
  The draft links to `blackboards/2026-02-10-derivatives-of-diagonal-delta-kernel.md` (S18) and `blackboards/2026-02-10-difference-quotients-counterterms-and-delta-prime.md` (S15).
- Result: “derivative counterterms = derivatives of the diagonal delta kernel” is now stated in a measure-free, coordinate-invariant way within the QFT half-density draft.
- Sources touched (keys + status changes): none.

## 2026-02-10 (Q10: quality pass after C47 contact-term algebra promotion)
- Focus: referee-style check of the Lie-derivative contact-term identity and the \(\delta'\) point-splitting remark promoted into the QFT half-density draft, plus the manuscript-policy guardrail scan.
- Checks:
  - `rg -n 'C[0-9]{2}' paper/main.md` (no matches).
  - Read-through of `papers/half-density-qft/main.md` Section 5 (Remarks D5.1/D5.2).
  - Read-through of `blackboards/2026-02-10-derivatives-of-diagonal-delta-kernel.md` Section 2 for diffeomorphism invariance notation.
- Fix: changed the S18 note to use pullback notation \((\Phi\times\Phi)^\ast\delta_{\mathrm{diag}}=\delta_{\mathrm{diag}}\) to avoid pushforward/pullback confusion.
- Findings: no correctness issues; the Lie-derivative identity is properly framed as the intrinsic form of \(\partial_x\delta=-\partial_y\delta\), and the \(\delta'\) identity is signed via pairing.
- Sources touched (keys + status changes): none.

## 2026-02-10 (S19: invariant conformal-rescaling formula for the half-density Laplacian)
- Focus: strengthen the D=4 operator-simplicity filter (H2.6a) by removing the “flat base” restriction: derive the conformal-rescaling behavior of \(\widetilde\Delta_g:=|g|^{1/4}\Delta_g|g|^{-1/4}\) for \(g=e^{2\sigma}\bar g\).
- Work: added `blackboards/2026-02-10-half-density-laplacian-conformal-rescaling-invariant.md`, deriving a coordinate-free formula in terms of \(\bar g\) and \(\sigma\) and making explicit that the \(|\nabla\sigma|^2\) coefficient is universally \(D(4-D)/4\).
- Result: the \(|\nabla\sigma|^2\) cancellation at \(D=4\) is robust within the conformal class for any base metric \(\bar g\); this gives a cleaner invariant phrasing of the operator-simplicity filter while keeping it explicitly distinct from the H2.5 scale sieve.
- Sources touched (keys + status changes): none.

## 2026-02-10 (C48: promote invariant D=4 operator-simplicity filter into cornerstone paper)
- Focus: add a short, clearly scoped sidebar to the cornerstone manuscript recording the conformal operator-simplicity D=4 filter, distinct from the Planck-area scale sieve.
- Work: added `Heuristic H4.0b` to `paper/main.md` near the scalarization-gauge discussion (H4.0a), stating that the half-density conjugated Laplacian \(\widetilde\Delta_g=|g|^{1/4}\Delta_g|g|^{-1/4}\) acquires a \(|\nabla\sigma|^2\) term with coefficient \(D(4-D)/4\) under conformal rescaling \(g=e^{2\sigma}\bar g\), hence cancels at \(D=4\) (within the conformal class). The sidebar links to `papers/half-density-qft/main.md` and `blackboards/2026-02-10-half-density-laplacian-conformal-rescaling-invariant.md` for the invariant derivation and details.
- Result: the main paper now tracks, briefly, a second orthogonal appearance of \(D=4\) as an operator-simplicity filter under scalarization choices, while keeping the scale-sieve story in the dependent Planck-area draft.
- Sources touched (keys + status changes): none.

## 2026-02-10 (Q11: quality pass after adding H4.0b sidebar to cornerstone paper)
- Focus: referee-style check of the new H4.0b operator-simplicity sidebar (scope/caveats, \(d\) vs \(D\) clarity) plus manuscript-policy guardrail scan.
- Checks:
  - `rg -n 'C[0-9]{2}' paper/main.md` (no matches).
  - Read-through around `Heuristic H4.0a` / `Heuristic H4.0b`.
  - Verified the referenced files exist: `papers/half-density-qft/main.md` and `blackboards/2026-02-10-half-density-laplacian-conformal-rescaling-invariant.md`.
- Findings: no issues; H4.0b is short, explicitly conformal-class scoped, and clearly distinguished from the Planck-area sieve.
- Sources touched (keys + status changes): none.

## 2026-02-10 (S20: map `conv_patched.md` coverage to the current paper set)
- Focus: restart-stable planning map: which conversation themes are already in the drafts vs still missing/outside scope.
- Work:
  - Read `conv_patched.md` strictly as a non-citable idea log.
  - Wrote `docs/conv-coverage-map.md` mapping: topic → current coverage → best incorporation target → next cycle type (`S`/`C`/`B`).
- Result: the backlog is now file-targeted (e.g. generic-\(q\) areal-speed derivation for `papers/planck-area/main.md`, and a full “control map \(\tau\)” formalization note before promoting any 9803035-inspired claims).
- Note (correction from discussion): “uncuttable” is interpreted as “not computable with a finite number of cuts” (requires a controlled refinement/limit), not “cannot be subdivided”.
- Sources touched (keys + status changes): none.

## 2026-02-10 (S21: generic-\(q\) areal-speed circular orbits + dimension link)
- Focus: close the general-\(q\) gap in the Planck-areal-speed thread and state precisely what is special about inverse-square.
- Work: added `blackboards/2026-02-10-areal-speed-generic-q-and-dimension-link.md`, deriving the circular-orbit condition \(4m\dot A^2=K r^{3-q}\) for \(F=K/r^q\), recording the \(q=3\) special case, and showing that substituting \(\dot A=cL_P\) with \(L_P^2=G\hbar/c^3\) yields \(r\propto(\hbar/(cM))^{1/(3-q)}\), hence linear reduced-Compton scaling only for \(q=2\).
- Result: the “Planck areal speed \(\Rightarrow\) Compton radius” cancellation is cleanly identified as an inverse-square (\(q=2\)) feature; the note also records the Newtonian dimension link \(q=n-1\) from Laplacian Green-function scaling (with the \(n=2\) log-potential caveat).
- Sources touched (keys + status changes): none.
- Next: `C` promote a compact generic-\(q\) remark into `papers/planck-area/main.md` after `Derivation D1.5`, and open a `B` cycle for independent anchors on the \(n\)-dimensional Poisson/Green scaling and on minimal-length/GUP literature if we want that branch.

## 2026-02-10 (C49: promote generic-\(q\) areal-speed remark into planck-area draft)
- Focus: make the Planck-areal-speed witness precise by stating what changes for a generic power-law force \(F=K/r^q\) and how \(q\) ties to spatial dimension for Newtonian long-range fields.
- Work: inserted `Remark D1.5a` into `papers/planck-area/main.md` immediately after `Derivation D1.5`, deriving \(4m\dot A^2=K r^{3-q}\) (and the \(q=3\) special case), showing that substituting \(\dot A=cL_P\) with \(L_P^2=G\hbar/c^3\) yields \(r=(4\hbar/(cM))^{1/(3-q)}\), hence linear reduced-Compton scaling only for \(q=2\); recorded the Newtonian dimension link \(q=n-1\) (with the \(n=2\) logarithmic exception).
- Result: the inverse-square witness is now explicitly demarcated as an inverse-square feature, and its relation to \(D=4\) is split into two transparent steps: (i) long-range Newtonian fields in \(n=3\) spatial dimensions give \(q=2\), and (ii) the Planck-length identity \(L_P^2=G\hbar/c^3\) is a \(D=4\) input.
- Sources touched (keys + status changes): none.

## 2026-02-10 (B03: OA anchors for Laplacian Green scaling + minimal-length/GUP)
- Focus: add independent, OA-stable anchors for two branches referenced in the Planck-area draft: (i) dimension dependence of Laplacian fundamental solutions (and the \(d=2\) logarithmic exception) and (ii) minimal-length/GUP scenarios as a comparison branch.
- Work:
  - Added `[Tanaka2021KernelQuadrature]` (arXiv:`2102.10887`) and `[Hossenfelder2013MinimalLength]` (Living Rev. Rel. 2013; arXiv:`1203.6191`) to `paper/bibliography.md`.
  - Ingested both arXiv PDFs into `sources/` (untracked by policy) via `skills/source-to-markdown`.
  - Updated `papers/planck-area/main.md`:
    - cited `[Tanaka2021KernelQuadrature]` at the dimension-link sentence in `Remark D1.5a`,
    - added an “Open problems” pointer to `[Hossenfelder2013MinimalLength]`.
- Result: the \(q=n-1\) dimension link and the \(n=2\) log caveat now have an explicit OA anchor, and “minimal length” is tracked as a literature branch without being imported as a driver of the main argument.
- Sources touched (keys + status changes): added `[Tanaka2021KernelQuadrature]`, `[Hossenfelder2013MinimalLength]`.

## 2026-02-10 (S22: control map \(\tau\) as refinement compatibility)
- Focus: formalize the missing “compare discretizations at fixed ruler” ingredient behind the 9803035 thread, in a transcript-independent way.
- Work: added `blackboards/2026-02-10-control-map-tau-refinement-compatibility.md`, defining coarse-graining operators \(\mathcal C_b\) between resolutions and stating the compatibility equation
  \(\mathcal C_b(A_{h/b,\theta})=A_{h,\tau_b(\theta)}\) as the precise meaning of “a control map \(\tau\)”. Included a Gaussian kernel semigroup as the exactly-closing toy model (trivial \(\tau\)).
- Result: the “RG = refinement compatibility” thesis now has a clean diagrammatic formulation ready to be promoted into `paper/main.md` without depending on any preprint wording.
- Sources touched (keys + status changes): none.

## 2026-02-10 (C50: promote \(\tau\) refinement-compatibility formalism into the cornerstone paper)
- Focus: insert a concise, manuscript-ready statement of the “control map \(\tau\)” compatibility condition in the RG/refinement section.
- Work: added `Derivation D6.0` to `paper/main.md` Section 8.2, defining a resolution parameter \(h\), a coarse-graining operator \(\mathcal G_b\), and the closure requirement \(\mathcal G_b(A_{h/b,\theta})=A_{h,\tau_b(\theta)}\). The paragraph explicitly frames \(\tau_b\) as the parameter flow induced by refinement and notes that failure of closure forces an enlarged operator/coupling family (counterterms).
- Result: the cornerstone paper now contains a transcript-independent formulation of “compare discretizations at fixed ruler” that dovetails with the existing renormalization-map semigroup discussion.
- Sources touched (keys + status changes): none.

## 2026-02-10 (Q12: quality pass after adding the \(\tau\) compatibility equation)
- Focus: referee-style coherence pass on Sections 6–8 after inserting `Derivation D6.0` (control map \(\tau_b\)).
- Checks:
  - `rg -n 'C[0-9]{2}' paper/main.md` (no matches).
  - Read-through of Section 6.1 (H4.0a/H4.0b) and Section 8.2–8.3 (D6.0–D6.2) for notation and “no overclaim” scope.
- Findings: D6.0 reads as a closure requirement (not a theorem), uses \(\mathcal G_b\) to avoid collision with the RCP \(\mathcal C_t\) notation, and cleanly points back to the existing \(R_{\Lambda\to\mu}\) semigroup paragraph.
- Sources touched (keys + status changes): none.
