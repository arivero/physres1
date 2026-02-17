# Satellite Papers: Refinement Compatibility and Structural Necessity

This directory contains satellite papers that develop specific aspects of the Refinement Compatibility Principle (RCP) framework introduced in the cornerstone manuscript (`../paper/main.md`).

## Organizational Structure

The satellites are organized by page length and thematic focus:

### PLB-Length Papers (≤6pp, frozen)
Concise treatments suitable for Physics Letters B format.

1. **relativistic-central-orbits** (6pp, 296 lines)
   - SR circular orbits vs Newtonian
   - Schwarzschild geodesics
   - Stability analysis

2. **half-density-qft** (6pp, 265 lines)
   - Half-density kernels in QFT
   - Bi-half-density propagators
   - Densitized scalar field worked example

3. **delta-objects** (6pp, 218 lines)
   - Delta-function dictionary
   - Mollifier universality criterion
   - Dimensional hierarchy of point interactions

### Short PRD Papers (7pp)
4. **dirac-probes-corners-impulses** (7pp, 256 lines)
   - Mollifier localization theorem
   - Weierstrass-Erdmann corner conditions
   - Delta-kick worked model
   - Safe vs unsafe Dirac delta uses

### Mid-Length PRD Papers (8pp)
5. **rcp-foundations** (8pp, 347 lines, **NEW**)
   - Five axioms A1-A5 (composition, identity, representation, scale, dimensional homogeneity)
   - Operational form: O_{h,θ} = O_{h',τ(θ)} ∘ T (falsifiable)
   - Three worked examples: Noether (partition), ordering (representation), 2D delta RG (scale)
   - Three crown witnesses: P4.2 (ℏ-necessity), domain transport, Padé reconstruction
   - Multi-channel synthesis in path integral
   - **Connects:** ordering-equivalence (representation), rooted-tree-bookkeeping (partition), rg-fundamental (scale)

6. **ordering-equivalence** (8pp, 391 lines, **NEW**)
   - Four-layer stratification (principal symbol, connection, scalar potential, domain)
   - PDM worked example: Weyl vs half-density, GaAs numerical test (|ΔE₀| ~ 0.006-0.06 meV)
   - Curved space: Laplace-Beltrami, curvature potential V_curv = (ℏ²/6m)R
   - Star-product perspective: Moyal vs Vey, gauge freedom
   - Time-slicing: Itô vs Stratonovich, path-integral discretization
   - RCP representation-channel witness
   - **Connects:** rcp-foundations (multi-channel), cornerstone Section 10.2

7. **rooted-tree-bookkeeping** (8pp, 431 lines, **NEW**)
   - Butcher/RG dictionary (7-entry table)
   - Midpoint RK2 composition test: τ₁⊗τ₁ = 2τ₂
   - 2D delta RG: beta function β(g_R) = (m/πℏ²)g_R², κ_* transmutation
   - Hopf coproduct explicit formulas (trees τ₁-τ₃)
   - Order-3 trees: Butcher product vs RG (sunset/nested diagrams)
   - Semigroup vs group distinction (reversibility)
   - **Connects:** rg-fundamental (RG examples), rcp-foundations (partition channel)

8. **path-integral-normalization** (9pp, 432 lines, **NEW**)
   - d/2 exponent forced by composition semigroup + dimensional homogeneity
   - Four manifestations: temporal composition, Van Vleck determinant, heat kernel, RG thresholds
   - Explicit d=1,2,3 composition verifications (PN-D1.1, PN-D1.2)
   - Alternative exponent failure demonstration
   - Curved space: DeWitt-Morette composition law Δ(x,z) = Δ(x,y)Δ(y,z)
   - Wick rotation: same d/2 in diffusion equation
   - Renormalization threshold: d<2 (safe), d=2 (log), d>2 (power divergence)
   - Connection to P4.2 theorem (ℏ-necessity) and half-density formalism
   - **Connects:** cornerstone Section 4, rcp-foundations (multi-channel), rg-fundamental (2D delta threshold)

### Full PRD Papers (12-14pp)
9. **rg-fundamental** (12pp, 721 lines, **EXPANDED**)
   - RG as semigroup compatibility (composition law for coarse-graining)
   - Calculus micro-model: derivative as counterterm subtraction
   - Rooted trees: Euler step-doubling, midpoint RK2, Hopf coproduct
   - 2D delta model: T-matrix, log divergence, g_R(μ), β(g_R), κ_* scale
   - Wilsonian shell integration (explicit semigroup property)
   - Contact interactions 1D/2D/3D (dimensional hierarchy)
   - Gaussian coarse-graining (Schur complement, non-invertibility)
   - Multi-channel RCP conclusion (horizontal vs vertical composition)
   - **Connects:** rooted-tree-bookkeeping (trees), rcp-foundations (scale channel)

10. **action-angle-indeterminacy-central-potentials** (13pp, 240 lines)
    - Sharp actions → delocalized conjugate angles
    - (φ, L_z) sector worked example
    - Dirichlet-kernel packet
    - Semiclassical/stationary-phase narrative

11. **fermionic-mediators-contact-limits** (13pp, 244 lines)
    - Grassmann-source obstruction
    - EFT/contact-interaction route
    - Delta kernels, derivative contact terms
    - Self-adjoint extensions
    - Connects mediator-field talk to point-interaction + RG themes

12. **uncuttable-controlled-refinement** (13pp, 240 lines)
    - Uncuttable time intervals
    - Controlled refinement limits
    - Partition-compatibility witnesses

13. **planck-area** (14pp, 730+ lines)
    - Half-density scalarization forces length^{d/2} scale
    - In d=4: area scale (Planck area candidate)
    - Parity lemma: monomial sieve even-d only
    - Heat-kernel witness: D/2 normalization, V=(1/6)R curvature
    - Open problems: multi-scale scalarization, gravity extension
    - **Published:** clawXiv.2602.00073v3 (P00)

## Thematic Organization

### RCP Framework (Meta-Level)
- **rcp-foundations**: Axioms, operational form, three-channel synthesis
- **Cornerstone** (`../paper/main.md`): Full Newton→path-integral→RG chain as RCP implementation

### Partition Channel (Temporal Composition)
- **path-integral-normalization**: d/2 exponent forced by composition semigroup
- **rooted-tree-bookkeeping**: Butcher group, RK composition, tree formalism
- **Cornerstone Section 10**: P4.2 theorem (ℏ-necessity from composition)
- **dirac-probes-corners-impulses**: Variational principles, time-slicing limits

### Representation Channel (Ordering Equivalence)
- **ordering-equivalence**: Four-layer stratification, PDM/curved examples, measurability
- **Cornerstone Section 10.2**: f(q)p ordering example
- **Cornerstone Section 7**: Deformation equivalence (Proposition P5.2)

### Scale Channel (Renormalization Group)
- **rg-fundamental**: RG as compatibility, 2D delta model, Wilsonian shell integration
- **path-integral-normalization**: d/2 as RG threshold (d<2 safe, d=2 marginal, d>2 divergent)
- **Cornerstone Section 8**: Scale compatibility axioms, beta functions
- **delta-objects**: Point interactions, dimensional hierarchy

### Geometric/Half-Density Formalism
- **path-integral-normalization**: d/2 exponent as half-density structure, Van Vleck determinant
- **planck-area**: Scalarization hypothesis, length^{d/2} scale
- **half-density-qft**: QFT propagators as bi-half-densities
- **Cornerstone Section 9**: Half-density kernels, measure-free formulation

### Classical Mechanics Foundations
- **dirac-probes-corners-impulses**: Weak Euler-Lagrange, mollifier probing
- **relativistic-central-orbits**: SR vs Newtonian orbits, Schwarzschild
- **Cornerstone Section 3**: Newton polygonal construction, equal-area law

### Quantum Mechanics Examples
- **action-angle-indeterminacy-central-potentials**: Sharp actions → delocalized angles
- **fermionic-mediators-contact-limits**: Grassmann sources, contact EFT
- **uncuttable-controlled-refinement**: Partition limits

## Cross-Reference Network

The papers form a coherent narrative with extensive cross-referencing:

```
Cornerstone (23pp)
    ├─→ rcp-foundations (8pp) ←──┬─→ ordering-equivalence (8pp)
    │                             ├─→ rooted-tree-bookkeeping (8pp)
    │                             ├─→ path-integral-normalization (9pp)
    │                             └─→ rg-fundamental (12pp)
    ├─→ planck-area (14pp)
    ├─→ half-density-qft (6pp)
    ├─→ delta-objects (6pp)
    ├─→ dirac-probes-corners-impulses (7pp)
    ├─→ ordering-equivalence (8pp)
    ├─→ rooted-tree-bookkeeping (8pp)
    ├─→ path-integral-normalization (9pp)
    ├─→ rg-fundamental (12pp)
    ├─→ action-angle-indeterminacy-central-potentials (13pp)
    ├─→ fermionic-mediators-contact-limits (13pp)
    ├─→ uncuttable-controlled-refinement (13pp)
    └─→ relativistic-central-orbits (6pp)
```

### Key Inter-Satellite Links
- **rcp-foundations** ↔ **ordering-equivalence**: Representation-channel crown witness
- **rcp-foundations** ↔ **rooted-tree-bookkeeping**: Partition-channel crown witness
- **rcp-foundations** ↔ **rg-fundamental**: Scale-channel crown witness
- **path-integral-normalization** ↔ **rcp-foundations**: d/2 exponent as multi-channel compatibility datum
- **path-integral-normalization** ↔ **rg-fundamental**: d/2 as RG threshold (2D delta marginal case)
- **path-integral-normalization** ↔ **planck-area**: d/2 exponent as half-density normalization
- **rooted-tree-bookkeeping** ↔ **rg-fundamental**: Shared tree formalism (Butcher/RG dictionary)
- **ordering-equivalence** ↔ **rg-fundamental**: Multi-channel conclusion
- **planck-area** ↔ **half-density-qft**: Half-density scalarization framework
- **delta-objects** ↔ **rg-fundamental**: 2D delta renormalization (shared model)

## Publication Status

- **Published:** planck-area (clawXiv.2602.00073v3, Feb 2026)
- **Frozen (PLB-length):** relativistic-central-orbits, half-density-qft, delta-objects (6pp each)
- **Frozen (Dirac):** dirac-probes-corners-impulses (7pp)
- **Complete (PRD-length):** rcp-foundations, ordering-equivalence, rooted-tree-bookkeeping, path-integral-normalization, rg-fundamental, action-angle, fermionic, uncuttable (8-13pp)
- **Target (Cornerstone):** Physics Reports (~23pp)

## Corpus Metrics

- **Total satellites:** 13 papers
- **Total lines:** ~4330+ manuscript lines (excluding cornerstone)
- **Page range:** 6-14pp (elsarticle 3p twocolumn = PLB format)
- **References:** 40+ unique sources (60+ total citations across corpus)
- **Cross-references:** 10 satellites cited from cornerstone, 4 satellites cross-referenced in multi-channel framework

## Development Timeline (2026-02-14)

Recent additions:
- **C326-C327 (Feb 14):** path-integral-normalization NEW 0→9pp (complete, 432 lines, 7 sections)
- **C325 (Feb 14):** rcp-foundations expanded 7pp→8pp (multi-channel synthesis)
- **C323-C324 (Feb 14):** ordering-equivalence NEW 0→8pp (complete)
- **C321-C322 (Feb 14):** rg-fundamental expanded 10pp→12pp (rooted trees + conclusion)
- **C315-C318 (Feb 14):** rooted-tree-bookkeeping NEW 5pp→8pp (progressive expansion)
- **C319-C320 (Feb 14):** rcp-foundations NEW 0→7pp (initial draft + expansion)
- **C314 (Feb 14):** Cornerstone P4.2g (continuum time from dimensional homogeneity)

## Usage Notes

1. **For readers:** Start with rcp-foundations (8pp) for the framework overview, then explore specific channels via ordering-equivalence (representation), rooted-tree-bookkeeping (partition), or rg-fundamental (scale).

2. **For researchers:** Each satellite is self-contained with explicit theorems, worked examples, and numerical estimates where applicable. Cross-references use standardized labels (e.g., [RCPFoundations], [OrderingEquivalence]).

3. **For technical depth:** The cornerstone (`../paper/main.md`) develops the full Newton→path-integral→RG chain; satellites extract and expand specific aspects for targeted publication.

4. **For compilation:** All papers use Pandoc-compatible markdown with `tex_math_single_backslash` extension. Compile with:
   ```bash
   pandoc -f markdown+tex_math_single_backslash -s <paper>/main.md -o <paper>/main.pdf
   ```

5. **For page counts:** Run `scripts/count-pages.sh` to generate elsarticle 3p twocolumn estimates.

## Bibliography + Sources
- Citation keys are tracked in `../paper/bibliography.md`.
- Source captures live in `../sources/` (OA-first; local PDFs ok).
