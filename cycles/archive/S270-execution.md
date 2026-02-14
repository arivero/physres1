# S270 Execution: Main-paper threshold bridge derivation draft

Date: 2026-02-14
Status: Completed

## Work completed
1. Added note `paper/notes/main-paper-threshold-bridge.md` with:
   - fixed-\(L\), small-\(r\) asymptotic derivation of \(q_{\mathrm{crit}}=\nu+1\),
   - Newton/SR instantiations,
   - one promotion-ready sentence for Section 3.3.
2. Ran a compact regime-classification command for representative \((\nu,q)\) cases.

## Command log
- Command:
```bash
python3.12 - <<'PY'
cases = [
    ("Newton q=3", 2, 3),
    ("Newton q=2", 2, 2),
    ("SR q=2", 1, 2),
    ("SR q=3", 1, 3),
]
for name, nu, q in cases:
    delta = nu - (q - 1)
    if delta > 0:
        regime = "barrier-dominant"
    elif delta < 0:
        regime = "attraction-dominant"
    else:
        regime = "marginal"
    print(f"{name}: nu={nu}, q-1={q-1}, delta={delta}, regime={regime}")
PY
```
- Output summary:
  - `Newton q=3`: marginal
  - `Newton q=2`: barrier-dominant
  - `SR q=2`: marginal
  - `SR q=3`: attraction-dominant

## Discovery flag
- `yes` — this yields a concise cross-paper bridge statement suitable for reader-facing promotion.
