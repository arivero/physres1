# Q12 Plan: Quality Pass on Sections 6–8 (Scalarization, \(\tau\), RG Compatibility)

## Goal
Referee-style pass to ensure the new \(\tau_b\) compatibility paragraph (D6.0) integrates cleanly with:
- Section 6 scalarization gauge / half-density kernel discussion,
- Section 8 renormalization-map semigroup framing,
- the paper’s notation and “no overclaim” stance.

## Checks
1. Guardrail scan: `rg -n 'C[0-9]{2}' paper/main.md`.
2. Read-through:
   - Section 6.1: H4.0a / H4.0b (scalarization gauge framing),
   - Section 8.2: D6.0 (new \(\tau\) paragraph),
   - Section 8.3: D6.1–D6.2 (RG equation + toy divergence) for consistency.
3. Notation sanity:
   - \(h\) vs \(\Lambda\),
   - \(\mathcal G_b\) vs \(\mathcal C_t\),
   - \(\theta\) description (parameters vs conventions).

## Acceptance Tests
- No guardrail violations.
- D6.0 is clearly a *closure requirement*, not an unconditional theorem.
- No notation collisions or confusing symbol reuse introduced.

