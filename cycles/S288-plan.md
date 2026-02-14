# S288 Plan: Functional equation for composition-compatible weight functions

Date: 2026-02-14
Parent: D29
Track: Study (technical calculation)

## Goal
Derive the functional equation that any weight function W(S/κ) must satisfy to be composition-compatible, and determine if exp(c₀·S/κ) is the **unique** solution or one of many.

## Context from Haiku search (papers/)
**Existing derivations** (agent a924f5b findings):
- D0.1, P4.1: exponential from composition + locality (assumed (L))
- P4.2: necessity of κ from (C)+(L)+(I)+(D) — the crown jewel
- D4.1a: semigroup forces d/2 exponent
- **Gap**: Never tested if (L) is forced by (C)+(I)+(D) alone

**Integration target**: Remark P4.2c "Uniqueness of exponential vs constrained asymptotics"

## Specific task
Test P4.2's hypothesis (L) (local exponential weight) for **uniqueness**.

Setup:
```
K(x,z; t₁+t₂) = ∫ K₁(x,y; t₁) K₂(y,z; t₂) dy
```

Assume general form:
```
K(x,y; Δt) = N(Δt) W(S_cl(x,y; Δt)/κ)
```
where W is an **unknown** weight function.

**Key questions:**
1. What functional equation must W satisfy for composition to close?
2. Is W = exp(c₀·S/κ) the unique solution?
3. Are multi-exponential (Σᵢ aᵢ exp(cᵢ·S/κ)) solutions allowed?
4. Can stochastic/polymer formulations satisfy composition + identity?

## In scope
1. Derive functional equation for W from composition closure alone
2. Verify exp(c₀·S/κ) is a solution (sanity check)
3. Test alternatives:
   - Multi-exponential: W = Σᵢ aᵢ exp(cᵢ·S/κ)
   - Gaussian damping: W = exp(c₀·S/κ − α(S/κ)²)
   - Polynomial: W = (1 + S/κ)^n
4. Check if identity limit (I) or dimensional (D) eliminates alternatives

## Out of scope
- Full stochastic quantization equivalence (defer to future cycle)
- Polymer/LQG discrete formulations (different measure, out of scope)
- Curved-space generalization (already handled by S287)

## Technical approach
Short-time limit: S_cl = (m/2)(Δx)²/Δt + O(Δt)

Composition in 1D (generalize to d after):
```
∫ W(S₁/κ) W(S₂/κ) dy = W((S₁+S₂)/κ) × [normalization factor]
```

Stationary phase: y = y* on classical path.

Functional equation emerges from matching exponents/coefficients.

## Acceptance tests
1. Derive explicit functional constraint on W
2. Show exp(c₀·S/κ) satisfies it
3. Determine if other solutions exist (classify them)
4. Write verdict: (L) is necessary / can be weakened / can be generalized

## Blackboard target
Slot 1 (overwrite S281 delta-object content per LRU)
