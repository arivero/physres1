# Relativistic Central Orbits as Refinement-Witnesses (Draft)

## Abstract
Central-force motion is a clean domain where “refinement” arguments can be made explicit: Newton’s polygonal limit gives exact finite-step invariants, while relativistic kinematics introduces new admissibility constraints even before general relativity is invoked. This dependent note records one such constraint in special relativity for inverse-square forces: circular orbits obey \(v=K/L\) and therefore require \(L>K/c\). The goal is not to replace standard treatments, but to keep a minimal derivation-first record of what changes when the same geometric refinement story is pushed into relativistic regimes.

Status: working draft (derivations first; stability/GR extensions deferred).

## 1. Purpose and Relation to the Cornerstone Paper
The cornerstone manuscript (`paper/main.md`) uses central-force refinement as a structural bridge (equal areas / angular momentum preservation \(\leftrightarrow\) action additivity \(\leftrightarrow\) composition).

This note is “outside scope” of the cornerstone paper but tracks a conversation branch:
how relativistic kinematics modifies the simplest central-force circular-orbit conditions. The inverse-square case is singled out by an exact simplification already at the SR level.

## 2. SR Circular Motion Under a Power-Law Force
Assume a particle of rest mass \(m\) executes uniform circular motion of radius \(r\) and speed \(v\). The Lorentz factor is
\[
\gamma=\frac{1}{\sqrt{1-v^2/c^2}}.
\]
For uniform circular motion the acceleration is perpendicular to the velocity, so
\[
F=\frac{dp}{dt}=\gamma m a_\perp=\gamma m \frac{v^2}{r}.
\]

Assume an attractive central force magnitude
\[
F(r)=\frac{K}{r^q},\qquad K>0.
\]
Then the circular-orbit condition is
\[
\frac{K}{r^q}=\gamma m \frac{v^2}{r}
\quad\Longleftrightarrow\quad
K=\gamma m v^2 r^{q-1}.
\]

The angular momentum magnitude is
\[
L=r p=\gamma m r v.
\]
Eliminating \(v\) gives the SR circular-orbit condition
\[
L^2 = K\,\gamma\,m\, r^{3-q}.
\]

This reduces to the Newtonian relation when \(\gamma\to 1\) (i.e. \(c\to\infty\)).

## 3. Inverse-Square (\(q=2\)) Special Case: \(v=K/L\) and the Bound \(L>K/c\)
For \(q=2\),
\[
K=\gamma m v^2 r,\qquad L=\gamma m r v.
\]
Dividing yields the exact identity
\[
\boxed{\,v=\frac{K}{L}\,}.
\]
Therefore a relativistic circular orbit requires \(v<c\), hence the angular-momentum bound
\[
\boxed{\,L>\frac{K}{c}\,}.
\]

The radius follows from \(r=L^2/(K\gamma m)\) with \(\gamma=(1-v^2/c^2)^{-1/2}\) and \(v=K/L\):
\[
r=\frac{L^2}{Km}\sqrt{1-\frac{K^2}{c^2L^2}}
\xrightarrow[c\to\infty]{}\frac{L^2}{Km}.
\]

This bound and the circular-solution branch appear in standard treatments of the relativistic Kepler problem (see e.g. [BoscagginDambrosioFeltrin2020RelKepler] for a dynamical-systems/variational analysis of the same SR equation).

## 4. Next Waves (Not Yet Done)
1. Add a stability analysis (small radial perturbations) in SR for \(F=K/r^q\).
2. Add a GR chapter (Schwarzschild baseline): conserved \(E,L\) from Killing fields, effective potential, circular-orbit conditions, and photon sphere (baseline anchor: [Carroll1997LectureGR]).
3. Decide whether any of these relativistic constraints should be cited in the cornerstone paper as an “outlook” sentence (likely not; keep the cornerstone paper tight).

