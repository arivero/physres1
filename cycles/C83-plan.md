# C83 Plan: Tighten \(\tau\) as a Compare-at-Fixed-Ruler Lemma in Section 8

## Goal
Improve `paper/main.md` `Derivation D6.0` so the control map \(\tau_b\) reads as a regulator-independent consequence of
"refine then compare at a fixed ruler," and explicitly points to the concrete step-halving witness (`Derivation D6.2a`).

## Acceptance
1. Edit `paper/main.md` (Section 8) to:
   - name \(h\) as the fixed comparison ruler,
   - introduce \(\mathcal C_{b,h}\) as the compare-at-ruler operation,
   - state the closure equation \(\mathcal C_{b,h}(A_{h/b,\theta})=A_{h,\tau_b(\theta)}\),
   - mention the explicit witness \(\tau_2(a)=a/2+1/4\) from `Derivation D6.2a`.
2. Record manuscript diffstat in `cycles/C83-execution.md` via `scripts/paper-diffstat.sh --cached`.
3. Commit and push.

