# Q56 Red-Team: referee pass on C99 step-doubling notation + modified equation display

Date: 2026-02-11

## Failure modes
1. **Inconsistent notation** (mixing \(f'(y)f(y)\), \(f'(y)[f(y)]\), and \(f'(f)\) across sections).
2. **“Modified equation” misread as RG claim** rather than a scale-dependent effective-data analogy.
3. **Hidden assumptions** (reader wonders what regularity is needed for the expansion).

## Mitigations
- Prefer one convention in the witness block; keep any shorthand explicitly defined at first use.
- Keep the modified-equation paragraph explicitly labeled as an optional interpretation.
- Maintain the existing “smooth \(f\)” assumption at the start of the derivation; do not generalize in prose unless needed.

