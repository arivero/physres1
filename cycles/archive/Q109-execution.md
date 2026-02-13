# Q109 Execution
Date: 2026-02-13

## Review verdicts

### Example 3.2 (fermionic mediators, Uehling): FIX APPLIED
**Error**: integrand had u^{-2} where it should be u^{-1}. With u^{-2} the integral converges at short distances, losing the logarithmic running; with u^{-1} (standard form), ∫₁^∞ du/u diverges logarithmically as expected.
- Fix: u^{-2} → u^{-1}. Short/long-distance limits, Lamb shift numbers (≈27/≈1058 MHz), and narrative flow all confirmed correct.

### Remark 3.4 (uncuttable, symplectic integrators): FIX APPLIED
**Issue**: "energy is conserved along the discrete orbit up to exponentially small corrections" conflates shadow Hamiltonian conservation (exact for H̃) with original Hamiltonian tracking (approximate for H).
- Fix: clarified that H̃ is conserved exactly, while H oscillates with amplitude O(Δt²) without secular drift.

## Diffstat
```
paper-diffstat (cached): TOTAL +6 -3 (3 files)
  +4 -1 papers/action-angle-indeterminacy-central-potentials/main.md
  +1 -1 papers/fermionic-mediators-contact-limits/main.md
  +1 -1 papers/uncuttable-controlled-refinement/main.md
```
