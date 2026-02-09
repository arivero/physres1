# C03 Plan

## Goal
Develop a careful weak/distributional treatment of extremal action that supports point-like probes (Dirac-supported limits) without illegal distribution products.

## Scope
1. State weak Euler-Lagrange formulation using test functions.
2. Show how localized test variations (mollifiers) probe stationarity “at a point”.
3. Treat piecewise-smooth paths and impulse forces; derive jump/corner conditions.
4. Add explicit caveats on distribution products and regularization.

## Claims
1. If \(\delta S[q;\eta]=0\) for all \(\eta\in C_c^\infty\), then the Euler-Lagrange operator vanishes as a distribution.
2. Under mild regularity, mollifier-localized variations recover pointwise Euler-Lagrange conditions.
3. If the forcing contains a Dirac delta in time, the canonical momentum has a corresponding jump, computed by integrating across the impulse.

## Risks
1. Using Dirac deltas in a way that implicitly multiplies distributions (undefined).
2. Confusing “stationary” with “minimum”; second variation is not addressed yet.
3. Overgeneralizing to path-integral measures without stating domain limitations.

## Acceptance Tests
1. `paper/main.md` section 5 contains a weak Euler-Lagrange statement and a mollifier probe derivation.
2. Section 5 includes an explicit impulse/jump-condition derivation.
3. Section 5 contains a “Caveats” subsection forbidding undefined singular products.
4. Section 5 ends with a transition paragraph to `C04` (composition/path integral).
