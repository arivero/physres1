# Squeezed States and the Action–Angle Tradeoff

**Date:** 2026-02-13
**Target:** action-angle satellite, Remark 6.4 after Remark 6.3

## Context
Section 6 of the action-angle satellite has:
- Example 6.1: harmonic oscillator Fock (sharp action, uniform phase) vs coherent (localized phase, spread action)
- Example 6.2: hydrogen atom (three action-angle pairs, Keplerian ellipse requires coherent superposition)
- Remark 6.3: EBK quantization on the invariant torus

Missing: squeezed states, which demonstrate that the action-angle tradeoff is **tunable** — not just a binary sharp/spread.

## The physics

For a coherent state |α⟩ with mean photon number n̄ = |α|²:
- Number fluctuations: Δn = √n̄ (Poisson)
- Phase spread: Δθ ~ 1/(2√n̄)
- Product: Δn · Δθ ~ 1/2

Squeezed states parametrized by squeeze parameter r:
- Phase-squeezed: Δθ ~ e^{-r}/(2√n̄), Δn ~ e^{r}√n̄
- Number-squeezed: Δn ~ e^{-r}√n̄, Δθ ~ e^{r}/(2√n̄)
- Product: Δn · Δθ ~ 1/2 (uncertainty bound still saturated)

The "tradeoff area" is conserved; only the shape of the phase-space distribution is deformed (circle → ellipse).

## Key point for the paper
The action-angle tradeoff is not just a constraint; it's a **resource** that can be optimally allocated. The squeezed state redistributes uncertainty between action and angle degrees of freedom while respecting the lower bound. This is the quantum-optical realization of the general action-angle principle.

## What to promote

**Remark 6.4**: Brief remark (~4 lines) after Remark 6.3. Note coherent states approximately saturate Δn·Δθ; squeezed states reshape the tradeoff; total area bounded below; allocation is tunable.
