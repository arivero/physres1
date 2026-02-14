# P4.2 Hypothesis Reduction via Composition Theorems

**Created:** 2026-02-14
**Sources:** Blackboard 1 (D29/S288), Blackboard 2 (D39/S295)
**Status:** Append-only notebook (graduated from blackboards)

## Summary

This notebook documents the reduction of P4.2's hypothesis count from 4 independent assumptions to ~3 effective hypotheses via two composition theorems:

1. **D29/S288 (2026-02-14):** Exponential weight (L_exp) is a **theorem** of composition + locality, not an independent assumption. Reduces 4 → 3.5 effective hypotheses.

2. **D39/S295 (2026-02-14):** Locality hypothesis (L_loc) is **derivable** from dimensional homogeneity (D) via Levy-Khintchine obstruction. Reduces 3.5 → ~3 effective hypotheses.

**Final result:** P4.2's κ-necessity rests on three independent hypotheses:
- **(C)** Composition: semigroup law K_T = K_t₁ ∘ K_t₂
- **(I)** Identity limit: K_t → δ as t → 0⁺
- **(D)** Dimensional homogeneity: [K] = [length]^{−d}, parameters built from {m, ℏ}

The original hypotheses (L_loc) and (L_exp) are consequences, not assumptions.

---

## Part 1: Exponential Weight Uniqueness (D29/S288, Blackboard 1)

### Context

P4.2 (paper/main.md lines 610-612) originally listed four hypotheses:
- (C) Composition
- (L) Local exponential weight: K(x,y;Δt) = N(Δt) W(S_cl(x,y;Δt)/κ) with W = exp(c₀ S/κ)
- (I) Identity limit
- (D) Dimensional homogeneity

**Question (D29):** Is the exponential form W = exp(c₀ S/κ) uniquely forced, or could other weight functions satisfy (C)+(I)+(D)?

### Hypothesis Decomposition

Hypothesis (L) decomposes into two parts:
- **(L_loc):** Kernel depends on (x,y,Δt) only through S_cl(x,y;Δt)
- **(L_exp):** W = exp(c₀·S/κ) (exponential form)

### Theorem (S288): Exponential Uniqueness

**Claim.** For kernels K_t(x,y) = N(t) W(S_cl(x,y;t)/κ) satisfying composition (C), the weight function W must be exponential: W(σ) = C exp(c₀ σ) for constants C, c₀.

**Proof sketch (1D free particle).**

Classical action: S_cl(x,y;Δt) = m(y−x)²/(2Δt).

Translation invariance: K_t(x,y) = K_t(x−y). Fourier space: K̂_t(p).

Composition → convolution → Fourier product:
```
K̂_T(p) = K̂_t₁(p) · K̂_t₂(p)
```

Scaling substitution v = u/√t gives:
```
K̂_t(p) = N(t)√t · Ŵ₀(p√t)
```
where Ŵ₀(q) = ∫ W(mv²/(2κ)) e^{−iqv} dv.

Define F(p,t) ≡ log K̂_t(p). Semigroup gives functional equation:
```
F(p,t₁+t₂) = F(p,t₁) + F(p,t₂)  for all p>0, t₁,t₂>0
```

Under continuity, unique solution: F(p,t) = t·φ(p) for some φ.

Set f(q) = log Ŵ₀(q), g(t) = log(N(t)√t). Then:
```
f(p√t) + g(t) = t·[f(p) + g(1)]
```

**Uniqueness step:** Test f(q) = αq^n + β.
- LHS: αp^n t^{n/2} + β
- RHS: αp^n t + [constant terms]

Matching p^n coefficients: t^{n/2} = t requires **n = 2**.

Matching higher powers: f = αq² + γq⁴ + ··· gives γp⁴t² ≠ γp⁴t + γt² − γt, forcing γ = 0. Inductively, all higher coefficients vanish.

Therefore f(q) = αq² + β, i.e., Ŵ₀(q) = exp(αq² + β) (Gaussian).

Inverse Fourier: W(σ) = C exp(c₀ σ) with c₀ determined by α. QED.

### Alternative Weight Functions (Excluded)

| Alternative | Fourier form | Composition? | Reason |
|-------------|--------------|--------------|--------|
| W = exp(c₀σ) | Gaussian | YES | Unique solution |
| W = Σ aᵢ exp(cᵢσ) | Sum of Gaussians | NO | Cross-terms for t≥2 |
| W = exp(c₀σ − ασ²) | Quartic phase | NO | f(q) has q⁴ term, violates n=2 |
| W = (1+σ)^n | Bessel | NO | Not Gaussian |
| W = σ^α | Power-law tail | NO | Not Gaussian |
| W = cos(σ) | Fresnel | NO | Not Gaussian |

### Consequence for P4.2

**(L_exp) is derivable from (C) + (L_loc).** The exponential form is not an independent assumption — it is the unique weight function compatible with composition acting on action-dependent kernels.

**Effective hypothesis count:** 4 hypotheses → **3.5** (L_loc, L_exp derived from C+L_loc, plus I, D).

### Loophole: Levy-Khintchine Kernels

If (L_loc) is dropped (kernel NOT required to depend on S_cl), composition admits the full Levy-Khintchine class:
```
K̂_t(p) = exp(t[iμp − (σ²/2)p² + ∫(e^{ipx}−1−ipx·𝟙_{|x|<1})ν(dx)])
```
where ν is the Levy measure (jump processes: Poisson, Cauchy, stable laws).

**These violate (L_loc), not (L_exp).** They are jump processes (physically distinct from standard quantum mechanics).

**Question for D39:** Do Levy kernels violate some other P4.2 hypothesis, making (L_loc) derivable?

---

## Part 2: Levy-Khintchine Dimensional Obstruction (D39/S295, Blackboard 2)

### Context

D29/S288 identified the Levy-Khintchine loophole: kernels not depending on classical action S_cl can satisfy composition (C) while avoiding the exponential-weight uniqueness theorem.

**Question (D39):** Do Levy-type jump processes (Levy-Khintchine kernels) violate P4.2's identity limit (I) or dimensional homogeneity (D), thereby making (L_loc) derivable from other hypotheses?

### Levy Stable Semigroups

General Levy stable kernel in Fourier space:
```
K̂_t(p) = exp(t·Ψ(p)),    Ψ(p) = −c|p|^α,    α ∈ (0,2]
```

For α = 2: Gaussian (Feynman-Kac propagator).
For α ≠ 2: Jump processes (Cauchy α=1, symmetric stable laws).

### Test 1: Dimensional Analysis

#### Dimension of c

Exponent t·Ψ(p) is dimensionless, so [Ψ(p)] = T^{−1}.

From [c|p|^α] = T^{−1}:
```
[c] = T^{−1} · [p]^{−α} = T^{−1} · (MLT^{−1})^{−α} = M^{−α} L^{−α} T^{α−1}
```

#### Matching to fundamental constants {m, ℏ}

Hypothesis (D) requires parameters built from mass m and action ℏ. Seek a, b such that:
```
[c] = [m]^a [ℏ]^b = M^{a+b} L^{2b} T^{−b}
```

Matching exponents:
```
M:  a + b = −α
L:  2b = −α        ⟹  b = −α/2
T:  −b = α − 1     ⟹  b = 1 − α
```

**Consistency check:**
```
−α/2 = 1 − α
⟹  α/2 = 1
⟹  α = 2
```

**For α ≠ 2, the system has no solution.** The Levy scale c cannot be expressed as any power of m and ℏ.

#### Solution for α = 2 (Gaussian case)

b = −1, a = −1. Therefore c = 1/(2mℏ), giving:
```
Ψ(p) = −p²/(2mℏ)
```

This is the free-particle Feynman-Kac/Schrodinger propagator (up to factor i).

### Test 2: Specific Cases

**Cauchy kernel (α = 1):**
```
[c] = M^{−1} L^{−1} T^0 = (ML)^{−1}
```
From L-equation: b = −1/2. From T-equation: b = 0. **Inconsistent.**

Position space (d=1):
```
K_t(x,y) = (1/π) · ct/(c²t² + (x−y)²)
```
For Lorentzian with [t] and [x−y] in same denominator: [ct] = [L], hence [c] = LT^{−1} (velocity). But Fourier exponent gives [c] = (ML)^{−1}. Compatible only if [M] = T/L², which is circular (assumes ℏ=1).

**Symmetric stable (α = 3/2):**
```
[c] = M^{−3/2} L^{−3/2} T^{1/2}
```
From L: b = −3/4. From T: b = −1/2. **Inconsistent.**

### Test 3: Identity Limit

**Poisson jump process (d=1):**
```
K_t(x,y) = e^{−λt}[δ(y−x) + λt·δ(y−x−a) + O(t²)]
```

Weak identity limit (test function φ):
```
lim_{t→0⁺} ∫ K_t(x,y) φ(y) dy = lim [φ(x) + λt(φ(x+a)−φ(x)) + O(t²)] = φ(x)
```

**The Poisson kernel satisfies (I).** Jump term is O(t) and vanishes.

**Cauchy kernel (α=1, d=1):**
```
K_t(x,y) = (1/π) · t/(t² + (x−y)²)
```

This is a standard nascent delta family. Substitution v = u/t:
```
∫ K_t(x,y) φ(y) dy = (1/π) ∫ 1/(1+v²) φ(x+tv) dv → φ(x)  as t→0⁺
```

**Cauchy satisfies (I).**

**General α-stable:**

For any α ∈ (0,2], K̂_t(p) = exp(−c·t|p|^α) → 1 pointwise as t→0⁺.

By continuity theorem for characteristic functions: K_t → δ in weak-* sense.

**All Levy processes satisfy identity limit (I).**

### Verdict

**Dimensional obstruction for α ≠ 2 (Success Criterion 2).**

- **(I) Identity limit:** Satisfied by ALL α-stable semigroups. **Not discriminating.**
- **(D) Dimensional homogeneity:** Violated for ALL α ≠ 2. The Levy scale [c] = M^{−α}L^{−α}T^{α−1} is expressible as [m]^a[ℏ]^b **only when α = 2**.
- **(L_loc) derivability:** Hypothesis (L_loc) "kernel depends on classical action" is a **consequence of (D)**, not independent.

**The discriminating hypothesis is (D), not (I).**

### Physical Interpretation

The quantum mechanical length scale ℓ(t) = √(ℏt/m) (Gaussian spreading) is the unique length built from {m, ℏ, t} with ℓ ∝ t^{1/2}. Levy processes with α ≠ 2 require spreading ℓ ∝ t^{1/α}, which demands a qualitatively different dimensional constant unavailable among {m, ℏ}.

### Connection to S288 Loophole

Blackboard 1 (S288, Section 10) identified: dropping (L_loc) admits Levy-Khintchine class. This blackboard **closes the loophole:** hypothesis (D) forces α = 2, eliminating the Levy measure ν and recovering the Gaussian/Feynman-Kac propagator.

Therefore **(L_loc) is derivable from (D):** any kernel satisfying (C)+(I)+(D) must have α = 2 (Gaussian characteristic exponent), which is precisely the class of action-dependent kernels.

---

## Part 3: Final P4.2 Hypothesis Count

### Original P4.2 (4 hypotheses)

1. (C) Composition
2. (L) Local exponential weight = (L_loc) + (L_exp)
3. (I) Identity limit
4. (D) Dimensional homogeneity

### After D29/S288 (3.5 effective hypotheses)

- (L_exp) is a **theorem** of (C) + (L_loc) → reduces to 3.5
- Remaining independent: (C), (L_loc), (I), (D)

### After D39/S295 (~3 effective hypotheses)

- (L_loc) is **derivable** from (D) via Levy obstruction → reduces to ~3
- **Final independent hypotheses:**
  - (C) Composition: K_T = K_t₁ ∘ K_t₂
  - (I) Identity limit: K_t → δ as t → 0⁺
  - (D) Dimensional homogeneity: [K] = [length]^{−d}, parameters from {m, ℏ}

### Theorem Chain Summary

| Derived result | From hypotheses | Cycle |
|----------------|-----------------|-------|
| (L_exp) exponential form | (C) + (L_loc) | D29/S288 |
| (L_loc) action-dependence | (D) dimensional | D39/S295 |
| κ = ℏ necessity | (C) + (I) + (D) | P4.2 main |

**Effective hypothesis count: ~3** (composition, identity, dimensions).

The ℏ-necessity theorem rests on three independent structural principles, not four.

---

## References

- **Blackboard 1** (D29/S288, 2026-02-14): Functional equation for weight uniqueness
- **Blackboard 2** (D39/S295, 2026-02-14): Levy-Khintchine dimensional obstruction
- **P4.2** (paper/main.md lines 610-612): Original four hypotheses
- **D4.1a** (paper/main.md line 584): Composition law statement
- Levy, P. (1937). *Theorie de l'addition des variables aleatoires*
- Sato, K. (1999). *Levy Processes and Infinitely Divisible Distributions*
- de Gosson, M. (2018). *Short-time propagators*
- Rivero, A. (arXiv:9803035, arXiv:0302285): Discretization and convergence
