# D26 Debate: Is this redundant with existing kernel witnesses?

Date: 2026-02-14

## Question
Given Appendix 10.6 already contains exact semigroup kernel witnesses (free + HO + bounded \(V\)), is a heat-kernel “QFT-grade” witness actually new, or redundant?

## Working answer
Not redundant: Appendix 10.6 is a *QM-style* kernel-composition witness. The heat-kernel witness is *QFT-facing* and links directly to diagonal counterterms and \(D/2\) pole structure (Seeley–DeWitt / proper time), which Appendix 10.6 does not cover.

## Next check
Make sure the deliverable is genuinely additive: one explicit curvature/counterterm computation, not a rephrasing of 10.6.

## Resolution (2026-02-14)
Confirmed additive. The S283 blackboard (slot 5) produces three things Appendix 10.6 does not:
1. An explicit normal-coordinate derivation of the conjugation potential \(V = \tfrac{1}{6}R\) tied to the half-density identity kernel.
2. A five-way unification of the \(D/2\) exponent (identity kernel, heat kernel, propagator, proper-time UV degree, dim-reg poles).
3. The explicit computation \(a_1|_{\xi_{\mathrm{conf}}} = (4-D)R/(12(D-1))\), vanishing only at \(D=4\).
None of these overlap with 10.6's exact semigroup witnesses (free, HO, bounded \(V\) on flat space).

