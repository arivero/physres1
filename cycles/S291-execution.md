# S291 Execution: Lorentzian Composition Check (iε Prescription Test)

Date: 2026-02-14

## Work performed
- Computed explicit composition integral for free Schrödinger kernel (d=1)
- Expanded quadratic form Q(y) = (x-y)^2/t + (y-z)^2/s
- Completed the square: Q(y) = [(t+s)/(ts)](y-y_0)^2 + (x-z)^2/(t+s)
- Evaluated Fresnel integral: ∫ exp(iαu²)du = √(πi/α)
- Assembled normalization: prefactor × Fresnel result = √(m/[2πiℏ(t+s)])
- Verified K_t ∘ K_s = K_{t+s} exactly
- Analyzed convergence: conditional (Dirichlet) vs absolute (with iε)
- Determined iε is INPUT (boundary condition), not OUTPUT of composition
- Confirmed d/2 exponent forced algebraically (one Fresnel factor per dimension)

## Artifacts produced
- `blackboards/6.md`: Lorentzian composition calculation (overwrote Newton polygonal, slot 6)

## Commands run (if any)
```
(pure calculation, no commands)
```

## Result
**Verdict: Success criterion 2 (partial closure).**

The d/2 exponent is forced algebraically by the Gaussian integral structure. This is signature-independent: the same completing-the-square mechanism produces (t+s)^{-d/2} whether the coefficient is real (Euclidean) or imaginary (Lorentzian). The κ=ℏ necessity likewise survives: κ appears as i/κ in the exponent and must be consistent across composition.

However, iε is external input, not derived from composition:
- The Fresnel integral ∫exp(iαu²)du converges conditionally (improper integral)
- Absolute convergence requires Im(iα)<0, i.e., iε regularization
- The identity limit K_t→δ as t→0+ requires iε (stationary phase vs monotone concentration)
- Branch choice of √i is additional input

**P4.2 extension to Lorentzian:**
- (C) composition law: EXTENDS (algebraic closure)
- (L) Lagrangian exponent: EXTENDS (same exp(iS/ℏ) structure)
- (I) identity limit: SIGNATURE-DEPENDENT (needs iε or distributional framework)
- (D) dimensional analysis: EXTENDS (d/2 algebraic)

## Promotion candidate (pointer)
- Location: `blackboards/6.md`, sections 7-9
- Key promotable content: the split between signature-independent (algebraic) and signature-dependent (analytic) conclusions

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **yes**
- The D34 hypothesis is confirmed precisely: algebraic structure (d/2, κ-necessity) is signature-independent, analytic control (iε, identity limit) is signature-dependent. This is a clean separation that strengthens the paper's Euclidean-based proof by showing the algebraic conclusions transfer to Lorentzian while clearly delineating what does not.

## Spawned cycles
- No immediate spawns needed; result feeds back into D34 verdict
