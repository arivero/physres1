# D38 Execution: Observable O(hbar^2) Signature from Stratification

Date: 2026-02-14

## Status
Complete

## Work log
1. **14:02** -- Started D38 per Opus scan recommendation (concretizes D35 findings)
2. **14:04** -- Haiku context search completed (agent aef87c8)
   - Found: operator ordering (de Gosson, 0103153), self-adjoint extensions (0209110, 9910062), perturbation theory
   - Gap: von Roos (1983) and BenDaniel-Duke (1966) not in sources/; explicit heterostructure parameters missing
   - **Novelty potential: MODERATE-HIGH** (application to position-dependent mass is novel to project)
3. Next: Spawn S294 for energy shift calculation
4. **S294 completed** -- Energy shift calculation in blackboards/6.md
   - **Verdict 4 + 1:** First-order shift O(alpha) vanishes identically; O(alpha^2) shift is unmeasurably small (~0.006-0.06 meV for perturbative regime)
   - Key formula: Delta E_0 = -hbar*omega*alpha_0^2/16
   - Discovery: Blackboard 3 error -- half-density does NOT eliminate first-derivative term in 1D; both Weyl and HD share connection term f'*d/dq

## Context summary
**Critical question:** Does D35's layer-3 deformation freedom (O(hbar^2) scalar potential) have measurable consequences?

**Answer: No.** The Weyl and half-density prescriptions for f(q) = 1 + alpha*q^2:
1. Share identical principal symbol (Layer 1) and connection term (Layer 2)
2. Differ only in scalar O(hbar^2) potential: Delta V = -hbar^2*f'^2/(32mf)
3. Energy shift is O(alpha^2), not O(alpha), making it even smaller than expected
4. For realistic semiconductor parameters: |Delta E_0| << 0.1 meV (spectroscopic resolution)

Deformation equivalence (Section 7, P5.2) is physical, not merely formal.

## Novelty assessment
**MODERATE.** Two results:
1. (Expected) Energy shift is unmeasurably small -- confirms deformation equivalence
2. (Unexpected) Blackboard 3's claim that half-density eliminates first-derivative term is incorrect in 1D. Both prescriptions share Layer 2 (connection). This strengthens the equivalence further.

## Follow-up opportunities
- Verify whether the first-derivative elimination holds in d >= 2 (where Riemannian curvature is nonzero)
- Cross-check blackboard 3's Q_HD formula against DeWitt's standard reference
- Promote corrected Layer 2 analysis to paper notes (Section 10.2)

## Spawned cycles
- S294 (completed): energy shift calculation
- (Potential) S-cycle to verify d >= 2 half-density first-derivative claim
