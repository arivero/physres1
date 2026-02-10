# String Tension as an Area-Scale Supplier (Keep Hypotheses Separated)

Date: 2026-02-10  
Cycle: `S45`

## Goal
Clarify what "string tension supplies the scale" can mean in our half-density scalarization program, without mixing distinct hypothesis ladders.

## Two Distinct Meanings
### 1) Fundamental UV area parameter (\(\alpha_\ast\))
Assume the UV completion includes a universal parameter with
\[
[\alpha_\ast]=\text{length}^2,
\]
so in spacetime dimension \(d=4\) the half-density scalarization constant can be supplied directly as \(C\sim \alpha_\ast\).

This is the role played by \(\alpha'\) in perturbative string theory (heuristic here): it is a genuine input scale, not produced by RG running.

This sits in the **H2.5 "analytic monomial"** branch (Example E4 in `papers/planck-area/main.md`) when we allow \(C\sim(\alpha_\ast)^n\).

### 2) Emergent IR string tension (\(\sigma\)) in confining phases
In a confining gauge theory, one can define an effective string tension \(\sigma\) with
\[
[\sigma]=\text{length}^{-2},
\qquad
\alpha_{\rm eff}:=\sigma^{-1}\sim \text{length}^2.
\]
But in \(d=4\) Yang--Mills the gauge coupling is dimensionless, so any physical scale (hence \(\sigma\)) must arise by **dimensional transmutation** (RG invariants).

Therefore this "string tension supplies an area" belongs to the **H2.13 transmutation** branch, not to H2.5's analytic monomial sieve.

## Why This Matters for the Program
If we are asking "why prefer string tension as the area scale?":
- as a *fundamental* supplier it is a clean dimension match in \(d=4\),
- as an *emergent* supplier it is not a new universal constant but an RG invariant built from a dimensionless coupling and a subtraction scale.

In both cases it provides an area scale, but the logical status differs:
- UV input parameter vs RG-emergent invariant.

## Promotion Candidate
Add one concise remark near Example E4 / H2.13 in `papers/planck-area/main.md` stating:
- fundamental \(\alpha_\ast\) and emergent \(\sigma^{-1}\) are different branches,
- confining string tension is an instance of dimensional transmutation in \(d=4\).
