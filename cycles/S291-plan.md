# S291 Plan: Lorentzian Composition Check (iε Prescription Test)

Date: 2026-02-14
Track: S-study (calculation)
Parent: D34 (Lorentzian composition witness for P4.2)

## Goal
Compute explicit Schrödinger kernel composition integral to determine:
1. Whether d/2 exponent is forced algebraically (signature-independent)
2. Whether iε prescription is output of composition or additional input
3. Which P4.2 conclusions extend to Lorentzian signature

## Deliverable (keep bounded)
- Target: 1-2 pages of explicit Gaussian integral calculation
- Output file: `blackboards/<slot>.md` (will choose/overwrite per README)
- Format: Line-by-line composition integral with convergence analysis

## Technical specification

### Free particle Schrödinger kernel (1D)
```
K_t(x,y) = √(m/2πiℏt) exp(im(x−y)²/(2ℏt))
```

### Composition integral to compute
```
K_{t+s}(x,z) = ∫_{-∞}^{∞} K_t(x,y) K_s(y,z) dy
```

Expected integrand structure:
```
√(m²/((2πiℏ)²ts)) · exp[im/(2ℏ) · ((x−y)²/t + (y−z)²/s)] dy
```

### Questions to answer (MUST compute explicitly in blackboard)
1. **Gaussian integral closure**: Does completing the square in y give a closed form?
2. **Convergence**: Real or imaginary exponent coefficient? Need iε or not?
3. **Result exponent**: Does the result have (t+s)^{-1/2} normalization (d/2 for d=1)?
4. **iε placement**: If needed, where? (t → t−iε, ℏ → ℏ−iε, or contour?)

### Comparison baseline (Euclidean/heat kernel)
Heat kernel composition (for reference):
```
K_t^E(x,y) = √(m/2πℏt) exp(−m(x−y)²/(2ℏt))
```
Composition gives K_{t+s}^E exactly, absolutely convergent.

**Key difference**: Lorentzian has **i** in denominator and exponent.

## Success criteria (verdicts)
Deliver ONE of these (with explicit calculation in blackboard):

1. **Full algebraic closure**: Integral converges, d/2 forced, iε emerges from composition
   → P4.2 fully extends to Lorentzian

2. **Partial closure**: d/2 forced algebraically, but iε is *input* for convergence
   → P4.2(C)+(L) extend, P4.2(I)+(D) signature-dependent

3. **Distributional closure**: Only converges in distributional sense (stationary phase)
   → P4.2 conclusions weakened

4. **Obstruction**: Composition fails or requires non-semigroup structure
   → P4.2 does not extend to Lorentzian

## Scope
**In scope**:
- 1D free particle calculation (sufficient for principle)
- Gaussian integral with complex coefficients
- Scaling/dimensional analysis (d/2 exponent test)
- Basic convergence analysis

**Out of scope**:
- Multi-dimensional generalization
- Interacting potentials
- Curved spacetime
- Rigorous functional analysis (use elementary methods)

## Bibliography pointers (from D34 context search)
- de Gosson: Schrödinger propagator groupoid (sources/degosson-*.md)
- Rivero: Groupoid composition algebra (sources/rivero-*.md)
- Gap: Feynman 1948 PENDING, no stationary phase refs in sources/

## Where The Math Goes
**CRITICAL**: The explicit line-by-line Gaussian integral calculation MUST appear in the blackboard, including:
- Completing the square in y
- Evaluating the Gaussian integral (real vs imaginary coefficient)
- Normalization factor simplification
- Final result comparison to K_{t+s}(x,z)

The cycles/S291-execution.md should contain only:
- Summary verdict (which success criterion)
- Pointer to blackboard
- Discovery flag (yes/no)

## Connection to D34 hypothesis
D34-plan.md hypothesis:
> Algebraic structure (d/2 exponent) is signature-independent.
> Analytic control (iε prescription) is signature-dependent.

S291 tests this directly by explicit calculation.
