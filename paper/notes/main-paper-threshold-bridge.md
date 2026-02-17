# Main-Paper Threshold Bridge (Newton vs SR Central Power Laws)

Date: 2026-02-14

## Setup
For an attractive central force
\[
F(r)=\frac{K}{r^q},\qquad K>0,
\]
the potential singularity scales as
\[
U(r)\propto -r^{-(q-1)}.
\]
At fixed angular momentum \(L\), tangential momentum behaves as \(p\sim L/r\) near \(r\to0\).
Assume high-momentum kinetic asymptotic
\[
E_{\mathrm{kin}}(p)\sim a p^\nu,\qquad a>0,
\]
so the barrier contribution scales as
\[
E_{\mathrm{barrier}}(r)\sim a\left(\frac{L}{r}\right)^\nu\propto r^{-\nu}.
\]

## Threshold criterion
Comparing singular powers near \(r\to0\):
- barrier dominates attraction if \(\nu>q-1\),
- attraction dominates if \(\nu<q-1\),
- marginal threshold at \(\nu=q-1\).
Hence
\[
\boxed{q_{\mathrm{crit}}=\nu+1.}
\]

## Back-and-forth refinement: coefficient-aware marginal case
Write the asymptotic effective radial competition as
\[
\Delta(r)\sim A(L)\,r^{-\nu}-B\,r^{-(q-1)},\qquad A(L),B>0.
\]
At strict inequality \(\nu\neq q-1\), exponent ordering controls the sign as \(r\to0\). At the marginal exponent \(q=\nu+1\), one gets
\[
\Delta(r)\sim (A(L)-B)\,r^{-\nu},
\]
so coefficients decide the leading sign. Therefore:
1. \(q_{\mathrm{crit}}=\nu+1\) is an exponent-level boundary.
2. Exact marginal behavior requires coefficient data, not exponents alone.

### Parameter map at marginal exponent
If \(A(L)=aL^\nu\) with \(a>0\), then at \(q=\nu+1\):
\[
\Delta(r)\sim \big(aL^\nu-B\big)\,r^{-\nu}.
\]
Define
\[
L_{\mathrm{crit}}:=\left(\frac{B}{a}\right)^{1/\nu}.
\]
Then:
1. \(L>L_{\mathrm{crit}}\): barrier-leading sign at leading order.
2. \(L<L_{\mathrm{crit}}\): attraction-leading sign at leading order.
3. \(L=L_{\mathrm{crit}}\): leading cancellation, so subleading structure controls the outcome.

## S276 extension: when does a unique threshold exist?
For marginal exponent, define \(G(L):=A(L)-B\).

- If \(A(L)\) is continuous and strictly increasing on the relevant \(L\)-range with \(A(L_{\min})<B<A(L_{\max})\), then \(G\) has a unique zero \(L_\ast\): single-threshold picture survives.
- If \(A(L)\) is non-monotone, \(G\) can have multiple zeros, yielding alternating sign windows in \(L\) and no single global threshold.

Toy witness:
- Monotone \(A(L)=0.5L^2\): one crossing against \(B=1\).
- Non-monotone \(A(L)=1.2+0.6\sin(3L)+0.03L^2\): four crossings on \(L\in[0.2,8]\) against \(B=1\).

## Instances
- Newtonian asymptotic \(\nu=2\) gives \(q_{\mathrm{crit}}=3\).
- Special-relativistic ultrarelativistic asymptotic \(\nu=1\) gives \(q_{\mathrm{crit}}=2\).

## Scope boundary
This is a fixed-\(L\), small-\(r\) asymptotic criterion. It is distinct from the independent algebraic/dimensional fact that the inverse-square law yields the exact unit identity \(K/L\sim v\) used in SR circular-orbit simplifications.

## Objection-response mini log
1. **Objection:** "If coefficients matter at marginality, the rule is weak."
   **Response:** The rule is still informative away from equality and still marks where coefficient sensitivity begins.
2. **Objection:** "Could this replace full orbit analysis?"
   **Response:** No. It is local asymptotics only; global bound-orbit structure needs full effective-potential analysis.

## Safe claim vs unsafe claim
- Safe: "For power-law attraction and fixed \(L\), asymptotic exponent comparison gives \(q_{\mathrm{crit}}=\nu+1\), with coefficient-sensitive marginal case."
- Unsafe: "Knowing \(\nu\) alone fully classifies relativistic bound orbits."

## Promotion-ready sentence
A compact bridge sentence can be inserted in Section 3.3 after the areal-law universality paragraph to explain, in one line, the Newton-to-SR shift \(3\to2\) without overloading the main narrative.

## S276 Iteration 2: range-coverage condition
Monotonicity alone is not enough for a crossing: one also needs range coverage.
For continuous monotone increasing \(A(L)\) on \([L_{\min},L_{\max}]\), a unique crossing exists iff
\[
A(L_{\min}) < B < A(L_{\max}).
\]
If \(B\) lies outside the attainable range, no threshold crossing appears even with monotone \(A\).

Toy witness:
- Growing monotone \(A(L)=0.5L^2\): one crossing for \(B=1\) and one crossing for \(B=2\) on the sampled range.
- Saturating monotone \(A(L)=1.5(1-e^{-L})\): one crossing for \(B=1\), but zero crossings for \(B=2\) because \(A\) saturates below \(B\).
