# S16 Redteam: Failure Modes and Mitigations

## Failure Modes
1. **Overinterpretation:** presenting D=4 cancellation as a derivation of “why spacetime is 4D”.
2. **Sign/coefficient errors:** the conjugation calculation is easy to slip on; a wrong coefficient would mislead later prose.
3. **Coordinate confusion:** mixing “conformal factor \(\sigma\)” (coordinate dependent) with invariant geometry without explicit caveats.

## Mitigations
1. Label the D=4 point as “simplification in conformal class” and keep it in `blackboards/` until invariantly understood.
2. Include a SymPy check in a reduced setting and keep the operator definition explicit.
3. When promoting later, phrase as: “in a conformal background, the half-density conjugation simplifies at D=4”, not as a general theorem.

