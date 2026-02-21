# Referee Report: Path-Integral Normalization: The d/2 Exponent as Composition Compatibility Datum

**Referee:** referee-2
**Date:** 2026-02-21
**Paper:** pub-track/sent/path-integral-normalization/main.md

---

## Summary

This note argues that the prefactor exponent d/2 in the free-particle path-integral kernel (m/2πℏt)^{d/2} is not a convention but is uniquely forced by three mutually reinforcing constraints: semigroup composition of the kernel, dimensional homogeneity of the kernel with respect to the basis {m, ℏ}, and coordinate invariance (half-density structure). The paper demonstrates the d=1 Gaussian composition explicitly (PN-D1.1), extends to general d by factorization (PN-D1.1a), shows uniqueness by failure of α ≠ d/2 (PN-D1.2), then traces the same exponent through curved-space kernels (Van Vleck determinant, Section 4), heat-kernel diffusion (Section 5), and renormalization thresholds for point interactions (Section 6). The thesis connects these four manifestations to the Refinement Compatibility Principle (RCP) of the companion cornerstone manuscript.

---

## Strengths

- The central claim is mathematically well-grounded. The d=1 Gaussian computation in PN-D1.1 is entirely explicit and correct, and the factorization argument for general d in PN-D1.1a is sound.
- The uniqueness argument in PN-D1.2 is conceptually clear: if the kernel has trial exponent α, the Gaussian integral produces a factor (t1+t2)^{-d/2} from the integration measure while the prefactors contribute (t1 t2)^{-α}, and these can only combine homogeneously into (t1+t2)^{-α} if α = d/2. This is the correct and non-trivial core insight.
- The groupoid-convolution framing in Section 2.3 is a genuine value-add: casting (C), (T), (D), (M) as axioms and invoking Lévy-Khintchine to exclude stable non-Gaussian processes is a clean structural argument. It elevates the paper above mere textbook recapitulation.
- The multi-domain synthesis (quantum propagator, heat kernel, Van Vleck, RG threshold) under a single exponent is pedagogically strong and the narrative is coherent.
- References are classical and well-chosen (Van Vleck 1928, Morette 1951, DeWitt 1957, Vassilevich 2003, Feynman-Hibbs 1965). Vassilevich [2003] is the correct reference for the heat-kernel expansion.
- The handling of fractional and spectral dimensions in Section 7.4 is appropriately cautious (spectral dimension d_s versus Hausdorff d_H) and acknowledges the open question correctly.

---

## Weaknesses

### MAJOR

- **M1. The DeWitt-Morette composition law is stated without adequate qualification (Section 4, PN-D4.1).**
  The paper asserts Δ(x,z) = Δ(x,y) · Δ(y,z) as a "key structural result" (Section 4.2). This factorization is NOT an exact identity in curved space — it holds only at the stationary-phase point y = y*(x,z;t1), i.e., when y lies exactly on the geodesic from x to z with the correct time split. Away from this point, Δ does not factor. The paper acknowledges this approximation in the paragraph following PN-D4.1 ("In the semiclassical limit... the dominant contribution comes from the classical path"), but the Section 4.2 heading "DeWitt-Morette Composition Law" and the boxed equation give it the appearance of an exact law. This is misleading. Proposition PN-P4.1 partially repairs this by stating "at leading semiclassical order," but the damage from the earlier presentation lingers. A correct treatment would: (a) state upfront that the composition in curved space is exact only at stationary phase, (b) cite the precise statement in DeWitt [1957] or the Pauli-Van Vleck formula, and (c) clarify whether the d/2 exponent is exact or semiclassical. The current text conflates the two regimes.

- **M2. The uniqueness argument in PN-D1.2 has a gap in the exclusion of non-power-law prefactors.**
  The paper considers only kernels of the form K_α(x,y;t) ∝ t^{-α} (power-law prefactor). The uniqueness claim is that α = d/2 is forced. But this only establishes uniqueness within the ansatz of power-law prefactors of the form (const/t)^α. A more general prefactor f(t) could in principle satisfy f(t1)·f(t2)·(t1+t2)^{d/2} = f(t1+t2)·(t1 t2)^{d/2} — the paper should either (a) prove that the semigroup law forces f(t) to be a power law (this follows from the Cauchy functional equation, which is exactly what Proposition PN-P1.3 invokes via Lévy-Khintchine), or (b) explicitly refer the reader forward to PN-P1.3 for the exclusion of non-power-law alternatives. As written, PN-D1.2 appears to prove uniqueness but only does so within an implicit restriction. The groupoid section (2.3) provides the complete argument, but the cross-reference is missing in Section 2.2.

- **M3. Section 6.2 terminology: "non-renormalizable" versus "requires non-perturbative input."**
  For d ≥ 3, the paper states that point interactions are "non-renormalizable" (heading of PN-D6.1, item 3). This is technically incorrect in the sense used in quantum field theory: the delta-function potential in d=3 is renormalizable via self-adjoint extension (boundary condition at r=0), i.e., via introduction of the scattering length a as a physical parameter. This is a renormalization, just non-perturbative. The paper partially acknowledges this in the same paragraph ("regularized via self-adjoint extensions"), but the leading word "Non-renormalizable" will mislead readers who know the standard terminology. The correct statement is that in d=3, the naive perturbative expansion diverges and renormalization requires a single non-perturbative parameter (the scattering length), making the theory "non-perturbatively renormalizable" or "renormalizable by extension." The companion reference [RGFundamental] presumably handles this, but the present paper should not introduce contradictory language.

### MINOR

- **m1. Section 3.1 dimensional chain is incomplete.**
  The paper writes [K] = [m/t]^{d/2} = [M]^{d/2}[T]^{-d/2} = [L]^{-d} without showing the conversion step [M][T]^{-1} = [L]^{-2}. This step requires using [ℏ] = ML²T⁻¹ and the kinematic relation for the kernel normalization, which involves ℏ. As written, the dimensional equation [M]^{d/2}[T]^{-d/2} = [L]^{-d} looks like it uses [m/t] = L^{-2}, which is not a fundamental relation. A line inserting ℏ into the dimensional chain would close this.

- **m2. The Gaussian integral formula in PN-D1.1 has a sign issue worth flagging.**
  The formula cited is ∫ exp(-αy² + βy) dy = sqrt(π/α) exp(β²/4α). In the quantum kernel, the coefficient α = -im(t1+t2)/(2ℏ t1 t2) is purely imaginary (not positive real), so this is an oscillatory rather than damped Gaussian. The paper does apply the standard analytic-continuation result correctly (the formula holds by analytic continuation for Im(α) > 0), but it silently assumes this continuation without comment. A remark that the integral is regularized by the iε prescription or by analytic continuation would prevent confusion for readers who are accustomed to the real-Gaussian formula.

- **m3. Half-density argument in Sections 1 and 7.2 is stated but not derived.**
  The claim that the kernel transforms as |dx|^{1/2}|dy|^{1/2} under coordinate changes (the "half-density" structure) is asserted in the introduction and conclusion but never derived or cited with precision. The argument in Section 7.2 point 3 says "for the composition integral to be coordinate-invariant, the kernel must transform as a half-density in each variable" — this is correct in principle (it is the statement of the half-density formalism of Rawnsley, Blattner, etc.) but the paper does not cite a reference for this structure, nor does it verify it even in d=2 as a worked example. Since this is listed as the third of three independent arguments for d/2 necessity (Section 7.2), the absence of either a proof or a reference weakens the closing synthesis.

- **m4. The companion satellite [RCPFoundations] and the cornerstone [Main] are cited without accessible identifiers.**
  References 1–6 include two self-references ([Main] and [RCPFoundations]) that have no arXiv identifiers, DOIs, or even working titles beyond terse descriptions. For a paper in pub-track, these should at minimum be listed with their filename in this repository or a placeholder for the arXiv number when posted. A reader who does not have access to this codebase cannot locate these references.

- **m5. Sections 2.2 and 2.3 overlap substantially with different levels of rigor, causing structural redundancy.**
  Section 2.2 gives the informal uniqueness argument (PN-D1.2), and Section 2.3 gives the formal groupoid argument (PN-P1.3) that subsumes and strengthens it. The reader is given a preliminary argument and then a rigorous one without a clear statement that PN-P1.3 supersedes PN-D1.2. Consider either (a) marking PN-D1.2 as a "heuristic" and forward-referring to PN-P1.3 for the complete proof, or (b) merging the two into a single section with increasing rigor.

- **m6. Beta function reference in PN-D6.1 lacks citation.**
  The beta function β(g_R) = (m/πℏ²) g_R² for the 2D delta-function potential is attributed to [RGFundamental] (a companion satellite). This result is also standard in the literature (e.g., Camblong et al., Jackiw 1991) and a direct citation would strengthen the paper's independence from the unpublished companion.

---

## Verdict

**Recommendation:** MAJOR REVISION

**Justification:** The core result is mathematically sound and the multi-domain synthesis is valuable, but the paper has three MAJOR issues that must be addressed before publication: (M1) the DeWitt-Morette composition law is presented as exact when it is a semiclassical approximation; (M2) the uniqueness argument in Section 2.2 is incomplete and the forward reference to the rigorous PN-P1.3 is missing; and (M3) the terminology "non-renormalizable" in d=3 is technically incorrect and conflicts with the paper's own later clarification. The MINOR issues are correctable without re-review, but M1–M3 require revisions to the mathematical claims and their presentation.

---

## Detailed Comments

### Section 2.2 (PN-D1.2)

The argument runs: the composition integral contributes (t1 t2)^{-α} from the prefactors and (t1+t2)^{-d/2} from the Gaussian integrals. For the result to equal (t1+t2)^{-α}, we need (t1 t2)^{-α} (t1+t2)^{-d/2} ∝ (t1+t2)^{-α}, i.e., (t1 t2)^{-α} ∝ (t1+t2)^{α-d/2}. This cannot hold for all t1, t2 > 0 unless α = d/2 (because the left side is a product while the right side is a sum, and they can only be proportional if both sides are identically 1, forcing α = d/2). The argument is correct but the proportionality "can only hold for all t1, t2 > 0 if α = d/2" should be backed by a brief functional-equation argument rather than left as an assertion.

### Section 4.2 and PN-D4.1

The paper should restructure as follows: (1) State clearly at the start of Section 4 that the curved-space composition will be treated in the WKB / stationary-phase approximation; (2) display the exact integral and state that its evaluation requires stationary phase; (3) then derive the semiclassical result. This would make the approximation regime transparent and would allow Proposition PN-P4.1 to state its scope (leading semiclassical order) without seeming to repair an error introduced three paragraphs earlier.

The DeWitt-Morette law Δ(x,z) = Δ(x,y)·Δ(y,z) should be cited precisely: it appears as equation (3.41) in DeWitt [1957] and in Morette [1951] eq. (11), both for the specific case of points on a common geodesic. The paper should give the equation number.

### Section 6, item 3 (d > 2)

Replace "Non-renormalizable without additional structure" with "Power-law UV divergence; renormalizable via self-adjoint extension (non-perturbatively)." This resolves the terminological inconsistency with the parenthetical that follows immediately.

### References

Add to Reference 1 ([Main]): "(working title; see `paper/cornerstone/` in this repository, Theorem P4.2)."
Add to the [RCPFoundations] reference: "(satellite paper; see `papers/rcp-foundations/main.md`)."
Add for the beta function in PN-D6.1: R. Jackiw, "Delta function potentials in two- and three-dimensional quantum mechanics," in *M. A. B. Beg Memorial Volume*, World Scientific, 1991.
