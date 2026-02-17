# Next Articles Roadmap (Builds on This Paper + `conv_patched.md`)

This repository's manuscript (`paper/main.md`) is the *publishable* artifact.
This file is an internal roadmap for follow-up papers and is **not** a citable source.

## Non-Citable Input Note
Some prompts below are extracted from `conv_patched.md` (brainstorming / drafting log).
Use them only as idea generators; do not cite them as evidence or as bibliography.

## A. RCP as a Standalone Foundations Paper — **COMPLETED (Tier 1)**
Draft: `papers/rcp-foundations/main.md` (347 lines, 8pp compiled, 6 refs).

Deliverables achieved:
1. ✓ Formal definition via commuting diagrams (Section 2.2).
2. ✓ Five axioms A1-A5 (composition, identity, representation equivalence, scale invariance, dimensional homogeneity).
3. ✓ Three worked examples:
   - Noether's theorem (Section 3, partition channel, conserved charge as compatibility datum).
   - Ordering ambiguity (Section 4, representation channel, domain data transport).
   - 2D delta RG (Section 5, scale channel, beta function + dimensional transmutation).
4. ✓ Three crown witnesses (Section 7.1): partition forces ℏ-necessity (P4.2), representation requires domain transport, scale enables Padé non-perturbative reconstruction.
5. ✓ Multi-channel synthesis (Section 7.4): path integral as RCP realization showing partition/representation/scale interaction.
6. ✓ Forward connections (Section 7.5) to three channel-specific satellites.

## B. Dirac-Supported Probes, Corners, and Impulses — **DRAFT (S97)**
Draft: `papers/dirac-probes-corners-impulses/main.md` (172 lines, 5 pages, 3 refs). Needs Q pass.
Spin out Section 5 into a short, sharp note that focuses on what is actually
mathematically legal when "Dirac deltas probe extrema."

Suggested deliverables:
1. Weak Euler-Lagrange derivation with minimal functional-analytic assumptions.
2. Mollifier-based point-probing lemma stated as a theorem with hypotheses.
3. Weierstrass-Erdmann corner conditions + impulse jump laws with clear separation
   of "unforced corner" vs "delta forcing."
4. One worked model (e.g., delta-kick forcing, delta potential, or piecewise smooth
   trajectory with matching) to anchor the formalism.

## C. Ordering/Discretization as an Equivalence Class — **COMPLETED (Tier 1)**
Draft: `papers/ordering-equivalence/main.md` (391 lines, 8pp compiled, 2 refs).

Deliverables achieved:
1. ✓ Four-layer stratification (Proposition OE-P1.1): principal symbol, connection, scalar potential, domain.
2. ✓ Two worked examples with explicit calculations:
   - Position-dependent mass (Section 3): Weyl vs half-density, GaAs quantum well numerical test (|ΔE₀| ~ 0.006-0.06 meV ≪ 0.1 meV).
   - Curved configuration space (Section 4): Laplace-Beltrami operator, curvature potential V_curv = (ℏ²/6m)R, Van Vleck determinant.
3. ✓ Star-product perspective (Section 5): ordering as automorphism of ⋆-algebra (Moyal vs Vey), gauge/conjugation freedom, half-density as "Lorenz gauge."
4. ✓ Time-slicing bridge (Section 6): midpoint ↔ Stratonovich ↔ half-density, Itô vs Stratonovich correction, sewing law preservation.
5. ✓ Measurability analysis (Section 7): Layer 3 differences unmeasurably small in practice, ordering equivalence is physical equivalence (Proposition OE-P1.6).
6. ✓ RCP representation-channel connection (Section 7.3): operational form O_{h,θ} = O_{h',τ(θ)} ∘ T with Layer 3 as transport rule.

## D. Rooted Trees as the Common Bookkeeping Language (Butcher <-> RG) — **COMPLETED (Tier 1)**
Draft: `papers/rooted-tree-bookkeeping/main.md` (431 lines, 8pp compiled, 5 refs).

Deliverables achieved:
1. ✓ Explicit Butcher/RG dictionary (Section 5, 7-entry table): B-series ↔ Feynman rules, composition ↔ renormalization, trees ↔ diagrams, Butcher group ↔ RG semigroup.
2. ✓ Two worked computations:
   - Midpoint RK2 composition test (Section 3): two half-steps vs one full step, explicit verification of τ₁⊗τ₁ = 2τ₂.
   - 2D delta RG (Section 4.4): one-loop beta function β(g_R) = (m/πℏ²)g_R², dimensional transmutation κ_*.
3. ✓ Hopf coproduct explicit formulas (Section 6.2): Δ for trees τ₁, τ₂, τ₃ (chain), τ₃' (branch), antipode recursion S, forest formula connection.
4. ✓ Clear analogy vs literal distinction (Section 5.3): Butcher group is reversible (invertible methods), RG semigroup is one-way (information loss under coarse-graining).
5. ✓ Order-3 tree structure (Section 3.5): Butcher product vs RG (sunset/nested parallel diagrams), explicit matching of combinatorics.

## E. Tangent-Groupoid Bridge Paper (Use Carefully)
`conv_patched.md` contains extensive tangent-groupoid + quantization discussion.
If pursued, keep the framing compatible with the project's preference to avoid
"strict deformation" as the headline concept.

Suggested deliverables:
1. A clean explanation of "kernels/pair groupoid -> tangent/cotangent objects" as a
   refinement/limit story.
2. A short technical lemma showing how scaling interacts with composition at the
   groupoid level (what must be rescaled after composing arrows).
3. One worked example that reproduces a familiar star product or short-time kernel.

## F. Renormalization: From Template to Real Computation
Section 10.1 is a template; a follow-up should do at least one real calculation.

Suggested deliverables:
1. Pick one target: \(\\phi^4\\) in 4D (1-loop), a quantum-mechanical singular model,
   or a zero-dimensional QFT toy model.
2. Show the semigroup property explicitly in the chosen renormalization scheme.
3. Record scheme dependence cleanly (what changes vs what is invariant).

## G. Planck Area / Half-Density Scaling — **COMPLETED (Tier 1)**
Draft: `papers/planck-area/main.md` (706 lines, 23 pages, 9 refs). P00 v3 live on clawXiv.

## H. RG as Fundamental — **COMPLETED (Tier 1)**
Draft: `papers/rg-fundamental/main.md` (721 lines, 12pp compiled, 10 refs).

Comprehensive treatment includes:
- ✓ RG as semigroup compatibility (Proposition RG-P1.1, composition law for coarse-graining).
- ✓ Calculus micro-model (Section 3): derivative as counterterm subtraction, regulated difference quotient.
- ✓ Rooted-tree bookkeeping (Section 4): Euler step-doubling (RG-D1.0), midpoint RK2 (RG-D1.0b), Hopf coproduct explicit formulas (RG-D1.8), tree proliferation.
- ✓ 2D delta worked model (Section 5): Lippmann-Schwinger T-matrix, logarithmic divergence, renormalized coupling g_R(μ), beta function β(g_R) = (m/πℏ²)g_R², dimensional transmutation (κ_* RG-invariant scale), Wilsonian shell-integration (RG-D1.2a), bound-state pole from transmutation scale.
- ✓ Contact interactions across dimensions (Section 5.8): 1D (no renormalization), 2D (marginal log), 3D (scattering length a), fixed-point structure.
- ✓ Semigroup vs group (Section 6): Gaussian coarse-graining (Schur complement, RG-D1.7), non-invertibility (many UV → one IR), information loss.
- ✓ Multi-channel RCP conclusion (Section 7): RG as scale channel, three crown witnesses (partition/Noether, representation/ordering, scale/2D delta), horizontal vs vertical composition (Remark RG-H1.9), foundational reading (RG as definitional, not phenomenological).

## I. Relativistic Central Orbits — **COMPLETED (Tier 1)**
Draft: `papers/relativistic-central-orbits/main.md` (207 lines, 6 pages, 2 refs). SR circular orbits, Schwarzschild geodesics, stability analysis.

## J. String Tension as a Universal Area-Scale Supplier (Gauge-Theory Follow-up)
If the half-density scalarization ladder needs “a source of area scale” that is not *assumed* to be Planckian, confinement provides a canonical candidate: \(\sigma\) with \([\sigma]=\text{length}^{-2}\).

Suggested deliverables:
1. Wilson-loop definition of the static potential: \(\langle W\rangle \sim e^{-T V(r)}\).
2. Area law \(\Rightarrow\) string tension \(\sigma\) and the associated area scale \(\alpha_\ast\sim\sigma^{-1}\).
3. Connection to `papers/planck-area/main.md` (scale supplier for scalarization) and to `papers/rg-fundamental/main.md` (running/transmutation).
4. Clearly separate “heuristic bridge” from any claim of fundamental primacy.

## K. Action–Angle Indeterminacy — **COMPLETED (Tier 1)**
Draft: `papers/action-angle-indeterminacy-central-potentials/main.md` (75 lines, 3 pages, 2 refs). Referee-safe (φ,Lz) witness + Dirichlet-kernel packet example.

## L. Fermionic Mediators — **COMPLETED (Tier 1)**
Draft: `papers/fermionic-mediators-contact-limits/main.md` (96 lines, 4 pages, 4 refs). Grassmann-source obstruction + contact/boundary-condition IR replacement.

## Tooling Notes (Paper Ops)
1. PDF build uses pandoc's single-backslash math extension:
   - `pandoc -f markdown+tex_math_single_backslash -s paper/main.md -o paper/main.tex`
2. If future papers want a real reference list, switch citation syntax to pandoc's
   `[@Key]` form and store sources in a `.bib` file (keep `sources/` out of git).
3. Keep cycle IDs planning-only per `AGENTS.md` (no `C0x` tags in manuscript output).
