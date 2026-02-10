# Area 2-form invariants: why a timelike projection seems unavoidable

Question: can we replace clock/source choices by a fully frame-free invariant built from orbital 2-forms?

## Orbital bivector and invariants
Let \(R^\mu\) be source-to-particle separation and \(p^\mu=mu^\mu\) particle 4-momentum. Define
\[
M^{\mu\nu}=R^\mu p^\nu-R^\nu p^\mu.
\]
Two Lorentz invariants are
\[
I_1=\frac12 M_{\mu\nu}M^{\mu\nu}=R^2p^2-(R\cdot p)^2,
\qquad
I_2=\frac12 M_{\mu\nu}{}^\star M^{\mu\nu}.
\]

## Circular central-motion specialization
For circular motion in the central-force setup:
- \(R\cdot p=0\),
- \(R^2=r^2\),
- \(p^2=-m^2c^2\).

So
\[
I_1=-m^2c^2r^2,
\]
which does not depend on orbital speed \(v\) (or \(\gamma\)).
In the planar branch \(I_2=0\).

Hence the simplest frame-free invariants of \(M^{\mu\nu}\) fail to carry the areal-rate information that distinguishes the branches in D1.5b/D1.5c.

## Why projection helps
Given source 4-velocity \(U^\mu\), project to source rest space
\[
h^\mu{}_\nu=\delta^\mu{}_\nu+\frac{U^\mu U_\nu}{c^2},
\qquad
L^{\mu\nu}=h^\mu{}_\alpha h^\nu{}_\beta M^{\alpha\beta}.
\]
Then
\[
\ell:=\frac1m\sqrt{\frac12 L_{\mu\nu}L^{\mu\nu}}
\]
reduces to \(\ell=\gamma rv\) in source frame, exactly the branch parameter needed.

Interpretation:
- “frame-free” bivector invariants are too coarse for this observable.
- Covariant formulations still work, but they need explicit timelike structure \(U^\mu\).

## Minimal conclusion for the paper thread
Areal-speed-like postulates are not naturally encoded by \(I_1,I_2\) alone. A source/observer timelike direction appears to be minimal extra structure for a useful covariant statement in this branch.

