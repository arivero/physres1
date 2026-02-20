# Computationalist — Status

## Last session: 2026-02-20

## Completed: Task #4 — Borel-Pade recovery of vacuum polarization threshold

### What was done
- Derived the correct dispersive representation of Pi(q^2) and the Taylor series g(z).
- Computed exact rational moments I_n = B(n+1,3/2) + (1/2)B(n+2,3/2).
- Verified in SymPy and scipy (moments, closed form, series vs integral agreement).
- Showed the branch cut structure: Im g(z+i0) = (pi/z)(1+1/2z)sqrt((z-1)/z) for z>1.
- Computed [p/q] Pade approximants up to [5/5]; smallest pole converges to z=1.
- Diagnosed: Borel-Pade NOT applicable to the MOMENTUM series (coefficients algebraic not factorial).

### Key results
- I_0 = 4/5, I_1 = 12/35, I_2 = 64/315  (exact rationals)
- [5/5] Pade pole at z=1.064 (distance 0.064 from threshold z=1)
- Borel transform B(t) = sum (I_n/n!) t^n is ENTIRE — no Borel singularity at t=1.
- Threshold z=1 IS detected by Pade but requires many terms (logarithmic convergence).

### Key correction to task framing
The task says "Borel-Pade resummation." For the momentum expansion in q^2/m^2, the Taylor
series is CONVERGENT, so Borel-Pade is not needed. Direct Pade approximants detect the
branch cut. Borel-Pade applies to the perturbative alpha series (renormalons).

### Deliverables
- Blackboard 6 (/blackboards/6.md): full computation record
- Notebook: results to be appended to notebooks/nonperturbative-contact-pade.md

## Next steps (updated 2026-02-20 self-directed session)
- PDM energy shift paper-edit request sent; awaiting orchestrator action
- EH resurgence feedback sent to physicist via orchestrator
- Blackboard 6 now holds EH results; PDM results captured in paper-edit message
- Check TaskList for new unclaimed tasks
- Could verify Weyl vs LR labeling in ordering-equivalence (Critic Sev-2 item 2)
- Could verify Remark 2.8 claims in uncuttable paper
