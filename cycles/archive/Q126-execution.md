# Q126: Execution — Referee review of C235 + C236

**Date:** 2026-02-13

## What was done
Full referee-style review of:
- Remark 3.7 (Schwinger model, inserted by C235)
- Remark 6.6 ('t Hooft anomaly matching, inserted by C236)

in `papers/fermionic-mediators-contact-limits/main.md`.

## Findings

### Remark 3.7 — two factual errors found

1. **Axial anomaly normalization.** The formula as written is `d_mu j^{mu 5} = (e/pi) epsilon^{mu nu} F_{mu nu}`. With epsilon^{mu nu} F_{mu nu} = 2 F_{01}, this gives d_mu j^{mu 5} = (2e/pi) F_{01}, which is twice the standard result. The correct formula with the epsilon tensor is d_mu j^{mu 5} = (e/(2pi)) epsilon^{mu nu} F_{mu nu}.

2. **Dimensional transmutation claim.** The parenthetical "(no dimensionful parameter in the classical Lagrangian)" is incorrect. In 1+1D, the gauge coupling e has mass dimension 1, so the classical Lagrangian already contains a dimensionful parameter. The Schwinger boson mass m = e/sqrt(pi) does not arise from dimensional transmutation.

### Remark 6.6 — one factual error found

1. **Running gauge anomalies.** The clause "unlike gauge-current anomalies, which can run with the coupling [WessZumino1971]" is factually incorrect. The Adler-Bardeen theorem (1969) guarantees that the ABJ anomaly coefficient is one-loop exact and does not run. Gauge anomalies must cancel exactly in consistent theories. The Wess-Zumino reference discusses consistency conditions for anomalous Ward identities, not running of anomalies.

## Verdicts
- Remark 3.7: CONDITIONAL PASS (2 issues)
- Remark 6.6: CONDITIONAL PASS (1 issue)

## Recommended follow-up
A targeted C-cycle (e.g., C237) to fix:
1. Replace `(e/\pi)` with `(e/(2\pi))` in the axial anomaly formula of Remark 3.7.
2. Remove or rewrite the "dimensional transmutation" parenthetical in Remark 3.7.
3. Remove or correct the "gauge-current anomalies can run" clause in Remark 6.6.
