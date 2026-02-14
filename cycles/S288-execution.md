# S288 Execution: Functional equation for composition-compatible weight functions

Date: 2026-02-14

## Work performed
- Set up general kernel ansatz K_t(u) = N(t) W(S_cl/kappa) for 1D free particle
- Exploited translation invariance to reduce composition (C) to convolution in spatial variable
- Applied Fourier transform: convolution becomes multiplicative semigroup hat{K}_{t1+t2} = hat{K}_{t1} hat{K}_{t2}
- Used scaling W(mu^2/(2kappa t)) to extract functional equation for f(q) = log hat{W}_0(q)
- Derived key constraint: f(p sqrt(t)) + g(t) = t(f(p) + g(1)) for all p,t > 0
- Proved f(q) = alpha q^2 + beta is the UNIQUE continuous solution (power-matching argument: n=2 forced, higher orders excluded inductively)
- Verified hat{W}_0 Gaussian implies W = exp(c0 sigma): the exponential is uniquely forced
- Systematically excluded: multi-exponential, Gaussian-damped, polynomial, power-law, oscillatory alternatives
- Decomposed (L) into (L_loc) [action-dependence] + (L_exp) [exponential form]
- Identified Levy-Khintchine loophole for non-action-dependent kernels

## Key result
**Theorem (S288):** (C) + (L_loc) => (L_exp). The exponential weight function is the unique composition-compatible weight within the class of action-dependent kernels. No additional hypotheses (I) or (D) are needed for this conclusion.

Roles of remaining hypotheses:
- (D): fixes dimensional structure, c0 = i/kappa with [kappa] = [action]
- (I): fixes normalization constant and sign of c0

## Verdict for D29
**Option 1: (L) is necessary.** More precisely, (L_exp) is a theorem of (C)+(L_loc). The exponential is derived, not assumed. The question "can (L) be weakened?" reduces to "can (L_loc) be weakened?" — i.e., can composition-compatible kernels depend on something other than the classical action? The Levy-Khintchine theorem says yes (Poisson, Cauchy, stable laws), but these are physically distinct theories.

## Artifacts produced
- `blackboards/1.md`: Full derivation with functional equation, uniqueness proof, alternative exclusion table, Levy-Khintchine loophole analysis, verdict

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **yes**
- The decomposition (L) = (L_loc) + (L_exp) with (L_exp) being a theorem is new. It sharpens P4.2 by showing one of its four hypotheses is partially redundant. The real load-bearing assumption is locality (L_loc), not the exponential form.
- This reframes D29: the interesting question is about action-dependence, not about the functional form of the weight.

## Promotion candidate (pointer)
- Location: blackboards/1.md, Section 8 "Decomposition of Hypothesis (L)" and Section 5 "Uniqueness Theorem"
- Target: Remark P4.2c in paper/main.md (integration target from S288-plan.md)
- The decomposition (L) = (L_loc) + (L_exp) and the uniqueness theorem should become a remark after P4.2

## Spawned cycles
- `C_next`: promote uniqueness theorem + (L) decomposition as Remark P4.2c into paper/main.md
- `D_next`: investigate whether (L_loc) can be weakened — Levy-Khintchine alternatives to action-dependent kernels
