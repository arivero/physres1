# D63 Discovery: What would stage 4 of the forced-completion chain require?

Date: 2026-02-14
Parent: D60 (forced-completion chain synthesis), D54 (QFT two-layer), D57 (failure taxonomy)

## Novelty target
Determine whether the forced-completion chain (calculus → QM → QFT) has a stage 4,
and if so, what obstruction triggers it and what completion would resolve it.

## Key analysis

### Pattern in stages 1-3
Each stage: composition works at level N, but naive extension to N+1 is ill-defined.
Forced completion = minimum structure restoring composability.
- 1→2: temporal composition of amplitudes. Obstruction: delta kernels fail to compose
  smoothly. Completion: finite κ=ℏ, Gaussian kernels.
- 2→3: infinite-mode assembly. Obstruction: Π_k (m_k/t)^{1/2} diverges.
  Completion: RG flow (A4) as assembly regulator.

### Stage 3→4: composition over dynamical geometries
In QFT on fixed background, composition integrates over field configurations on
a given spatial slice. When gravity is dynamical, the slice itself is a degree of
freedom. The composition integral becomes a sum over 3-geometries:

K[g_f, g_i; T] = ∫ K[g_f, h; t₁] K[h, g_i; t₂] Dh

(DeWitt-Wheeler superspace path integral)

### Obstruction (twofold)
1. **Perturbative non-renormalizability**: [G] = L² in d=4, counterterms proliferate.
   A4 (standard RG) cannot handle this — it's not just an assembly problem.
2. **Partition concept dissolves**: A1 presupposes a fixed notion "t = t₁ + t₂".
   General covariance makes temporal slicing gauge-dependent. The composition
   integral's DOMAIN (what is "the spatial slice"?) is ill-defined.

### Qualitative difference from stages 1-3
Stages 1-3 fix **divergences of an existing composition integral** (integrand issues).
Stage 4 challenges **the existence of the domain** of the composition integral.
This is a failure of the partition concept, not of the integrand.

### What a hypothetical A6 would require
A completion must define composition without preferred temporal foliation. Candidates:
- Cobordism-level composition (Atiyah-Segal extended to summing over cobordisms)
- Asymptotic safety (UV completion of gravitational RG)
- Holographic boundary composition (AdS/CFT: compose on the boundary where gravity
  is non-dynamical)
- Worldsheet composition (string theory: composition on 2d worldsheet where conformal
  invariance provides an alternative to temporal slicing)

### Connection to project
The Planck-area paper's d=4 selection (length^{d/2} = length^{d-2} only at d=4)
hints that the half-density framework already "knows" about gravity. But the completion
mechanism remains unknown.

## Verdict
**STAGE 4 EXISTS (obstruction concrete, completion unknown).** The chain does NOT
terminate at QFT. But unlike stages 1-3 (unique forced completion), stage 4 likely
**branches** — multiple candidate completions, none yet derived from composition
principle alone.

### Key insight
Stage 3→4 is qualitatively distinct: it challenges the DOMAIN of composition
(what is a spatial slice in quantum gravity?), not just the INTEGRAND (UV behavior).
A hypothetical A6 would define composition at the cobordism level.

### Confidence
- Obstruction identification: HIGH
- Specific completion: LOW (speculative)

### Promotability
The obstruction analysis is paper-remark quality (3-4 sentences). The specific
completion candidates should remain outlook/speculative. Natural target: cornerstone
Section 9.6 Conclusion or as an addendum to the forced-completion table (P9.1).

## Spawned cycles
- C333 (optional): Promote D63 obstruction to cornerstone P9.1a remark (short).
