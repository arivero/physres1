# D24 Red Team: Delta-Object Dictionary

Date: 2026-02-14

## Failure modes
- Conflating \(\delta(f')\) with \(\delta'\) in prose or notation.
- Treating “delta-functional on paths” as a literal measure rather than a regulated asymptotic.
- Overpromising rigor where only heuristic stationary-phase intuition is available.

## Mitigations
- Maintain a strict notational dictionary: \(\delta(f')\) (delta of a function) vs \(\delta'\) (distribution derivative).
- Require each path-space slogan to be accompanied by one finite-dimensional or kernel-level regulated witness.
- Keep the "safe vs unsafe" criterion explicit (continuity/mollifier universality vs diagonal singularity/products).

## 2026-02-14 Addendum (post-S281)

### Additional failure modes identified
1. **Nondegeneracy assumption gap:** The stationary-set identity requires nondegenerate critical points (f'' != 0 or det Hess != 0). Degenerate critical points require catastrophe-theory / higher-order stationary phase methods. The manuscripts currently restrict to the nondegenerate case, which is correct, but a referee might ask about the degenerate case.
   - Mitigation: The nondegeneracy assumption is stated explicitly in both the blackboard and the manuscripts (D3.5a). A future C cycle could add a one-sentence caveat noting that degenerate critical points require separate treatment.

2. **Mollifier-universality criterion too narrow for renormalized quantities:** A referee might argue that renormalized delta potentials (d=2,3) produce physical predictions despite being scheme-dependent at intermediate stages, and therefore "unsafe" is misleading.
   - Mitigation: The criterion classifies where renormalization is *needed*, not where results are *meaningless*. The do/don't table and dictionary paragraph make clear that delta potentials in d>=2 are "rigorous but require renormalization," not "invalid."

3. **Dictionary paragraph promotion friction:** At ~120 words, the paragraph is dense. Inserting it into the delta-objects paper's Outlook may disrupt flow.
   - Mitigation: A C cycle should choose the insertion point (likely replacing Outlook item 2 in the delta-objects paper) and adjust surrounding transitions.

