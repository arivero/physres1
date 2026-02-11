# C99 Red-Team: clarify Euler step-doubling witness (explicit \(f'(y)[f(y)]\); show modified equation)

Date: 2026-02-11

## Failure modes
1. **Micro-edit masquerading as promotion.** If we only change symbols, the cycle doesn’t justify its existence.
2. **Notation overload.** Introducing \(f'(y)[v]\) could make the witness feel heavier than intended.
3. **Analogy overreach.** Readers may misread “modified equation” as a claim about beta functions.

## Mitigations
- Ensure the modified-equation remark includes the displayed flow expansion and the short algebra leading to \(g=-\tfrac12 f'(y)[f(y)]\).
- Define the bracket notation once and then reuse it consistently.
- Phrase the remark as “scale-dependent effective vector field” and keep RG terminology out of the computation itself.

