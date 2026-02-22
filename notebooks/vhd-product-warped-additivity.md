# V_HD on Riemannian Products and Warped Products

**Promoted from:** Blackboard 5 (2026-02-22)
**Consensus:** FOUR-AGENT (computationalist + physicist + critic + mathematician), unanimous approve
**Related:** BB0 (Lie groups, Prop M0.1), BB2 (D=4 coincidence), BB4 (Seeley-DeWitt), BB6 (constant-curvature), D9.1i-D9.1n (paper)

---

## 1. Product Additivity Theorem

**Theorem C5.1.** Let \((M_1, g_1)\), \((M_2, g_2)\) be Riemannian manifolds. On \((M_1 \times M_2, g_1 \oplus g_2)\):
\[V_{\mathrm{HD}}(M_1 \times M_2) = V_{\mathrm{HD}}(M_1) + V_{\mathrm{HD}}(M_2)\]
in product coordinates. Both sides are coordinate-dependent, using the same trivialization on each factor.

**Proof.** \(|g_M| = |g_1||g_2|\). The product Laplacian separates: \(\Delta_M = \Delta_1 + \Delta_2\). Cross terms vanish because \(\partial_{x_1}(|g_2|^{-1/4}) = 0\) and vice versa. Therefore \(V_{\mathrm{HD}} = -|g_M|^{1/4}\Delta_M(|g_M|^{-1/4}) = -|g_1|^{1/4}\Delta_1(|g_1|^{-1/4}) - |g_2|^{1/4}\Delta_2(|g_2|^{-1/4})\). \(\square\)

**Corollary C5.2.** \(V_{\mathrm{HD}}\) is constant on \(M_1 \times M_2\) (in product coordinates) iff \(V_{\mathrm{HD}}\) is constant on each factor in its own coordinates.

---

## 2. Warped Product Decomposition

For a Riemannian manifold \(M^d\) in geodesic polar coordinates: \(ds^2 = dr^2 + f(r)^2 d\Omega_{d-1}^2\), the half-density potential decomposes as:

\[V_{\mathrm{HD}} = V_{\mathrm{rad}}(r) + \frac{1}{f(r)^2}\,V_{\mathrm{HD}}^{S^{d-1}}(\Omega)\]

where \(V_{\mathrm{rad}}(r) = \alpha\!\left[\frac{f''}{f} + (\alpha-1)\frac{(f')^2}{f^2}\right]\) with \(\alpha = \frac{d-1}{2}\).

The \(f^{-2}\) factor coupling the angular V_HD to the radial coordinate **breaks product additivity** -- warped products are not direct products.

**Radial constancy criterion:** \(V_{\mathrm{rad}}\) is constant iff \(\alpha(\alpha-1) = 0\) iff \(d \in \{1, 3\}\). However, the FULL V_HD (including angular contributions) is non-constant for all \(d \geq 2\) in geodesic polar coordinates.

---

## 3. Full V_HD on S^3 (Correction)

**Context:** Previous analysis (BB4 §12.5) identified \(V_{\mathrm{HD}} = -1\) (constant) on \(S^3\). This was the RADIAL SECTOR only, after angular separation using \(\rho_r = \sin^2\!\chi\) rather than the full \(|g| = \sin^4\!\chi\,\sin^2\!\theta\).

**Full formula** in geodesic polar \((\chi, \theta, \phi)\):
\[V_{\mathrm{HD}}(\chi, \theta) = -1 - \frac{1}{4\sin^2\!\chi} - \frac{1}{4\sin^2\!\chi\,\sin^2\!\theta}\]

This is NOT constant. SymPy verified (exact symbolic + 12-point numerical).

**What remains correct:**
- The spectral shift \(l(l+2) - (l+1)^2 = -1\) is constant (intrinsic, operator-level).
- The identity \(\widetilde{H} = H_L + V_{\mathrm{HD}}\) holds exactly.
- In LEFT-INVARIANT coordinates on \(\mathrm{SU}(2) \cong S^3\): \(V_{\mathrm{HD}} = -R/6 = -1\) (constant, Prop M0.1).

**Lesson:** The spectral comparison is intrinsic; the pointwise V_HD function is chart-dependent (cf. Remark D9.1n).

---

## 4. Verification Table (Warped Products)

| Space | \(f(r)\) | \(d\) | \(V_{\mathrm{rad}}\) | \(V_{\mathrm{ang}}/f^2\) | Radial const? |
|-------|----------|-------|-----------|------------|------|
| \(S^2\) | \(\sin r\) | 2 | \(-1/4 - 1/(4\sin^2 r)\) | 0 (\(S^1\) trivial) | NO |
| \(S^3\) | \(\sin r\) | 3 | \(-1\) | \(-1/(4\sin^2\!\chi)[1 + 1/\sin^2\!\theta]\) | YES |
| \(H^2\) | \(\sinh r\) | 2 | \(1/4 - 1/(4\sinh^2 r)\) | 0 | NO |
| \(H^3\) | \(\sinh r\) | 3 | \(+1\) | non-zero | YES |
| \(S^4\) | \(\sin r\) | 4 | \(-9/4 + 3/(4\sin^2 r)\) | non-zero | NO |

---

## 5. S^2 x S^2: Constant R Does Not Imply Constant V_HD

\(S^2 \times S^2\) has constant scalar curvature \(R = 4\) but non-constant \(V_{\mathrm{HD}}\):

\[V_{\mathrm{HD}}(S^2 \times S^2) = \left[-\frac{1}{4} - \frac{1}{4\sin^2\!\theta_1}\right] + \left[-\frac{1}{4} - \frac{1}{4\sin^2\!\theta_2}\right]\]

Numerically verified (8-point finite-difference, agreement to \(< 10^{-5}\)).

**This proves:** constant \(R\) does NOT imply constant \(V_{\mathrm{HD}}\) in any chart. The ordering correction is genuinely position-dependent despite homogeneous curvature. Candidate for paper Remark D9.1q.

---

## 6. Coordinate Dependence Summary

| Space | Geodesic polar V_HD | Left-invariant V_HD | Spectral shift |
|-------|-------|--------|------|
| \(S^2\) | \(-1/4 - 1/(4\sin^2\!\theta)\) | n/a (not Lie group) | \(-(l+1)\) |
| \(S^3 \cong \mathrm{SU}(2)\) | \(-1 - 1/(4\sin^2\!\chi) - \ldots\) | \(-R/6 = -1\) (constant, M0.1) | \(-1\) |
| \(\mathrm{SU}(3)\) | (not computed) | \(-R/6 = -1\) (constant, M0.1) | (constant) |

The spectral comparison \(\mathrm{Spec}(\widetilde{H}) \neq \mathrm{Spec}(H_L)\) is intrinsic (chart-independent). The pointwise V_HD function is chart-dependent. Both statements are established in Remark D9.1n.

---

## 7. Product Additivity on Lie Groups

In LEFT-INVARIANT coordinates on Lie group factors, product additivity + Prop M0.1 gives:
- \(V_{\mathrm{HD}}(\mathrm{SU}(2) \times \mathrm{U}(1)) = -R_1/6 + 0 = -1\). **Constant.**
- \(V_{\mathrm{HD}}(\mathrm{SU}(N) \times \mathrm{SU}(M)) = -R_1/6 - R_2/6\). **Constant.**

In GEODESIC POLAR coordinates, \(V_{\mathrm{HD}}(S^3 \times S^1)\) is non-constant (the S^3 factor contributes a non-constant term). The spectral shift remains \(-1\) (intrinsic).

---

## 8. Connection to Paper

- **D9.1i** (paper line 1595): already corrected to show full non-constant V_HD formula in geodesic polars.
- **D9.1n** (paper line 1627): addresses chart dependence vs intrinsic content.
- **D9.1l** (paper line 1621): unified constant-curvature formula, specifies coordinate context.
- **Candidate D9.1q**: S^2 x S^2 as "constant R does not imply constant V_HD" -- a clean counterexample worth adding as a paper remark.
