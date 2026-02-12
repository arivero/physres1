# B12 Execution: Resolve PENDING bibliography items

Date: 2026-02-12

## Work performed

### 1. `[Dirac1933]` — ACQUIRED (OA)
- Source: <https://www.informationphilosopher.com/solutions/scientists/dirac/Lagrangian_1933.pdf>
- Found via web search; OA PDF scan of original article.
- Ingested into `sources/dirac1933-c72e7a7e.md` (20,254 chars).
- Converted with pdfminer.six.

**Key content (for durable record):**
Dirac argues the Lagrangian formulation is more fundamental than the Hamiltonian, owing to the action principle's natural relativistic invariance. The central result is the composition law, equations (11)–(12): the transformation function `(qt|qT)` equals an integral over all intermediate coordinates of products of short-time transformation functions, each proportional to `exp[iS/ℏ]`. In the final "Application to Field Dynamics" section (pp. 319–320), Dirac introduces generalized transformation functions for space-time regions, whose composition law requires integrating over field values on the common boundary. This is the direct precursor to Feynman's sum-over-histories and the prototype of the compositional/refinement structure central to the manuscript.

**Relevant section references:** Eqs. (8)–(12), pp. 316–318; pp. 319–320 (field dynamics composition).

### 2. `[Kurasov1996DiscontinuousTest]` — ACQUIRED (sci-hub)
- DOI: `10.1006/jmaa.1996.0256`
- PDF retrieved from sci-hub CDN (sci.bban.top); 5 pages, 227 KB.
- Ingested into `sources/kurasov1996-e603edd8.md` (99,336 chars).

**Key content (for durable record):**
Kurasov develops distribution theory for test functions with discontinuities at a point (test-function space K, Definition 1). He defines a generalized derivative (Definition 4) that avoids delta-function artifacts from the discontinuity. The main theorem proves that the four-parameter family of singular interactions (delta + delta-prime + singular metric + singular gauge field) describes ALL self-adjoint extensions of −d²/dx² on functions vanishing near the origin. This provides the rigorous framework for point interactions (boundary conditions) that arise when composing path-integral amplitudes across interfaces.

**Relevant section references:** Abstract and Section 1 (pp. 297–300, main theorem); Section 2 (pp. 300–302, Definitions 1–4).

### 3. `[Wilson1974Confinement]` — ACQUIRED (sci-hub)
- DOI: `10.1103/PhysRevD.10.2445`
- PDF retrieved from sci-hub CDN; 15 pages, 2.0 MB.
- Ingested into `sources/wilson1974-70eff6a5.md` (61,205 chars).
- Note: PDF includes tail of preceding article in same journal issue; Wilson paper begins at "PHYSICAL REVIEW D VOLUME 10, NUMBER 8".

**Key content (for durable record):**
Wilson formulates lattice gauge theory by placing gauge variables on links of a discrete Euclidean lattice, preserving exact gauge invariance at any lattice spacing. The Feynman path-integral expression (Section II) weights quark paths by `exp[ig ∫ A_μ ds^μ]`. The strong-coupling expansion (Section IV) shows the gauge-field average of a Wilson loop behaves as `exp(−const × Area)`, yielding area-law confinement. The expansion generates sums over all surfaces (tiled by plaquettes) bounded by the quark loop — a concrete realization of compositional refinement structure where the lattice provides refinement and the path integral composes amplitudes by summing over interpolating surfaces.

**Relevant section references:** Section II (pp. 2447–2449, path integral); Section III.B (pp. 2449–2452, lattice quantization); Section IV (pp. 2453–2456, strong-coupling expansion and area law).

### 4. `[Groenewold1946ElementaryQM]` — NOT ACQUIRED (PENDING_LIBRARY)
- DOI: `10.1016/S0031-8914(46)80059-4`
- Attempted sci-hub: HTML page returned, but CDN PDF returned 404.
- Attempted Semantic Scholar: no direct PDF available.
- ScienceDirect: paywall.
- **Status: PENDING_LIBRARY** — requires institutional access or physical library visit.

**Known content (from secondary sources):**
Groenewold's paper establishes the no-go theorem (Groenewold–van Hove theorem): there is no map from classical observables to quantum operators that preserves both the Lie algebra structure (commutators ↔ Poisson brackets) and the associative algebra structure beyond degree-2 polynomials. This is the key obstruction that motivates deformation quantization as a controlled departure from exact correspondence.

### 5. `[Moyal1949StatisticalQM]` — ACQUIRED (sci-hub)
- DOI: `10.1017/S0305004100000487`
- PDF retrieved from sci-hub CDN; 26 pages, 1.4 MB.
- Ingested into `sources/moyal1949-be61c6b3.md` (61,789 chars).

**Key content (for durable record):**
Moyal reformulates quantum mechanics as non-deterministic statistical dynamics in phase space via the Wigner function F(p,q). The quantum equation of motion generalizes Liouville's theorem through the "Moyal bracket" — the sine-deformation of the Poisson bracket (eq. 7-10). The phase-space transformation function K satisfies a composition law (eq. 9-8): `K(p,q|p₀,q₀; t₂−t₀) = ∫ K(p,q|p₁,q₁; t₂−t₁) K(p₁,q₁|p₀,q₀; t₁−t₀) dp₁ dq₁`, which is the phase-space analogue of the Dirac/Feynman composition law. The perturbative expansion (eq. 10-2) of K from an infinitesimal kernel S provides a refinement-limit construction.

**Relevant section references:** §3 eq. (3-7) (Wigner function); §7 eqs. (7-7)/(7-10) (Moyal bracket); §9 eq. (9-8) (composition law); §10 eq. (10-2) (perturbative expansion).

### 6. `[Velhinho2017InfDimMeasure]` — ACQUIRED (MDPI OA)
- DOI: `10.3390/math5030044`
- PDF retrieved from MDPI resource server; 490 KB.
- Ingested into `sources/velhinho2017-9603cff6.md` (78,071 chars).

**Key content (for durable record):**
Velhinho reviews measure construction on infinite-dimensional spaces via projective limits. Theorem 5 (Section 4): for compact Hausdorff projective families, any self-consistent family of regular Borel probability measures on finite-dimensional spaces extends uniquely to a σ-additive measure on the projective limit. Theorem 6 (Section 5): the algebraic dual E^a of any real linear space E is itself a projective limit of finite-dimensional duals. The self-consistency condition (eq. 40) is precisely the requirement that coarser-grained amplitudes are marginals of finer-grained ones — the rigorous measure-theoretic underpinning for the refinement-limit construction of path-integral measures.

**Relevant section references:** §4 Theorem 5 (pp. 7–9); §5 Theorem 6 (pp. 10–11); eq. (40) (consistency = marginalization).

### 7. `[Connes1994]` — PENDING_LIBRARY
- Book (Academic Press, 1994). Not available via OA or sci-hub.
- Requires physical library visit.

### 8. `[Landsman1998]` — PENDING_LIBRARY
- Book (Springer, 1998). Not available via OA or sci-hub.
- Requires physical library visit or institutional Springer access.

## Keys updated
- `[Dirac1933]`: PENDING → ACQUIRED (OA PDF scan)
- `[Kurasov1996DiscontinuousTest]`: PENDING → ACQUIRED (sci-hub)
- `[Wilson1974Confinement]`: PENDING → ACQUIRED (sci-hub)
- `[Moyal1949StatisticalQM]`: PENDING → ACQUIRED (sci-hub)
- `[Velhinho2017InfDimMeasure]`: not-yet-ingested → ACQUIRED (MDPI OA)
- `[Groenewold1946ElementaryQM]`: PENDING → PENDING_LIBRARY (sci-hub CDN 404)
- `[Connes1994]`: pending → PENDING_LIBRARY (book, no online source)
- `[Landsman1998]`: pending → PENDING_LIBRARY (book, no online source)

## Artifacts produced
- `paper/bibliography.md`: updated (8 status changes)
- `sources/dirac1933-c72e7a7e.md`: added
- `sources/kurasov1996-e603edd8.md`: added
- `sources/wilson1974-70eff6a5.md`: added
- `sources/moyal1949-be61c6b3.md`: added
- `sources/velhinho2017-9603cff6.md`: added

## Notes for promotion
- `[Dirac1933]`: already cited in Introduction (Section 1). No new citations needed, but the composition law eqs. (11)–(12) could be referenced more explicitly in Section 5 (composition law).
- `[Moyal1949StatisticalQM]`: already cited in Section 7 (deformation quantization). The phase-space composition law eq. (9-8) could strengthen the refinement-limit narrative.
- `[Wilson1974Confinement]`: already cited in Section 8 (RG). The surface-sum structure could be noted in a future C cycle.
- `[Kurasov1996DiscontinuousTest]`: already cited in Section 4. Content now verified.
- `[Velhinho2017InfDimMeasure]`: already cited in H0.2a. Content now verified — Theorem 5 directly supports the refinement-limit construction.

## Cross-cutting observation
All five acquired sources instantiate the same structural pattern: amplitudes (or measures) on a large/continuum space are constructed by composing consistent finite/local data and passing to a limit. Dirac and Moyal give composition laws for propagators (coordinate-space and phase-space). Wilson shows compositional structure on a lattice with surface sums. Velhinho provides the rigorous measure-theoretic framework (projective limits). Kurasov supplies distributional technology for composition boundaries with discontinuities/point interactions.
