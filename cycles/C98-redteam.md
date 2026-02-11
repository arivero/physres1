# C98 Red Team: What a referee would attack

Date: 2026-02-11

## Likely referee objections
- “This is numerical analysis, not RG”:
  - Mitigation: label explicitly as an analogy witness and restate the limited purpose (composed refinement forces correction data).
- Coefficient/sign error in the \(h^2/4\) term:
  - Mitigation: keep the derivation as a direct Taylor expansion and ensure it matches the logged symbolic sanity check from `S66`.
- Notation ambiguity in \(f'(f)\):
  - Mitigation: define \(f'(y)\) as the Jacobian and \(f'(y)f(y)\) as its action on the vector \(f(y)\).

