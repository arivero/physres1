# S292 Plan: Parametrized Fresnel Regularization — Composition Test

Date: 2026-02-14
Track: S-study (calculation)
Parent: D37 (iε prescription from composition + identity)

## Goal
Test whether the iε prescription f(x)=x is uniquely selected by requiring:
1. Composition semigroup closure: K_t^ε ∘ K_s^ε = K_{t+s}^ε
2. Distributional identity limit: lim_{t→0+, ε→0+} K_t^ε = δ(x−y)
3. Dimensional homogeneity: regulator preserves [K]=[length]^{-d}

## Deliverable (keep bounded)
- Target: 1-2 pages testing f(x)=x vs f(x)=x² composition
- Output: `blackboards/<slot>.md` (will choose slot per README)
- Format: Explicit composition integral with regulated Fresnel evaluation

## Technical specification

### Regulated Schrödinger kernel (1D)
Replace bare kernel:
```
K_t(x,y) = √(m/2πiℏt) exp(im(x−y)²/(2ℏt))
```
with regulated version:
```
K_t^ε(x,y) = √(m/2πiℏt) exp(im(x−y)²/(2ℏt) − ε f((x−y)²/t))
```

### Test cases
1. **f(x) = x** (standard iε): regulator is exp(−ε(x−y)²/t) = exp(−ε·distance²/time)
2. **f(x) = x²** (super-Gaussian): regulator is exp(−ε((x−y)²/t)²)

### Composition integral to compute
```
K_{t+s}^ε(x,z) = ∫ K_t^ε(x,y) K_s^ε(y,z) dy
```

### Questions to answer (MUST compute in blackboard)
1. **For f(x)=x:** Does composition close functorially?
   - Does K_t^ε ∘ K_s^ε = K_{t+s}^{ε'} with ε' = f(ε,t,s)?
   - If yes, what is ε'? (Expected: ε' ∝ ε, additive)

2. **For f(x)=x²:** Does composition preserve the same regulator form?
   - After completing square and integrating, does the result have exp(−ε'' stuff²)?
   - Or does a different power appear?

3. **Identity limit:** For t → 0+, does the regulator interfere with nascent delta?
   - Check if exp(−ε f((x−y)²/t)) → 1 fast enough as t→0+
   - Required: f(divergent quantity) remains bounded or vanishes

## Success criteria (verdicts)
Deliver ONE of these (with explicit calculation in blackboard):

1. **f(x)=x is unique:** Only linear f composes functorially with additive ε-dependence
   → D37 verdict 1 (iε is theorem)

2. **Equivalence class exists:** Multiple f work, but all equivalent to f(x)=x via rescaling
   → D37 verdict 2 (iε has strong justification)

3. **Multiple inequivalent regulators work:** f(x)=x and some f(x)=x^n both preserve (C)+(I)
   → D37 verdict 3 (iε is external choice)

4. **All regulators fail identity limit:** No ε→0+ coordination preserves both composition and δ-limit
   → D37 verdict 4 (obstruction)

## Scope
**In scope:**
- 1D free particle (sufficient for principle)
- f(x)=x and f(x)=x² explicit comparison
- Composition closure check
- Identity limit dimensional analysis

**Out of scope:**
- Full functional analysis (use heuristic arguments)
- Multi-dimensional generalization (1D proves concept)
- Interacting potentials (focus on free case)
- Rigorous ε→0+ limit (check leading behavior)

## Where The Math Goes
**CRITICAL (Rule 8):** The explicit composition integrals MUST appear in the blackboard:
- Regulated integrand for K_t^ε ∘ K_s^ε
- Completing the square with regulator terms
- Fresnel integral evaluation with damping
- Result comparison to K_{t+s}^ε

The cycles/S292-execution.md should contain only:
- Summary verdict (which success criterion)
- Pointer to blackboard
- Discovery flag

## Connection to existing work
- S291 (blackboards/6.md): Bare Fresnel composition (no regulator)
- S289 (blackboards/2.md): Distributional obstruction, nascent delta
- S288 (blackboards/1.md): Functional equation for weight uniqueness — parallel structure

## Expected novelty
**High.** No source in `sources/` derives iε uniqueness from composition+identity (per D37 context search). If f(x)=x is forced, this is a new theorem strengthening P4.2.
