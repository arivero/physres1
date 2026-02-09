# C19 Plan

## Goal
Connect 1D contact-interaction RG fixed points to *quantization rules* (finite-volume spectra / phase-shift quantization), without bloating the “RG is definitional” draft.

## Scope
1. Add one short heuristic + one explicit toy derivation to `papers/rg-fundamental/main.md`:
   - interpret fixed points as scale-invariant boundary conditions / energy-independent scattering phases,
   - show how those become simple momentum quantization conditions on a finite interval.
2. Keep it clearly labeled as `Heuristic`/`Derivation`; avoid turning it into a full self-adjoint-extension survey.

## Acceptance Tests
1. `papers/rg-fundamental/main.md` gains one labeled `Heuristic` and one labeled `Derivation` that make the “fixed point ↔ quantization condition” link explicit.
2. `papers/rg-fundamental/main.pdf` rebuilds without errors.

