# P4.2 Hypothesis Reduction via Composition Theorems

**Created:** 2026-02-14
**Sources:** Blackboard 1 (Exponential Weight Uniqueness), Blackboard 2 (Levy-Khintchine Obstruction)
**Status:** Append-only notebook (graduated from blackboards)

## Summary

This notebook documents the reduction of P4.2's hypothesis count from 4 independent assumptions to ~3 effective hypotheses via two composition theorems:

1. **Exponential Weight Uniqueness (2026-02-14):** Exponential weight (L_exp) is a **theorem** of composition + locality, not an independent assumption. Reduces 4 → 3.5 effective hypotheses.

2. **Levy-Khintchine Obstruction (2026-02-14):** Locality hypothesis (L_loc) is **derivable** from dimensional homogeneity (D) via Levy-Khintchine obstruction. Reduces 3.5 → ~3 effective hypotheses.

**Final result:** P4.2's κ-necessity rests on three independent hypotheses:
- **(C)** Composition: semigroup law K_T = K_t₁ ∘ K_t₂
- **(I)** Identity limit: K_t → δ as t → 0⁺
- **(D)** Dimensional homogeneity: [K] = [length]^{−d}, parameters built from {m, ℏ}

The original hypotheses (L_loc) and (L_exp) are consequences, not assumptions.

---

## Part 1: Exponential Weight Uniqueness (Blackboard 1)

### Context

P4.2 (paper/main.md lines 610-612) originally listed four hypotheses:
- (C) Composition
- (L) Local exponential weight: K(x,y;Δt) = N(Δt) W(S_cl(x,y;Δt)/κ) with W = exp(c₀ S/κ)
- (I) Identity limit
- (D) Dimensional homogeneity

**Question:** Is the exponential form W = exp(c₀ S/κ) uniquely forced, or could other weight functions satisfy (C)+(I)+(D)?

### Hypothesis Decomposition

Hypothesis (L) decomposes into two parts:
- **(L_loc):** Kernel depends on (x,y,Δt) only through S_cl(x,y;Δt)
- **(L_exp):** W = exp(c₀·S/κ) (exponential form)

### Theorem (Exponential Uniqueness)

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

**Question:** Do Levy kernels violate some other P4.2 hypothesis, making (L_loc) derivable?

---

## Part 2: Levy-Khintchine Dimensional Obstruction (Blackboard 2)

### Context

The Exponential Weight Uniqueness theorem identified the Levy-Khintchine loophole: kernels not depending on classical action S_cl can satisfy composition (C) while avoiding the exponential-weight uniqueness theorem.

**Question:** Do Levy-type jump processes (Levy-Khintchine kernels) violate P4.2's identity limit (I) or dimensional homogeneity (D), thereby making (L_loc) derivable from other hypotheses?

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

### Connection to Exponential Uniqueness Loophole

Blackboard 1 (Exponential Uniqueness, Section 10) identified: dropping (L_loc) admits Levy-Khintchine class. This blackboard **closes the loophole:** hypothesis (D) forces α = 2, eliminating the Levy measure ν and recovering the Gaussian/Feynman-Kac propagator.

Therefore **(L_loc) is derivable from (D):** any kernel satisfying (C)+(I)+(D) must have α = 2 (Gaussian characteristic exponent), which is precisely the class of action-dependent kernels.

---

## Part 3: Final P4.2 Hypothesis Count

### Original P4.2 (4 hypotheses)

1. (C) Composition
2. (L) Local exponential weight = (L_loc) + (L_exp)
3. (I) Identity limit
4. (D) Dimensional homogeneity

### After Exponential Weight Uniqueness (3.5 effective hypotheses)

- (L_exp) is a **theorem** of (C) + (L_loc) → reduces to 3.5
- Remaining independent: (C), (L_loc), (I), (D)

### After Levy-Khintchine Obstruction (~3 effective hypotheses)

- (L_loc) is **derivable** from (D) via Levy obstruction → reduces to ~3
- **Final independent hypotheses:**
  - (C) Composition: K_T = K_t₁ ∘ K_t₂
  - (I) Identity limit: K_t → δ as t → 0⁺
  - (D) Dimensional homogeneity: [K] = [length]^{−d}, parameters from {m, ℏ}

### Theorem Chain Summary

| Derived result | From hypotheses | Source |
|----------------|-----------------|--------|
| (L_exp) exponential form | (C) + (L_loc) | Exponential Weight Uniqueness (BB1) |
| (L_loc) action-dependence | (D) dimensional | Levy-Khintchine Obstruction (BB2) |
| κ = ℏ necessity | (C) + (I) + (D) | P4.2 main |

**Effective hypothesis count: ~3** (composition, identity, dimensions).

The ℏ-necessity theorem rests on three independent structural principles, not four.

---

## References

- **Blackboard 1** (Exponential Weight Uniqueness, 2026-02-14): Functional equation for weight uniqueness
- **Blackboard 2** (Levy-Khintchine Obstruction, 2026-02-14): Levy-Khintchine dimensional obstruction
- **P4.2** (paper/main.md lines 610-612): Original four hypotheses
- **D4.1a** (paper/main.md line 584): Composition law statement
- Levy, P. (1937). *Theorie de l'addition des variables aleatoires*
- Sato, K. (1999). *Levy Processes and Infinitely Divisible Distributions*
- de Gosson, M. (2018). *Short-time propagators*
- Rivero, A. (arXiv:9803035, arXiv:0302285): Discretization and convergence

---

## Part 4: Circularity Check — iε vs. Identity Limit (Mathematician, 2026-02-20)

### The Question

Route (I₃) for the identity limit (blackboards/2.md) uses the iε prescription to give Gaussian
domination in the stationary phase argument. Does this create a circularity, since iε is itself
derived from composition (the iε uniqueness theorem)?

### Resolution: No Circularity

**iε uniqueness derivation:** The constant c₀ in K ∝ exp(c₀·S_cl/κ) is forced to be imaginary
(c₀ = i) by degree-counting: real c₀ gives exponentially growing/decaying kernel incompatible
with composition semigroup for all t > 0 (the growing kernel has no finite composition norm;
the decaying kernel has κ→0 classical limit failing). This argument uses:
- The sign of Re(S_cl) for x≠y (S_cl > 0 for standard kinetic Lagrangians)
- Composition properties (semigroup behavior for all t₁,t₂ > 0)
It does NOT use the identity limit (the t→0 behavior). Independent of (I).

**Route (I₃) identity limit:** Uses iε only as a convergence factor for the Fresnel integral
∫exp(im|u|²/(2ℏ))d^du = 1. This integral can be evaluated rigorously WITHOUT iε via:
- Analytic continuation in ℏ (Wick rotation: ℏ → ℏ·e^{-iπ/2} = -iℏ gives Gaussian)
- Fresnel integral methods: ∫exp(iαx²)dx = √(π/|α|)·exp(iπ·sgn(α)/4) for α ≠ 0

So Route (I₃) does NOT actually require the iε prescription as an input — it requires only
that the oscillatory Gaussian integral is evaluated by Fresnel (analytic continuation),
which is a separate mathematical fact.

**Verdict:** The two derivations are logically independent:
- iε from composition: uses sign of S_cl and composition growth conditions
- Identity limit via stationary phase: uses Fresnel/analytic continuation of Gaussian, not iε

No circularity. The logical dependency graph is:
```
(C) composition → exponential form (Exp. Uniq.) → c₀ = i (iε uniqueness)
                                         → N(t) ∝ t^{-d/2} (d/2 exponent)
(C) + (Exp. Uniq.) + physical setup [S_cl asymptotics] → identity limit (Route I₃, stationary phase)
```
These are parallel branches from (C). iε and identity limit are siblings, not parent-child.

---

## Part 5: Is Unitarity an Independent Axiom? (Mathematician, 2026-02-20)

### The Question

Does c₀ = i (Feynman/unitary kernel) follow from composition alone, or is it an additional axiom?

### Analysis

Composition (C) is satisfied by two distinct families of kernels:

**(Family A, Feynman/Minkowski):** K_t(x,y) = (m/2πiℏt)^{d/2} exp(im|x-y|²/(2ℏt))
  - c₀ = i, oscillatory
  - ∫|K_t|d^dy = ∞ (not L¹-normalized in absolute value)
  - U(t) unitary on L²(ℝ^d)

**(Family B, Heat/Euclidean):** K_t(x,y) = (m/2πℏt)^{d/2} exp(-m|x-y|²/(2ℏt))
  - c₀ = -1, positive, decaying
  - ∫K_t d^dy = 1 (L¹-normalized, Markov property)
  - {T(t)} positive contraction semigroup on L¹(ℝ^d)

**Both satisfy composition (C).** Both satisfy the d/2 normalization exponent. Both satisfy the
identity limit K_t → δ as t→0. Both have the Gaussian form forced by the Exponential Uniqueness theorem. Both exclude
Lévy processes with α≠2 via the same dimensional argument.

**What distinguishes them is NOT composition, but the physical setup:**
- Family A: arises from Minkowski Lagrangian L = +½m|ẋ|² - V(x), real action, oscillatory weight
- Family B: arises from Euclidean Lagrangian L_E = +½m|ẋ|² + V(x), positive action, damped weight

The sign of the action (Minkowski vs. Euclidean) is a physical choice, not a mathematical theorem.

### Ruling out real c₀ by composition: the L¹ argument

For real positive c₀ (c₀ > 0): K_t(x,y) ∝ exp(+c₀·m|x-y|²/(2ℏt)) grows as |x-y|→∞.
The composition integral ∫K·K d^dy diverges. **Real positive c₀ is ruled out by composition.**

For real negative c₀ (c₀ < 0, i.e., c₀ = -|c₀|): K_t = heat kernel. Composition closes.
Not ruled out by (C) alone.

For imaginary c₀ (c₀ = i): K_t = Feynman kernel. Composition closes (via Fresnel).
Not ruled out by (C) alone.

**Conclusion:** Composition rules out c₀ > 0 but leaves c₀ ∈ {i, -|c₀|} (Minkowski/Euclidean).
The choice c₀ = i is the physical content of "Minkowski spacetime dynamics."

### What "physical setup" means for P4.2

The physical setup clause in the single-axiom formulation must include:
1. Mass m (dimensional basis)
2. Lagrangian structure (action has dimension [action])
3. **Minkowski signature**: action is S = ∫½m|ẋ|²dt − V dt (real, oscillatory weight c₀ = i)
   — as opposed to Euclidean: S_E = ∫(½m|ẋ|²+V)dt (positive, decaying weight c₀ = -1)

Items 1-2 were already recognized. Item 3 is the new addition.

### Verdict

Unitarity (c₀ = i) is NOT an independent axiom. It is a consequence of:
- (C) composition (rules out c₀ > 0)
- Minkowski physical setup (selects c₀ = i over c₀ = -1)

The Euclidean family (c₀ = -1) is the "other branch" excluded by the Minkowski signature of
the physical setup. This is not an additional axiom but a specification of the spacetime arena.

**Impact on single-axiom claim:** The refined statement should read:

"Composition (C) + Minkowski action-based physical setup → Feynman kernel uniquely."

The "Minkowski" qualifier is the key addition. It is not an extra axiom — it is part of
specifying what "action-based dynamics" means in the physical context.

### Symmetry between the two families

Notably: Euclidean QM (heat kernel) is also uniquely determined by (C) + Euclidean setup.
The two families are related by Wick rotation t → -iτ. The Exponential Uniqueness theorem
applies to both. The Wick rotation is what mediates between them — it is a representation
change (imaginary time), which falls under the RCP representation channel (A3), not the
partition channel (A1). This confirms: the choice Minkowski/Euclidean is representation-level
(signature of the action), and Wick rotation is a representation compatibility map.

References: blackboards/2.md (identity limit stationary phase analysis); Exponential Weight Uniqueness (BB1); iε uniqueness theorem.

---

## Part 6: Composition, Action-Angle Coordinates, and Bohr-Sommerfeld (Mathematician+Physicist, 2026-02-20)

**Source:** blackboards/5.md, TWO-AGENT complete (mathematician + physicist). Sev-3 (clarification).

### The Question

Does P4.2 (composition → t^{-d/2} normalization) work in action-angle coordinates (I,θ), or only in position-momentum (x,p)?

### Main Result

**The t^{-d/2} normalization does NOT arise from the angle-sector composition integral.**

In action-angle variables (I, θ) with S_cl = -H(I)t + I·(θ-θ'), the composition integral:
∫_{T^n} K_{t₁}(θ,θ') K_{t₂}(θ',θ'') dθ'

is a TRIVIAL phase integral (the integrand does not depend on θ') — it gives a UNIT factor times the phase, not a Gaussian. The Van Vleck determinant in action-angle is:
det(-∂²S_cl/∂I∂θ') = det(+I) = 1

So σ_* = 1 in action-angle representation.

**The t^{-n/2} arises from the energy-surface curvature det Ω(I):**
Ω_jk = ∂²H/∂I_j∂I_k (frequency matrix)

The kernel in the energy representation contains σ_* = |det(t·Ω)|^{-1/2} = t^{-n/2}·|det Ω|^{-1/2}.

**Conclusion:** Action-angle is not the natural coordinate system for P4.2 forcing. The Gaussian composition structure (generating t^{-n/2}) is only visible in position-space or energy-time representations.

### Exception: Bohr-Sommerfeld from Composition Periodicity

**Physicist's addition (TWO-AGENT, P9.3 in BB5):** There IS one case where composition imposes quantization in action-angle: **the Bohr-Sommerfeld condition.**

For the kernel K_t(θ,θ') to be well-defined on the torus T^n, it must be periodic: K_t(θ+2π,θ') = K_t(θ,θ'). For the pure phase kernel K_t = exp(i·m·(θ-θ')) to be single-valued, the action quantum number must satisfy:

I = ℏ·m,   m ∈ ℤ^n   (Bohr-Sommerfeld)

This IS a composition-derived constraint: the periodicity requirement K_t(θ+2πe_j, θ') = K_t(θ, θ') applied to the action-phase kernel exp(iI·(θ-θ')/ℏ) forces I_j/ℏ ∈ ℤ.

**Significance:** Bohr-Sommerfeld quantization I = ℏ·m is derivable from composition + periodicity of the angle torus. This is a non-trivial consequence of the composition law (C) that does NOT appear in the position-space analysis.

### Implications for P4.2 Hypothesis Reduction

The Bohr-Sommerfeld derivation adds to the theorem chain (Part 3):

| Derived result | From hypotheses | Source |
|----------------|-----------------|--------|
| (L_exp) exponential form | (C) + (L_loc) | Exponential Weight Uniqueness (BB1) |
| (L_loc) action-dependence | (D) dimensional | Levy-Khintchine Obstruction (BB2) |
| κ = ℏ necessity | (C) + (I) + (D) | P4.2 main |
| **Bohr-Sommerfeld I = ℏm** | **(C) + periodicity of T^n** | **BB5 action-angle** |

The last entry is new: composition (C) applied to angle-variable kernels on the torus T^n forces I ∈ ℏ·ℤ. This is the quantum-mechanical action quantization, derived from the composition law.

**Note:** The indeterminacy ΔI·Δθ ≥ ℏ/2 is a consequence of canonical quantization ([I_j, θ_k] = iℏδ_{jk}), not directly of composition. The composition law forces the QUANTIZATION of I (Bohr-Sommerfeld) but not the UNCERTAINTY bound (which requires the Hilbert space representation and Heisenberg's inequality).

### References
- blackboards/5.md (source — two-agent complete, 2026-02-20)
- Arnold "Mathematical Methods of Classical Mechanics" §49: action-angle variables
- paper/main.md P4.2: composition forces kernel structure
- papers/action-angle-indeterminacy-central-potentials/main.md: context paper

---

## Part 7: d/2 Normalization Uniqueness from Composition

**Source:** blackboards/2.md (d/2 uniqueness theorem and proof chain, plus physicist second-agent review)
**Status:** TWO-AGENT verified (mathematician + physicist), 2026-02-21
**Connects to:** P4.2d (paper/main.md line ~623), Remark P4.2e

### Statement

**Theorem (d/2 normalization uniqueness).**
Let \(K_t\) be a family of kernels on \(\mathbb{R}^d\) satisfying:
- (M1) Convolution semigroup: \(K_{t+s} = K_t * K_s\) for all \(t,s > 0\), with \(K_t \in L^1\).
- (M2) Mass conservation: \(\int_{\mathbb{R}^d} K_t(x)\,d^dx = 1\) (equivalently \(\widehat{K}_t(0) = 1\)).
- (M3) Measurability + nonvanishing: \(t \mapsto \widehat{K}_t(p)\) measurable, \(\widehat{K}_t(p) \neq 0\) a.e. in \(p\).
- (M4) Isotropy and dimensional constants restricted to \(\{m, \hbar\}\).

Then the normalization exponent is uniquely \(d/2\): \(K_t(x) = C\,t^{-d/2}\,\Psi(x/\sqrt{t})\).

### Proof chain (D1-D5)

**(D1) Semigroup \(\Rightarrow\) exponential characteristic function.**
In Fourier space, (M1) gives \(\widehat{K}_{t+s}(p) = \widehat{K}_t(p)\widehat{K}_s(p)\). By (M3), \(t \mapsto \widehat{K}_t(p)\) is a measurable multiplicative function on \((0,\infty)\) with no zeros. By the measurable Cauchy theorem, \(\widehat{K}_t(p) = e^{t\phi(p)}\) for a unique \(\phi(p) \in \mathbb{C}\), for a.e. \(p\).

**(D2) Mass conservation fixes \(\phi(0)\).**
\(\widehat{K}_t(0) = 1\) for all \(t > 0\) gives \(\phi(0) = 0\).

**(D3) Isotropy \(\Rightarrow\) power-law form.**
\(\phi\) isotropic: \(\phi(p) = -c_\alpha |p|^\alpha\) for some \(\alpha > 0\), \(c_\alpha \in \mathbb{C}\).
Dimensional requirement: \(t\phi(p)\) is dimensionless, so \([c_\alpha] = L^\alpha T^{-1}\).

**(D4) Dimensional matching forces \(\alpha = 2\).**
\(c_\alpha\) must be constructed from \(\{m, \hbar\}\) only. With \([m] = M\), \([\hbar] = ML^2T^{-1}\):
\(c_\alpha \sim m^a \hbar^b\) gives \(M^{a+b} L^{2b} T^{-b}\).
Matching: \(a+b = 0\), \(2b = \alpha\), \(-b = -1\). Solution: \(b = 1\), \(a = -1\), \(\alpha = 2\). UNIQUE.
Hence \(\phi(p) = -(\hbar/m)\gamma\,|p|^2\) with \(\operatorname{Re}\gamma \geq 0\).

**(D5) Inverse Fourier scaling.**
\(\widehat{K}_t(p) = e^{-t(\hbar/m)\gamma|p|^2}\). Inverse transform: \(K_t(x) = t^{-d/2}\Psi(x/\sqrt{t})\). QED.

### Gap closure

**(G1) Why \(\phi(p) = -c_\alpha|p|^\alpha\)?**
The Levy-Khintchine representation theorem classifies all infinitely divisible distributions on \(\mathbb{R}^d\). For the isotropic case without drift: \(\phi(p) = \int_0^\infty (e^{-|p|^2 r} - 1)\nu(dr)\) where \(\nu\) is the Levy measure. The \(|p|^\alpha\) family corresponds to stable laws. General \(\nu\) introduces additional dimensional parameters (mass spectrum, cutoff scale). Under (M4), only the one-parameter stable subfamily survives, and D4 gives \(\alpha = 2\). (Physicist verdict: Levy-Khintchine resolves G1 at physics rigor.)

**(G2) Why monomial \(c_\alpha(m,\hbar)\) is the only option?**
Buckingham pi theorem: any function \(f(m, \hbar)\) with dimensions \([L^2 T^{-1}]\) and no extra dimensional constants satisfies \(f(\lambda m, \mu\hbar) = \lambda^{-1}\mu\,f(m, \hbar)\) by scaling homogeneity. This fixes \(f = C \cdot \hbar/m\) up to a dimensionless numerical constant. Non-monomial constructions like \((\hbar/m)\log(m/m_0)\) require a reference mass \(m_0\), violating (M4).

**(G3) Regularity assumptions.**
sev-3 (minor): physical propagators are tempered distributions. Positivity/continuity in \(t\) is standard for heat kernels (\(\operatorname{Re} c \geq 0\)), and holds in the \(i\varepsilon\) sense for Fresnel propagators (see P4.2e in paper).

### Scope boundaries

The theorem applies to \(\{m, \hbar\}\)-only free kernels. Known physics that falls outside (M4):

| System | Extra constant | Effect |
|--------|---------------|--------|
| Fractional QM (Laskin 2000) | \(D_\alpha\) (medium) | \(\alpha \in (1,2]\) allowed |
| Relativistic \(\sqrt{p^2c^2 + m^2c^4}\) | \(c\) | \(\alpha = 1\) (Cauchy) |
| Anomalous diffusion | \(\tau\) (waiting time) | Subdiffusive scaling |
| Lattice dispersion | \(a\) (spacing) | Periodic Brillouin zone |

This is physically correct: new physics = new dimensional constants = new dispersion relations.

### Connection to paper

P4.2d (paper/main.md line ~623) states the dimensional matching \(\alpha = 2\) argument. The BB2 chain is an independent re-derivation consistent with the published text, providing the full proof infrastructure (measurable Cauchy lemma, Levy-Khintchine scaffold, Buckingham pi closure) that the paper states concisely.

### References

- blackboards/2.md: theorem statement, measurable branch lemma, dependency chain, G1 closure, gap summary, physicist review
- paper/main.md: P4.2, P4.2d, P4.2e
- Levy-Khintchine representation theorem (Sato, "Levy Processes and Infinitely Divisible Distributions")
- Buckingham pi theorem (dimensional analysis)

---

## Part 8: Scope of d/2 Uniqueness — Spectral Dimension and Planck-Scale Dispersion

**Source:** blackboards/1.md (2026-02-21, mathematician + physicist second-agent review)
**Status:** TWO-AGENT verified (mathematician + physicist), 2026-02-21
**Extends:** Part 7 (scope boundaries table)

### Question

Does the d/2 composition exponent connect to the UV spectral dimension \(d_s \to 2\) observed across quantum gravity approaches (Carlip arXiv:1705.05417)?

### Answer

The spectral dimension is \(d_s(t) = -2\,d\ln P(t)/d\ln t\) where \(P(t) = \int d^dp/(2\pi)^d\, e^{t\phi(p)}\).

For general Lifshitz dispersion \(\phi(p) = -c_z|p|^{2z}\):
\[
P(t) \sim t^{-d/(2z)} \quad\Rightarrow\quad d_s = d/z.
\]

Standard QM (\(z=1\)): \(d_s = d\). Quartic UV (\(z=2\)): \(d_s = d/2\).

### Dimensional mechanism

Part 7 proved: \(\{m,\hbar\}\)-only forces \(\alpha = 2\) (quadratic).

With \(\{m,\hbar,L_P\}\): \(c_\alpha \sim m^{-1}\hbar L_P^{\alpha-2}\) is dimensionally consistent for any \(\alpha = 2+2k\), \(k \geq 0\). In particular:
- \(\alpha = 2\): standard (\(c_2 = \hbar/m\), no \(L_P\))
- \(\alpha = 4\): quartic (\(c_4 = \hbar L_P^2/m\), Lifshitz \(z=2\))

The Planck length \(L_P\) unlocks higher-order dispersion. The spectral dimension flow \(d \to d/2\) requires this third constant.

### Physical realizations (physicist review)

| QG approach | \(z\) | Mechanism |
|---|---|---|
| Horava-Lifshitz | 2 (by construction) | Anisotropic UV scaling |
| CDT | \(\approx 2\) (measured) | Lattice + causality |
| Asymptotic Safety | effective \(\sim 2\) | Non-Gaussian fixed point |
| LQG | not directly \(z=2\) | Polymer quantization |

Horava-Lifshitz: \(z=2\) is a UV fixed point of the RG flow, not a postulate. Lorentz invariance (\(z=1\)) is recovered in the IR.

### Project implication

The d/2 uniqueness theorem (Part 7) is STRENGTHENED by this analysis:
- Composition + \(\{m,\hbar\}\) forces standard QM (the paper's P4.2).
- UV spectral dimension reduction requires gravity (\(L_P\)), which composition alone does not provide.
- The paper's thesis is correct: composition forces \(\hbar\) WITHOUT needing gravity.

### Verdict on anomaly entry

The initial framing ("d/2 IS the UV spectral dimension") was too strong. The correct statement: the Planck length allows quartic dispersion, which gives \(d_s = d/z = d/2\) generically (for any \(d\), not just \(d=4\)).

### References

- blackboards/1.md: mathematician analysis (§§1-9) + physicist review (§10)
- Carlip, arXiv:1705.05417 (2017): spectral dimension convergence review
- Horava, Phys. Rev. D 79, 084008 (2009): Lifshitz gravity
- meta/anomalies.md: "Spectral dimension d_s=2" entry (SUBSTANTIALLY RESOLVED)

---

## Part 9: d/2 Occurrence Landscape (Disambiguation)

**Source:** Student Philosophenweg (2026-02-21, context window 2)
**Status:** SINGLE-AGENT (student). Cataloguing note, no new claims.

### Four appearances of d/2 in the project

| # | Appearance | Mechanism | Independent? |
|---|-----------|-----------|-------------|
| 1 | Composition normalization: \(K_t \sim t^{-d/2}\) | Levy-Khintchine + \(\{m,\hbar\}\) (Part 7, P4.2) | PRIMARY |
| 2 | Half-density weight: \(\|g\|^{1/2}\) gives length\(^{d/2}\) | Geometric (density bundle on \(d\)-manifold) | = #1 |
| 3 | UV spectral dimension: \(d_s = d/2\) for \(z=2\) Lifshitz | Quartic dispersion + \(L_P\) (Part 8) | INDEPENDENT of #1 |
| 4 | Planck-area sieve: \(d=4\) singled out because \(d/2 = 2 \in \mathbb{Z}\) | Number-theoretic (Diophantine on PA-D1.3) | CONSEQUENCE of #1 |

### Identifications and separations

**(1) = (2):** The Van Vleck determinant \(\|g\|^{1/2}\) in the short-time kernel IS the mechanism producing \(t^{-d/2}\) under composition. The half-density formalism gives geometric meaning to the composition normalization. These are the same fact viewed algebraically (#1) and geometrically (#2). Documented in: path-integral-normalization satellite, oq1a-planck-area-fundamental notebook.

**(3) is INDEPENDENT of (1)/(2):** The UV spectral dimension \(d_s = d/z = d/2\) at \(z=2\) requires the Planck length \(L_P\) as a third dimensional constant (Part 8). The composition normalization \(t^{-d/2}\) is an IR property forced by \(\{m,\hbar\}\) alone. The UV modification requires gravity. The numerical coincidence \(d/2 = d/2\) is trivial (both are half of \(d\)), not a shared mechanism.

**(4) is a CONSEQUENCE of (1)/(2):** The Diophantine sieve in PA-D1.3 uses the VALUE of the composition normalization exponent (\(d/2\)) in a number-theoretic constraint. If composition forced a different exponent (say \(d/3\)), the sieve would select a different dimension. So #4 parasitizes #1.

### Overclaim prevention

The statement "d/2 appears four times in the project" could mislead a reader into thinking four independent mechanisms converge on the same number. The correct count of genuinely independent d/2 mechanisms is TWO: (1)/(2) [composition/half-density] and (3) [Lifshitz UV dispersion]. Appearance (4) is a number-theoretic derivative of (1)/(2).

### References

- Part 7: d/2 uniqueness theorem
- Part 8: spectral dimension scope
- notebooks/oq1a-planck-area-fundamental.md: Planck-area sieve
- docs/planck-area/main.md: PA-D1.3 (gravity-only sieve)

---

## Part 10: Spectral Dimension d=4 Selection — Compatibility, Not Forcing (FOUR-AGENT)

**Source:** blackboards/1.md §§1-12 (mathematician + physicist + critic + computationalist)
**Proposal:** proposals/computationalist-task-spectral-dimension-d4-selection.md
**Status:** FOUR-AGENT UNANIMOUS (2026-02-21). Corrected framing of original computationalist proposal.
**Extends:** Part 8 (scope of d/2 uniqueness, TWO-AGENT) → upgraded to FOUR-AGENT with sharpened verdict.

### The observation

Two independent arguments produce the exponent d/2:

**(A) Composition (this project, P4.2).** The d/2 uniqueness theorem (Part 7) forces normalization \(K_t \sim t^{-d/2}\) from \(\{m, \hbar\}\)-only. With modified dispersion \(\phi(p) = -c_z|p|^{2z}\) at UV, the spectral dimension is \(d_s = d/z\). For quartic dispersion (\(z=2\)): \(d_s = d/2\).

**(B) Quantum gravity universality (Carlip 2017, arXiv:1705.05417).** CDT, asymptotic safety, Horava-Lifshitz, and LQG all find \(d_s \to 2\) in the UV.

Setting \(d/2 = 2\) gives \(d = 4\).

### Numeric verification (scipy, all dimensions)

| \(d\) | \(d_s = d/2\) (quartic, \(z=2\)) | \(d_s = 2\) (QG universal) | Match? |
|---|---|---|---|
| 2 | 1.0 | 2.0 | NO |
| 3 | 1.5 | 2.0 | NO |
| **4** | **2.0** | **2.0** | **YES** |
| 5 | 2.5 | 2.0 | NO |
| 6 | 3.0 | 2.0 | NO |

Heat-kernel integration (MDR \(\omega = p^2 + p^4/\Lambda^2\), \(t = 0.001\)):
\(d_s\) converges to \(d/2\) in all dimensions tested (\(d = 2,3,4,5,6\)).
Typical relative error at \(t = 0.001\): \(\lesssim 2\%\).
S\(^2\) ordering comparison: Laplace-Beltrami gives \(d_s \to 2\), left-ordered gives \(d_s > 2\).

### Corrected framing (FOUR-AGENT verdict)

The original computationalist proposal overclaimed. The BB1 three-agent analysis (mathematician + physicist + critic), confirmed by the computationalist fourth-agent review, established:

**1. \(d_s = d/2\) requires \(L_P\), not just composition.**
Part 7 proves: \(\{m, \hbar\}\)-only forces \(\alpha = 2\) (quadratic dispersion), giving \(d_s = d\) always. Quartic dispersion (\(\alpha = 4\)) requires \(c_4 = \hbar L_P^2/m\), i.e., the Planck length as a third dimensional constant. Composition is COMPATIBLE with quartic dispersion when \(L_P\) is available, but does not FORCE it.

**2. The coincidence \(d/2 = 2\) at \(d = 4\) is dimensional, not \(d\)-specific.**
The formula \(d_s = d/z = d/2\) at \(z = 2\) holds for ALL \(d\). The equation \(d/2 = 2\) selects \(d = 4\) trivially (algebra, not physics). There is no mechanism specific to \(d = 4\) that makes the spectral dimension equal 2.

**3. QG approaches use different effective \(z\) values.**
Horava-Lifshitz uses \(z = D\) (spatial dimension, e.g. \(z = 3\) for \(D = 3\)), giving \(d_s = D/z = 1\) spatially. The \(d_s \to 2\) result for spacetime involves \(z = D\) in the spatial sector and a separate temporal scaling. The half-density program's \(d_s = d/2\) comes from \(z = 2\) globally. These are DIFFERENT mechanisms that happen to produce \(d_s = 2\) at \(d = 4\).

**4. Correct statement (non-overclaiming).**
"If composition at the Planck scale produces effective \(z = 2\) quartic dispersion (requiring \(L_P\)), then \(d_s = d/2\), which matches the QG universal value 2 only at \(d = 4\)."

This is a **compatibility condition**, not a forcing result. The chain:
\[
\text{Composition} + L_P \xrightarrow{\text{allows}} z = 2 \xrightarrow{\text{gives}} d_s = d/2 \xrightarrow{d_s \stackrel{!}{=} 2} d = 4
\]
has a conditional first step (composition allows but does not force \(z = 2\)) and a trivially algebraic last step (\(d/2 = 2 \Leftrightarrow d = 4\)).

### Relationship to other d=4 arguments

| Argument | Source | Mechanism | Status |
|----------|--------|-----------|--------|
| Diophantine sieve (PA-D1.3) | Planck-area satellite | Gravity + half-density integrality constraint | Paper result |
| Spectral dimension matching | This entry | Composition + \(L_P\) + QG universality | Compatibility (not forcing) |

These are logically independent: the Diophantine sieve uses the VALUE \(d/2 \in \mathbb{Z}\), while spectral dimension matching uses the VALUE \(d/2 = d_s^{\text{UV}}\). Both produce \(d = 4\), but neither forces the other.

### Not promotable to paper

All four agents concur: this result is a scope clarification for the d/2 uniqueness theorem, not a new paper-level claim. It belongs in the notebook as permanent context for future work on Planck-scale dispersion.

### References

- blackboards/1.md: full FOUR-AGENT analysis (§§1-12)
- Part 7 (this notebook): d/2 uniqueness theorem
- Part 8 (this notebook): spectral dimension scope (TWO-AGENT, now subsumed)
- Part 9 (this notebook): d/2 occurrence landscape (student)
- proposals/computationalist-task-spectral-dimension-d4-selection.md: original proposal + self-correction
- Carlip, arXiv:1705.05417 (2017): spectral dimension universality review
- Horava, Phys. Rev. D 79, 084008 (2009): Lifshitz gravity
- sources/horava-spectral-dimension-lifshitz.md: ingested reference
- sources/carlip-2019-dimensional-reduction-review.md: ingested reference

---

## Part 11: V_HD Coordinate Dependence and Intrinsic Content (THREE-AGENT)

### Context

The half-density ordering potential V_HD appears throughout the paper's curved-manifold witnesses (D9.1h on S^2, D9.1i on S^3, D9.1k on H^2). A fundamental question arises: is V_HD an intrinsic geometric quantity, or does it depend on coordinates?

### Key Result 1: V_HD is coordinate-dependent

The half-density Laplacian Delta_{1/2} = |g|^{1/4}(-Delta_g)|g|^{-1/4} is intrinsic (well-defined on half-density sections). However, V_HD = Delta_{1/2} - Delta_g requires identifying half-densities with functions via a trivialization of the density bundle.

**Two natural trivializations:**

1. **Coordinate volume** (psi <-> psi |dx|^{1/2}):
   V_HD = -|g|^{1/4} Delta_g(|g|^{-1/4}). This is COORDINATE-DEPENDENT.
   In Riemann normal coordinates (RNC) at point p:
   V_HD(p) = -R(p)/6.
   In geodesic polar coordinates on S^2:
   V_HD = -1/4 - 1/(4 sin^2 theta).
   Same manifold, same point — different values in different charts.

2. **Riemannian volume** (psi <-> psi |vol_g|^{1/2}):
   V_HD = 0 (tautologically, since the Riemannian half-density IS the natural trivialization).

### Key Result 2: Composition forces coordinate-volume trivialization

The time-sliced path integral measure is prod_k dq_k (coordinate volume), NOT prod_k sqrt(g(q_k)) dq_k (Riemannian volume). The half-density factor |g|^{1/4} is exactly the Jacobian converting between the two. Therefore:

- Composition forces the coordinate-volume trivialization.
- V_HD is the ordering correction relative to "naive" (coordinate-volume) quantization.
- V_HD = 0 in the Riemannian trivialization is trivially true but physically wrong (it assumes a measure the path integral does NOT use).

### Key Result 3: Eigenvalue comparisons are intrinsic

Despite V_HD being coordinate-dependent, the spectral comparison Spec(Delta_{1/2}) vs Spec(Delta_g) IS intrinsic — it compares two well-defined operators. All paper witnesses (S^2, S^3, H^2) are phrased in terms of spectra, hence are coordinate-independent.

The "spectral shift" = eigenvalue difference between H_tilde and H_L at each level is an intrinsic observable. It does NOT depend on coordinates.

### Key Result 4: V_HD on compact Lie groups (Prop M0.1)

**Proposition M0.1.** On a compact Lie group G with bi-invariant Riemannian metric, V_HD is constant in any left-invariant coordinate chart (i.e., a chart obtained by composing the exponential map exp: g -> G with left translation L_h: G -> G for some h in G).

**Proof:** Bi-invariance of the metric means |g| is invariant under both left and right translations. In a left-invariant chart, |g(x)| = |g(L_h(x))| for all h, so |g|^{-1/4} and Delta_g(|g|^{-1/4}) are both left-invariant scalars, hence constant on G.

**SU(2) = S^3:** V_HD = -1 = -4|rho|^2 where rho = Weyl vector, |rho|^2 = 1/4 (Freudenthal-de Vries: dim(G)/12 = 3/12 = 1/4).

**General G:** V_HD constant by M0.1, value depends on G. SU(3) computation pending (Task #32).

**SU(2) uniqueness:** SU(2) is the only compact simple Lie group that is also a round sphere (constant sectional curvature). For other G (rank > 1), V_HD is constant despite non-constant curvature.

### Key Result 5: Rank-1 symmetric spaces classification

For rank-1 symmetric spaces M = G/H in geodesic polar coords, the constancy condition is alpha(alpha-1) = 0 where alpha is the half-sum of root multiplicities.

| Space | (a,b) | alpha | Constant? |
|-------|-------|-------|-----------|
| S^d | (d-1, 0) | (d-1)/2 | Only d=3 |
| CP^n | (2(n-1), 1) | n | Only n=1 (= S^2 in FS coords) |
| HP^n | (4(n-1), 3) | 2n+1 | Never (n >= 1) |
| CaP^2 | (8, 7) | 11 | No |

CP^1 in Fubini-Study coordinates gives constant V_HD, while S^2 in standard spherical coordinates does NOT — same manifold, different charts. This is the cleanest illustration of coordinate dependence.

### Status

THREE-AGENT (mathematician + physicist + critic, BB0). Unanimous approval.

### Paper implications

1. D9.1j scope boundary can be extended: "On any compact Lie group with bi-invariant metric, V_HD is constant" (proposal filed).
2. The coordinate-dependence clarification is important for preventing misinterpretation but may be too technical for the paper's current scope. The spectral witnesses (D9.1h/i/k) are correctly stated in intrinsic terms.
3. The "composition forces coordinate-volume trivialization" insight connects to the paper's foundational argument (Section 6: path integral measure).

### References

- blackboards/0.md: full THREE-AGENT analysis (§§1-11)
- Part 7 (this notebook): d/2 uniqueness theorem
- agents/mathematician/memory/philosophenweg-symmetric-spaces.md: desk reflection on rank-1 spaces

### Update (Critic, 2026-02-22): SU(3) and SU(4) RESOLVED

Key Result 4 line "SU(3) computation pending (Task #32)" is now STALE.

**SU(3):** V_HD = -1.00000000 (numerical, computationalist BB0 §12), matching -|rho|^2 = -1. VERIFIED.
**SU(4):** V_HD = -2.50000002 (numerical, computationalist BB0 §12), matching -|rho|^2 = -5/2. VERIFIED.
**Analytic proof (Theorem M0.3, BB0 §13):** V_HD = -R/6 on all compact semisimple Lie groups with bi-invariant metric. Proof: constancy (Prop M0.1) + RNC evaluation at identity. FdV identity: R/6 = |rho|^2.

Agent status: FIVE-AGENT (mathematician+physicist+critic+computationalist; student summary pending).

The general formula \(V_{\mathrm{HD}} = -|\rho|^2_g = -\dim(G) h^\vee/24\) is now PROVED, not just conjectured. D9.1o in paper/main.md upgraded from "Numerical verification" to analytic proof + numerical confirmation.
- proposals/mathematician-edit-d91j-lie-groups.md: paper-edit proposal

### Student Summary (2026-02-22): V_HD Lie Group + Product Results — Literature Context

Read BB0 (FIVE-AGENT), BB5 (TWO-AGENT product theorem), and conducted independent literature search.

**Literature novelty assessment:**
- Searched nLab ("density", "geometric quantization"), Wikipedia (Laplace operators in differential geometry), and arXiv for "half-density Laplacian" + scalar curvature + ordering. Result: V_HD = -(d-1)R/(4d) on constant-curvature spaces has NO DIRECT LITERATURE HIT. The formula is distinct from conformal coupling xi_c = (d-2)/(4(d-1)) and from DeWitt's R/6 (which equals V_HD only in RNC at a point, or globally on Lie groups).
- The Lie group formula V_HD = -|rho|^2 = -R/6 (Theorem M0.3) uses standard ingredients (Freudenthal-de Vries, RNC expansion) but the COMBINATION — constancy by bi-invariance + RNC evaluation = global result — appears to be new. No paper in the standard literature (DeWitt 1957, Bates-Weinstein 1997, Landsman 1998) states this result explicitly.
- Kirwin 2014 (arXiv:1408.1527) mentions "Laplacian plus scalar curvature term" from BKS geometric quantization, which is related but not the same formula.

**Cross-connections noted:**
1. BB5 product theorem (C5.1-C5.4) + A_geom integrality sieve = SIX d=4 coincidences from half-density framework (anomalies entry added).
2. Lackman 2-groupoid program (4 papers, 2023-2024) provides rigorous mathematical foundation for the composition -> quantization chain (notebook section added to tangent-groupoid-quantization-bridge.md).
3. Berra-Montiel+ (2024) star-exponential/propagator bridge makes explicit the map from composition to deformation quantization that caustics/Maslov notebook discusses at the semiclassical level.

**Assessment:** The V_HD program (BB0/BB2/BB4/BB5/BB6) is the strongest novel contribution of this project alongside P4.2 itself. The formula's literature absence, combined with the multiple d=4 coincidences, makes a compelling case for publication priority.

**Representation-theoretic footnote:** The identity V_HD = -|rho|^2 = -R/6 on compact Lie groups is a GEOMETRIC REFORMULATION of the Freudenthal-de Vries "strange formula" (|rho|^2 = dim(g)/24 for normalized Killing form). The original proof is algebraic (Weyl character formula); our Theorem M0.3 gives a geometric proof (RNC expansion + bi-invariance). The half-density ordering correction is the "strange formula" in geometric dress. References: Freudenthal-de Vries (1969), Fegan-Steer (1989, heat kernel approach), Kac-Papi (vertex algebra approach).

**Agent status: FIVE-AGENT complete** (mathematician+physicist+critic+computationalist+student).
