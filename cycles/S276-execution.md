# S276 Execution: Generalized marginal map beyond monomial A(L)

Date: 2026-02-14

## Work completed
1. Added generalized `A(L)` threshold condition to `paper/notes/main-paper-threshold-bridge.md`:
   - sufficient condition for unique threshold (continuous, strictly increasing `A(L)`),
   - explicit non-monotone counterexample showing multiple threshold crossings.
2. Ran crossing-count scan on monotone vs non-monotone toy families.

## Command log
- Command:
```bash
python3.12 - <<'PY'
import math

def crossings(f, B, Lmin=0.2, Lmax=8.0, n=6000):
    xs = [Lmin + (Lmax-Lmin)*i/(n-1) for i in range(n)]
    ys = [f(x)-B for x in xs]
    c = 0
    for i in range(1,n):
        if ys[i-1]*ys[i] < 0:
            c += 1
    return c

B = 1.0
f_nonmono = lambda L: 1.2 + 0.6*math.sin(3*L) + 0.03*L**2
f_mono = lambda L: 0.5*L**2
print('mono_crossings', crossings(f_mono,B))
print('nonmono_crossings', crossings(f_nonmono,B))
PY
```
- Output summary:
  - monotone family: 1 crossing.
  - non-monotone family: 4 crossings.

## Discovery flag
- `yes` — unique-threshold claims require a monotonicity condition on \(A(L)\), not just exponent matching.

## Branch state
- Initial pass complete; keep this S topic open for optional deeper families if selected next.

## Iteration 2 (same ID; append-only): range-coverage refinement
1. Added range-coverage condition to the uniqueness criterion.
2. Verified with growing vs saturating monotone toy families.

### Iteration 2 command
```bash
python3.12 - <<'PY'
import math

def crossings(f, B, Lmin=0.0, Lmax=8.0, n=6000):
    xs = [Lmin + (Lmax-Lmin)*i/(n-1) for i in range(n)]
    ys = [f(x)-B for x in xs]
    c = 0
    for i in range(1,n):
        if ys[i-1]*ys[i] < 0:
            c += 1
    return c

A_grow = lambda L: 0.5*L*L
A_sat = lambda L: 1.5*(1-math.exp(-L))
for B in [1.0, 2.0]:
    print(f'B={B}')
    print('  grow_crossings', crossings(A_grow,B))
    print('  sat_crossings', crossings(A_sat,B))
PY
```

### Iteration 2 output summary
- For monotone but saturating families, crossings can disappear when \(B\) exceeds the range of \(A\).
- Unique-threshold condition now includes both monotonicity and range coverage.

## Iteration 3 (same ID; windowed uniqueness criterion)
1. Added a local-window uniqueness test for generalized `A(L)=B` threshold equations.
2. Used `blackboards/3.md` for branch-level stabilization and promoted durable statement to notebook.

### Iteration 3 command
```bash
python3.12 - <<'PY'
import math

def crossings(f, B, Lmin, Lmax, n=12000):
    xs=[Lmin + (Lmax-Lmin)*i/(n-1) for i in range(n)]
    ys=[f(x)-B for x in xs]
    c=0
    for i in range(1,n):
        if ys[i-1]*ys[i] < 0:
            c += 1
    return c

def monotone_increasing(f, Lmin, Lmax, n=12000):
    xs=[Lmin + (Lmax-Lmin)*i/(n-1) for i in range(n)]
    prev=f(xs[0])
    for x in xs[1:]:
        y=f(x)
        if y < prev - 1e-8:
            return False
        prev=y
    return True

A = lambda L: 0.06*L*L + 0.8*math.sin(3*L)/L
B = 1.5
Lw = (4.5, 8.0)
print('global_crossings', crossings(A,B,0.4,8.0))
print('window_crossings', crossings(A,B,*Lw))
print('window_monotone', monotone_increasing(A,*Lw))
print('window_range', (A(Lw[0]), A(Lw[1])))
for B2 in [1.5, 4.5]:
    print(f'B={B2}: window_crossings={crossings(A,B2,*Lw)}')
PY
```

### Iteration 3 output summary
- `global_crossings = 2`
- `window_crossings = 1`
- `window_monotone = True`
- `window_range = (1.3579, 3.7494)`
- Bracketing check: `B=1.5 -> 1` crossing, `B=4.5 -> 0` crossings on the same window.

### Iteration 3 conclusion
- Global non-monotonicity does not preclude unique threshold interpretation on a physically selected `L` window.
- Compact caveat now: threshold uniqueness claims should be window-qualified.
