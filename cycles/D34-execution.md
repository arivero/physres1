# D34 Execution: Lorentzian Composition Witness for P4.2

Date: 2026-02-14

## Status
Complete

## Work log
1. **13:08** — Completed D35+S290 (ordering resolution)
2. **13:09** — Started D34 per Opus scan recommendation #2
3. Context search (sources/) then spawn S291
4. **S291 completed** — Explicit Lorentzian composition integral computed in `blackboards/6.md`

## Context summary
**Critical gap:** P4.2 crown jewel uses Euclidean signature (heat kernel), but paper is about real-time QM. Need to verify P4.2 extends to Lorentzian (oscillatory) composition, or identify what parts are signature-dependent.

**Hypothesis:** Algebraic structure (d/2 exponent, κ-necessity) is signature-independent. Analytic control (iε prescription, convergence) may require additional input.

## S291 Result
**Verdict: Partial closure (criterion 2).** D34 hypothesis CONFIRMED.

Split:
- **Signature-independent** (algebraically forced): d/2 exponent, κ=ℏ necessity, semigroup law, classical stationary point
- **Signature-dependent** (external input): iε prescription, convergence mode (conditional vs absolute), identity limit mechanism, branch of √i

P4.2 conclusions (C)+(L)+(D) extend to Lorentzian. Conclusion (I) requires iε/distributional framework as additional input.

## Novelty assessment
**Moderate novelty.** The computation itself is textbook (Feynman-Hibbs), but the precise identification of which P4.2 conclusions are signature-independent vs signature-dependent is new to this project. The clean separation strengthens the paper's use of Euclidean proof by showing the algebraic content transfers.

## Follow-up opportunities
1. Promote the algebraic/analytic split into manuscript as a remark accompanying P4.2
2. Connect to D31/S289 (distributional obstruction) — the conditional convergence here is the same issue
3. For interacting potentials: the semigroup argument for d/2 does not require free-particle exactness

## Spawned cycles
- S291: Lorentzian composition check — **COMPLETED**, verdict: partial closure
