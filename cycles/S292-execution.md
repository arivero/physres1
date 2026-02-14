# S292 Execution: Parametrized Fresnel Regularization — Composition Test

Date: 2026-02-14

## Work performed
- Computed composition integral K_t^ε ∘ K_s^ε with regulated Fresnel kernel for general damping function f
- Explicit calculation for f(x)=x: semigroup closes exactly with same ε (Section 3)
- Explicit calculation for f(x)=x²: semigroup fails at O(ε) due to quartic integrand (Section 4)
- General structural argument: composition closure requires total exponent quadratic in integration variable y, which forces deg(f) ≤ 1 (Section 5)
- Identity limit verified for f(x)=x (Section 6)
- f(x)=√x excluded separately (non-Gaussian integration, Section 5c)

## Artifacts produced
- `blackboards/6.md`: Parametrized Fresnel regularization composition test (overwrote S291 — superseded)

## Result
**Verdict 1 (f(x)=x is unique).** Among regulators of the form exp(-ε f((x-y)²/t)):
- Only f(x) = cx (linear, i.e. iε prescription) preserves the composition semigroup
- Uniqueness follows from degree-counting: f applied to a quadratic-in-y argument produces degree 2·deg(f) in y; semigroup closure requires degree ≤ 2, hence deg(f) ≤ 1
- Composition alone forces f=x; the identity limit (I) is not needed for the uniqueness argument but is automatically satisfied

**D37 verdict: 1 (iε is theorem, not input).** The iε prescription is the unique Fresnel regulator compatible with the composition semigroup (C). D34's classification of iε as "external input" is upgraded: iε is derivable from (C) alone.

## Promotion candidate (pointer)
- Location: blackboards/6.md, Section 7 (Theorem) and Section 5a (proof)
- Strengthens P4.2: reduces effective hypothesis count (iε no longer independent)
- Parallel to S288 (blackboards/1.md): both derive "standard" prescriptions from composition

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **yes**
- **The identity limit (I) is not needed.** The original D37 hypothesis was that iε comes from (C)+(I)+(D). The calculation shows composition (C) alone forces f=x, without invoking (I) or (D). This is stronger than expected.

## Spawned cycles
- Potential C-cycle: promote Theorem (Section 7) into paper/main.md as strengthening of P4.2
- Potential S-cycle: extend to interacting potentials (out of scope for S292, but worth checking)
