# Q33 Plan: Quality Pass on ISCO Subsection

## Goal
Check that the new `4.3 Timelike circular orbits and ISCO` subsection in `papers/relativistic-central-orbits/main.md` is correct, consistent with Section 4 conventions, and appropriately scoped.

## Checks
1. Read Section 4 from definitions of \(E,L,\epsilon\) through 4.3.
2. Verify algebra for \(L^2(r)\), \(E^2(r)\), and \(V_{\rm eff}''(r)\) is consistent.
3. Confirm the ISCO statement \(r_{\rm ISCO}=6M\) matches the derived stability criterion.
4. Guardrail scan:
   - `rg -n 'C[0-9]{2}' paper/main.md`

## Acceptance Tests
- No contradictions with earlier Section 4 formulas.
- No overextension into full GR beyond baseline effective-potential analysis.
- Guardrail scan remains clean.
