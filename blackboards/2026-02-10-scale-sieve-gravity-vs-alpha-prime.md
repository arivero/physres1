# Blackboard: Half-Density Scalarization Scale Sieve (Gravity \(G_D\) vs String Area \(\alpha'\))

Date: 2026-02-10

## Purpose
In the half-density-first formulation, kernels/amplitudes are canonically half-density objects, but turning them into **dimensionless scalar** amplitudes requires choosing a reference half-density \(\sigma_\ast\) carrying a \(\text{length}^{D/2}\) dimension (when the composition/integration variable is \(D\)-dimensional).

This note asks a purely dimensional/analytic question:
given a list of *admissible universal couplings* and an “integer powers only” sieve (H2.5/H2.7 style), in which spacetime dimensions \(D\) can one build \(\text{length}^{D/2}\) from those couplings?

The point is not “string theory is true”, but: **what kinds of universal scale-suppliers exist under different admissibility hypotheses?**

## 1. The required dimension
If \(\psi\) is a half-density in \(D\) dimensions, then \([\psi]=\text{length}^{D/2}\).
Demanding a **dimensionless** scalar representative \(f\) in \(\psi=f\,\sigma_\ast\) forces
\[
[\sigma_\ast]=\text{length}^{D/2}.
\]

## 2. Candidate universal couplings and their dimensions
Work in \(\hbar=c=1\) units for dimensional bookkeeping.

1. **Gravity:** from the Einstein–Hilbert term \(\frac{1}{16\pi G_D}\int d^Dx\,\sqrt{|g|}\,R\) with \([R]=\text{length}^{-2}\),
\[
[G_D]=\text{length}^{D-2}.
\]

2. **String tension / \(\alpha'\):** \(\alpha'\) has dimension of area,
\[
[\alpha']=\text{length}^2
\qquad
(\text{equivalently } [T]=\text{length}^{-2}).
\]

3. **Cosmological constant:** \([\Lambda]=\text{length}^{-2}\).
Using \(1/\Lambda\) as a scale is non-analytic at \(\Lambda=0\), so whether it is “admissible” depends on which base point the analyticity sieve is applied at.

## 3. Gravity-only sieve (integer powers): \(D=4\) is forced
Assume the only admissible scale-supplier is \(G_D\), and allow only integer powers (no roots):
\[
\text{length}^{D/2}\stackrel{?}{=} (G_D)^{n},
\qquad n\in\mathbb Z_{\ge 0}.
\]
Matching exponents gives
\[
\frac{D}{2}=n(D-2).
\]
For \(n=1\) this gives \(D=4\).
For \(n\ge2\), \(D=4n/(2n-1)\) is not an integer (and tends to \(2\) as \(n\to\infty\)).

**Conclusion (gravity-only + integer powers):** the only solution is \(D=4\) with \(n=1\), i.e. the needed \(\text{length}^{D/2}\) scale is an **area** and can be taken proportional to \(G_4\) (Planck area once \(\hbar,c\) are restored).

## 4. \(\alpha'\)-allowed sieve (integer powers): \(D\) must be a multiple of 4
If instead (or in addition) one admits a universal area scale \(\alpha'\) and allows integer powers:
\[
\text{length}^{D/2}\stackrel{?}{=} (\alpha')^{m},
\qquad m\in\mathbb Z_{\ge 0},
\]
then
\[
\frac{D}{2}=2m
\quad\Longleftrightarrow\quad
D=4m.
\]

**Conclusion (\(\alpha'\)-only + integer powers):** \(D\in\{4,8,12,\ldots\}\).
In \(D=4\), \(\alpha'\) itself supplies the required area scale.

This gives a clean “string tension as a scale-supplier” logic: a universal area scale is exactly what half-density scalarization needs in \(D=4\). Whether that area scale is *gravitational* (Planck) or *stringy* (\(\alpha'\)) is a further universality hypothesis, not a consequence of half-densities alone.

## 5. Mixed sieve: \(G_D^n(\alpha')^m\)
Allow both \(G_D\) and \(\alpha'\) with integer powers:
\[
\text{length}^{D/2}\stackrel{?}{=} (G_D)^n (\alpha')^m,
\qquad n,m\in\mathbb Z_{\ge 0}.
\]
Exponent matching gives
\[
\frac{D}{2}=n(D-2)+2m.
\]
This does not single out a unique \(D\) by itself; rather it describes which combinations of admitted couplings can supply the required reference half-density in a given dimension.

The *selection* part comes from additional admissibility rules (H2.7-style) and from “no fractional powers” constraints: e.g. if we insist on gravity-only, we recover \(D=4\); if we insist on \(\alpha'\)-only, we recover \(D\equiv0\pmod4\).

## Promotion queue
1. `papers/planck-area/main.md`: add a short “sieve comparison” block explicitly distinguishing:
   - gravity-only \(\Rightarrow D=4\),
   - \(\alpha'\)-allowed \(\Rightarrow D\equiv 0\!\!\pmod4\).
2. Keep the interpretive statement (“string tension is fundamental”) as an outlook only, since it depends on which couplings are admitted as universal and on dynamical assumptions not fixed by half-density geometry.

