# D37 Plan: iε Prescription from Composition + Identity Limit

Date: 2026-02-14
Track: D-triage (discovery planning)
Priority: High (Opus scan #1 recommendation, closes D34 gap)

## Question
**Can the iε prescription be derived from composition semigroup (C) + identity limit (I), rather than imposed as external input?**

D34/S291 achieved **partial closure**: P4.2 conclusions (C)+(L)+(D) extend to Lorentzian signature, but conclusion (I) — the distributional identity limit K_t → δ as t → 0+ — was flagged as requiring iε/distributional framework as external input.

Gap: If iε is truly external, then Lorentzian P4.2 has weaker support than Euclidean. If iε can be *derived* from (C)+(L)+(D), then D34 upgrades from partial to full closure.

## Context from D34/S291
S291 (blackboards/6.md) computed Lorentzian composition explicitly:
- **Algebraically forced** (signature-independent): d/2 exponent, κ=ℏ necessity, semigroup K_t ∘ K_s = K_{t+s}
- **Signature-dependent** (external input): iε prescription, convergence mode (absolute vs conditional), identity limit mechanism

The Fresnel integral ∫ exp(iαu²) du is conditionally convergent. Replacing t → t−iε provides absolute convergence and selects the retarded propagator.

## Hypothesis
Among all regularizations of the Fresnel integral that preserve composition semigroup (C) and yield distributional identity limit (I), the **iε prescription is unique** (or equivalent to Wick rotation + analytic continuation).

Alternative regularizations (e.g., super-Gaussian damping exp(−ε u⁴)) should violate either:
1. Semigroup closure: (K_t^ε ∘ K_s^ε) ≠ K_{t+s}^ε
2. Identity limit: lim_{t→0+} K_t^ε ≠ δ(x−y) distributionally
3. Dimensional homogeneity (D): regulator introduces wrong action-dimension dependence

## In scope
1. Parametrize Fresnel integral regularization by damping factor exp(−ε f(u²))
2. Compute composition integral with regulator
3. Check which f preserve semigroup (must yield K_{t+s} with appropriate ε-dependence)
4. Check which f yield identity limit as t → 0+ (with ε → 0+ coordinated)
5. Determine if f(x) = x (iε standard) is uniquely selected

## Out of scope
- Full Feynman path integral formulation (focus on short-time kernel)
- Field theory / infinite-dimensional path integrals
- Rigorous functional analysis (use distributional arguments)

## Success criteria
**One of these verdicts:**

1. **Uniqueness (strong):** iε prescription f(x)=x is the unique regulator compatible with (C)+(I)+(D)
   → D34 upgrades to **full closure**, iε is theorem not input

2. **Equivalence class (moderate):** iε is equivalent to Wick rotation, both work, but distinct from other regularizations
   → D34 partial closure stands, but iε has strong justification

3. **Non-uniqueness (weak):** Multiple inequivalent regularizations preserve (C)+(I)+(D)
   → iε remains external input, D34 partial closure confirmed

4. **Obstruction:** Identity limit (I) cannot be satisfied in Lorentzian signature for *any* regulator preserving (C)
   → D34 partial closure is maximal, (I) genuinely signature-dependent

## Technical approach
### Parametrized Fresnel regulator
Replace bare Fresnel integral
```
∫ exp(i α u²) du
```
with regulated version
```
∫ exp(i α u² − ε f(u²)) du,  ε → 0+
```
where f: [0,∞) → [0,∞) is monotone.

### Test families
- **f(x) = x**: standard iε (or t → t−iε)
- **f(x) = x²**: super-Gaussian damping
- **f(x) = x^(1/2)**: sub-Gaussian damping
- **f(x) = |x|**: absolute-value damping (non-smooth)

### Composition test
For composition K_t^ε ∘ K_s^ε = ?, the product of two regulated kernels gives:
```
exp[i m/(2ℏ) · ((x−y)²/t + (y−z)²/s) − ε(f_t(stuff) + f_s(stuff))]
```

Completing the square in y and integrating should yield K_{t+s} with regulator f_{t+s}. The question: does the regulator compose **functorially**?
```
f_{t+s}(...) = f_t(...) + f_s(...) mod coordinate change?
```

For f(x)=x (iε): yes, this is additive. For f(x)=x²: additivity breaks.

### Identity limit test
As t → 0+, K_t^ε should approach δ(x−y) in the distributional sense. The nascent delta is:
```
(m/2πiℏt)^{d/2} exp(im|x−y|²/(2ℏt) − ε f(|x−y|²/t))
```

For ε ~ t (coordinate damping), the regulator term must vanish faster than the identity-limit concentration. Check which f allow this.

## Spawned cycles (expected)
- S292: Parametrized Fresnel regularization composition test
- Potentially B-cycle if need references on distributional Fresnel integrals

## Connection to existing work
- D34/S291: Identified iε as external input (blackboards/6.md)
- D31/S289: Distributional obstruction for κ→0, Fresnel nascent delta (blackboards/2.md)
- D29/S288: Uniqueness of exponential weight from composition (blackboards/1.md) — parallel structure

## Novelty assessment
**High.** If successful (verdict 1), this would:
- Reduce P4.2 effective hypothesis count from 3.5 to ~3 (after D29 reduced (L))
- Show Lorentzian and Euclidean formulations are on equal footing (both derive analytic structure from algebraic composition)
- Strengthen the crown jewel significantly: iε is not a "fix" but a theorem

Even verdict 3 (non-uniqueness) or 4 (obstruction) would clarify P4.2's scope precisely.
