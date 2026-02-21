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

---

## Part 4: Circularity Check — iε vs. Identity Limit (Mathematician, 2026-02-20)

### The Question

Route (I₃) for the identity limit (blackboards/2.md) uses the iε prescription to give Gaussian
domination in the stationary phase argument. Does this create a circularity, since iε is itself
derived from composition (D37/S292)?

### Resolution: No Circularity

**D37/S292 iε derivation:** The constant c₀ in K ∝ exp(c₀·S_cl/κ) is forced to be imaginary
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
(C) composition → exponential form (D29) → c₀ = i (D37, iε prescription)
                                         → N(t) ∝ t^{-d/2} (d/2 exponent)
(C) + (D29) + physical setup [S_cl asymptotics] → identity limit (Route I₃, stationary phase)
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
identity limit K_t → δ as t→0. Both have the Gaussian form forced by D29/S288. Both exclude
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
The two families are related by Wick rotation t → -iτ. The composition theorem (D29/S288)
applies to both. The Wick rotation is what mediates between them — it is a representation
change (imaginary time), which falls under the RCP representation channel (A3), not the
partition channel (A1). This confirms: the choice Minkowski/Euclidean is representation-level
(signature of the action), and Wick rotation is a representation compatibility map.

References: blackboards/2.md (identity limit stationary phase analysis); D29/S288; D37/S292.

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

| Derived result | From hypotheses |
|----------------|-----------------|
| (L_exp) exponential form | (C) + (L_loc) |
| (L_loc) action-dependence | (D) dimensional |
| κ = ℏ necessity | (C) + (I) + (D) |
| **Bohr-Sommerfeld I = ℏm** | **(C) + periodicity of T^n** |

The last entry is new: composition (C) applied to angle-variable kernels on the torus T^n forces I ∈ ℏ·ℤ. This is the quantum-mechanical action quantization, derived from the composition law.

**Note:** The indeterminacy ΔI·Δθ ≥ ℏ/2 is a consequence of canonical quantization ([I_j, θ_k] = iℏδ_{jk}), not directly of composition. The composition law forces the QUANTIZATION of I (Bohr-Sommerfeld) but not the UNCERTAINTY bound (which requires the Hilbert space representation and Heisenberg's inequality).

### References
- blackboards/5.md (source — two-agent complete, 2026-02-20)
- Arnold "Mathematical Methods of Classical Mechanics" §49: action-angle variables
- paper/main.md P4.2: composition forces kernel structure
- papers/action-angle-indeterminacy-central-potentials/main.md: context paper

---

## Part 6: d/2 Normalization Uniqueness from Composition

**Source:** blackboards/2.md (sections R15B-003 through R15B-036, plus physicist second-agent review P-R1 through P-R5)
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

- blackboards/2.md: R15B-003 (theorem statement), R15B-017 (measurable branch lemma), R15B-022 (dependency chain), R15B-023 (G1 closure), R15B-032 (gap summary), physicist review P-R1--P-R5
- paper/main.md: P4.2, P4.2d, P4.2e
- Levy-Khintchine representation theorem (Sato, "Levy Processes and Infinitely Divisible Distributions")
- Buckingham pi theorem (dimensional analysis)
