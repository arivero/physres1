# Rooted-tree coefficient checks inside BSeries.jl, for
# papers/rooted-tree-bookkeeping/main.md (issue 10).
#
# Language: Julia. The package versions are pinned by
# scripts/bseries-env/Project.toml and Manifest.toml and printed at run time.
#
# Run from the repository root:
#   julia --project=scripts/bseries-env -e 'using Pkg; Pkg.instantiate()'
#   julia --project=scripts/bseries-env scripts/check_rooted_tree_coefficients.jl
#
# Normalization (BSeries.jl and Hairer-Lubich-Wanner):
#   B(a; h, y) = y + sum_t h^|t| / sigma(t) * a(t) * F(t)(y).
# The raw coefficient of the elementary differential F(t) is a(t)/sigma(t).
#
# Checks:
#  1. Table of all rooted trees through order four: sigma, gamma, the
#     exact-flow coefficient 1/gamma and its raw form 1/(sigma*gamma).
#  2. Explicit midpoint: elementary weights, the composition of two steps,
#     and the raw difference Phi_h o Phi_h - Phi_2h through order four.
#  3. Linear control f(y) = y and branching control f(y) = y^2, evaluated
#     from the package series and from a direct expansion of the two steps.
#  4. Modified equation of explicit midpoint through order three.
#  5. The RK4 composition values printed in the BSeries.jl documentation.

using BSeries
using RootedTrees

const passed = Ref(0)
const failed = Ref(0)

function check(name, ok; detail = "")
    if ok
        passed[] += 1
    else
        failed[] += 1
    end
    println("  [", ok ? "PASS" : "FAIL", "] ", name, isempty(detail) ? "" : "  [" * detail * "]")
    return ok
end

tree(ls) = rootedtree(ls)
raw(series, ls) = series[tree(ls)] // symmetry(tree(ls))

println("Julia ", VERSION, ", BSeries.jl v", pkgversion(BSeries), ", RootedTrees.jl v", pkgversion(RootedTrees))

# ---------------------------------------------------------------- 1. table
println("\n1. Rooted trees through order four")
# level sequence => (sigma, gamma), as in Section 2.3 of the paper
table = [
    [1] => (1, 1),
    [1, 2] => (1, 2),
    [1, 2, 2] => (2, 3),
    [1, 2, 3] => (1, 6),
    [1, 2, 2, 2] => (6, 4),
    [1, 2, 3, 2] => (1, 8),
    [1, 2, 3, 3] => (2, 12),
    [1, 2, 3, 4] => (1, 24),
]
exact = bseries(ExactSolution{Rational{Int}}(), 4)
raw_exact = renormalize(exact)
check("eight trees through order four (plus the empty tree)", length(exact) == 9)
ok_sig = ok_gam = ok_a = ok_raw = true
for (ls, (sig, gam)) in table
    t = tree(ls)
    global ok_sig &= symmetry(t) == sig
    global ok_gam &= density(t) == gam
    global ok_a &= exact[t] == 1 // gam
    global ok_raw &= raw_exact[t] == 1 // (sig * gam) && raw(exact, ls) == 1 // (sig * gam)
end
check("sigma equals the tabulated symmetry factor", ok_sig)
check("gamma equals the tabulated tree factorial", ok_gam)
check("ExactSolution coefficient is 1/gamma (normalized basis)", ok_a)
check("renormalize gives the raw coefficient 1/(sigma*gamma)", ok_raw)
check("chain [1,2,3]: raw 1/6", raw(exact, [1, 2, 3]) == 1 // 6)
check("bush [1,2,2]: raw 1/6 (circulated formula gave 1/12)",
      raw(exact, [1, 2, 2]) == 1 // 6 && 1 // (2 * factorial(3)) == 1 // 12)
check("tree [1,2,3,2]: raw 1/8 (circulated formula gave 1/24)",
      raw(exact, [1, 2, 3, 2]) == 1 // 8 && 1 // (1 * factorial(4)) == 1 // 24)

# ------------------------------------------------------------- 2. midpoint
println("\n2. Explicit midpoint and the composition of two steps")
A = [0 0; 1//2 0]
b = [0, 1 // 1]
c = [0, 1 // 2]
mid = bseries(A, b, c, 4)
two = compose(mid, mid)            # Phi_h o Phi_h, in powers of h
# level sequence => (a, (a.a), raw difference), as in Section 3.4 of the paper
expected = [
    [1] => (1 // 1, 2 // 1, 0 // 1),
    [1, 2] => (1 // 2, 2 // 1, 0 // 1),
    [1, 2, 2] => (1 // 4, 5 // 2, 1 // 4),
    [1, 2, 3] => (0 // 1, 1 // 1, 1 // 1),
    [1, 2, 2, 2] => (1 // 8, 7 // 2, 1 // 4),
    [1, 2, 3, 2] => (0 // 1, 3 // 2, 3 // 2),
    [1, 2, 3, 3] => (0 // 1, 3 // 4, 3 // 8),
    [1, 2, 3, 4] => (0 // 1, 1 // 4, 1 // 4),
]
ok_a = ok_two = ok_diff = true
for (ls, (a, aa, d)) in expected
    t = tree(ls)
    global ok_a &= mid[t] == a
    global ok_two &= two[t] == aa
    global ok_diff &= (two[t] - 2^order(t) * mid[t]) // symmetry(t) == d
end
check("midpoint elementary weights a(tau)", ok_a)
check("compose(mid, mid) equals the (a.a) column", ok_two)
check("raw Phi_h o Phi_h - Phi_2h equals the tabulated column", ok_diff)
check("cubic difference: 1 on the chain f'f'f and 1/4 on the bush f''(f,f)",
      (two[tree([1, 2, 3])] - 8 * mid[tree([1, 2, 3])]) // 1 == 1 &&
      (two[tree([1, 2, 2])] - 8 * mid[tree([1, 2, 2])]) // 2 == 1 // 4)
check("raw cubic terms of two steps: f'f'f + 5/4 f''(f,f)",
      raw(two, [1, 2, 3]) == 1 && raw(two, [1, 2, 2]) == 5 // 4)
check("order of accuracy of midpoint is 2", order_of_accuracy(mid) == 2)

# ------------------------------------------------------------- 3. controls
println("\n3. Linear and branching controls")
# Scalar field f(y) = y^p: elementary differential F(t)(y) = coef * y^power,
# F(t) = f^(k)(y) * prod F(t_i), k = number of subtrees of the root.
function fderiv(p, k)                 # k-th derivative of y^p as (coef, power)
    k > p && return (0 // 1, 0)
    return (factorial(p) // factorial(p - k), p - k)
end
function elementary(t, p)
    coef, pow = fderiv(p, length(subtrees(t)))
    for s in subtrees(t)
        cs, ps = elementary(s, p)
        coef *= cs
        pow += ps
    end
    return (coef, coef == 0 ? 0 : pow)
end
# coefficient of h^n in the B-series, as (coef, power of y)
function hcoefficient(series, n, p)
    total = 0 // 1
    pow = 0
    for (t, a) in series
        order(t) == n || continue
        cf, pw = elementary(t, p)
        cf == 0 && continue
        total += a // symmetry(t) * cf
        pow = pw
    end
    return (total, pow)
end
single2h = Dict(t => 2^order(t) * a for (t, a) in mid)
diff_series = Dict(t => two[t] - single2h[t] for (t, _) in two)
check("f = y: quadratic coefficient of two steps is 2 y", hcoefficient(two, 2, 1) == (2 // 1, 1))
check("f = y: cubic difference is 1 y", hcoefficient(diff_series, 3, 1) == (1 // 1, 1))
check("f = y^2: cubic difference is 9/2 y^4", hcoefficient(diff_series, 3, 2) == (9 // 2, 4))

# Direct expansion, independent of the series: truncated polynomials in h
# with rational coefficients, at rational base points.
const N = 4
padd(u, v) = u .+ v
function pmul(u, v)
    w = zeros(Rational{BigInt}, N + 1)
    for i in 0:N, j in 0:(N - i)
        w[i + j + 1] += u[i + 1] * v[j + 1]
    end
    return w
end
pshift(u, s) = [k == 0 ? zero(Rational{BigInt}) : s * u[k] for k in 0:N]   # multiply by s*h
ppow(u, p) = p == 1 ? u : pmul(u, ppow(u, p - 1))
midstep(y, p, s) = padd(y, pshift(ppow(padd(y, pshift(ppow(y, p), s // 2)), p), s))  # step s*h
constant(y0) = [k == 0 ? Rational{BigInt}(y0) : zero(Rational{BigInt}) for k in 0:N]
ok_lin = ok_br = ok_quad = true
for y0 in (1 // 1, 2 // 1, 3 // 2)
    for (p, target) in ((1, y0), (2, 9 // 2 * y0^4))
        twice = midstep(midstep(constant(y0), p, 1), p, 1)
        once = midstep(constant(y0), p, 2)
        d = twice .- once
        if p == 1
            global ok_lin &= d[4] == target && d[1] == 0 && d[2] == 0 && d[3] == 0
            global ok_quad &= twice[3] == 2 * y0
        else
            global ok_br &= d[4] == target && d[1] == 0 && d[2] == 0 && d[3] == 0
        end
    end
end
check("direct expansion, f = y: quadratic coefficient 2 y", ok_quad)
check("direct expansion, f = y: cubic difference y", ok_lin)
check("direct expansion, f = y^2: cubic difference 9/2 y^4", ok_br)

# --------------------------------------------------- 4. modified equation
println("\n4. Modified equation of explicit midpoint (substitution)")
modified = modified_equation(mid)
check("no h^1 correction: coefficient of [1,2] vanishes", modified[tree([1, 2])] == 0)
check("h^2 correction: raw -1/6 on f'f'f and -1/24 on f''(f,f)",
      raw(modified, [1, 2, 3]) == -1 // 6 && raw(modified, [1, 2, 2]) == -1 // 24)

# ------------------------------------------------ 5. documentation values
println("\n5. RK4 composition values printed in the BSeries.jl documentation")
A4 = [0 0 0 0; 1//2 0 0 0; 0 1//2 0 0; 0 0 1 0]
b4 = [1 // 6, 1 // 3, 1 // 3, 1 // 6]
c4 = [0, 1 // 2, 1 // 2, 1]
rk4 = bseries(A4, b4, c4, 5)
rk4_2 = compose(rk4, rk4, normalize_stepsize = true)
check("bseries(RK4): [1,2,3,4,5] => 0 and [1,2,3,2,2] => 5//48",
      rk4[tree([1, 2, 3, 4, 5])] == 0 && rk4[tree([1, 2, 3, 2, 2])] == 5 // 48)
check("compose(RK4, RK4, normalize_stepsize = true): 17//256 and 77//384",
      rk4_2[tree([1, 2, 3, 3, 2])] == 17 // 256 && rk4_2[tree([1, 2, 2, 2, 2])] == 77 // 384)
check("order of accuracy of the composed RK4 is 4", order_of_accuracy(rk4_2) == 4)

println("\nRESULTS: ", passed[], " passed, ", failed[], " failed")
exit(failed[] == 0 ? 0 : 1)
