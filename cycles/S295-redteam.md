# S295 Red Team: Study Failure Modes

Date: 2026-02-14

## Failure modes

- **Dimensional analysis may be too restrictive:**
  - The argument assumes [c] = [m]^a [hbar]^b. If the kernel can depend on other quantities (potential parameters, external fields), the obstruction weakens.
  - Mitigation: Hypothesis (D) of P4.2 explicitly restricts to {m, hbar} for the free-particle kinetic kernel. Potential dependence enters through the classical action, not through the Levy exponent alpha.

- **Lorentzian/Euclidean signature conflation:**
  - The analysis uses real exponentials exp(-c*t*|p|^alpha) (Euclidean). The physical propagator has exp(i*S/hbar) (Lorentzian). The dimensional argument is identical in both signatures (the factor i is dimensionless).
  - Mitigation: Explicitly noted in blackboard that c = 1/(2m*hbar) corresponds to the Feynman-Kac kernel "up to factor i."

- **Identity limit argument is weaker than expected:**
  - All alpha-stable semigroups pass (I), so the identity limit provides no discrimination. This was expected from the plan but could be seen as a partial failure of the analysis (we hoped for a double obstruction, got only single).
  - Mitigation: Verdict 2 (dimensional obstruction alone) is still decisive. (L_loc) derivable from (D) is the claimed result.

- **Drift term (mu*p) not fully analyzed:**
  - The Levy-Khintchine formula includes a drift term i*mu*p. The blackboard states this is "eliminated by spatial symmetry or parity" without full proof.
  - Mitigation: For symmetric kernels K_t(x,y) = K_t(y,x), the drift must vanish (mu = 0). This is a standard result. The dimensional argument for the drift: [mu] = LT^{-1} = velocity, which can be built from {m, hbar} only as hbar/(m*L_0) requiring an external length L_0. Same obstruction applies.
