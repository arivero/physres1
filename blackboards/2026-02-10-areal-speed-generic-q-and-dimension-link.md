# Areal-Speed Circular Orbits for \(F=K/r^q\) and the Dimension Link

Date: 2026-02-10

This note closes a gap in the Planck-areal-speed thread: what happens for a **generic power-law** central force, and why the inverse-square case is special.

## 1) Setup and conventions
Consider Newtonian motion in a plane with a central force of the form
\[
F(r)=\frac{K}{r^q},\qquad K>0.
\]
For a **circular** orbit of radius \(r\), speed \(v\), and mass \(m\), centripetal balance is
\[
\frac{m v^2}{r}=\frac{K}{r^q}
\quad\Longleftrightarrow\quad
m v^2 = K\, r^{1-q}.
\]
For a circular orbit, the areal speed is
\[
\dot A=\frac12 r v
\quad\Longleftrightarrow\quad
v=\frac{2\dot A}{r}.
\]
Equivalently, for any planar motion \(\dot A=L/(2m)\) with angular momentum \(L=mrv\); in the circular case this reduces to the same relation.

## 2) Generic-\(q\) radius in terms of \(\dot A\)
Substitute \(v=2\dot A/r\) into the balance equation:
\[
m\left(\frac{2\dot A}{r}\right)^2 = K\,r^{1-q}
\quad\Longrightarrow\quad
4m\dot A^2 = K\,r^{3-q}.
\]
So, for \(q\neq 3\),
\[
\boxed{\,r
=\left(\frac{4m\dot A^2}{K}\right)^{\frac{1}{3-q}}\, }.
\]

### Special case \(q=3\)
If \(q=3\), the equation reads
\[
4m\dot A^2 = K,
\]
so the areal speed is fixed by the coupling (and the radius drops out).

## 3) Newtonian gravity (inverse-square) as the \(q=2\) simplification
In Newtonian gravity in \(3\) spatial dimensions, \(F=GMm/r^2\), so \(q=2\) and \(K=GMm\). Then the general formula collapses to the linear relation
\[
r=\frac{4m\dot A^2}{GMm}=\frac{4\dot A^2}{GM},
\]
independent of the test mass \(m\).

If one now imposes a “Planck areal speed” \(\dot A=cL_P\) and uses the **4D** identity
\[
L_P^2=\frac{G\hbar}{c^3},
\]
then
\[
r=\frac{4(cL_P)^2}{GM}
=\frac{4(G\hbar/c)}{GM}
=4\,\frac{\hbar}{cM}.
\]
Thus for \(\dot A=cL_P\) the orbit radius is \(4\) times the reduced Compton length of the source mass \(M\), and for \(\dot A=\tfrac12 cL_P\) it equals the reduced Compton length \(L_M=\hbar/(cM)\).

## 4) Why \(q=2\) is special for the “Compton cancellation”
Keep the **same** 4D Planck substitution \(\dot A=cL_P\) and view the force-law exponent \(q\) as a parameter in \(F=K/r^q\).

If the coupling is gravitational \(K=GMm\) (so the test mass cancels as above), then
\[
r=\left(\frac{4\dot A^2}{GM}\right)^{\frac{1}{3-q}}
=\left(\frac{4c^2L_P^2}{GM}\right)^{\frac{1}{3-q}}
=\left(\frac{4\hbar}{cM}\right)^{\frac{1}{3-q}}.
\]
So the radius scales like a **power** of the reduced Compton length,
\[
r \propto \left(\frac{\hbar}{cM}\right)^{\frac{1}{3-q}}.
\]
The “Planck \(\to\) Compton” cancellation produces the *linear* reduced Compton length only when
\[
\frac{1}{3-q}=1\quad\Longleftrightarrow\quad q=2.
\]
For other \(q\), one gets a different scaling power (and for \(q=3\) the radius is not fixed by \(\dot A\) at all).

## 5) Dimension link: why \(q=2\) corresponds to \(D=4\) (Newtonian long-range fields)
For Newtonian gravity in \(n\) spatial dimensions (outside sources), the potential solves Poisson’s equation, and the Green function of the Laplacian scales (for \(n>2\)) like
\[
\Phi(r)\propto \frac{1}{r^{n-2}}.
\]
Taking a gradient gives the force scaling
\[
F(r)\propto \frac{1}{r^{n-1}}.
\]
Thus the power \(q\) in the long-range central-force law is
\[
\boxed{\,q=n-1\,}
\]
(with the well-known exception \(n=2\), where \(\Phi\sim \log r\) and \(F\sim 1/r\), i.e. \(q=1\)).

Therefore the inverse-square case \(q=2\) corresponds to \(n=3\) spatial dimensions, i.e. spacetime dimension \(D=n+1=4\).

## 6) Next promotion target
Promote a compact version of Sections 2–5 into `papers/planck-area/main.md` immediately after `Derivation D1.5`, as a “generic-\(q\) remark” that:
1) makes the \(q=2\) specialness precise, and
2) connects \(q\) to dimension via the Laplacian Green function (with \(n=2\) caveat).

