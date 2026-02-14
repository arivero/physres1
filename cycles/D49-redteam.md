# D49 Red Team: P4.2 ↔ RCP Axiom Mapping

## Attack vectors

1. **Is the mapping trivially obvious?** The RCP foundations paper (Section 6.1) already states P4.2 uses A1+A2+A5. D49 adds the per-axiom decomposition and the "proper containment" analysis, but the core mapping was already known.
   - **Response:** The per-axiom decomposition (which conclusion needs which axiom) IS new. The finding that A1 alone handles 5 of 9 conclusions, while A5 handles 3 and A2 handles 1, is a non-obvious structural result.

2. **Is "operationally orthogonal" too strong?** Singular potentials where the self-adjoint extension (A3) determines which RG flow (A4) is relevant suggest cross-talk between channels.
   - **Response:** "Operationally orthogonal" means the axioms don't logically imply each other. Physical systems may invoke multiple channels, but that's application, not logical dependence.

3. **Does the A5 optionality issue undermine the axiom system?** If removing A5 removes κ=ℏ, Lévy obstruction, and continuum time, the framework loses its most dramatic results.
   - **Response:** This is a genuine observation. Recommend upgrading A5 from "optional" to "required for quantitative content" in the RCP foundations paper.

## Verdict
D49 passes red team. The mapping is sound, the per-axiom decomposition is novel, and the A5 optionality observation is a useful finding for the RCP paper.
