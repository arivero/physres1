# Q01 Execution

## Reviews

### `paper/main.md`
- Strengths:
- The new “Contributions” list makes novelty legible early without changing the staged structure.
- The \(d\) vs \(D\) bookkeeping note plus the schematic \(\int d^D x\) change removes the most likely dimension-confusion failure mode.
- The single forward pointer to the Planck-area note keeps the cornerstone paper structural (half-densities first) while making the dependent draft discoverable.
- Risks / likely referee objections:
- “Van Vleck” and “delta lore” citations could be interpreted as evidence for the exact displayed formulas unless the surrounding sentences stay attributional/heritage-level.
- The paper still spans many subfields; some referees may ask for one more explicit “worked model” in the main flow (beyond the appendix) or a tighter roadmap.
- Actionable fixes (tagged `C`/`S`/`B`):
1. `C`: Ensure every new citation sentence is phrased at the support level we can guarantee (heritage/attribution vs “derives the exact formula”).
2. `B`: Add one modern semiclassical-propagator reference that explicitly contains the Van Vleck prefactor formula (OA if possible; otherwise mark `PENDING`).
3. `S`: Add a blackboard note clarifying when the composition-variable dimension is spatial vs spacetime in covariant formulations, and record a one-paragraph promotion candidate for `paper/main.md` (without proliferating symbols).

### `papers/planck-area/main.md`
- Strengths:
- H2.5 is now explicitly split (H2.5a integrality vs H2.5b perturbative analyticity), and transmutation is clearly separated as a third, non-analytic branch. This prevents branch leakage.
- The “minimal claim vs conjectural claim” paragraph keeps the paper honest about what is forced by half-density geometry vs added universality principles.
- Risks / likely referee objections:
- The H2.5b “analytic at a weak-coupling limit” criterion still needs an explicit choice of *which* limit (and why that limit is physically distinguished).
- The Van Vleck citation is currently an attributional anchor; a referee may ask for a modern source that explicitly states the prefactor formula in the propagator context.
- Actionable fixes (tagged `C`/`S`/`B`):
1. `S`: Blackboards: propose 2–3 concrete “distinguished limits” that could motivate H2.5b (e.g. \(G\to0\), a UV completion limit, or a semiclassical \(\hbar\to0\) scaling) and list what each would allow/forbid.
2. `B`: Find an OA semiclassical/path-integral source that states the prefactor formula explicitly (or mark `PENDING`), and cite it in addition to heritage-level Van Vleck attribution.
3. `C`: Add a 3-line “branch summary” paragraph at the end of Section 3.2 stating: (i) monomial sieve (H2.5a/H2.5b), (ii) fractional/other non-analytic dependence, (iii) transmutation branch.

### `papers/rg-fundamental/main.md`
- Strengths:
- The abstract framing is now cleanly conditional (“RG forced by defining the theory as regulator-independent composed refinement”), avoiding semantic overclaim.
- Jackiw is now threaded as an independent anchor for 2D/3D delta lore, complementing the explicit computation.
- Section 7 is a concrete tagged queue; the paper carries its own next-cycle scaffolding.
- Risks / likely referee objections:
- 3D Wilsonian fixed-point remarks remain heuristic until we either (i) define the dimensionless coupling explicitly and show the flow, or (ii) cite a standard EFT/RG contact-interaction reference.
- Normalization conventions (especially in the \(T\)-matrix) are a perennial source of “factor” objections if not mapped explicitly.
- Actionable fixes (tagged `C`/`S`/`B`):
1. `S`: Write the “convention map” note promised in Section 7 (normalization of \(T\), scheme constants, and how \(2e^{-\gamma}\) shifts under finite subtraction).
2. `B`: Ingest/anchor the intended Cristina/Rolf 2D-delta reference and explicitly cross-check one key formula against our conventions.
3. `C`: Make the 3D Wilsonian fixed-point discussion explicit by defining a dimensionless coupling and writing the two endpoint fixed points in that parameterization (keeping it short).

## Status
Completed.
