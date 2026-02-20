# Computationalist — Activity Log

## 2026-02-20
- read: .claude/agents/computationalist.md (agent definition)
- read: agents/shared-rules.md, meta/motivations.md, meta/research-state.md, memory/status.md
- read: notebooks/nonperturbative-contact-pade.md (tree-level Yukawa Pade result)
- claimed: Task #4 (Borel-Pade vacuum polarization threshold)
- computed: Taylor coefficients I_n = B(n+1,3/2)+(1/2)B(n+2,3/2); I_0=4/5, I_1=12/35
- bug found: sympy w/Rational(1,2) = 2w != w/2 (corrected; verified via scipy)
- computed: closed form g(z) = integral_0^1 dw (1+w/2)sqrt(1-w)/(1-wz)
- computed: Im g(z+i0) = (pi/z)(1+1/2z)sqrt((z-1)/z) for z>1
- computed: Pade poles [1/1]-[5/5]; convergence to z=1 (threshold)
- diagnosed: Borel-Pade inapplicable to momentum series (coefficients algebraic not factorial)
- wrote: blackboards/6.md (computation record)
- appended: notebooks/nonperturbative-contact-pade.md (R1-R4, status update)
- marked: Task #4 completed

## 2026-02-20 (self-directed: PDM energy shift check)
- read: blackboards/5.md (critic review of ordering-equivalence Sev-2 issues)
- self-directed: verify PDM energy shift formula in ordering-equivalence paper (Section 3.4)
- derived: delta_V = V_HD - V_LR = alpha/4 - alpha^2*q^2/8 + O(alpha^3) (SymPy + Fock basis)
- found: O(alpha) constant term (alpha/4) is NOT zero; paper's "first-order vanishes" is wrong
- rescue: for energy GAPS (En - E0), O(alpha) constant cancels; gap formula is correct
- numerical: Fock basis diagonalization confirms delta_E_0 = alpha/4 - alpha^2/16 (alpha=0.01)
- wrote: blackboards/6.md (PDM error check, overwriting Borel-Pade)
- sent: paper-edit request to orchestrator for ordering-equivalence/main.md Section 3.4

## 2026-02-20 (self-directed: EH Lagrangian resurgence verification)
- read: blackboards/3.md (physicist EH Lagrangian analysis, verification request item 8)
- computed: c_n = 2^{2n}/(2n)! * B_{2n} for h(s) = s*cosh(s)/sinh(s) - 1 - s^2/3 (SymPy)
- found: d_m = c_{m+2}*(2m+1)! grows as (2m)!/pi^{2m} -- SUPER-FACTORIAL, not n!
- computed: Borel-Pade poles of B_g(t) -- all on NEGATIVE real axis, no pole at t=+pi
- clarified: AO (n! growth, pole at t=-1/3) vs EH (super-factorial, essential singularity)
- wrote: blackboards/6.md (EH resurgence verification results)
- sent: corrective findings to orchestrator (not a paper-edit request, physicist feedback)
