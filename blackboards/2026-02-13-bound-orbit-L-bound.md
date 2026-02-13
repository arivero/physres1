# Bound-Orbit Angular Momentum Bound via Effective Potential

Date: 2026-02-13
Cycle: S104

## Goal
Extend the \(L > K/c\) bound from circular orbits to all bound orbits in SR
inverse-square central force, using the effective radial potential.

## Setup (same conventions as the satellite paper)
SR particle, rest mass \(m\), attractive inverse-square force \(F = K/r^2\).
Conserved angular momentum \(L = \gamma m r v_\perp\).

The effective potential for radial motion at fixed \(L\) is:
\[
W_L(r) = \sqrt{m^2c^4 + \frac{L^2c^2}{r^2}} - \frac{K}{r}
\]

## Small-\(r\) asymptotics
As \(r \to 0^+\):
\[
W_L(r) \approx \frac{Lc}{r} - \frac{K}{r} = \frac{Lc - K}{r}
\]

Three regimes:
1. **\(L > K/c\)**: \(W_L(r) \to +\infty\) as \(r \to 0\). The potential has an infinite barrier at the origin. Combined with \(W_L(r) \to mc^2\) as \(r \to \infty\), this creates a potential well with a local minimum. Bound orbits exist.

2. **\(L < K/c\)**: \(W_L(r) \to -\infty\) as \(r \to 0\). No barrier — the particle can "fall to center." No stable bound orbits. This is the relativistic analog of classical "fall to center" for \(r^{-q}\) potentials with \(q \ge 3\).

3. **\(L = K/c\)**: Marginal case. Next-order analysis needed:
   \[
   W_L(r) = \sqrt{m^2c^4 + K^2/r^2} - K/r = \frac{K}{r}\left(\sqrt{1 + m^2c^4r^2/K^2} - 1\right)
   \]
   As \(r \to 0\): \(W_L \approx m^2c^4 r/(2K) \to 0\), so the potential approaches zero from above. The well is infinitely shallow at the origin — marginal.

## Large-\(r\) asymptotics
As \(r \to \infty\):
\[
W_L(r) = mc^2\sqrt{1 + \frac{L^2}{m^2c^2r^2}} - \frac{K}{r}
\approx mc^2 + \frac{L^2}{2mr^2} - \frac{K}{r}
\]
This is the Newtonian effective potential plus rest energy. For any \(K > 0\), this approaches \(mc^2\) from below for large \(r\).

## The bound for general bound orbits
**Claim:** A bound orbit (one confined to \(r_{\min} \le r \le r_{\max}\) with \(0 < r_{\min}\)) exists in the SR inverse-square problem if and only if \(L > K/c\).

**Proof sketch:**
- (\(\Rightarrow\)) If \(L \le K/c\), the effective potential has no barrier at \(r = 0\). A particle with any energy below \(mc^2\) can reach \(r = 0\) without encountering a turning point. Hence no bound orbit with \(r_{\min} > 0\).
- (\(\Leftarrow\)) If \(L > K/c\), the potential rises to \(+\infty\) at \(r = 0\) and approaches \(mc^2\) from below as \(r \to \infty\). Since \(W_L\) is continuous and has at least one minimum (from Section 5.2 of the satellite, stable for all \(\gamma\) when \(q=2\)), energies in the interval \([W_L(r_0), mc^2)\) yield bound orbits.

## Newtonian comparison
In the Newtonian limit (\(c \to \infty\)), the bound \(L > K/c\) becomes \(L > 0\), which is trivially satisfied for any orbit with nonzero angular momentum. This is consistent: Newtonian inverse-square orbits are bound for any \(L > 0\) (ellipses).

The relativistic bound \(L > K/c\) is thus a genuinely new kinematic constraint. It means that for angular momenta below \(K/c\), the particle spirals into the force center — a qualitative change from the Newtonian case.

## Connection to the GR case
In GR (Schwarzschild), the analogous bound involves the ISCO at \(r = 6M\):
- Timelike geodesics: \(L > 2\sqrt{3}\,M\) for stable circular orbits.
- There exist unstable circular orbits for \(3M < r < 6M\) with lower \(L\).
- Below \(L = 2\sqrt{3}\,M\), no circular orbits; below some threshold, no bound orbits at all.

The SR bound \(L > K/c\) is a precursor of this GR behavior, already visible without spacetime curvature.

## Candidate text for satellite promotion

After the L > K/c circular-orbit box in Section 3, add:

```
## 3.1 Extension to all bound orbits (effective-potential argument)
The bound $L > K/c$ is not limited to circular orbits. Consider the effective radial potential at fixed $L$:
\[
W_L(r) = \sqrt{m^2c^4 + \frac{L^2c^2}{r^2}} - \frac{K}{r}.
\]
As $r \to 0^+$, the leading behavior is $W_L \approx (Lc - K)/r$. Three regimes appear:
- If $L > K/c$: the potential rises to $+\infty$ at the origin, creating a centrifugal barrier. Combined with $W_L \to mc^2$ as $r \to \infty$, this produces a well admitting bound orbits.
- If $L < K/c$: the potential plunges to $-\infty$ — the particle falls to center. No stable bound orbit exists.
- If $L = K/c$: marginal — the barrier vanishes but the potential remains bounded.

Therefore **$L > K/c$ is necessary and sufficient for the existence of bound orbits** (not just circular ones) in the SR inverse-square problem. In the Newtonian limit $c \to \infty$, this reduces to $L > 0$, the trivially satisfied condition for elliptical Kepler orbits.
```
