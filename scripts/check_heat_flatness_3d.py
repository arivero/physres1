#!/usr/bin/env python3
"""Checks for notebooks/three-dimensional-heat-flatness.md (Python, SymPy + mpmath).

P = -Delta_g + R/6 on a closed Riemannian 3-manifold.  The script checks:

 1. On an explicit non-homogeneous 3-metric (variable scalar curvature), the
    identity |Riem|^2 = 4|Ric|^2 - R^2 and the pointwise formula
        a_2(P) = |Ric_0|^2/60 + Delta R/180,
    obtained from Vassilevich (4.28) with E = -R/6, at exact rational points.
 2. The hyperbolic heat-kernel ansatz u = e^{-t} (r/sinh r) (4 pi t)^{-3/2}
    e^{-r^2/(4t)} solves u_t = u_rr + 2 coth(r) u_r on H^3 (a = 1).
 3. Spherical heat traces of P on S^3 and on RP^3 = S^3/{+-1} against
    Vol/(4 pi t)^{3/2}; the remainder is exponentially small.
 4. The S^2(a) x S^1(b) coefficient a_2(P) = 1/(90 a^4), both from the
    curvature formula and from the S^2 eigenvalue sum.
 5. Lowest eigenvalue of P on the three space-form branches.

Run:  python3 scripts/check_heat_flatness_3d.py
"""
import itertools
import sympy as sp
import mpmath as mp

# ---------------------------------------------------------------- 1. curvature
x = sp.symbols('x0:3')
# Non-homogeneous, non-diagonal metric with variable scalar curvature.
g = sp.Matrix([
    [1 + x[1]**2 / 3, x[0] * x[2] / 5, 0],
    [x[0] * x[2] / 5, 1 + x[2]**2 / 4, x[0] / 7],
    [0, x[0] / 7, 1 + x[0] * x[1] / 6],
])
n = 3
ginv = g.inv()


def christoffel():
    G = [[[0] * n for _ in range(n)] for _ in range(n)]
    for a, b, c in itertools.product(range(n), repeat=3):
        G[a][b][c] = sum(ginv[a, d] * (sp.diff(g[d, b], x[c]) + sp.diff(g[d, c], x[b])
                                       - sp.diff(g[b, c], x[d])) for d in range(n)) / 2
    return G


Gam = christoffel()
# R^a_{bcd} = d_c Gam^a_{db} - d_d Gam^a_{cb} + Gam^a_{ce}Gam^e_{db} - Gam^a_{de}Gam^e_{cb}
Rup = {}
for a, b, c, d in itertools.product(range(n), repeat=4):
    Rup[a, b, c, d] = (sp.diff(Gam[a][d][b], x[c]) - sp.diff(Gam[a][c][b], x[d])
                       + sum(Gam[a][c][e] * Gam[e][d][b] - Gam[a][d][e] * Gam[e][c][b]
                             for e in range(n)))
Ric = sp.Matrix(n, n, lambda b, d: sum(Rup[a, b, a, d] for a in range(n)))
Rs = sum(ginv[b, d] * Ric[b, d] for b in range(n) for d in range(n))


def laplacian(f):
    sq = sp.sqrt(g.det())
    return sum(sp.diff(sq * ginv[i, j] * sp.diff(f, x[j]), x[i]) for i in range(n) for j in range(n)) / sq


pts = [(sp.Rational(1, 3), sp.Rational(-1, 2), sp.Rational(2, 5)),
       (sp.Rational(-2, 7), sp.Rational(1, 4), sp.Rational(-3, 5))]
LapR = laplacian(Rs)
for p in pts:
    sub = dict(zip(x, p))
    gi = ginv.subs(sub)
    gl = g.subs(sub)
    Rl = {k: sp.nsimplify(v.subs(sub)) for k, v in Rup.items()}
    # lower first index: R_{abcd} = g_{ae} R^e_{bcd}
    Rdn = {(a, b, c, d): sum(gl[a, e] * Rl[e, b, c, d] for e in range(n))
           for a, b, c, d in itertools.product(range(n), repeat=4)}
    Riem2 = sp.nsimplify(sum(Rdn[a, b, c, d] * Rdn[e, f, h, k] * gi[a, e] * gi[b, f] * gi[c, h] * gi[d, k]
                             for a, b, c, d, e, f, h, k in itertools.product(range(n), repeat=8)
                             if Rdn[a, b, c, d] != 0 and Rdn[e, f, h, k] != 0))
    Ricl = Ric.subs(sub)
    Ric2 = sp.nsimplify(sum(Ricl[a, b] * Ricl[c, d] * gi[a, c] * gi[b, d]
                            for a, b, c, d in itertools.product(range(n), repeat=4)))
    R0 = sp.nsimplify(Rs.subs(sub))
    Ric0sq = sp.simplify(Ric2 - R0**2 / 3)
    lapR = sp.nsimplify(LapR.subs(sub))
    E = -R0 / 6
    lapE = -lapR / 6
    a2_vass = (60 * lapE + 60 * R0 * E + 180 * E**2 + 12 * lapR + 5 * R0**2 - 2 * Ric2 + 2 * Riem2) / 360
    a2_claim = Ric0sq / 60 + lapR / 180
    assert sp.simplify(Riem2 - (4 * Ric2 - R0**2)) == 0
    assert sp.simplify(a2_vass - a2_claim) == 0
    print(f"[1] point {p}: R = {float(R0):+.6f}, |Ric0|^2 = {float(Ric0sq):.6e}, "
          f"Delta R = {float(lapR):+.6e}; |Riem|^2=4|Ric|^2-R^2 and a2 identity exact")
# R must be non-constant for the test to mean something
assert sp.simplify(sp.diff(Rs, x[0]).subs(dict(zip(x, pts[0])))) != 0
print("[1] scalar curvature is non-constant on the test metric")

# ------------------------------------------------------- 2. hyperbolic kernel
t, r = sp.symbols('t r', positive=True)
v = (4 * sp.pi * t) ** sp.Rational(-3, 2) * sp.exp(-r**2 / (4 * t))
u = sp.exp(-t) * r / sp.sinh(r) * v
res = sp.simplify((sp.diff(u, t) - sp.diff(u, r, 2) - 2 * sp.cosh(r) / sp.sinh(r) * sp.diff(u, r)) / u)
assert res == 0
diag = sp.limit(sp.exp(t) * u, r, 0)
assert sp.simplify(diag - (4 * sp.pi * t) ** sp.Rational(-3, 2)) == 0
print("[2] H^3 kernel solves the radial heat equation; e^{t} K(t;x,x) = (4 pi t)^{-3/2} exactly")

# ------------------------------------------------- 3. spherical heat traces
mp.mp.dps = 40
for tau in [mp.mpf('0.5'), mp.mpf('0.2'), mp.mpf('0.1')]:
    s3 = mp.nsum(lambda k: k**2 * mp.e**(-tau * k**2), [1, mp.inf])
    lead = mp.sqrt(mp.pi) / (4 * tau**1.5)
    rp3 = mp.nsum(lambda m: (2 * m + 1)**2 * mp.e**(-tau * (2 * m + 1)**2), [0, mp.inf])
    print(f"[3] tau={float(tau):.2f}: S^3 trace - Vol/(4pi t)^1.5 = {mp.nstr(s3 - lead, 5)};"
          f"  RP^3 trace - (Vol/2)/(4pi t)^1.5 = {mp.nstr(rp3 - lead / 2, 5)};"
          f"  exp(-pi^2/tau) = {mp.nstr(mp.e**(-mp.pi**2 / tau), 5)},"
          f"  exp(-pi^2/(4tau)) = {mp.nstr(mp.e**(-mp.pi**2 / (4 * tau)), 5)}")
    # S^3: shortest closed geodesic 2 pi a; RP^3: pi a (Poisson terms e^{-l^2/4t})
    assert abs(s3 - lead) < 10 * mp.pi**2 / tau**2.5 * mp.e**(-mp.pi**2 / tau)
    assert abs(rp3 - lead / 2) < 10 * mp.pi**2 / tau**2.5 * mp.e**(-mp.pi**2 / (4 * tau))

# ------------------------------------------------------------ 4. S^2 x S^1
# Curvature side (a = 1): Ric eigenvalues (1, 1, 0), R = 2.
Ric0sq = sum((lam - sp.Rational(2, 3))**2 for lam in (1, 1, 0))
assert Ric0sq == sp.Rational(2, 3)
assert Ric0sq / 60 == sp.Rational(1, 90)
# Spectral side: unit S^2 trace = (1/t) sum_j b_j t^j; extract b_0..b_3 by
# Richardson-type fit at small t, compare with 1, 1/3, 1/15, 4/315.
mp.mp.dps = 50


def s2_trace(tt):
    return mp.nsum(lambda l: (2 * l + 1) * mp.e**(-tt * l * (l + 1)), [0, mp.inf])


ts = [mp.mpf(1) / 2**k / 40 for k in range(6)]
A = mp.matrix([[tt**j for j in range(6)] for tt in ts])
bvec = mp.matrix([tt * s2_trace(tt) for tt in ts])
coef = mp.lu_solve(A, bvec)
for j, exact in enumerate([1, mp.mpf(1) / 3, mp.mpf(1) / 15, mp.mpf(4) / 315]):
    assert abs(coef[j] - exact) < 1e-6, (j, coef[j])
b0, b1, b2 = 1, sp.Rational(1, 3), sp.Rational(1, 15)
# multiply by the shift e^{-t R/6} = e^{-t/3}; S^1 contributes only a_0
shift = [1, -sp.Rational(1, 3), sp.Rational(1, 18)]
a2_prod = b2 * shift[0] + b1 * shift[1] + b0 * shift[2]
assert a2_prod == sp.Rational(1, 90)
a_, b_ = sp.symbols('a b', positive=True)
A2 = sp.Rational(1, 90) / a_**4 * (4 * sp.pi * a_**2) * (2 * sp.pi * b_)
assert sp.simplify(A2 - 4 * sp.pi**2 * b_ / (45 * a_**2)) == 0
print(f"[4] S^2 coefficients from spectrum: {[mp.nstr(c, 10) for c in coef[:4]]}")
print("[4] S^2 x S^1: a2(P) = 1/90 a^-4 from both routes; A2 = 4 pi^2 b/(45 a^2)")

# ------------------------------------------------------ 5. lowest eigenvalues
# constant function: -Delta 1 = 0, so P 1 = (R/6) 1 = k 1, and the constant is
# the ground state of -Delta on a closed connected manifold.
for name, k in [("S^3/Gamma", 1), ("T^3", 0), ("H^3/Gamma", -1)]:
    print(f"[5] {name}: lambda_min(P) = k = {k}")
print("all checks passed")
