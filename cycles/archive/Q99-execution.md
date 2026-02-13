# Q99 Execution
Date: 2026-02-13

## Subagent 1: Section 3 referee (mathematical physicist)
**Important findings (2):**
1. **I1: "bound orbits" overstatement** — companion note proves L > K/c for circular orbits only. Fixed → "circular orbits".
2. **I2: O(Δt) local truncation error terminology** — should be "first-order convergence rate" (local error is O(Δt²)). Fixed.

**Minor (4):** L notation (bare vs bold), P1.1 variable-step jump, list ordering ambiguity, Section 3.4 "open question" claim. Deferred — no correctness impact.

**Stylistic (2):** D1.2a labeled "Derivation" but is more an "Example"; triple repetition of "exact not approximate". Deferred.

## Subagent 2: Introduction + Section 8 referee (theoretical physicist)
**Critical finding (1):**
1. **Sign error**: $\Lambda_\ast \sim \mu\,e^{1/(cg)}$ should be $e^{-1/(cg)}$ (line 1014). From $\beta = -cg^2$, integration gives $\Lambda_\ast = \mu\,e^{-1/(cg)}$. **Fixed.**

**Moderate (1):**
2. Fermionic mediators parenthetical disrupted sentence flow (colon stranded across 30-word parenthetical). **Fixed** — moved to separate sentence.

**Low-Moderate (2):** "Uncuttable" term only appears once (not self-contained); "fermionic mediators" reverses usual EFT direction. Noted, not fixed.

**Low (2):** Claim-label numbering offset (D6.x in Section 8); H0.2 before H0.1. Pre-existing conventions, not changed.

## Fixes applied
1. $e^{1/(cg)} \to e^{-1/(cg)}$ — genuine sign error caught by subagent.
2. "bound orbits" → "circular orbits" — overstatement caught by subagent.
3. Fermionic mediators parenthetical → separate sentence.
4. "O(Δt) local truncation error" → "first-order convergence rate".
