# Q00 Execution

## Reviews

### `paper/main.md`
- Strengths:
  1. Clear staged thesis (“refinement + composition + controlled limits”) carried from Newtonian polygons to action, kernels, deformation, and RG, with explicit transition closures (Section 9.2).
  2. Claim taxonomy (`Proposition`/`Derivation`/`Heuristic`) keeps scope honest while still allowing a foundations-driven narrative.
  3. Multiple concrete computations that make the structure non-metaphorical (finite-step area law; semigroup kernel normalization forcing \(t^{-d/2}\); explicit 2D delta RG appendix).
  4. Half-density formulation is introduced intrinsically (Section 6.1) and connected to the Van Vleck prefactor (Derivation D4.3), aligning “composition” with coordinate invariance rather than with a chosen measure.

- Risks / likely referee objections:
  1. “Ambitious synthesis, but what is *new*?” (may read like an organized review unless the novelty is flagged crisply).
  2. “Too broad across domains” (Newton history + distribution theory + semiclassics + deformation quantization + RG); some readers may want a tighter focus and earlier statement of the payoff.
  3. Formal path-integral statements may trigger “measure-theoretic” objections even if labeled heuristic.
  4. Potential notation ambiguity: what exactly does \(d\) denote at each stage (configuration vs spatial vs spacetime vs “composition variable” dimension)?

- Actionable fixes (tagged `C`/`S`/`B`):
  1. `C`: Add a 5–7 line “Contributions” list in the Introduction: (i) refinement/composition as the unifying problem, (ii) half-density formulation of kernels, (iii) semigroup forcing of \(t^{-d/2}\), (iv) RG as refinement-compatibility, (v) explicit singular-QM beta-function witness.
  2. `C`: Add a short notational guardrail near Section 2.1: reserve \(d\) for the dimension of the intermediate-variable manifold in the composition law (and explicitly flag when that is “spatial \(d\)” vs “spacetime \(D\)”).
  3. `C`: In Section 6.1 (`Heuristic H4.0a`), add one forward-pointer sentence to the dependent half-density/area note (`papers/planck-area/main.md`) while keeping the Planck-area identification out of the cornerstone paper.
  4. `B`: Add one independent standard reference for semiclassical propagators / Van Vleck determinant (OA if possible; otherwise mark `PENDING`) to avoid relying on preprint-only anchors for this well-known fact.
  5. `S`: Audit Derivation D4.1a’s Gaussian-semigroup argument for sign/\(i0\) conventions (Euclidean vs oscillatory time) and add one sentence clarifying the analytic-continuation assumption.

### `papers/planck-area/main.md`
- Strengths:
  1. The hypothesis ladder (H2.1–H2.5) cleanly separates geometric facts (half-densities) from representational choices (scalarization) and from universality/selection principles.
  2. Multiple explicit “witness” computations: coordinate-invariant composition, dilation scaling, near-diagonal scaling exponent, Van Vleck half-density transformation, and concrete dimension-sieve examples.
  3. Honest branch structure: it records what happens when H2.3/H2.4/H2.5 are relaxed, including the RG/dimensional-transmutation branch as a distinct mechanism.

- Risks / likely referee objections:
  1. “Dimensional analysis dressed as selection”: referees will demand a sharper operational criterion for why H2.4 (background-free constancy) and H2.5 (restricted coupling dependence) should be regarded as physics rather than convention.
  2. Mixed use of \(d\) and \(D\) risks confusion even with H2.14; readers may misread the “\(d=4\Rightarrow\) area” statement as a spatial claim.
  3. Gravitational anchor is currently heuristic and tied to preprint guides; this must stay clearly labeled as non-load-bearing until independently anchored.

- Actionable fixes (tagged `C`/`S`/`B`):
  1. `C`: Add a short “Minimal theorem-level claim vs conjectural claim” paragraph in the Abstract or Section 1: (i) proven need for extra structure to scalarize half-densities; (ii) conjectural universality principle selecting a specific scale.
  2. `C`: Add a boxed “Notation” line clarifying: \(d_{\mathrm{comp}}\) = dimension of the composed-over variable; \(d_{\mathrm{spatial}}\) and/or \(D_{\mathrm{spacetime}}\) when used; and which one is used in each derivation.
  3. `S`: Split H2.5 into two explicitly separable constraints (integer-exponent vs perturbative analyticity), and record where dimensional transmutation (non-analytic) sits as a separate branch/hypothesis; keep this as blackboard-first before locking prose.
  4. `B`: Add one independent reference for half-densities / half-forms in kernel composition (analysis on manifolds / geometric quantization) to anchor the “half-density is the natural integrand” claim beyond Connes/tangent-groupoid signposting.

### `papers/rg-fundamental/main.md`
- Strengths:
  1. “RG is compatibility” is supported by two explicit witnesses: (i) calculus difference-quotient subtraction, (ii) singular QM (2D delta) with a real beta function and dimensional transmutation.
  2. Strong explanatory structure: scheme dependence vs invariants, self-adjoint extension / boundary-condition formulation (“scale from a point”), and cross-dimensional comparison (1D/2D/3D).
  3. The semigroup-vs-group point is made concrete via an exact Gaussian coarse-graining derivation (Schur complement).

- Risks / likely referee objections:
  1. “RG is definitional” can read as a semantic overclaim; it should be framed as a conditional statement: *if* a theory is defined via composed refinement with divergent intermediate objects, *then* RG invariance is required for well-defined predictions.
  2. Independent anchoring is still thin for standard point-interaction facts (self-adjoint extension classification, 2D delta lore, U(2) family in 1D), and the current narrative leans on preprint guides.
  3. Convention dependence (normalizations, constants like \(2e^{-\gamma}\)) needs explicit alignment with at least one standard source to prevent “factor” objections.

- Actionable fixes (tagged `C`/`S`/`B`):
  1. `C`: Rephrase the core thesis in Section 1/2 as a compatibility theorem schema (“definition by refinement \(\Rightarrow\) invariance condition \(\Rightarrow\) RG flow”), and downgrade any absolute wording.
  2. `B`: Integrate at least one independent standard point-interaction source into the text where used (use existing bibliography keys where possible: `[BonneauFarautValent2001SAE]`, `[FulopTsutsui2000Circle]`, `[TsutsuiFulopCheon2002Connection]`, `[Kurasov1996DiscontinuousTest]`, and pursue `[Jackiw1991DeltaPotentials]` capture as `PENDING`).
  3. `S`: Cross-check the 2D/3D loop-integral normalizations and the boundary-condition constant choices against a standard source; record any convention map in a short appendix-like note.
  4. `C`: Expand Section 7 into a concrete next-cycle checklist, tagged `C`/`S`/`B`, so the draft carries its own forward plan.

## Status
Completed: reviews recorded; next cycles should be spawned from the actionable items above.
