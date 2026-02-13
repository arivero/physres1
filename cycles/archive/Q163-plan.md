# Q163 Plan: Review Remark 3.1 (dimensional origin of v=K/L identity)

**Referee:** Sonnet 4.5
**Target:** C279 (relativistic central orbits, Remark 3.1)
**Date:** 2026-02-13

## Scope
Review the newly inserted Remark 3.1 at line 69-70 of `papers/relativistic-central-orbits/main.md`.

The remark reads:
> The identity \(v=K/L\) is a dimensional consequence of \(q=2\) being the unique power-law exponent for which \([K]=[\text{energy}\cdot\text{length}]=[\text{angular momentum}\cdot\text{velocity}]\), so that \(K/L\) is automatically a velocity. For general \(q\), the circular-orbit condition gives \(K/L=v\cdot r^{q-2}\); eliminating the residual \(r^{q-2}\) re-introduces the mass and Lorentz factor, and no clean mass-independent identity survives.

## Review Checklist
1. **Mathematical correctness:**
   - Verify dimensional analysis: \([K]=[\text{energy}\cdot\text{length}]\) for \(q=2\)?
   - Verify \([K]=[\text{angular momentum}\cdot\text{velocity}]\) for \(q=2\)?
   - Check the general-\(q\) claim: \(K/L=v\cdot r^{q-2}\)?
   - Confirm that eliminating \(r\) indeed re-introduces \(m\) and \(\gamma\) for \(q\neq 2\)?

2. **Placement:**
   - Does it fit naturally after the boxed results (lines 54, 58)?
   - Is it placed before Section 3.1 as specified?

3. **Insight value:**
   - Does it add genuine insight beyond the already-present derivation?
   - Or is it redundant/trivial?

4. **Guardrail compliance:**
   - No cycle labels in manuscript text?

## Expected outcome
PASS, CONDITIONAL PASS (with corrections), or FAIL with specific reasons.
