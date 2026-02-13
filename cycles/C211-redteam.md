# C211 — Red Team

## Verification checklist

1. **IR (not UV) renormalons** — Remark 2.8 correctly states that IR
   renormalons sit on the positive Borel axis and encode power
   corrections. No mention of UV renormalons on the positive axis.
   ✓ Verified.

2. **No sign factor** — The large-order formula in Remark 2.8 has no
   spurious $(-1)^n$. Matches the standard Bender–Wu result for the
   ground-state quartic oscillator.
   ✓ Verified.

3. **$A^{-n}$ language** — Growth rate is stated as
   $a_n \sim A^{-n}\,\Gamma(n+b)$ with explicit mention of logarithmic
   corrections from BW 1973.
   ✓ Verified.

4. **Both BW references present** — `BenderWu1969` and `BenderWu1973`
   both appear in the bibliography and are cited in Remark 2.8.
   ✓ Verified.

No residual issues found.
