# Manuscript Edit Proposal: Retract D9.1p and D9.1q

**Author:** Physicist (R26, updated after BB3 §§1-15)
**Date:** 2026-02-23
**Type:** Retraction (operator identification error)
**Priority:** URGENT — manuscript contains false claims

## Rationale

BB3 (critic R26 + mathematician R26, TWO-AGENT) identifies the root cause of the heat-kernel errors: the half-density Laplacian Delta_{1/2} is a CONJUGATION (similarity transform of -Delta_g), NOT the shifted operator -Delta_g + V_HD. The decomposition Delta_{1/2} = -Delta_g + V_HD + W^i partial_i includes drift terms W^i that were omitted in the Gilkey formula application.

**Key results (BB3, verified by physicist as 3rd agent):**
- Delta_{1/2} is isospectral to -Delta_g (eigenvalues l(l+2) on S^3, NOT l(l+2)-1)
- The Gilkey endomorphism is E' = 0 universally (drift cancels V_HD)
- a_1(Delta_{1/2}) = R/6 on any Riemannian manifold (NOT 0 and NOT R/3)
- All a_k(Delta_{1/2}) = a_k(-Delta_g) (identical to bare Laplacian)
- The KL formula applies to O3 = -Delta_g + V_HD (the shifted operator), NOT to Delta_{1/2}

**Error chain:**
1. Original (Thm M4.1): a_1 = R/6 + V = R/6 - R/6 = 0 (WRONG: omits drift)
2. Critic R25 correction: a_1 = R/6 + E = R/6 + R/6 = R/3 (WRONG: uses O3 eigenvalues)
3. Correct (BB3 §6, Corollary M15.1): a_1 = R/6 + E' = R/6 + 0 = R/6

## Changes

### 1. Replace Remark D9.1p (lines 1637-1639)

```diff
--- a/paper/main.md
+++ b/paper/main.md
@@ -1637,3 +1637,3 @@
-`Remark D9.1p (Universal vanishing of the first Seeley--DeWitt coefficient).`
-The half-density Laplacian \(\Delta_{1/2}=|g|^{1/4}\Delta_g\,|g|^{-1/4}\) satisfies \(a_1(\Delta_{1/2};x)=0\) at every point of any Riemannian manifold in any dimension. *Proof:* In Riemann normal coordinates at \(x\), the standard expansion gives \(V_{\mathrm{HD}}(x)=-R(x)/6\); the Gilkey coefficient \(a_1=R/6+V_{\mathrm{HD}}\) then vanishes identically.
-Consequently, the curvature coupling \(\xi=1/6\) forced by composition (Remark D9.1l) receives no first-order radiative correction at one loop: no \(\int R\,\phi^2\) counterterm appears. Higher Seeley--DeWitt coefficients \(a_k\), \(k\ge 2\), are generically non-zero, so the one-loop protection does not extend to all orders.
+`Remark D9.1p (Spectral invisibility of the half-density normalization).`
+The half-density Laplacian \(\Delta_{1/2}=|g|^{1/4}(-\Delta_g)|g|^{-1/4}\) is unitarily equivalent to the bare Laplacian \(-\Delta_g\) (similarity transform via \(U:f\mapsto|g|^{1/4}f\)). In particular, \(\Delta_{1/2}\) and \(-\Delta_g\) have identical spectra and heat kernel coefficients: \(a_k(\Delta_{1/2})=a_k(-\Delta_g)\) for all \(k\). The first Seeley--DeWitt coefficient is \(a_1(\Delta_{1/2})=R/6\).
+*Proof.* The operator \(\Delta_{1/2}=-\Delta_g + V_{\mathrm{HD}} + W^i\partial_i\) in geodesic polar coordinates has both a potential and a drift. When written in standard Laplacian form \(-(g^{\mu\nu}\nabla'_\mu\nabla'_\nu+E')\), the endomorphism is \(E'=V_{\mathrm{HD}}-\frac{1}{2}\mathrm{div}(W)+\frac{1}{4}|W|^2\). At any point \(p\) (using Riemann normal coordinates centered at \(p\)): \(V_{\mathrm{HD}}|_p=-R/6\), \(W^i|_p=0\), \(\mathrm{div}(W)|_p=-R/3\), giving \(E'=-R/6+R/6=0\). Therefore \(a_1=R/6+E'=R/6\). \(\square\)
+The half-density measure is "spectrally invisible": composition determines the path-integral normalization but does not alter the spectral geometry of the Laplacian.
```

### 2. Delete Remark D9.1q (lines 1641-1653)

```diff
--- a/paper/main.md
+++ b/paper/main.md
@@ -1641,13 +1641,0 @@
-`Remark D9.1q (Heat-kernel flatness on \(S^3\): sixth \(D=4\) coincidence).`
-Remark D9.1p shows \(a_1(\Delta_{1/2})=0\) universally. For the spatial section \(S^3\) of four-dimensional de Sitter spacetime the vanishing extends to all orders:
-\[
-a_k(\Delta_{1/2};\,S^3)=0\qquad\forall\,k\ge1.
-\]
-Consequently the heat trace is \emph{exactly} flat:
-\[
-\mathrm{tr}\,e^{-t\Delta_{1/2}}=(4\pi t)^{-3/2}\,\mathrm{Vol}(S^3),\qquad t>0,
-\]
-with no curvature corrections at any order in \(t\).
-*Proof.* On \(S^3\) the half-density potential is \(V_{\mathrm{HD}}=-R/6\) globally (Remark D9.1l, since \((d{-}1)/(4d)=1/6\) iff \(d=3\)). Thus \(\Delta_{1/2}=-\Delta_{S^3}+V_{\mathrm{HD}}\) is precisely the Kluth--Litim operator \(-\Delta+\bar{E}\) at the special endomorphism \(\bar{E}=\frac{1-d}{4d}R\big|_{d=3}=-R/6\) [KluthLitim2020]. The Kluth--Litim generating function for the integrated coefficients reduces to \(\exp\bigl(\sum_{n\ge1}\frac{(-1)^{n+1}}{n(2n+1)}B_{2n+1}(1)\,z^n\bigr)\); the odd Bernoulli polynomials satisfy \(B_{2n+1}(1)=0\) for all \(n\ge1\) (reflection identity \(B_k(1)=(-1)^kB_k\) with \(B_{2n+1}=0\)), so the exponent vanishes and \(\kappa_n(3)=\delta_{n,0}\), giving \(a_k=0\) for all \(k\ge1\). \(\square\)
-*Uniqueness.* Among \(d\ge2\) this phenomenon is unique to \(d=3\). Two conditions must hold simultaneously: \textit{(i)}~\(V_{\mathrm{HD}}\) globally constant (required for the Kluth--Litim formula to apply to \(\Delta_{1/2}\)): this holds on \(S^d\) iff \(\alpha(\alpha{-}1)=0\) where \(\alpha=(d{-}1)/2\), i.e.\ \(d\in\{1,3\}\) (Remark D9.1l); \textit{(ii)}~\(\kappa_n(d)=\delta_{n,0}\): this requires \(B_{2n+1}\bigl(\tfrac{d-1}{2}\bigr)=0\) for all \(n\ge1\), which holds for \(d\in\{1,2,3\}\) but fails for \(d\ge4\). For \(d=2\), condition (i) fails (\(V_{\mathrm{HD}}\) is position-dependent on \(S^2\)); the Kluth--Litim formula is inapplicable and \(a_2(\Delta_{1/2};S^2)=1/90\ne0\). For \(d=1\), \(S^1\) is flat and the result is trivial. Only \(d=3\) satisfies both conditions non-trivially.
-Since \(d=D{-}1=3\) is the spatial dimension of four-dimensional spacetime, heat-kernel flatness of the composition-forced half-density scalar is a sixth independent \(D=4\) coincidence, complementing the uniform spectral shift (Proposition D9.1i), the constant \(V_{\mathrm{HD}}\) (Remark D9.1l), the conformal coupling identity \((d{-}1)/(4d)=\xi_c\) at \(d=3\) (Remark D9.1l), the composition-forced \(\xi=1/6\) (Remark D9.1p), and the de Sitter spatial \(a_2=0\) (Proposition D9.1i). Physically: the one-loop effective action of \(\Delta_{1/2}\) on \(S^3\) has no curvature-dependent divergences at \emph{any} loop order in the heat-kernel expansion; all UV divergences are volume-type. No \(R^k\)-counterterms appear. The Seeley--DeWitt expansion does not see the \(S^3\) curvature at all.
```

### 3. Remove D9.1q from Package B list (line 1751)

```diff
--- a/paper/main.md
+++ b/paper/main.md
@@ -1751,1 +1751,1 @@
-2. **Package B (ordering/domain/extension):** Appendix 10.2 with `D9.1`, `D9.1a`, `D9.1b`, `D9.1d`, `D9.1e`, `D9.1f`, `Proposition D9.1h`, `Proposition D9.1i`, `Remark D9.1j`, `Proposition D9.1k`, `Remark D9.1l`, `Remark D9.1m`, `Remark D9.1n`, `Remark D9.1o`, `Remark D9.1p`, `Remark D9.1q`.
+2. **Package B (ordering/domain/extension):** Appendix 10.2 with `D9.1`, `D9.1a`, `D9.1b`, `D9.1d`, `D9.1e`, `D9.1f`, `Proposition D9.1h`, `Proposition D9.1i`, `Remark D9.1j`, `Proposition D9.1k`, `Remark D9.1l`, `Remark D9.1m`, `Remark D9.1n`, `Remark D9.1o`, `Remark D9.1p`.
```

### 4. Update reference 37 annotation (KluthLitim2020, line 2030)

**DO NOT DELETE.** The KL formula is mathematically correct. The error was in applying it to Delta_{1/2} (which has drift) rather than the shifted operator O3 = -Delta_g + V_HD (which doesn't).

```diff
--- a/paper/main.md
+++ b/paper/main.md
@@ -2030,1 +2030,1 @@
-37. [KluthLitim2020] Y. Kluth and D. F. Litim, "Heat kernel coefficients on the sphere in any dimension," *Eur. Phys. J. C* **80**:269 (2020). arXiv:`1910.00543`. DOI `10.1140/epjc/s10052-020-7784-2`. (Derives all integrated Seeley--DeWitt coefficients for Laplacians on round \(S^d\) via a Bernoulli-polynomial generating function; the vanishing condition \(\kappa_n(d)=\delta_{n,0}\) at the special endomorphism \(\bar{E}=(1-d)R/(4d)\) is central to Remark D9.1q.)
+37. [KluthLitim2020] Y. Kluth and D. F. Litim, "Heat kernel coefficients on the sphere in any dimension," *Eur. Phys. J. C* **80**:269 (2020). arXiv:`1910.00543`. DOI `10.1140/epjc/s10052-020-7784-2`. (Derives integrated heat kernel coefficients for Laplacians on round \(S^d\) via a Bernoulli-polynomial generating function. The special endomorphism \(\bar{E}=(1-d)R/(4d)\) coincides with the half-density potential at \(d=3\).)
```

## Summary of changes

| Line(s) | Action | Reason |
|---------|--------|--------|
| 1637-1639 | Replace D9.1p | a₁=0 wrong; replace with "spectral invisibility" (a₁=R/6) |
| 1641-1653 | Delete D9.1q | All claims wrong (O3 ≠ Δ_{1/2}) |
| 1751 | Remove D9.1q from Package B | Remark deleted |
| 2030 | Update ref 37 annotation | Remove D9.1q reference |

## Error History

1. **Original (Thm M4.1):** a₁(Δ_{1/2}) = R/6 + V_HD = 0. WRONG: omits drift.
2. **Critic R25 correction:** a₁ = R/6 + E = R/3 (Vassilevich). WRONG: uses O3 eigenvalues.
3. **Physicist R26 verification:** confirmed a₁ = R/3 spectrally. WRONG: eigenvalues l(l+2)-1 are O3.
4. **Critic R26 (BB3):** identifies O2 vs O3 distinction. a₁(Δ_{1/2}) = R/6. CORRECT.
5. **Mathematician R26 (BB3 §15):** formal proof E'=0 universally. CONFIRMS a₁ = R/6.
6. **Physicist 3rd-agent (this proposal):** independent spectral verification. CONFIRMS.

## Evidence

- BB3 (R26): definitive operator resolution, TWO-AGENT (critic+mathematician)
- BB3 §15 Corollary M15.1: E'=0 universally → a₁=R/6
- Spectral verification: O1=O2 has a₁=1.000=R/6, O3 has a₁=2.000=R/3 (script: tmp/verify_o2_vs_o3.py)
- BB4 CMP9b.4: conformal a₂ formula still valid (different operator, unaffected)
- Isospectrality: Δ_{1/2} = U(-Δ_g)U^{-1} with U=|g|^{1/4} (unitary similarity)

**THREE-RESEARCHER RULE:** Critic (R26, BB3 §§1-14) + Mathematician (R26, BB3 §15) + Physicist (R26, this review) independently confirm the correction. Retraction approved.

## What Survives

- V_HD formula -(d-1)R/(4d): CORRECT (geometry)
- V_HD constant iff d∈{1,3} on spheres: CORRECT
- D=4 coincidences (i)-(iv): CORRECT (independent of heat kernel)
- CMP9b.4 conformal a₂ = -d(d-1)(d-3)/180: CORRECT (different operator)
- PH10.1 perfect-square identity: CORRECT (algebraic)
- KL κ_n(3) = δ_{n,0}: CORRECT math (applies to O3, not Δ_{1/2})
