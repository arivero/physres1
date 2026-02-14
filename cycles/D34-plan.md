# D34 Plan: Lorentzian Composition Witness for P4.2

Date: 2026-02-14
Track: D-triage (discovery planning)
Priority: High (Opus scan #2 recommendation)

## Question
**Does P4.2 (necessity of ℏ for composition-compatible refinement) survive direct Lorentzian (real-time) composition, or is it valid only in Euclidean signature?**

The crown jewel theorem P4.2 is proved via Euclidean-time (heat kernel) composition. D30/S287 extends it to curved Riemannian manifolds. But the **entire paper is about real-time quantum mechanics**, yet the constructive witnesses (D12.1-D12.3, Package A) are all heat kernels.

## Context from Opus scan
**Why this matters:**
- The cornerstone's thesis is about real-time QM, but P4.2 uses Euclidean signature
- Lorentzian case faces harder obstructions:
  - No positive-definite measure (oscillatory integrals, conditional convergence)
  - Semigroup → unitary group (different analytic structure)
  - Identity limit via stationary phase (not monotone concentration)
  - D31's κ→0 obstructions analyzed for real-time, but composition closure of regulated family not checked

**Specific gap:** Derivation D4.1a argues A(t) ~ t^{-d/2} forced by semigroup. This is rigorous for heat kernel. For Schrödinger kernel, does the iε prescription come from composition, or is it additional input?

## Hypothesis
The algebraic structure forcing d/2 exponent is **signature-independent** (Gaussian integral structure of composition). But the **analytic control** (convergence, distributional limits) is signature-dependent.

Expected split:
- **Signature-independent** (survives Lorentzian): d/2 exponent, κ with [κ]=[action], dimensional analysis
- **Signature-dependent** (requires input): iε prescription, distributional convergence conditions

## In scope
1. Write Schrödinger kernel composition integral explicitly
2. Identify where iε prescription is needed (convergence of oscillatory integrals)
3. Check if d/2 exponent is still forced algebraically
4. Determine if iε is forced by composition or is additional input
5. Assess P4.2 hypotheses (C/L/I/D) in Lorentzian signature

## Out of scope
- Full functional analysis of oscillatory integrals (use stationary phase)
- Field theory extension (QFT path integrals)
- Curved Lorentzian spacetime (defer)

## Success criteria
**Sharp verdict on one of these:**
1. **P4.2 fully extends**: All four conclusions hold in Lorentzian signature (iε forced by composition)
2. **Partial extension**: Algebraic parts (d/2, κ-necessity) extend; analytic parts (iε) require additional input
3. **Signature obstruction**: Real-time composition has new obstructions weakening P4.2

## Technical approach
Free-particle Schrödinger kernel (1D):
```
K_t(x,y) = √(m/2πiℏt) exp(im(x−y)²/(2ℏt))
```

Composition:
```
K_{t+s}(x,z) = ∫ K_t(x,y) K_s(y,z) dy
```

Check:
- Does Gaussian integral close with i in denominator?
- Is iε prescription forced by requiring identity limit?
- Does d/2 exponent follow from same functional equation?

Compare with Euclidean (heat kernel):
```
K_t^E(x,y) = √(m/2πℏt) exp(−m(x−y)²/(2ℏt))
```
where composition is absolutely convergent (no iε needed).

## Spawned cycles (expected)
- S291: Lorentzian composition check (iε prescription test)
- Potentially B-cycle if need references on Lorentzian path integrals

## Connection to existing work
- D31/S289: Analyzed κ→0 obstruction for **real-time** kernels (oscillatory phase divergence)
- D4.1a: Derived d/2 exponent for **Euclidean** semigroup
- Gap: Never checked composition closure in **Lorentzian** signature explicitly
