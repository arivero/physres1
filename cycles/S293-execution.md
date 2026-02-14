# S293 Execution: Mehler Kernel Composition Check (Interacting Witness)

Date: 2026-02-14

## Work performed
- Wrote explicit Mehler kernel composition integral (1D Lorentzian, V = (1/2)mw^2 q^2)
- Computed action sum S_t(x,y) + S_s(y,z) with trigonometric coefficients
- Completed the square in y: quadratic coefficient A = sin(w(t+s))/(sin(wt) sin(ws))
- Evaluated Gaussian integral, verified normalization closure:
  sqrt(sin wt)^{-1} * sqrt(sin ws)^{-1} -> sqrt(sin w(t+s))^{-1}
- Verified phase closure: remainder equals S_{t+s}(x,z) exactly (using cos(a+b) = cos a cos b - sin a sin b)
- Proved d/2 exponent is forced by functional equation (Section 7a of blackboard)
- Verified kappa-necessity persists for V != 0 (dimensional analysis + obstruction arguments)
- Extracted a_1 = -iV(x)/hbar from short-time expansion

## Artifacts produced
- `blackboards/4.md`: Mehler kernel composition (overwrites S286 two-particle test)

## Commands run (if any)
```bash
wc -l blackboards/4.md  # 284 lines (within 300 limit)
```

## Result
- **Verdict: Success criterion 1 (Full persistence)**
- d/2 normalization exponent forced by identical algebraic mechanism as free particle
- kappa-necessity identical to free case (dimensionless trigonometric functions carry no action dimension)
- a_1 Seeley-DeWitt coefficient correctly reproduced as compatibility condition
- **D36 verdict: 1 (Full persistence)** -- P4.2 extends to interacting systems without qualification

## Promotion candidate (pointer)
- Location: `blackboards/4.md`, Sections 6 (boxed result), 7 (d/2 forcing), 10 (verdict)
- The composition closure and d/2 forcing argument are ready for promotion via C-cycle
- Connects to existing D12.3 in paper/main.md (Euclidean Mehler), extends to Lorentzian signature with explicit normalization mechanism

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **no**
- The result (full persistence) was expected. The value is in having an explicit interacting witness, not in a surprise.

## Spawned cycles
- No immediate spawns needed. The blackboard content is a promotion candidate for a future C-cycle that strengthens P4.2's "for general V" claim in the main paper.
