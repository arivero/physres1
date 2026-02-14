# S277 Execution: Scale-window validity for mixed kinetic exponents

Date: 2026-02-14

## Work completed
1. Added tolerance-window table to `paper/notes/main-paper-threshold-bridge-sanity-grid.md`.
2. Added one manuscript-safe scope sentence based on window validity.
3. Completed numeric scan for \(\nu_{\mathrm{eff}}\) proximity to 1 and 2 over \(x=p/m\in[10^{-3},10^3]\).

## Command log
- Command:
```bash
python3.12 - <<'PY'
import math

def nu_eff(x):
    E = math.sqrt(x*x + 1.0) - 1.0
    dE = x / math.sqrt(x*x + 1.0)
    return (x / E) * dE

xs = [10**(-3 + 6*i/6000) for i in range(6001)]
for eps in [0.2, 0.1, 0.05]:
    near2 = [x for x in xs if abs(nu_eff(x)-2.0) <= eps]
    near1 = [x for x in xs if abs(nu_eff(x)-1.0) <= eps]
    print(f'eps={eps}')
    print(f'  nu~2 window: x in [{min(near2):.4g}, {max(near2):.4g}]')
    print(f'  nu~1 window: x in [{min(near1):.4g}, {max(near1):.4g}]')
PY
```
- Output summary:
  - tighter tolerance shrinks near-2 and near-1 windows as expected.
  - crossover zone remains broad, supporting explicit scope caution.

## Discovery flag
- `yes` — explicit window bounds make the asymptotic-only caveat operational instead of rhetorical.

## Branch state
- Initial pass complete; keep this S topic open for tighter tolerance or model-variant scans if selected next.

## Iteration 2 (same ID; append-only)
1. Derived closed-form expression for relativistic interpolation:
   \(\nu_{\mathrm{eff}}(x)=1+1/\sqrt{1+x^2}\), \(x=p/m\).
2. Appended analytic tolerance-window bounds to the note and checked agreement with numeric scan.

### Iteration 2 command
```bash
python3.12 - <<'PY'
import math

def nu_exact(x):
    return 1 + 1/math.sqrt(1+x*x)

for eps in [0.2,0.1,0.05]:
    x_near1 = math.sqrt(1/(eps*eps)-1)
    x_near2 = math.sqrt(1/((1-eps)*(1-eps))-1)
    print(f'eps={eps}: near1 x>={x_near1:.6f}, near2 x<={x_near2:.6f}')

for x in [0.3,0.5,5,10,20]:
    print(f'x={x}: nu_exact={nu_exact(x):.6f}')
PY
```

### Iteration 2 output summary
- Analytic bounds match the earlier numeric windows.
- This branch now has both numeric and analytic support for window-caveat wording.

## Iteration 3 (same ID; decade-drift gate)
1. Added finite-window drift diagnostic for `nu_eff` over one decade in `x=p/m`.
2. Stabilized the diagnostic on blackboard and notebook layers.

### Iteration 3 command
```bash
python3.12 - <<'PY'
import math

def nu(x):
    return 1 + 1/math.sqrt(1+x*x)

def drift_decade(x):
    return abs(nu(x)-nu(10*x))

windows=[(1e-3,1e-2),(1e-2,1e-1),(1e-1,1),(1,10),(10,100),(100,1000)]
for a,b in windows:
    n1,n2=nu(a),nu(b)
    print(f'x in [{a:g},{b:g}]: nu in [{n2:.6f},{n1:.6f}], drift={abs(n1-n2):.6f}')

xs=[10**(-4 + 8*i/20000) for i in range(20001)]
for delta in [0.05,0.1,0.2]:
    good=[x for x in xs if drift_decade(x)<=delta]
    # good set splits into low-x and high-x windows
    lo=max(x for x in good if x<1)
    hi=min(x for x in good if x>1)
    print(f'delta={delta}: x<={lo:.5g} or x>={hi:.5g}')
PY
```

### Iteration 3 output summary
- Drift is tiny in deep NR and deep UR decades, and large across crossover decades (`[0.1,1]`, `[1,10]`).
- Tolerance gate examples:
  - `delta=0.10`: `x<=0.04875` or `x>=8.945`.

### Iteration 3 conclusion
- Window-validity caveat can now be expressed as a finite-window drift condition, not only endpoint asymptotics.

## Iteration 4 (same ID; generalized scale-factor drift)
1. Extended finite-window kinetic drift from `b=10` to arbitrary scale factor `b>1`.
2. Added closed-form peak-location formula and asymptotic safe-window estimates.
3. Validated against numerical boundaries.

### Iteration 4 command
```bash
python3.12 - <<'PY'
import math

def nu(x):
    return 1 + 1/math.sqrt(1+x*x)

def drift_b(x,b):
    return nu(x)-nu(b*x)

def boundaries(b,delta):
    xs=[10**(-5 + 10*i/200000) for i in range(200001)]
    good=[x for x in xs if drift_b(x,b)<=delta]
    lo=max(x for x in good if x<1)
    hi=min(x for x in good if x>1)
    return lo,hi

def x_peak_formula(b):
    return math.sqrt(b**(-2/3)+b**(-4/3))

def x_peak_numeric(b):
    xs=[10**(-5 + 10*i/200000) for i in range(200001)]
    vals=[drift_b(x,b) for x in xs]
    i=max(range(len(xs)), key=lambda k: vals[k])
    return xs[i], vals[i]

print('b=10 detailed tolerances')
for delta in [0.05,0.1,0.2]:
    lo,hi=boundaries(10,delta)
    lo_asym=math.sqrt(2*delta/(10*10-1))
    hi_asym=(1-1/10)/delta
    print(f'delta={delta:.2f}: exact lo={lo:.6g}, hi={hi:.6g}; asym lo={lo_asym:.6g}, hi={hi_asym:.6g}')
    print(f'  relerr lo={(lo_asym/lo-1):+.3%}, hi={(hi_asym/hi-1):+.3%}')

print('\npeak-drift check')
for b in [2,5,10]:
    xf=x_peak_formula(b)
    xn,dn=x_peak_numeric(b)
    df=drift_b(xf,b)
    print(f'b={b}: x_peak_formula={xf:.6f}, x_peak_numeric={xn:.6f}, drift_peak~{dn:.6f}, formula_drift={df:.6f}')

print('\nwindow widening with b at delta=0.10')
for b in [2,3,5,10]:
    lo,hi=boundaries(b,0.1)
    print(f'b={b}: safe if x<={lo:.6g} or x>={hi:.6g}')
PY
```

### Iteration 4 output summary
- For `b=10`, asymptotic high-`x` boundary estimate is very accurate (<3% across tested tolerances), low-`x` estimate is moderately conservative.
- Closed-form peak location matches numeric maximizer to scan precision.
- Larger `b` narrows the low-`x` safe window and pushes high-`x` threshold upward for fixed tolerance.

### Iteration 4 conclusion
- `Delta nu_b` gives a reusable mixed-regime gate at arbitrary scale factor.
- Asymptotic formulas are useful fast filters before numerical refinement.
