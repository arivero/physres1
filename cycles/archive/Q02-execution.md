# Q02 Execution

## Summary
This pass reviews `papers/planck-area/main.md` and `papers/rg-fundamental/main.md` after the recent delta/half-density promotions (`C26–C28`).

## Findings
### Planck-area draft (`papers/planck-area/main.md`)
1. **Good:** D1.2a (general near-diagonal scaling) + D1.2b (identity-kernel witness) now make the \(\varepsilon^{-d/2}\) exponent both general and concrete.
2. **Potential redundancy:** D1.2a and D1.2b partially overlap; the structure is defensible (general lemma + canonical example), but later a compression pass may help readability.
3. **Admissibility knob is now explicit:** H2.7a successfully blocks the “rename a root as a coupling” loophole and cleanly excludes \(\mu\)/cutoffs and \(L_\ast\).
4. **Remaining ambiguity:** “canonical normalization of fields” is an operational phrase but may still raise questions (gauge-field rescalings, gravity conventions). Not a blocker, but worth keeping lightweight.
5. **Open dependency remains:** modern semiclassical-prefactor anchor beyond Van Vleck 1928 is still missing (`B02`).

### RG note (`papers/rg-fundamental/main.md`)
1. **Good:** §5.9 fixes the \((2\pi)^{-d}\) convention and isolates the scheme constant as a rescaling of \(\kappa_\ast\) (hence \(R\)), keeping beta-function invariance explicit.
2. **Likely referee request (optional):** a short mapping from the note’s \(T(E)\) normalization to a physical scattering amplitude convention may be requested if the paper is polished for submission. Not needed for the “RG is compatibility” thesis but could preempt confusion.

## Action Queue (tagged)
1. `B`: `B02` acquire a modern semiclassical propagator reference that explicitly states the Van Vleck prefactor formula (OA-first; otherwise mark `PENDING`).
2. `C`: (optional) later compress D1.2a/D1.2b into one “lemma + canonical example” paragraph if Section 3 grows too long.
3. `C`: (optional) add a one-sentence disclaimer near H2.7a clarifying that “canonical normalization” is a convention choice and that the admissibility rule is a knob, not a theorem.
4. `C` (optional for RG note): add an appendix-style note mapping \(T(E)\) to a standard scattering-amplitude normalization, if needed.

## Status
Completed.
