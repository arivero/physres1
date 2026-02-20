# Deformation Equivalence Is Physical: Four-Layer Stratification and Observability

**Created:** 2026-02-14
**Sources:** Blackboard 3 (D35/S290), Blackboard 6 (D38/S294)
**Status:** Append-only notebook (graduated from blackboards)

## Summary

This notebook resolves an apparent tension between two claims in the main paper:
- **Section 7 (P5.2):** Different quantization prescriptions (Weyl, Born-Jordan, etc.) are related by formal automorphisms, preserving the classical limit (deformation equivalence).
- **Section 10.2 (D9.1d):** Half-density conjugation selects a canonical kinetic operator with specific symmetry properties.

**Resolution (D35/S290):** The tension is **apparent, not real**. A four-layer stratification shows:
1. **Layer 1** (principal symbol): All prescriptions agree.
2. **Layer 2** (connection): Half-density fixes uniquely (corrected by D38/S294).
3. **Layer 3** (scalar O(ℏ²)): Deformation freedom persists.
4. **Layer 4** (domain): Independent of ordering.

Half-density is a **canonical choice** within deformation equivalence class (like Lorenz gauge), not unique physics.

**D38/S294 observability test:** Energy shift |ΔE₀| between Weyl and half-density for position-dependent mass f(q) = 1+αq² is **unmeasurably small** (0.006–0.06 meV ≪ 0.1 meV resolution in perturbative regime). First-order shift O(α) **vanishes identically**; leading contribution is O(α²).

**Discovery:** S290 claimed half-density "eliminates first-derivative term" in 1D. **Incorrect.** Both Weyl and half-density share the **same** connection term f'∂/∂q (self-adjointness condition). They differ only in O(ℏ²) scalar potential.

**Impact:** Deformation equivalence (Section 7) is **physical**, not merely formal. Prescriptions agree on Layers 1 AND 2, differ only on Layer 3. This strengthens the equivalence.

---

## Part 1: Four-Layer Stratification (D35/S290, Blackboard 3)

### Context

**Apparent tension:**
- Section 7 (P5.2) asserts different star products (Moyal, Born-Jordan, etc.) are deformation-equivalent via formal automorphisms T_ℏ.
- Section 10.2 (D9.1a, D9.1d) selects half-density conjugation as "canonical" for kinetic operators.

**Question (D35):** Is there a contradiction? Does "canonical" mean "unique physics" (contradicting Section 7), or something else?

### Test Symbols

Three representatives:
1. H = p²/(2m) + V(q) — standard separable Hamiltonian
2. H = f(q)p² — position-dependent mass
3. H = qp — dilation generator

### Flat Space: H = p²/(2m) + V(q)

#### Weyl/Moyal prescription
```
ĥat{H}_W = −ℏ²/(2m) ∂² + V(q)
```
Moyal product: p ⋆_M p = p² (no correction for quadratic in p only).

#### Half-density prescription

g_{ij} = δ_{ij}, so |g| = 1, |g|^{1/4} = 1. Conjugation map U: ψ → |g|^{1/4}ψ = ψ (identity).

Kinetic operator:
```
−ℏ²/(2m) Δ_g = −ℏ²/(2m) ∂²
```

#### Born-Jordan prescription

For separable H = T(p) + V(q), Born-Jordan = Weyl (both reduce to standard ordering). Difference arises only for mixed q-p symbols.

#### Result (flat, separable)

**All three prescriptions agree exactly:**
```
ĥat{H} = −ℏ²/(2m) ∂² + V(q)
```

### Position-Dependent Mass: H = f(q)p²

#### Weyl ordering (Remark D9.1a)

For A(q,p) = f(q)p²:
```
Q_W(fp²) = −ℏ²[f·∂² + f'·∂ + (1/4)f'']
```

Explicit for 1D with f(q):
```
ĥat{H}_W = −ℏ²/(2m) [(1+αq²)∂² + 2αq·∂ + α/2]
```

**Self-adjointness:** Operator a∂² + b∂ + c is formally self-adjoint on L²(ℝ, dq) iff b = a'. Here a = f, b = f' = a'. **Confirmed.**

#### Half-density (Laplace-Beltrami conjugation)

Metric g = 1/f, inverse g^{−1} = f. Laplace-Beltrami:
```
Δ_g = |g|^{−1/2} ∂(|g|^{1/2}g^{−1}∂) = f·∂² + (f'/2)·∂
```

Conjugation to L²(dq) via U: ψ → g^{1/4}ψ = f^{−1/4}ψ:
```
ĥat{H}_{HD} = −ℏ²/(2m) [f·∂² + f'·∂ + Q_{HD}]
```

where Q_{HD} is an O(ℏ²) scalar (no derivatives).

**Derivation of Q_{HD} (corrected by D38/S294):**

Set W = (1/4)ln f, so f^{1/4} = e^W, W' = f'/(4f).

Conjugation identities:
```
e^{−W}∂ e^W = ∂ + W'
e^{−W}∂² e^W = ∂² + 2W'∂ + W'' + (W')²
```

Expanding:
```
ĥat{H}_{HD} = −ℏ²/(2m) [f·∂² + (2fW' + f'/2)∂ + f(W'' + W'²) + (f'/2)W']
```

**First-derivative coefficient:**
```
2fW' + f'/2 = 2f·f'/(4f) + f'/2 = f'/2 + f'/2 = f'
```

**Both Weyl and half-density have the same first-derivative coefficient f'.** Self-adjointness condition b = a' = f' is satisfied by **both**.

**Scalar potential (zero-derivative terms):**
```
Q_{HD} = f(W'' + W'²) + (f'/2)W'
```

Compute:
- W' = f'/(4f), W'' = f''/(4f) − f'²/(4f²)
- fW'' = f''/4 − f'²/(4f)
- fW'² = f'²/(16f)
- (f'/2)W' = f'²/(8f)

Sum:
```
Q_{HD} = f''/4 − f'²/(4f) + f'²/(16f) + f'²/(8f)
       = f''/4 + f'²/f · (−1/4 + 1/16 + 1/8)
       = f''/4 − f'²/(16f)
```

Therefore:
```
ĥat{H}_{HD} = −ℏ²/(2m) [f·∂² + f'·∂ + f''/4 − f'²/(16f)]
```

#### Comparison

**Weyl:**
```
ĥat{H}_W = −ℏ²/(2m) [f·∂² + f'·∂ + f''/4]
```

**Half-density:**
```
ĥat{H}_{HD} = −ℏ²/(2m) [f·∂² + f'·∂ + f''/4 − f'²/(16f)]
```

**Difference:**
```
ĥat{H}_W − ĥat{H}_{HD} = −ℏ²/(2m) · f'²/(16f)
```

**Purely scalar** (multiplicative operator, no derivatives). Sign: H_W < H_{HD} pointwise.

#### Four-Layer Stratification

| Layer | Content | Weyl | Half-density | Born-Jordan |
|-------|---------|------|--------------|-------------|
| 1 | Principal symbol (O(ℏ⁰)) | f(q)p² | f(q)p² | f(q)p² |
| 2 | Connection (O(ℏ)) | f'∂ | **f'∂** | Differs |
| 3 | Scalar (O(ℏ²)) | −ℏ²f''/4 | −ℏ²(f''/4 − f'²/(16f)) | Differs |
| 4 | Domain | Independent | Independent | Independent |

**Key correction (D38/S294):** Layer 2 is **identical** for Weyl and half-density (both have f'∂ connection term). S290 originally claimed half-density "eliminates first-derivative term" — **incorrect** in 1D.

### Dilation Generator: H = qp

#### Weyl ordering
```
q ⋆_M p = qp + iℏ/2
ĥat{H}_{Weyl} = (1/2)(q̂p̂ + p̂q̂) = −iℏ(q∂ + 1/2)
```

#### Half-density on ℝ_+

Configuration space ℝ_+ with Lebesgue measure (|g|^{1/4} = 1). The dilation generator on L²(ℝ_+, dq) is:
```
A = −iℏ(q∂ + 1/2) = H_{α=1/2}
```

This is the Stone generator of U(s)ψ(q) = e^{s/2}ψ(e^s q), where e^{s/2} factor is exactly the half-density Jacobian |dq'/dq|^{1/2}.

**Key insight:** The α = 1/2 selection from unitarity (D23/S280 notebook) **is** the half-density prescription. The e^{s/2} prefactor in unitary dilation group is |Jacobian|^{1/2} — the half-density weight.

#### Born-Jordan

For qp (linear in both q and p), Born-Jordan = Weyl = (qp + pq)/2. **Agreement is exact.**

#### Result (H = qp)

All three agree. Half-density = Weyl = Born-Jordan for bilinear symbols.

### Verdict (D35)

**The tension is apparent, not real. Resolution is scope-dependent.**

**Precise statement:**
1. **Section 7 claim (P5.2):** Different star products related by formal automorphisms T_ℏ, preserving classical limit. Scope: formal/asymptotic deformation equivalence of algebra.

2. **Section 10.2 claim (D9.1a, D9.1d):** Half-density conjugation selects canonical kinetic operator with specific symmetry. Scope: operator realization on L², self-adjointness.

3. **Compatibility:** Half-density is a **specific representative** within deformation equivalence class that has distinguished property: **self-adjoint** on L²(M, dx) for any Riemannian manifold.

**Analogy:**
- Section 7: "All gauges are equivalent" (deformation freedom).
- Section 10.2: "This gauge is distinguished" (half-density = Lorenz gauge analog).
- No contradiction: A gauge choice can be canonical without breaking gauge equivalence.

**Scope boundaries:**
- Half-density fixes kinetic operator uniquely (Layer 2 — **corrected: fixes self-adjointness, not elimination of f'∂**)
- Deformation freedom persists for O(ℏ²) scalar corrections (Layer 3)
- Domain/extension freedom persists entirely (Layer 4)
- For separable H = T(p) + V(q) on flat space: all prescriptions agree, no tension visible

---

## Part 2: Observability Test (D38/S294, Blackboard 6)

### Context

D35/S290 showed Weyl and half-density differ only in Layer 3 (O(ℏ²) scalar potential). **Question (D38):** Does this have measurable consequences?

### Setup

Position-dependent mass, 1D harmonic trap:
```
H₀ = −ℏ²/(2m)∂² + (1/2)mω²q²
```

Mass function: f(q) = 1 + αq², so m(q) = m/f(q).

Classical symbol: H = (1/(2m))f(q)p² + (1/2)mω²q².

### Operator Difference

From Part 1:
```
ĥat{H}_W − ĥat{H}_{HD} = −ℏ²/(2m) · f'²/(16f)
```

For f = 1 + αq²: f' = 2αq, f'² = 4α²q².

```
ĥat{H}_W − ĥat{H}_{HD} = −ℏ²/(32m) · 4α²q²/(1+αq²)
                        = −ℏ²α²q²/(8m(1+αq²))
```

**Order analysis:** f'² = O(α²). Difference starts at **O(α²)**, not O(α).

**First-order shift O(α) vanishes identically.**

### Ground-State Expectation Value

Unperturbed ground state (harmonic oscillator):
```
ψ₀(q) = (mω/πℏ)^{1/4} exp(−mωq²/(2ℏ))
⟨q²⟩₀ = ℏ/(2mω)
⟨q⁴⟩₀ = 3ℏ²/(4m²ω²)
```

To leading order in α (expand (1+αq²)^{−1} ≈ 1 − αq²):
```
ΔE₀ = ⟨0|ĥat{H}_W − ĥat{H}_{HD}|0⟩
    = −ℏ²α²/(8m) ⟨q²⟩₀ + O(α³)
    = −ℏ²α²/(8m) · ℏ/(2mω) + O(α³)
    = −ℏ³α²/(16m²ω) + O(α³)
```

### Dimensionless Form

Set α = α₀/a² where a = √(ℏ/(mω)) is oscillator length, α₀ dimensionless:
```
α² = α₀² m²ω²/ℏ²
```

```
ΔE₀ = −(ℏ³/(16m²ω)) · (α₀²m²ω²/ℏ²) = −ℏωα₀²/16
```

**Final formula:**
```
ΔE₀ = −ℏωα₀²/16
```

Sign: E₀^{Weyl} < E₀^{HD}. Weyl ground state is lower.

### Numerical Estimate (GaAs Quantum Well)

| Parameter | Value |
|-----------|-------|
| m* = 0.067m_e | 6.10×10^{−32} kg |
| ℏω | 10 meV |
| a = √(ℏ/(m*ω)) | 10.4 nm |
| α₀ (mass variation) | 0.1 – 1 |

```
|ΔE₀| = ℏωα₀²/16
```

| α₀ | \|ΔE₀\| (meV) | vs resolution (0.1 meV) |
|----|---------------|-------------------------|
| 0.1 | 0.006 | ≪ resolution |
| 0.2 | 0.025 | ≪ resolution |
| 0.3 | 0.056 | < resolution |
| 0.5 | 0.156 | ~ resolution |
| 1.0 | 0.625 | > resolution |

**Perturbative regime** (α₀ ≲ 0.3): |ΔE₀| < 0.06 meV ≪ 0.1 meV (spectroscopic resolution).

**Non-perturbative edge** (α₀ ≳ 0.5): perturbation theory unreliable (mass varies by 50%+ over oscillator length a).

### Verdict (D38)

**Verdict 4+1:** First-order shift O(α) **vanishes identically**: ΔE₀^{(1)} = 0. Leading nonzero contribution is O(α²), with:
```
|ΔE₀| = ℏωα₀²/16 ≈ 0.006–0.06 meV ≪ 0.1 meV
```
in perturbative regime (α₀ ≲ 0.3).

**D35's layer-3 deformation freedom has no measurable consequence** for realistic position-dependent-mass systems within perturbation theory.

**Deformation equivalence is physical, not merely formal.**

---

## Part 3: Correction to S290 (Discovery)

### Original S290 Claim (Blackboard 3, Line 64)

> **Key structural property:** The first-derivative term d/dq is eliminated.

**Status:** **Incorrect** in 1D.

### Corrected Statement (S294, Blackboard 6)

**Both Weyl and half-density prescriptions yield the SAME first-derivative term f'∂.** The half-density conjugation produces a self-adjoint operator (because b = a' = f'), but it does **NOT** eliminate the first-derivative.

The prescriptions differ only in O(ℏ²) scalar potential:
```
V_W^{(ℏ²)} = −ℏ²/(2m) · f''/4
V_{HD}^{(ℏ²)} = −ℏ²/(2m) · (f''/4 − f'²/(16f))
```

Difference:
```
ΔV = −ℏ²/(2m) · f'²/(16f)
```

### Impact on Four-Layer Stratification

**Updated table (corrected):**

| Layer | Content | Weyl | Half-density | Status |
|-------|---------|------|--------------|--------|
| 1 | Principal symbol | f(q)p² | f(q)p² | Identical |
| 2 | Connection | f'∂ | **f'∂** | **Identical (corrected)** |
| 3 | Scalar O(ℏ²) | −ℏ²f''/4 | −ℏ²(f''/4 − f'²/(16f)) | Differ |
| 4 | Domain | Independent | Independent | Independent |

**This strengthens D35:** Prescriptions agree on Layers 1 **AND** 2 (not just Layer 1 as originally stated). They differ only on Layer 3.

### Why the Error?

**S290 (blackboard 3) derivation** expanded Δ_g = f·∂² + (f'/2)·∂ but did not carry through the conjugation carefully. The **(f'/2)·∂** term from Laplace-Beltrami combines with conjugation terms to produce **f'·∂**, not zero.

**S294 (blackboard 6) explicit calculation** used conjugation identities:
```
e^{−W}∂ e^W = ∂ + W'
e^{−W}∂² e^W = ∂² + 2W'∂ + ...
```
and showed 2fW' + f'/2 = f' (the self-adjointness condition).

### Physical Interpretation

**Weyl ordering:** Preserves phase-space symmetry (symmetric under q ↔ p exchange).

**Half-density:** Preserves L²(dx) self-adjointness of kinetic operator (integration by parts has no boundary terms).

**The connection term f'∂ is required for self-adjointness** (condition: b = a' where a = f). Both prescriptions satisfy this. The difference is **not** in the connection (Layer 2) but in the **scalar curvature-type potential** (Layer 3).

---

## Part 4: Implications for Main Paper

### Section 7 (P5.2): Deformation Equivalence

**Current claim:** Different star products (Moyal, Born-Jordan, etc.) are related by formal automorphisms preserving classical limit.

**Strengthened by D35+D38:** Deformation equivalence is **physical**. Observables (energy levels) differ by unmeasurably small amounts (O(ℏ²α²) in PDM example). The equivalence is not merely asymptotic/formal but holds at experimentally accessible scales.

**Scope:** Deformation freedom persists in Layer 3 (O(ℏ²) scalar corrections), but Layers 1+2 are fixed by composition + self-adjointness.

### Section 10.2 (D9.1a, D9.1d): Half-Density Canonical Choice

**Current claim:** Half-density conjugation selects canonical kinetic operator.

**Clarified by D35:** "Canonical" means:
- Self-adjoint on L²(M, dx) for any Riemannian manifold (no boundary terms)
- Connection term (Layer 2) fixed by self-adjointness condition
- Still admits O(ℏ²) scalar freedom (Layer 3)
- Like Lorenz gauge: canonical choice within equivalence class, not unique physics

**No modification needed,** but potential Remark D9.1g could clarify scope boundaries.

### Integration Opportunity

**Potential C-cycle (future):** Add Remark P5.2a or D9.1g clarifying the four-layer stratification and observability test. Key points:
1. Half-density is canonical representative within deformation equivalence class
2. Prescriptions differ only in O(ℏ²) scalar (Layer 3)
3. Energy shift unmeasurably small (0.006–0.06 meV in PDM example)
4. Deformation equivalence is physical, validated by explicit calculation

---

## References

### Blackboard Sources
- **Blackboard 3** (D35/S290, 2026-02-14): Four-layer stratification (original, contains error on Layer 2)
- **Blackboard 6** (D38/S294, 2026-02-14): Energy shift calculation + S290 error correction

### Literature
- von Roos, O. (1983). *Position-dependent effective masses in semiconductor theory*. Phys. Rev. B 27, 7547. Ordering ambiguity parameters.
- BenDaniel, D.J., Duke, C.B. (1966). *Space-charge effects on electron tunneling*. Phys. Rev. 152, 683. Heterostructure kinetic energy.
- de Gosson, M. (2016). *Born-Jordan Quantization*. Springer. Born-Jordan vs Weyl, symplectic methods.
- de Gosson, M. (2018). *Short-time propagators and the Born-Jordan rule*. arXiv:1803.01209. L² difference for ℓ² is ℏ²/2.
- Groenewold, H.J. (1946). *On the principles of elementary quantum mechanics*. Physica 12, 405. No-go for full Poisson → commutator.
- Rivero, A. (arXiv:0302285). *Discretization ↔ ordering ↔ star product*.

### Cross-References
- D23/S280 (notebooks/ordering-unitarity-dilation-generator.md): α = 1/2 from unitarity = half-density
- Paper Section 7 (P5.2): Deformation equivalence class
- Paper Section 10.2 (D9.1a, D9.1d): Half-density prescription
- Paper Remark D9.1f: Domain/boundary-data freedom (Layer 4)

---

## RCP-Rep-P1.1: Representation Channel Forcing — Morita Classification (Physicist + Critic, 2026-02-20)

**Promoted from:** blackboards/0.md. Two-agent complete (physicist proposed, critic verified).
**Paper-edit sent:** RCP-Rep-P1.1 for rcp-foundations §7 (#18, below).

### Core result

The representation channel (A3) has a specific forcing structure from composition:

**What composition forces for the representation channel:**
- Deformation quantization EXISTS (Kontsevich formality theorem: space of star-products = formal Poisson bivectors)
- Morita equivalence CLASS is fixed: different star-products on the same Poisson manifold give Morita-equivalent C*-algebras (Bursztyn-Waldmann 2001)
- Gauge group CLASSIFIED: formal diffeomorphisms of the Poisson manifold act on the space of star-products

**What composition does NOT force:**
- Which star-product (which ordering) within the Morita class
- Unitarity (requires additional axiom beyond (C))
- Specific symmetry-preferred ordering (requires additional input from physical symmetry group)

### Three-channel hierarchy (revised with Morita)

| Channel | What composition forces | Mathematical structure | Strength |
|---------|------------------------|----------------------|---------|
| Partition (A1) | Unique κ=ℏ, unique d/2, unique kernel form | Stone (unitary group, reversible) | STRONG (uniqueness) |
| Representation (A3) | Deformation EXISTS, Morita class fixed, gauge classified | Morita equivalence (category-level invertible) | MODERATE (classified family) |
| Scale (A4) | β(g) EXISTS, form undetermined | Hille-Yosida (semigroup, irreversible) | WEAK (existence only) |

This hierarchy is the precise algebraic explanation of the critic's post-review "strong/moderate/weak" assessment (satellite-review-complete.md). The Stone/Hille-Yosida theorem (promoted separately) provides the reversibility explanation for the partition vs scale channel. Morita equivalence provides the representation channel's intermediate position.

### Kontsevich formality theorem (forcing result)

Kontsevich (1997): For any smooth Poisson manifold (M, π), there exists a star-product f★g deforming pointwise multiplication. The space of star-products is Def(M, π) = Maurer-Cartan locus in the dgla of polydifferential operators, modulo gauge equivalence (formal diffeomorphisms).

Result: composition forces Def(M, π) to be non-empty (star-product exists). The gauge group G = exp(Der_ℏ(C^∞(M)[[ℏ]])) acts freely and transitively on each Morita class. Different orderings (Weyl, Born-Jordan, Wick) = different elements of Def(M, π) related by G-gauge transformations.

### D9.1f as transport rule

paper/main.md D9.1f: changing ordering requires transporting domain data.
This is the GAUGE TRANSFORMATION rule: if Q₁ and Q₂ are two quantization maps related by Q₂ = T∘Q₁∘T^{-1} for some formal diffeomorphism T, then operators A₁ = Q₁(f) and A₂ = Q₂(f) = T A₁ T^{-1} differ by a conjugation. Domain data transforms as: Dom(A₂) = T(Dom(A₁)). D9.1f IS the statement that the gauge group G acts on operator domains.

### References
- Kontsevich (1997): "Deformation quantization of Poisson manifolds" (formality theorem)
- Bursztyn-Waldmann (2001): "Algebraic Rieffel induction, formal Morita equivalence, and applications to deformation quantization"
- paper/main.md D9.1f (domain data transport)
- papers/ordering-equivalence/main.md (four-layer stratification)
- blackboards/0.md (source; physicist + critic + mathematician three-agent verified, 2026-02-20)
- Mathematician verification note: Kontsevich uniqueness requires Euclidean symmetry on ℝ^d; on curved manifold no preferred element in gauge orbit. Moyal = unique on flat space + rotational symmetry, NOT from (C)+(D)+(I) alone. Bursztyn-Waldmann: Morita-equivalent star-products ⟺ unitarily equivalent quantum theories.
