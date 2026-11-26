#!/usr/bin/env python3
"""Checks for the action-scale discussion (paper/notes/composition-forcing-vs-compatibility.md
section 8; paper/main.md Remark P4.2j; docs/main-paper/main-revised.md section 6.1).

Language: Python 3 with SymPy (exact/symbolic) and mpmath.

 1. Matched zoom h = eps*S0, t = eps*T, x,y = q +- eps*v/2 (eps dimensionless):
    a) constant shift V -> V + C multiplies the Euclidean kernel by exp(-T C/S0)
       and leaves the normalised endpoint-conditioned bridge unchanged;
    b) Brownian-bridge moments give the relative O(eps^2) correction
         eps^2 [ T^3 V'^2/(24 m S0) - T v^2 V''/(24 S0) - T^2 V''/(12 m) ];
    c) independent check against the exact Euclidean kernel of
       V = a + b x + c x^2/2 (forced oscillator), expanded in eps.
 2. Dimensions of the three correction terms, of eps/eps' and of S0/T.
 3. Closed impulse sequence +J, -2J, +J: relative phase J^2 T/(m s); two
    candidate scales s1 != s2 are separated by the phase slope.
 4. Classical compounding: 1 + 2a r_{2a} = (1 + a r_a)^2 for r_a = (e^{gamma a}-1)/a,
    for every gamma, through one and two blocking steps.
 5. Equality across systems: stationary phase of S_1/s_1 + S_2/s_2 + S_int/s_12
    reproduces Newton's equations of S_1 + S_2 + S_int iff s_1 = s_2 = s_12.

Run:  python3 scripts/check_action_scale_zoom.py
"""
import sympy as sp

eps, S0, T, m, q, v, C = sp.symbols('epsilon S_0 T m q v C', positive=True)

# ------------------------------------------------------------ 1a constant shift
t = eps * T
h = eps * S0
shift_factor = sp.exp(-t * C / h)
assert sp.simplify(shift_factor - sp.exp(-T * C / S0)) == 0
print("[1a] V -> V + C multiplies the kernel by exp(-t C/h) = exp(-T C/S0) for every eps;"
      " the normalised bridge E[.|x,y] is unchanged because the factor is path independent")

# ------------------------------------------------------------ 1b bridge moments
# Path x(u) = q + eps*(v*(u - 1/2) + B_u), u in [0,1], B a Brownian bridge with
# Var B_u = (S0*T/m) u(1-u)  (diffusion h/m over time t = eps*T, rescaled by eps).
u, w = sp.symbols('u w', positive=True)
sig2 = S0 * T / m
# E[(int B)^2] = int int cov ; E[int B^2] = int var
EA2 = sp.integrate(sp.integrate(sig2 * u * (1 - w), (u, 0, w)), (w, 0, 1)) * 2   # symmetric halves
EB2 = sp.integrate(sig2 * u * (1 - u), (u, 0, 1))
assert sp.simplify(EA2 - sig2 / 12) == 0
assert sp.simplify(EB2 - sig2 / 6) == 0
lin_mean_sq = sp.integrate((v * (u - sp.Rational(1, 2)))**2, (u, 0, 1))      # v^2/12
V1, V2 = sp.symbols('V1 V2')   # V'(q), V''(q)
# weight exp(-(T/S0) int V(x(u)) du); expand V to second order, average to eps^2
corr = (sp.Rational(1, 2) * (T / S0)**2 * V1**2 * EA2
        - (T / S0) * sp.Rational(1, 2) * V2 * (lin_mean_sq + EB2))
claim = T**3 * V1**2 / (24 * m * S0) - T * v**2 * V2 / (24 * S0) - T**2 * V2 / (12 * m)
assert sp.simplify(corr - claim) == 0
print("[1b] bridge mean and variance reproduce eps^2[T^3 V'^2/(24 m S0) - T v^2 V''/(24 S0) - T^2 V''/(12 m)]")

# ------------------------------------------------------------ 1c exact kernel
a, b, c = sp.symbols('a b c', positive=True)
om = sp.sqrt(c / m)
x0, x1 = q - eps * v / 2, q + eps * v / 2
# V = a + b x + c x^2/2 = a' + (c/2) X^2 with X = x + b/c, a' = a - b^2/(2c).
# Euclidean classical action of the shifted oscillator over time tau (Mehler form)
#   S(y0 -> xa; tau) = a' tau + m om [(Y0^2 + Xa^2) cosh(om tau) - 2 Y0 Xa] / (2 sinh(om tau)),
# exact kernel K = sqrt(m om / (2 pi h sinh(om tau))) exp(-S/h).
y0s, xa, ta = sp.symbols('y_0 x_a tau', positive=True)
ap = a - b**2 / (2 * c)
Sfun = lambda Y0, XA, TA: ap * TA + m * om * (((Y0 + b / c)**2 + (XA + b / c)**2) * sp.cosh(om * TA)
                                              - 2 * (Y0 + b / c) * (XA + b / c)) / (2 * sp.sinh(om * TA))
Shj = Sfun(y0s, xa, ta)
# Euclidean Hamilton-Jacobi equation for S = int (m xdot^2/2 + V): S_tau + S_x^2/(2m) - V(x) = 0
hj = sp.diff(Shj, ta) + sp.diff(Shj, xa)**2 / (2 * m) - (a + b * xa + c * xa**2 / 2)
for vals in [{y0s: sp.Rational(1, 3), xa: sp.Rational(2, 5), ta: sp.Rational(3, 7), a: 1, b: 2, c: 3, m: 5},
             {y0s: sp.Rational(-1, 2), xa: sp.Rational(1, 4), ta: sp.Rational(5, 3), a: 2, b: 1, c: 7, m: 2}]:
    assert abs(sp.N(hj.subs(vals), 30)) < 1e-25
# the Van Vleck prefactor for a quadratic action is exact: sqrt(-S_{x y}/(2 pi h))
vv = -sp.diff(Shj, xa, y0s)
assert sp.simplify(vv - m * om / sp.sinh(om * ta)) == 0
Scl = Sfun(x0, x1, t)
pref_log = sp.log(m * om / (2 * sp.pi * h * sp.sinh(om * t))) / 2
Vq = a + b * q + c * q**2 / 2
Klead_log = sp.log(m / (2 * sp.pi * h * t)) / 2 - m * (x1 - x0)**2 / (2 * h * t) - t * Vq / h
ratio_log = pref_log - Scl / h - Klead_log
ser = sp.series(ratio_log, eps, 0, 3).removeO()
ser = sp.simplify(sp.expand(ser))
target = claim.subs({V1: b + c * q, V2: c})
assert sp.simplify(ser - eps**2 * target) == 0, (ser, target)
print("[1c] exact forced-oscillator kernel: log(K/K_lead) = target eps^2 + O(eps^3)")

# ------------------------------------------------------------ 2 dimensions
M_, L_, Ti = sp.symbols('M L Ti', positive=True)   # mass, length, time units
dim = {'S0': M_ * L_**2 / Ti, 'T': Ti, 'm': M_, 'v': L_,
       'V1': M_ * L_ / Ti**2, 'V2': M_ / Ti**2}
terms = [T**3 * V1**2 / (m * S0), T * v**2 * V2 / S0, T**2 * V2 / m]
subsd = {S0: dim['S0'], T: dim['T'], m: dim['m'], v: dim['v'], V1: dim['V1'], V2: dim['V2']}
for term in terms:
    assert sp.simplify(term.subs(subsd)) == 1
energy = M_ * L_**2 / Ti**2
action = M_ * L_**2 / Ti
assert sp.simplify((action / Ti) / energy) == 1
print("[2] the three eps^2 terms are dimensionless; [eps/eps'] = action/time = energy = [S0/T]")

# ------------------------------------------------------------ 3 impulse phase
p, J, sa = sp.symbols('p J s', positive=True)
ph = -T / (2 * m * sa) * ((p + J)**2 + (p - J)**2) + T / (m * sa) * p**2
assert sp.simplify(ph + J**2 * T / (m * sa)) == 0
# two candidate scales: phase lag phi = J^2 T/(m s) is linear in the mechanical
# action W = J^2 T/m with slope 1/s; slopes differ unless s1 = s2
s1, s2, W = sp.symbols('s1 s2 W', positive=True)
assert sp.simplify(sp.diff(W / s1 - W / s2, W) - (1 / s1 - 1 / s2)) == 0
# scaling (m, J, s) -> (c m, c J, c s) at fixed initial velocity leaves displacement J/m and phase invariant
cc = sp.Symbol('cc', positive=True)
assert sp.simplify((J**2 * T / (m * sa)).subs({J: cc * J, m: cc * m, sa: cc * sa}, simultaneous=True)
                   - J**2 * T / (m * sa)) == 0
print("[3] impulse sequence: relative phase -J^2 T/(m s); slope 1/s separates s1 != s2;"
      " (m,J,s) -> (cm,cJ,cs) is an exact invariance")

# ------------------------------------------------------------ 4 compounding
aa, g = sp.symbols('a gamma', positive=True)
r = lambda step: (sp.exp(g * step) - 1) / step
assert sp.simplify((1 + aa * r(aa))**2 - (1 + 2 * aa * r(2 * aa))) == 0
assert sp.simplify((1 + aa * r(aa))**4 - (1 + 4 * aa * r(4 * aa))) == 0
# gamma = 0 limit: r -> 0, trivially composing
assert sp.limit(r(aa), g, 0) == 0
print("[4] exact compounding composes through one and two blocking steps for every gamma (incl. gamma -> 0)")

# ------------------------------------------------------------ 5 equality across systems
m1, m2, k1, k2, k12 = sp.symbols('m1 m2 k1 k2 k12', positive=True)
F = sp.Function('U')
tt = sp.Symbol('t')
y1, y2 = sp.Function('y1')(tt), sp.Function('y2')(tt)
Lq = m1 * sp.diff(y1, tt)**2 / (2 * k1) + m2 * sp.diff(y2, tt)**2 / (2 * k2) - F(y1 - y2) / k12
EL = [sp.diff(sp.diff(Lq, sp.diff(yy, tt)), tt) - sp.diff(Lq, yy) for yy in (y1, y2)]
# accelerations implied by stationary phase
acc1 = sp.solve(EL[0], sp.diff(y1, tt, 2))[0]
acc2 = sp.solve(EL[1], sp.diff(y2, tt, 2))[0]
total_force = sp.simplify(m1 * acc1 + m2 * acc2)
Uprime = sp.diff(F(y1 - y2), y1)          # U'(y1 - y2); note dU/dy2 = -U'
coef = sp.simplify(total_force / Uprime)
assert sp.simplify(coef + (k1 - k2) / k12) == 0, coef
# Newton's equation m1 y1'' = -U' for particle 1 holds iff k1 = k12 (and likewise k2 = k12)
assert sp.simplify((m1 * acc1 + Uprime).subs(k1, k12)) == 0
assert sp.simplify(m1 * acc1 + Uprime) != 0
print("[5] stationary phase of S1/s1 + S2/s2 + S_int/s12: total force = -(s1 - s2)/s12 U';"
      " Newton's equations of S1 + S2 + S_int hold iff s1 = s2 = s12")
print("all checks passed")
