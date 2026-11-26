#!/usr/bin/env python3
"""Rooted-tree coefficient checks for papers/rooted-tree-bookkeeping/main.md.

Language: Python 3 with exact rationals (fractions.Fraction) and SymPy;
mpmath for the renormalisation toy model.  Julia/BSeries.jl is not installed
on the machine where this was run, so the B-series operations are
reimplemented here in the BSeries.jl / Hairer-Lubich-Wanner normalisation

    B(a; h, y) = y + sum_t h^|t| / sigma(t) * a(t) * F(t)(y),

and the printed BSeries.jl values quoted in the paper are compared against
the output (see REFERENCE_* below).  The "raw" coefficient of the elementary
differential F(t) is a(t)/sigma(t).

Checks:
 1. Table of all rooted trees through order 4 (order 5 counted): sigma, gamma,
    exact-flow coefficient 1/gamma (normalised) and 1/(sigma*gamma) (raw),
    and the published (incorrect) formula 1/(sigma*|t|!).
 2. Independent Taylor extraction of the raw exact-flow coefficients from a
    generic polynomial vector field on R^2 (SymPy, exact).
 3. Explicit midpoint: elementary weights, composition of two steps by the
    Butcher-group (character convolution) formula, independent Taylor
    extraction of Phi_h(Phi_h(y)) and of Phi_h o Phi_h - Phi_2h, the linear
    control f(y) = y and the branching control f(y) = y^2.
 4. Substitution (vector-field replacement) is a different operation from
    composition: the modified-equation coefficients of explicit midpoint
    through order 3, checked by Taylor.
 5. Connes-Kreimer toy model: Bogoliubov subtraction on the nested tree [.]
    with a cutoff, the limit, and the one-parameter group law under the same
    convolution product, through order 3.

Run:  python3 scripts/check_rooted_tree_coefficients.py
"""
from fractions import Fraction as Fr
from itertools import combinations
from math import factorial
import sys
import sympy as sp
import mpmath as mp

# ------------------------------------------------------------------ trees
# A tree is a sorted tuple of child trees; the leaf is ().


def trees(n):
    """All rooted trees with n nodes (canonical sorted-tuple form)."""
    if n == 1:
        return [()]
    out = set()

    def forests(m, maxt=None):
        # multisets of trees with total m nodes, nonincreasing order
        if m == 0:
            yield ()
            return
        for k in range(m, 0, -1):
            for t in trees(k):
                if maxt is not None and (k, t) > maxt:
                    continue
                for rest in forests(m - k, (k, t)):
                    yield (t,) + rest
    for f in forests(n - 1):
        out.add(tuple(sorted(f, key=key)))
    return sorted(out, key=key)


def order(t):
    return 1 + sum(order(c) for c in t)


def key(t):
    return (order(t), [key(c) for c in t])


def sigma(t):
    s = 1
    for c in set(t):
        m = t.count(c)
        s *= factorial(m) * sigma(c) ** m
    return s


def gamma(t):
    g = order(t)
    for c in t:
        g *= gamma(c)
    return g


def bracket(t):
    if t == ():
        return "o"
    return "[" + ",".join(bracket(c) for c in t) + "]"


def level_sequence(t, depth=1):
    """Canonical level sequence as used by RootedTrees.jl: depth-first, with the
    subtrees ordered so that the whole sequence is lexicographically maximal
    (e.g. [o,[o]] -> [1, 2, 3, 2])."""
    subs = sorted((level_sequence(c, depth + 1) for c in t), reverse=True)
    seq = [depth]
    for sq in subs:
        seq += sq
    return seq


def from_level_sequence(seq):
    """Inverse of level_sequence (any valid level sequence)."""
    def build(i):
        d = seq[i]
        kids, j = [], i + 1
        while j < len(seq) and seq[j] > d:
            k, j = build(j)
            kids.append(k)
        return tuple(sorted(kids, key=key)), j
    t, _ = build(0)
    return t


# ------------------------------------------- labelled trees and sub-trees
def labelled(t):
    """Return parent array (root = 0, parent[0] = -1) of a representative."""
    parent = [-1]

    def add(sub, p):
        for c in sub:
            parent.append(p)
            add(c, len(parent) - 1)
    add(t, 0)
    return parent


def shape(nodes, parent, root):
    kids = [v for v in nodes if parent[v] == root]
    return tuple(sorted((shape(nodes, parent, k) for k in kids), key=key))


def ordered_subtrees(t):
    """Yield (s, forest): s a root-containing subtree (or None for empty),
    forest the list of shapes of the remaining components (HLW III.1.10)."""
    parent = labelled(t)
    n = len(parent)
    allnodes = set(range(n))
    for r in range(n + 1):
        for S in combinations(range(n), r):
            S = set(S)
            if S and 0 not in S:
                continue
            if any(parent[v] not in S for v in S if v != 0):
                continue
            rest = allnodes - S
            roots = [v for v in rest if parent[v] == -1 or parent[v] in S]
            forest = [shape(rest, parent, v) for v in roots]
            s = shape(S, parent, 0) if S else None
            yield s, forest


def compose(a, b, maxorder):
    """Coefficients of B(b) o B(a) (first a, then b), normalised convention:
    (a.b)(t) = sum_{s in OST(t)} b(s) a(t minus s), b(empty) = a(empty) = 1."""
    out = {}
    for n in range(1, maxorder + 1):
        for t in trees(n):
            tot = Fr(0)
            for s, forest in ordered_subtrees(t):
                term = Fr(1) if s is None else b[s]
                for f in forest:
                    term *= a[f]
                tot += term
            out[t] = tot
    return out


def rk_weights(A, bvec, maxorder):
    """Normalised B-series coefficients (elementary weights) of an RK method."""
    s = len(bvec)

    def u(t):
        v = [Fr(1)] * s
        for c in t:
            uc = u(c)
            Au = [sum(A[i][j] * uc[j] for j in range(s)) for i in range(s)]
            v = [v[i] * Au[i] for i in range(s)]
        return v
    return {t: sum(bvec[i] * u(t)[i] for i in range(s))
            for n in range(1, maxorder + 1) for t in trees(n)}


# --------------------------------------------------------------- 1. table
print("[1] rooted trees through order 4 (RootedTrees.jl canonical level sequences)")
print(f"{'tree':<12}{'level seq':<14}{'|t|':>4}{'sigma':>6}{'gamma':>6}"
      f"{'1/gamma':>9}{'1/(s*g)':>9}{'1/(s*|t|!)':>12}")
for n in range(1, 5):
    for t in trees(n):
        print(f"{bracket(t):<12}{str(level_sequence(t)):<14}{n:>4}{sigma(t):>6}"
              f"{gamma(t):>6}{str(Fr(1, gamma(t))):>9}{str(Fr(1, sigma(t) * gamma(t))):>9}"
              f"{str(Fr(1, sigma(t) * factorial(n))):>12}")
counts = [len(trees(n)) for n in range(1, 6)]
assert counts == [1, 1, 2, 4, 9], counts
# alpha(t) = |t|!/(sigma gamma) = number of monotone labellings, an integer
for n in range(1, 6):
    for t in trees(n):
        assert factorial(n) % (sigma(t) * gamma(t)) == 0
    # sum over trees of alpha(t) = (n-1)!  (number of recursive trees)
    assert sum(factorial(n) // (sigma(t) * gamma(t)) for t in trees(n)) == factorial(n - 1)
chain3 = (((),),)
bush3 = ((), ())
t4_asym = ((), ((),))          # [o,[o]]
assert Fr(1, sigma(chain3) * gamma(chain3)) == Fr(1, 6)
assert Fr(1, sigma(bush3) * gamma(bush3)) == Fr(1, 6)
assert Fr(1, sigma(t4_asym) * gamma(t4_asym)) == Fr(1, 8)
assert Fr(1, sigma(bush3) * factorial(3)) == Fr(1, 12)
assert Fr(1, sigma(t4_asym) * factorial(4)) == Fr(1, 24)
print("[1] chain 1/6, bush 1/6, [o,[o]] 1/8 (raw); published formula gives 1/6, 1/12, 1/24")
print(f"[1] number of trees of order 1..5: {counts}")

# ------------------------------------------ elementary differentials (SymPy)
Y = sp.symbols('y1 y2')
hs = sp.Symbol('h')


def F(t, f):
    """Elementary differential F(t) for a vector field f (list of SymPy exprs)."""
    if t == ():
        return sp.Matrix(f)
    args = [F(c, f) for c in t]
    m = len(args)
    out = []
    for comp in f:
        tot = 0
        # m-th derivative applied to args: sum_{i1..im} d^m f / dy_i1..dy_im * prod args
        def rec(k, expr, prod):
            nonlocal tot
            if k == m:
                tot += expr * prod
                return
            for i in range(len(Y)):
                rec(k + 1, sp.diff(expr, Y[i]), prod * args[k][i])
        rec(0, comp, 1)
        out.append(sp.expand(tot))
    return sp.Matrix(out)


def extract_raw(series_fn, f, maxorder, points):
    """Given series_fn(f, y0) -> list of h-coefficient vectors, solve for the raw
    coefficient c(t) of each F(t) at each order, using several base points."""
    res = {}
    coeffs_at = [series_fn(f, p) for p in points]
    for n in range(1, maxorder + 1):
        ts = trees(n)
        rows, rhs = [], []
        for p, co in zip(points, coeffs_at):
            sub = dict(zip(Y, p))
            Fv = [F(t, f).subs(sub) for t in ts]
            for comp in range(len(Y)):
                rows.append([Fv[j][comp] for j in range(len(ts))])
                rhs.append(co[n][comp])
        M = sp.Matrix(rows)
        bv = sp.Matrix(rhs)
        sol = (M.T * M).solve(M.T * bv)
        assert sp.simplify(M * sol - bv) == sp.zeros(len(rows), 1), "inconsistent"
        for j, t in enumerate(ts):
            res[t] = sp.nsimplify(sol[j])
    return res


f_gen = [Y[1] + Y[0]**2 / 2 + Y[0] * Y[1]**2 / 3 + Y[1]**3 / 5,
         -Y[0] + Y[0] * Y[1] / 2 + Y[0]**3 / 7 - Y[1]**2 / 3]
pts = [(sp.Rational(1, 2), sp.Rational(-1, 3)), (sp.Rational(-2, 5), sp.Rational(3, 4)),
       (sp.Rational(1, 7), sp.Rational(2, 3)), (sp.Rational(3, 5), sp.Rational(1, 5))]
MAXO = 4


def lie_series(f, p):
    """Taylor coefficients of the exact flow: y^(k)/k! with y^(k) = (f.grad)^(k-1) f."""
    sub = dict(zip(Y, p))
    g = sp.Matrix(f)
    J = sp.Matrix(f)
    coeffs = {1: [c.subs(sub) for c in g]}
    for k in range(2, MAXO + 1):
        g = g.jacobian(Y) * J
        coeffs[k] = [c.subs(sub) / factorial(k) for c in g]
    return coeffs


def map_series(step):
    def fn(f, p):
        y = sp.Matrix(p)
        out = step(f, y)
        coeffs = {}
        for k in range(1, MAXO + 1):
            coeffs[k] = [sp.expand(c).coeff(hs, k) for c in out]
        return coeffs
    return fn


def trunc(v):
    return sp.Matrix([sp.series(c, hs, 0, MAXO + 1).removeO() for c in v])


def fsub(f, y):
    return sp.Matrix([c.subs(dict(zip(Y, y)), simultaneous=True) for c in f])


def midpoint(f, y, h=hs):
    k1 = fsub(f, y)
    k2 = fsub(f, y + h / 2 * k1)
    return y + h * k2


def two_midpoints(f, y):
    y1 = trunc(sp.expand(midpoint(f, y)))
    return trunc(sp.expand(midpoint(f, y1)))


def diff_two_vs_double(f, y):
    return trunc(sp.expand(two_midpoints(f, y) - midpoint(f, y, 2 * hs)))


exact_raw = extract_raw(lie_series, f_gen, MAXO, pts)
for t, c in exact_raw.items():
    assert c == sp.Rational(1, sigma(t) * gamma(t)), (bracket(t), c)
print("[2] Taylor extraction of exact flow reproduces raw 1/(sigma*gamma) for all 8 trees")

# ------------------------------------------------------------ 3. midpoint
A_mid = [[Fr(0), Fr(0)], [Fr(1, 2), Fr(0)]]
b_mid = [Fr(0), Fr(1)]
a_mid = rk_weights(A_mid, b_mid, 4)
exact = {t: Fr(1, gamma(t)) for n in range(1, 5) for t in trees(n)}
two = compose(a_mid, a_mid, 4)
# exact flow is a one-parameter group: e o e = e at step 2h
ee = compose(exact, exact, 4)
for t in ee:
    assert ee[t] == Fr(2**order(t), gamma(t))
print("[3] exact-flow group law e_h o e_h = e_2h holds through order 4")
print(f"{'tree':<12}{'midpt a(t)':>11}{'raw':>8}{'(a.a)(t)':>10}{'raw':>8}"
      f"{'2^|t|a(t)':>11}{'diff raw':>10}{'exact raw':>10}")
for n in range(1, 5):
    for t in trees(n):
        dbl = 2**n * a_mid[t]
        print(f"{bracket(t):<12}{str(a_mid[t]):>11}{str(a_mid[t] / sigma(t)):>8}"
              f"{str(two[t]):>10}{str(two[t] / sigma(t)):>8}{str(dbl):>11}"
              f"{str((two[t] - dbl) / sigma(t)):>10}{str(Fr(1, sigma(t) * gamma(t))):>10}")
# expected values stated in the paper
assert a_mid[()] == 1 and a_mid[((),)] == Fr(1, 2)
assert a_mid[bush3] == Fr(1, 4) and a_mid[chain3] == 0
assert two[((),)] / sigma(((),)) == 2
assert two[chain3] / sigma(chain3) == 1 and two[bush3] / sigma(bush3) == Fr(5, 4)
assert (two[chain3] - 8 * a_mid[chain3]) / sigma(chain3) == 1
assert (two[bush3] - 8 * a_mid[bush3]) / sigma(bush3) == Fr(1, 4)

# independent Taylor extraction of the composed map and the difference
mid_raw = extract_raw(map_series(midpoint), f_gen, MAXO, pts)
two_raw = extract_raw(map_series(two_midpoints), f_gen, MAXO, pts)
dif_raw = extract_raw(map_series(diff_two_vs_double), f_gen, MAXO, pts)
for t in mid_raw:
    assert mid_raw[t] == sp.Rational(a_mid[t].numerator, a_mid[t].denominator) / sigma(t)
    assert two_raw[t] == sp.Rational(two[t].numerator, two[t].denominator) / sigma(t)
    d = (two[t] - 2**order(t) * a_mid[t]) / sigma(t)
    assert dif_raw[t] == sp.Rational(d.numerator, d.denominator)
print("[3] Taylor extraction on R^2 matches convolution for Phi_h, Phi_h o Phi_h and the difference")

# linear control f(y) = y
z = sp.Symbol('z')
lin = sp.expand((1 + hs + hs**2 / 2)**2)
assert lin.coeff(hs, 2) == 2 and lin.coeff(hs, 3) == 1
print("[3] linear control: (1+h+h^2/2)^2 has h^2 coefficient 2, h^3 coefficient 1")


# branching control f(y) = y^2 (scalar): f'(f'f) = 4y^4, f''(f,f) = 2y^4
def scal_mid(y, h):
    return y + h * (y + h / 2 * y**2)**2


comp = sp.expand(sp.series(scal_mid(scal_mid(z, hs), hs) - scal_mid(z, 2 * hs), hs, 0, 4).removeO())
assert sp.simplify(comp.coeff(hs, 3) - (4 * z**4 + sp.Rational(1, 4) * 2 * z**4)) == 0
print(f"[3] branching control f=y^2: h^3 coefficient of Phi_h o Phi_h - Phi_2h = {comp.coeff(hs, 3)}"
      " = f'(f'f) + (1/4) f''(f,f)")

# ------------------------------------------------ 4. substitution / modified eq.
# Modified vector field f_h = f + h f2 + h^2 f3 + ... such that the exact flow of
# f_h reproduces Phi_h.  Order h^1: -1/2 f'f is *absent* for midpoint (order 2),
# order h^2: f3 = c_bush f''(f,f) + c_chain f'f'f.  Determine by the condition
# exact_flow(f_h)(h) = Phi_h(f)(h) through h^3.
c1, c2, c3 = sp.symbols('c1 c2 c3')


def modified_check():
    Ff = {t: F(t, f_gen) for t in [(), ((),), bush3, chain3]}
    fh = Ff[()] + hs * c1 * Ff[((),)] + hs**2 * (c2 * Ff[bush3] + c3 * Ff[chain3])
    # exact flow of fh to h^3 via Lie series
    J = fh
    g = fh
    y = sp.Matrix(Y) + hs * g
    term = g
    for k in range(2, 4):
        term = term.jacobian(Y) * J
        y += hs**k * term / factorial(k)
    eqs = []
    diff = sp.expand(y - midpoint(f_gen, sp.Matrix(Y)))
    for pp in pts[:3]:
        sub = dict(zip(Y, pp))
        for comp in diff:
            ser = sp.expand(sp.series(comp.subs(sub), hs, 0, 4).removeO())
            for k in (2, 3):
                eqs.append(ser.coeff(hs, k))
    return sp.solve(eqs, [c1, c2, c3], dict=True)


sol = modified_check()
assert sol == [{c1: 0, c2: sp.Rational(-1, 24), c3: sp.Rational(-1, 6)}], sol
print(f"[4] modified equation of explicit midpoint: f_h = f + h^2[ {sol[0][c2]} f''(f,f) + {sol[0][c3]} f'f'f ] + O(h^3)")

# ------------------------------------------------ 5. Connes-Kreimer toy model
# Feynman rules: phi(o)(c) = int_0^L dy/(y+c);  phi(B+(t1...tm))(c) =
# int_0^L dy/(y+c) prod_i phi(t_i)(y).  Subtraction T_mu: evaluate at c = mu.
mp.mp.dps = 30


def phi_leaf(c, L):
    return mp.log((L + c) / c)


def phi_nested(c, L):
    return mp.quad(lambda y: phi_leaf(y, L) / (y + c), [0, c, L])


mu, cval = mp.mpf(1), mp.mpf(7)
print("[5] Bogoliubov subtraction for the nested tree [o] (subgraph o, cograph o):")
for L in [mp.mpf(10)**4, mp.mpf(10)**6, mp.mpf(10)**8]:
    S_leaf = -phi_leaf(mu, L)                                   # counterterm of subgraph
    Rbar = phi_nested(cval, L) + S_leaf * phi_leaf(cval, L)      # subgraph subtracted
    S_nested = -(phi_nested(mu, L) + S_leaf * phi_leaf(mu, L))   # -T_mu[Rbar]
    R = Rbar + S_nested
    print(f"    Lambda=1e{int(mp.log10(L))}: bare = {mp.nstr(phi_nested(cval, L), 8)},"
          f" renormalised = {mp.nstr(R, 12)}")
ell = mp.log(mu / cval)
print(f"    limit ell^2/2 with ell = ln(mu/c): {mp.nstr(ell**2 / 2, 12)}")
assert abs(R - ell**2 / 2) < 1e-5

# renormalised characters through order 3: phi_ell(t) as polynomials in ell
l, l1, l2 = sp.symbols('ell ell1 ell2')
z2 = sp.pi**2 / 3   # int_0^inf ln(u)^2 /(1+u)^2 du = pi^2/3 (first moment vanishes)
ren = {(): l, ((),): l**2 / 2, bush3: l**3 / 3 + z2 * l, chain3: l**3 / 6 + z2 * l / 2}
# check the closed forms numerically from the renormalised integral
#   R(B+(X))(c) = int_0^inf [1/(y+c) - 1/(y+mu)] prod R(X_i)(y) dy


def Rnum(t, c):
    if t == ():
        return mp.log(mu / c)
    return mp.quad(lambda y: (1 / (y + c) - 1 / (y + mu)) *
                   mp.fprod([Rnum(ch, y) for ch in t]), [0, 1, c, mp.inf])


for t in [((),), bush3, chain3]:
    val = Rnum(t, cval)
    ex = ren[t].subs(l, sp.log(mu / cval)).evalf(25)
    assert abs(val - mp.mpf(str(ex))) < 1e-10, (bracket(t), val, ex)
print("[5] closed forms R(o)=ell, R([o])=ell^2/2, R([o,o])=ell^3/3+(pi^2/3)ell,"
      " R([[o]])=ell^3/6+(pi^2/6)ell verified numerically")
# group law phi_{l1+l2} = phi_{l1} * phi_{l2} under the same convolution as B-series composition
for t in ren:
    tot = 0
    for s, forest in ordered_subtrees(t):
        term = 1 if s is None else ren[s].subs(l, l2)
        for fo in forest:
            term *= ren[fo].subs(l, l1)
        tot += term
    assert sp.simplify(tot - ren[t].subs(l, l1 + l2)) == 0, bracket(t)
print("[5] renormalised toy-model characters satisfy phi_{l1+l2} = phi_l1 * phi_l2 (orders 1-3);"
      " leading logs ell^|t|/gamma(t)")

# ------------------------------------------ 6. BSeries.jl documented output
# Values printed in the BSeries.jl documentation (docs built 4 August 2026 with
# Julia 1.12.6, source commit 8a48581087f4a397f246564c68db912f4eb3c24b,
# RootedTrees.jl v2.25.4): tutorials "B-series basics" and "Composing B-series",
# and the API reference.  Level sequences => normalised coefficients.
REFERENCE_EXACT5 = {
    (1,): Fr(1), (1, 2): Fr(1, 2), (1, 2, 3): Fr(1, 6), (1, 2, 2): Fr(1, 3),
    (1, 2, 3, 4): Fr(1, 24), (1, 2, 3, 3): Fr(1, 12), (1, 2, 3, 2): Fr(1, 8),
    (1, 2, 2, 2): Fr(1, 4), (1, 2, 3, 4, 5): Fr(1, 120), (1, 2, 3, 4, 4): Fr(1, 60),
    (1, 2, 3, 4, 3): Fr(1, 40), (1, 2, 3, 4, 2): Fr(1, 30), (1, 2, 3, 3, 3): Fr(1, 20),
    (1, 2, 3, 3, 2): Fr(1, 15), (1, 2, 3, 2, 3): Fr(1, 20), (1, 2, 3, 2, 2): Fr(1, 10),
    (1, 2, 2, 2, 2): Fr(1, 5)}
REFERENCE_RENORMALIZED_EXACT = {   # renormalize(): coefficient / symmetry
    (1, 2, 2): Fr(1, 6), (1, 2, 3, 3): Fr(1, 24), (1, 2, 2, 2): Fr(1, 24), (1, 2, 3, 2): Fr(1, 8),
    (1, 2, 3, 4, 4): Fr(1, 120), (1, 2, 3, 3, 3): Fr(1, 120), (1, 2, 3, 3, 2): Fr(1, 30),
    (1, 2, 3, 2, 3): Fr(1, 40), (1, 2, 3, 2, 2): Fr(1, 20), (1, 2, 2, 2, 2): Fr(1, 120)}
REFERENCE_RK4 = {
    (1,): Fr(1), (1, 2): Fr(1, 2), (1, 2, 3): Fr(1, 6), (1, 2, 2): Fr(1, 3),
    (1, 2, 3, 4): Fr(1, 24), (1, 2, 3, 3): Fr(1, 12), (1, 2, 3, 2): Fr(1, 8),
    (1, 2, 2, 2): Fr(1, 4), (1, 2, 3, 4, 5): Fr(0), (1, 2, 3, 4, 4): Fr(1, 48),
    (1, 2, 3, 4, 3): Fr(1, 48), (1, 2, 3, 4, 2): Fr(1, 24), (1, 2, 3, 3, 3): Fr(1, 24),
    (1, 2, 3, 3, 2): Fr(1, 16), (1, 2, 3, 2, 3): Fr(1, 16), (1, 2, 3, 2, 2): Fr(5, 48),
    (1, 2, 2, 2, 2): Fr(5, 24)}
REFERENCE_RK4_COMPOSED_HALF = {   # compose(rk4, rk4, normalize_stepsize = true), order 5
    (1, 2, 3, 4, 5): Fr(1, 128), (1, 2, 3, 4, 4): Fr(13, 768), (1, 2, 3, 4, 3): Fr(19, 768),
    (1, 2, 3, 4, 2): Fr(13, 384), (1, 2, 3, 3, 3): Fr(19, 384), (1, 2, 3, 3, 2): Fr(17, 256),
    (1, 2, 3, 2, 3): Fr(13, 256), (1, 2, 3, 2, 2): Fr(77, 768), (1, 2, 2, 2, 2): Fr(77, 384)}
REFERENCE_RICHARDSON = {
    (1, 2, 3, 4, 5): Fr(1, 120), (1, 2, 3, 4, 4): Fr(1, 60), (1, 2, 3, 4, 3): Fr(1, 40),
    (1, 2, 3, 4, 2): Fr(1, 30), (1, 2, 3, 3, 3): Fr(1, 20), (1, 2, 3, 3, 2): Fr(1, 15),
    (1, 2, 3, 2, 3): Fr(1, 20), (1, 2, 3, 2, 2): Fr(1, 10), (1, 2, 2, 2, 2): Fr(1, 5)}

for seq, val in REFERENCE_EXACT5.items():
    t = from_level_sequence(list(seq))
    assert tuple(level_sequence(t)) == seq, (seq, level_sequence(t))
    assert Fr(1, gamma(t)) == val, seq
for seq, val in REFERENCE_RENORMALIZED_EXACT.items():
    t = from_level_sequence(list(seq))
    assert Fr(1, sigma(t) * gamma(t)) == val, seq
A_rk4 = [[Fr(0)] * 4, [Fr(1, 2), 0, 0, 0], [0, Fr(1, 2), 0, 0], [0, 0, Fr(1), 0]]
A_rk4 = [[Fr(v) for v in row] for row in A_rk4]
b_rk4 = [Fr(1, 6), Fr(1, 3), Fr(1, 3), Fr(1, 6)]
a_rk4 = rk_weights(A_rk4, b_rk4, 5)
for seq, val in REFERENCE_RK4.items():
    assert a_rk4[from_level_sequence(list(seq))] == val, seq
rk4_2 = compose(a_rk4, a_rk4, 5)
rk4_half = {t: v / 2**order(t) for t, v in rk4_2.items()}
for seq, val in REFERENCE_RK4_COMPOSED_HALF.items():
    assert rk4_half[from_level_sequence(list(seq))] == val, seq
for seq, val in REFERENCE_RICHARDSON.items():
    t = from_level_sequence(list(seq))
    assert rk4_half[t] + (rk4_half[t] - a_rk4[t]) / 15 == val, seq
# order <= 4 of the half-step composition must be exact (RK4 has order 4)
for n in range(1, 5):
    for t in trees(n):
        assert rk4_half[t] == Fr(1, gamma(t))
# Butcher's effective-order-5 example ("Composing B-series"): series_a has
# order 4, series_b and series_c order 3; printed higher-order coefficients.
LS = lambda *v: from_level_sequence(list(v))
ex5 = {t: Fr(1, gamma(t)) for n in range(1, 6) for t in trees(n)}
ser_a = dict(ex5)
ser_a.update({LS(1, 2, 3, 4, 5): Fr(1, 120), LS(1, 2, 3, 4, 4): Fr(1, 60), LS(1, 2, 3, 4, 3): Fr(1, 48),
              LS(1, 2, 3, 4, 2): Fr(1, 30), LS(1, 2, 3, 3, 3): Fr(1, 24), LS(1, 2, 3, 3, 2): Fr(1, 15),
              LS(1, 2, 3, 2, 3): Fr(5, 96), LS(1, 2, 3, 2, 2): Fr(5, 48), LS(1, 2, 2, 2, 2): Fr(5, 24)})
ser_b = dict(ex5)
ser_b.update({LS(1, 2, 3, 4): Fr(13, 320), LS(1, 2, 3, 3): Fr(13, 160), LS(1, 2, 3, 2): Fr(121, 960),
              LS(1, 2, 2, 2): Fr(121, 480), LS(1, 2, 3, 4, 5): Fr(13, 1600), LS(1, 2, 3, 4, 4): Fr(13, 800),
              LS(1, 2, 3, 4, 3): Fr(139, 6400), LS(1, 2, 3, 4, 2): Fr(13, 400), LS(1, 2, 3, 3, 3): Fr(139, 3200),
              LS(1, 2, 3, 3, 2): Fr(13, 200), LS(1, 2, 3, 2, 3): Fr(2003, 38400),
              LS(1, 2, 3, 2, 2): Fr(2003, 19200), LS(1, 2, 2, 2, 2): Fr(2003, 9600)})
ser_c = dict(ex5)
ser_c.update({LS(1, 2, 3, 4): Fr(41, 960), LS(1, 2, 3, 3): Fr(41, 480), LS(1, 2, 3, 2): Fr(119, 960),
              LS(1, 2, 2, 2): Fr(119, 480), LS(1, 2, 3, 4, 5): Fr(41, 4800), LS(1, 2, 3, 4, 4): Fr(41, 2400),
              LS(1, 2, 3, 4, 3): Fr(463, 19200), LS(1, 2, 3, 4, 2): Fr(41, 1200), LS(1, 2, 3, 3, 3): Fr(463, 9600),
              LS(1, 2, 3, 3, 2): Fr(41, 600), LS(1, 2, 3, 2, 3): Fr(639, 12800),
              LS(1, 2, 3, 2, 2): Fr(639, 6400), LS(1, 2, 2, 2, 2): Fr(639, 3200)})
# compose(series_b, series_a, series_c): series_b applied first
bac = compose(compose(ser_b, ser_a, 5), ser_c, 5)
bac = {t: v / 3**order(t) for t, v in bac.items()}
assert all(bac[t] == ex5[t] for t in ex5), "triple composition not exact"
cab = compose(compose(ser_c, ser_a, 5), ser_b, 5)
cab = {t: v / 3**order(t) for t, v in cab.items()}
assert any(cab[t] != ex5[t] for t in ex5)
print("[6] compose(series_b, series_a, series_c) with b applied first is exact through order 5;"
      " the reversed order is not")
print("[6] BSeries.jl documented output reproduced: ExactSolution (order 5), renormalize,"
      " RK4 bseries (order 5), compose(rk4, rk4, normalize_stepsize = true), Richardson")

print(f"python {sys.version.split()[0]}, sympy {sp.__version__}, mpmath {mp.__version__}")
print("all checks passed")
