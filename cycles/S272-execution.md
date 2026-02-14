# S272 Execution: Coefficient-aware refinement of threshold bridge

Date: 2026-02-14
Status: Completed

## Work completed
1. Expanded `paper/notes/main-paper-threshold-bridge.md` with:
   - coefficient-aware marginal analysis,
   - objection-response mini log,
   - safe/unsafe claim boundary.
2. Ran a coefficient-sensitivity sanity command at fixed marginal exponent.

## Command log
- Command:
```bash
python3.12 - <<'PY'
rs = [1e-1, 1e-2, 1e-3]
nu = 2
q = nu + 1
cases = [
    ("A>B", 2.0, 1.0),
    ("A=B", 1.0, 1.0),
    ("A<B", 0.8, 1.0),
]
for name, A, B in cases:
    print(name)
    for r in rs:
        val = A * r**(-nu) - B * r**(-(q-1))
        print(f"  r={r:.0e}: Delta={val:.6e}")
PY
```
- Output summary:
  - `A>B`: positive leading sign.
  - `A=B`: leading cancellation.
  - `A<B`: negative leading sign.

## Discovery flag
- `yes` — marginal coefficient sensitivity is a key scope sentence missing from the earlier compact formulation.
