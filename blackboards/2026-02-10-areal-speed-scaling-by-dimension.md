# Areal-Speed Circular-Orbit Scaling: Generic \(F=K/r^q\) and the \(n\)-Dimensional Gravity Link

Date: 2026-02-10  
Cycle: `S53`

## Goal
Make explicit the algebra behind the Planck-areal-speed "Compton cancellation" witness:
- For power-law forces \(F\sim r^{-q}\), the circular-orbit radius scales as \(r\sim \dot A^{2/(3-q)}\).
- Linear Compton scaling \(r\propto \hbar/(cM)\) occurs only for \(q=2\).
- In Newtonian Gauss-law gravity in \(n\) spatial dimensions, \(q=n-1\) (for \(n>2\)), so the special case corresponds to \(n=3\) (spacetime \(D=4\)).

## 1. Generic power-law force
Assume a circular orbit under a central force of magnitude
\[
F(r)=\frac{K}{r^q},\qquad K>0.
\]
Circular balance gives
\[
\frac{mv^2}{r}=\frac{K}{r^q}\quad\Longrightarrow\quad mv^2 = K\,r^{1-q}.
\]
For a circle, the areal speed is
\[
\dot A = \frac12 r v \quad\Longrightarrow\quad v=\frac{2\dot A}{r}.
\]
Substitute:
\[
m\left(\frac{2\dot A}{r}\right)^2 = K\,r^{1-q}
\quad\Longrightarrow\quad
4m\dot A^2 = K\,r^{3-q}.
\]
Therefore:
- if \(q\neq 3\),
\[
r=\left(\frac{4m\dot A^2}{K}\right)^{\frac{1}{3-q}},
\]
- if \(q=3\), the radius drops out and the condition is \(4m\dot A^2=K\).

So the mass scaling is
\[
r \propto m^{\frac{1}{3-q}}
\quad\text{(unless \(K\) itself contains \(m\), as in gravity).}
\]

## 2. Gravitational specialization and the \(n\)-dependence
For a "Newtonian Gauss-law" long-range field in \(n\) spatial dimensions with \(n>2\),
the Laplacian Green function gives \(\Phi(r)\propto r^{2-n}\), hence \(|\nabla\Phi|\propto r^{1-n}\) and the force scales as
\[
F(r)\propto \frac{1}{r^{n-1}}.
\]
Thus the power is \(q=n-1\) (with the \(n=2\) logarithmic exception).

If we parameterize gravity as \(F(r)=G_n M m / r^{n-1}\), then \(K=G_n M m\) and the test mass cancels in the circular-orbit radius:
\[
r = \left(\frac{4m\dot A^2}{G_n M m}\right)^{\frac{1}{3-(n-1)}}
= \left(\frac{4\dot A^2}{G_n M}\right)^{\frac{1}{4-n}},
\qquad (n\neq 4).
\]
So, under a fixed-\(\dot A\) postulate, the mass scaling is
\[
r \propto M^{-\frac{1}{4-n}}.
\]
The linear Compton-like scaling \(r\propto 1/M\) occurs only for \(n=3\) (spacetime \(D=4\)).

Special cases:
- \(n=4\) (so \(q=3\)): the radius drops out and one gets \(4\dot A^2 = G_4 M\).
- \(n=2\): \(\Phi(r)\sim \log r\) and \(F(r)\sim 1/r\) corresponds to \(q=1\), giving \(r\propto (\dot A^2/(G_2 M))^{1/2}\), not linear.

## 3. Where \(\hbar,c,G\) enter (and why \(D=4\) is special)
To compare to Compton scales, one typically imposes a fixed areal speed of the form
\[
\dot A = k\,c\,L_P,
\]
where \(L_P\) is a Planck length built from \(\hbar,c,G\).
In spacetime \(D=4\) (i.e. \(n=3\)), one has the identity
\[
L_P^2 = \frac{G\hbar}{c^3},
\]
so \(c^2L_P^2 = G\hbar/c\), and in the inverse-square case the \(G\) cancels to yield
\[
r \sim \frac{\hbar}{cM}.
\]

Outside \(D=4\), the Planck-length dependence on \(G_D\) involves fractional powers, so the same cancellation does not occur in this simple form; the \(n=3\) result is special because \(L_P^2\) is directly proportional to \(G\hbar/c^3\).

## Promotion target (for `C79`)
In `papers/planck-area/main.md` `Remark D1.5a`, add one short clarifying sentence:
substituting \(q=n-1\) gives \(r\propto M^{-1/(4-n)}\), hence linear Compton scaling and \(G\)-cancellation occur only for \(n=3\) (spacetime \(D=4\)), with \(n=2\) as a logarithmic exception and \(n=4\) as the \(q=3\) degenerate case.

