# Q126: Debate — Referee review of C235 + C236

**Date:** 2026-02-13

## Issue 1: Axial anomaly normalization in Remark 3.7

**Question:** Is `(e/pi) epsilon^{mu nu} F_{mu nu}` the correct normalization for the 1+1D axial anomaly?

**Analysis:** The standard result (see e.g. Peskin & Schroeder problem 19.1, or Schwinger's original calculation) gives the axial anomaly in 1+1D as:

  d_mu j^{mu 5} = (e/pi) F_{01}

When rewriting with the Levi-Civita tensor, epsilon^{01} = 1 (or -1 depending on convention), and F_{mu nu} is antisymmetric, so:

  epsilon^{mu nu} F_{mu nu} = epsilon^{01} F_{01} + epsilon^{10} F_{10} = F_{01} - (-F_{01}) = 2 F_{01}

Therefore:

  (e/pi) epsilon^{mu nu} F_{mu nu} = (2e/pi) F_{01}

This is twice the correct value. The correct covariant form is either:
- `(e/pi) F_{01}` (component form), or
- `(e/(2pi)) epsilon^{mu nu} F_{mu nu}` (covariant form).

**Convention caveat:** Some authors use a different convention where epsilon^{mu nu} is not the standard Levi-Civita symbol but rather defines it such that summation over ordered indices only is intended. In that non-standard convention, the formula as written could be correct. However, in the standard physics convention (sum over all mu, nu), the factor of 2 error is clear.

**Resolution:** Replace `(e/pi)` with `(e/(2pi))` before the epsilon tensor, or switch to the component form `(e/pi) F_{01}`.

## Issue 2: Dimensional transmutation in the Schwinger model

**Question:** Does the Schwinger model exhibit dimensional transmutation?

**Analysis:** Dimensional transmutation in the technical sense (a la Coleman-Weinberg, or QCD) means: a classically dimensionless coupling acquires a mass scale through quantum effects, so that the theory's mass spectrum is set by a dynamically generated scale rather than by a tree-level mass parameter.

In the Schwinger model:
- The gauge coupling e in 1+1D has engineering dimensions [e] = mass.
- The Lagrangian L = bar{psi}(i slashed{D})psi - (1/4)F_{mu nu}F^{mu nu} already contains e (inside the covariant derivative) as a dimensionful parameter.
- The photon mass m = e/sqrt(pi) is proportional to e with a numerical prefactor — no logarithmic or exponential transmutation is involved.

Compare with QCD: the coupling g is dimensionless in 3+1D, and Lambda_QCD = mu exp(-8pi^2/(b_0 g^2(mu))) is an exponentially generated scale. That is dimensional transmutation.

**Resolution:** The claim "(no dimensionful parameter in the classical Lagrangian)" is incorrect. The parenthetical should be removed or replaced with a correct statement, e.g., "(the mass arises from the anomaly, not from an explicit mass term in the Lagrangian)".

## Issue 3: Running of gauge-current anomalies in Remark 6.6

**Question:** Do gauge-current anomalies "run with the coupling"?

**Analysis:** There are several distinct concepts:
1. **Gauge anomaly** (anomaly of a gauge symmetry): must cancel exactly (anomaly cancellation condition) for the theory to be consistent. Does not run.
2. **ABJ anomaly** (anomaly of a global chiral symmetry in the presence of gauge fields): the anomaly coefficient is one-loop exact by the Adler-Bardeen theorem (1969). Does not run.
3. **'t Hooft anomaly** (anomaly of a global symmetry when background gauge fields are turned on): RG invariant, as discussed in the remark.
4. **Anomalous dimensions** of operators: these do run, but they are not "anomalies" in the sense of anomalous symmetries.

The clause "unlike gauge-current anomalies, which can run with the coupling" conflates these concepts. No anomaly coefficient runs with the coupling. The Adler-Bardeen theorem is one of the sharpest non-renormalization results in QFT.

The [WessZumino1971] reference discusses integrability conditions (Wess-Zumino consistency conditions) for anomalous Ward identities, which are constraints on anomalies — they do not discuss running of anomalies.

**Resolution:** Remove the clause entirely ("making 't Hooft anomalies for global symmetries exact RG invariants") or replace with a correct contrast: e.g., contrast the non-running of anomaly coefficients with the running of coupling constants or anomalous dimensions.
