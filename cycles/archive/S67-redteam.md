# S67 Red-Team: promotion-ready Euler modified equation + explicit \(f'(y)[f(y)]\) notation

Date: 2026-02-11

## Failure modes
1. **Notation drift** between blackboard note and manuscript (Jacobian vs Fréchet derivative notation).
2. **Accidental over-claim** that the modified equation is a “beta function”.
3. **Promotion friction** (the note isn’t copy/paste ready).

## Mitigations
- Use a minimal convention: “\(f'(y)\) is the Jacobian; \(f'(y)[v]\) is its action; shorthand \(f'(y)f(y)\) means \(f'(y)[f(y)]\).”
- Phrase the analogy as “scale-dependent effective vector field” and avoid RG-specific jargon in the calculation itself.
- End the note with an explicit “promotion block” section that can be pasted into `papers/rg-fundamental/main.md`.

