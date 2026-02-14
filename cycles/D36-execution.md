# D36 Execution: Interacting Composition Closure (Mehler Kernel Witness)

Date: 2026-02-14

## Status
In progress

## Work log
1. **13:45** — Started D36 per Opus scan recommendation (extends beyond free particle)
2. **13:47** — Haiku context search completed (agent a457ee9)
   - Found: Rivero groupoid/composition formalism, harmonic oscillator models (0209110, 9910062)
   - Gap: No explicit Mehler kernel treatment, no Seeley-DeWitt recursion, no κ-necessity for V≠0
   - **Novelty potential: HIGH** (no existing witness for interacting composition forcing)
3. Next: Spawn S293 for Mehler kernel composition check

## Context summary
**Critical question:** Do P4.2's d/2 and κ-necessity persist for interacting (V≠0) systems, or are they free-particle artifacts?

All completed witnesses (D34/D30/D37/D29) use free or leading-order kernels. The Mehler kernel (harmonic oscillator) is an exact interacting propagator that tests whether Seeley-DeWitt corrections break the forcing mechanism.

**Hypothesis:** Composition forces d/2 and κ at all orders; a_n coefficients are compatibility conditions, not escape routes.

## S293 completion (2026-02-14)
4. **S293 completed** — Mehler kernel composition written to `blackboards/4.md` (284 lines)
   - Verdict: **Success criterion 1 (Full persistence)**
   - d/2 forced by same algebraic mechanism as free particle (sin(wt) replaces t, dimension-counting unchanged)
   - kappa-necessity identical to free case (trigonometric functions are dimensionless)
   - a_1 = -iV/hbar correctly extracted from short-time expansion
   - **D36 verdict: 1** — P4.2 extends to interacting harmonic oscillator without qualification

## Novelty assessment
**Moderate-High.** The Mehler composition is textbook, but the explicit demonstration that composition forces d/2 and kappa for V != 0 (not just free) makes P4.2's generality claim rigorous by concrete witness. Combined with S287 (curved space) and S292 (iε uniqueness), this closes the "free-particle artifact" objection.

## Follow-up opportunities
- Promote Lorentzian Mehler normalization mechanism to main paper (extends existing D12.3 which uses Euclidean signature)
- Perturbative composition check for non-quadratic V (quartic oscillator) — would test beyond exact Gaussian closure
- Heat kernel (Euclidean oscillator) comparison for signature independence

## Spawned cycles
- S293: Mehler kernel composition check (COMPLETED, verdict 1)
