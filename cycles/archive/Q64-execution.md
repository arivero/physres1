# Q64 Execution: Referee pass on C109 (Remark HD-D1.3a)

Date: 2026-02-12

## Parent cycle reviewed
- `C109`

## Findings

1. **Claim boundaries**: `Remark` label is correct — the content records structural distinctions (algebra verified in S72 blackboard), not a new derivation. ✓
2. **Notation**: uses `D` consistently (matching the rest of half-density-qft). Uses `\widetilde\Delta`, `R`, `\xi`, `\omega` — all standard and internally consistent. ✓
3. **Mathematics verified**:
   - xi = D/(4(D-1)) from matching -D/2 = -2(D-1)xi. ✓
   - Residual D/2: half-density |grad sigma|^2 coeff D(4-D)/4 minus xi*R coeff -D(D-2)/4 gives D(4-D+D-2)/4 = D/2. ✓
   - xi_conf = (D-2)/(4(D-1)) — standard Yamabe coupling. ✓
4. **Placement**: after HD-D1.3 (conformal expansion), before Section 4 (propagators). Natural flow: "here is the expansion → here is what it is NOT → propagators." ✓
5. **Cross-reference with PA-H2.6a**: PA-H2.6a references HD-D1.3 (correct — HD-D1.3a sits right after it). PA-H2.6a's characterization of the D=4 cancellation as "independent of PA-H2.5" and "does not supply a length scale" is consistent with HD-D1.3a's claims. ✓

## Minor notes (non-blocking)
- Line 128: "carry conformal weight D/2" is slightly imprecise — half-densities have *scaling exponent* D/2 under dilations, which in some conformal geometry conventions would be labeled as conformal weight -D/2. However, in context (comparison with the Yamabe operator at weight (D-2)/2), the meaning is unambiguous. Not worth a correction cycle.
- PA-H2.6a (planck-area line 154) references `blackboards/2026-02-10-conformal-rescaling-and-half-density-laplacian-family.md`, which no longer exists (pruned by blackboard cap). This is a pre-existing stale reference, not introduced by C109. Note for a future hygiene C cycle.

## Required follow-ups (spawn cycles)
None required for the promoted remark. The stale blackboard reference in PA-H2.6a is noted but not blocking (the derivation is now self-contained in HD-D1.3 + HD-D1.3a).

## Notes (non-actions)
- HD-D1.3a strengthens the half-density-qft paper by preventing conflation with conformal coupling — a likely referee question.
