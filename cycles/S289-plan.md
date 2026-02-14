# S289 Plan: Distributional convergence test for κ→0

Date: 2026-02-14
Parent: D31
Track: Study (technical calculation)

## Goal
Formalize the distributional obstruction that prevents κ→0 while maintaining identity limit, making P4.2 conclusion (iii) mathematically precise.

## Context from Haiku search (papers/)
**Existing content** (agent a8797e0 findings):
- delta-objects: identity kernel as distribution δ^(d)(x−y), mollifier limits, half-density scaling
- dirac-probes: Theorem 2.1 (mollifier localization), regularity gates for pointwise convergence
- half-density-qft: heat kernel `(4πt)^{-d/2}`, Gaussian mollifiers with ε^{−d/2} normalization
- **Gap**: No explicit statement about why κ→0 fails distributionally

**Integration target**: delta-objects §4.1c "Why κ→0 fails distributionally"

## Specific task
Test distributional convergence of kernel family K_κ in the κ→0 limit.

Setup:
```
K_t(x,y) = (m/2πκt)^{d/2} exp(im|x−y|²/(2κt))
```

Distributional identity requires:
```
lim_{t→0} ⟨K_t(·,y), φ⟩ = φ(y)  for all test functions φ ∈ C_c^∞
```

**Key question:** What happens if we take κ→0 **before** t→0?
```
lim_{κ→0} lim_{t→0} ⟨K_t, φ⟩ = ???
```

Does this commute with t→0 first?

## In scope
1. Write out distributional pairing ⟨K_t(·,y), φ(·)⟩ = ∫ K_t(x,y) φ(x) dx
2. Analyze κ→0 limit holding t fixed:
   - Normalization (m/2πκt)^{d/2} → ∞ as κ→0
   - Phase exp(im|x−y|²/(2κt)) oscillates infinitely fast
3. Apply stationary phase: only x=y contributes in κ→0 limit
4. Check if this gives δ(x−y) or something else (dimensionally wrong? measure-zero support?)
5. Verdict: does κ→0 preserve distributional identity, or break it?

## Out of scope
- Full functional analysis course on oscillatory integrals (use stationary phase + dimensional analysis)
- κ→∞ limit (that's a separate question, focus on κ→0)
- Curved-space generalization (defer to future)

## Technical approach
1D free particle first:
```
K_t(x,y) = √(m/2πκt) exp(im(x−y)²/(2κt))
```

Pairing with test function φ:
```
⟨K_t(·,y), φ⟩ = ∫ K_t(x,y) φ(x) dx
```

As κ→0 holding t fixed:
- Normalization √(m/2πκt) → ∞
- Oscillation frequency m/(2κt) → ∞
- Stationary phase: only x=y contributes

Does this give φ(y)? Or dimensional mismatch?

## Acceptance tests
1. Derive explicit distributional limit (if it exists)
2. Show κ→0 fails to commute with t→0 limit
3. Identify the obstruction: oscillatory divergence / dimensional / support collapse
4. Write verdict for D31

## Blackboard target
Slot 2 (overwrite S282 Itô-Stratonovich content per LRU)
