# D27 Plan: Odd-Dimension Scalarization Scales and Transmutation

Date: 2026-02-14

## Goal
Decide what the half-density scalarization program can honestly claim in *odd* dimensions, where the required scale has dimension \(\text{length}^{d/2}\) with half-integer exponent.

## Problem statement
The Planck-area satellite note emphasizes that:
- half-density kernels are canonical, but scalar representatives require a reference half-density,
- demanding dimensionless scalar amplitudes forces a \(\text{length}^{d/2}\) constant,
- in \(d=4\) this is an area, and certain “no fractional powers” hypotheses can turn this into a dimension sieve.

In odd \(d\), \(\text{length}^{d/2}\) is a half-integer power. This cycle triages:
1. Whether any physically natural mechanism supplies such a scale without arbitrary fractional powers.
2. Whether RG-generated scales (dimensional transmutation) can plausibly serve as the scale supplier in odd \(d\).
3. What the honest conclusion should be (e.g. “odd \(d\) forces non-analytic dependence” or “odd \(d\) blocks universal scalarization under strict analyticity”).

## Inputs (read-only references)
- `papers/planck-area/main.md` (Open Problems item 3; scale-supplier knobs)
- `paper/main.md` (Section 6.1 scalarization-gauge heuristic; no edits in D/S)
- `papers/delta-objects/main.md` (scalarization vs RG-invariant scales example)

## Expected spawns
- `S284`: “odd-\(d\) scale-supplier table” with explicit model witnesses.
  - Deliverable: a blackboard note with a small table for \(d=1,2,3,4,5\):
    - required scalarization exponent \(d/2\),
    - natural physical scales generated in standard toy models (contact interactions, marginal couplings),
    - and whether supplying \(\text{length}^{d/2}\) requires fractional powers or non-analytic dependence.
- `B32` (optional): one anchor on dimensional transmutation in odd dimensions (or an explicit counterexample showing it does not supply the needed exponent without extra choices).

## Decision criteria
- Keep the hypotheses separated:
  “monomial sieve under analyticity” vs “transmutation (non-analytic)” vs “allow fractional powers”.
- A “negative result” is acceptable if it is clearly stated and supported by a witness.

## Acceptance criteria
- A clear, scoped conclusion that can guide later Planck-area claims:
  either a viable odd-\(d\) scale-supplier mechanism with one explicit witness, or a justified statement that strict scalarization universality is blocked in odd \(d\) without relaxing the hypotheses.

