# S281 Debate: Is mollifier universality the right criterion?

Date: 2026-02-14

## Question
Is "mollifier universality" (independence of the result from the choice of regularizing kernel) the correct single criterion to separate safe from unsafe delta constructions? Could a referee object that this is too narrow or too broad?

## Working answer
Mollifier universality is the correct criterion for the intended scope. It captures exactly the functional-analytic boundary between:
- **Safe:** the object being evaluated is continuous (or otherwise regular enough) at the relevant point, so all mollifier sequences converge to the same value.
- **Unsafe:** the object has a singularity (diagonal, distributional product), so different regularizations give different answers.

This aligns with:
1. The Schwartz impossibility theorem (products of distributions are not well-defined because regularized products are scheme-dependent).
2. The renormalization hierarchy for delta potentials (finite in d=1, log-divergent in d=2, linearly divergent in d=3).
3. The path-space obstruction (no background measure to mollify against).

A referee might object that "mollifier universality" sounds too restrictive because renormalized quantities are also physical (just not mollifier-universal). The answer is that the criterion classifies constructions as needing or not needing renormalization, not as physically meaningless. Renormalized quantities are physical but scheme-dependent at intermediate stages; the criterion identifies where that scheme dependence enters.

## Next check
Verify that no existing manuscript passage contradicts this criterion. Check that the delta-objects paper's Remark 5.3a (Schwartz impossibility) and the dirac-probes paper's Section 5 table are consistent with the mollifier-universality framing.
