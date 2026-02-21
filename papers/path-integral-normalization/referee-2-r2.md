# Referee Report (Round 2): Path-Integral Normalization: The d/2 Exponent as Composition Compatibility Datum

**Referee:** referee-2
**Date:** 2026-02-21
**Paper:** pub-track/sent/path-integral-normalization/main.md
**Round 1 report:** papers/path-integral-normalization/referee-2.md

---

## Overview

This is a Round 2 review. I check whether each MAJOR and MINOR issue raised in my Round 1 report has been adequately addressed in the revised manuscript. I do not read the other referee's report (independence requirement).

The revision is thorough and responsive. All three MAJOR issues have been fully resolved. All six MINOR issues have been resolved or substantially addressed, with one exception (m4) that remains partially open.

---

## Resolution of Round 1 MAJOR Issues

### M1 — DeWitt-Morette composition law presented as exact (Section 4)

**Round 1 concern:** The paper presented the Van Vleck factorization Δ(x,z) = Δ(x,y)·Δ(y,z) as a "key structural result" under a section heading that gave it the appearance of an exact identity. The approximation regime was not announced upfront; Proposition PN-P4.1 partially repaired the damage but could not undo the earlier framing.

**Assessment: RESOLVED.**

Section 4.2 now opens with an explicit disclaimer before any equations appear:

> "The curved-space composition will be treated in the WKB / stationary-phase approximation throughout this section. The exact composition integral... requires stationary-phase methods; the result below is valid at leading semiclassical order, along a unique geodesic, and in the absence of caustics (conjugate points). In the presence of caustics, multiple geodesics contribute with Maslov index corrections and the simple product law fails."

The section heading is now "DeWitt-Morette Composition Law (Semiclassical Regime)", making the approximation status visible at a glance. The equation citations I requested — DeWitt [1957] eq. (3.41) and Morette [1951] eq. (11) — appear in the text. Proposition PN-P4.1 has been expanded to clarify that the d/2 exponent is exact as a leading short-time singularity (the Seeley-DeWitt argument), while the composition of Δ itself is semiclassical. This is a clean and correct resolution.

---

### M2 — Uniqueness argument in Section 2.2 has a gap (non-power-law prefactors not excluded)

**Round 1 concern:** Derivation PN-D1.2 appeared to prove uniqueness within the class of power-law prefactors t^{-α} but did not state this restriction or cross-reference Proposition PN-P1.3 (which supplies the missing exclusion via the Cauchy functional equation).

**Assessment: RESOLVED.**

Section 2.2 now ends with an explicit bridging paragraph:

> "This derivation assumes a translation-invariant Gaussian kernel family with a power-law prefactor t^{-α}. The more general question — whether non-power-law prefactors f(t) or non-Gaussian kernels could also close under convolution — is addressed by Proposition PN-P1.3 below, which excludes both alternatives via the Cauchy functional equation and dimensional analysis. Readers seeking the complete uniqueness argument should proceed directly to Section 2.3."

This is exactly what the Round 1 report requested: an explicit statement of the restriction in PN-D1.2 and a forward reference to the rigorous completion in Section 2.3. The gap is closed.

---

### M3 — "Non-renormalizable" terminology in Section 6.2 (d ≥ 3)

**Round 1 concern:** The paper used "Non-renormalizable without additional structure" for the d=3 case, which contradicts the standard usage in QFT (where the delta-function potential in d=3 is renormalizable via self-adjoint extension, just non-perturbatively). The same paragraph then immediately acknowledged the self-adjoint extension, creating a contradictory presentation.

**Assessment: RESOLVED.**

The offending label has been replaced. Section 6.2 item 3 now reads:

> "Power-law UV divergence; renormalizable non-perturbatively via self-adjoint extension: in d=3, the delta-function potential is regularized by introducing a scattering length a as the single physical parameter... This is a genuine renormalization (trading a divergent bare coupling for a finite physical parameter), but it is non-perturbative — the naive perturbative expansion in the bare coupling diverges."

This is the correct terminology. The change aligns the paper with standard QFT language and removes the contradiction. Proposition PN-P6.1 in Section 6.3 and the conclusion (Section 7) use "non-perturbative renormalization" consistently throughout.

---

## Resolution of Round 1 MINOR Issues

### m1 — Dimensional chain incomplete in Section 3.1

**Assessment: RESOLVED.**

Section 3.1 now displays the full dimensional chain:

    [K] = [m/ℏt]^{d/2} = [M]^{d/2}/([ℏ]^{d/2}[T]^{d/2}) = [M]^{d/2}/([M]^{d/2}[L]^d[T]^{-d/2}[T]^{d/2}) = [L]^{-d}

using [ℏ] = ML²T⁻¹ explicitly at the intermediate step. The conversion that was missing in Round 1 — from [M][T]^{-1} to [L]^{-2} via ℏ — is now shown in full.

---

### m2 — Oscillatory Gaussian integral assumed without comment in PN-D1.1

**Assessment: RESOLVED.**

Derivation PN-D1.1 now contains the sentence:

> "Since α is purely imaginary (not positive real), the integral is oscillatory rather than damped; the formula holds by analytic continuation from Re(α) > 0 (equivalently, by the iε prescription that regularizes the Fresnel integral)."

This directly addresses the concern. The continuation is now explicit and accessible to readers who may be unfamiliar with the Fresnel regularization.

---

### m3 — Half-density argument stated but not derived or cited in Section 7.2

**Assessment: SUBSTANTIALLY ADDRESSED** (residual concern, minor).

Section 7.2 point 3 now gives an explicit proof-sketch:

> "Under coordinate changes x → x'(x), the measure transforms as d^d x → |det(∂x'/∂x)| d^d x. For the composition integral ∫dy K(x,y)K(y,z) to be coordinate-invariant, the kernel must transform as a half-density in each variable: K → J_x^{1/2} J_y^{1/2} K... Then the two J_y^{1/2} factors from the left and right kernels combine to give J_y = |det(∂y'/∂y)|, which exactly cancels the Jacobian of the integration measure d^d y, making the integral invariant."

This is a genuine argument (not just an assertion), and the companion satellite [HalfDensityQFT] is now cited for the full formalism. For a focused note of this scope, this level of treatment is acceptable. The argument is correct and the citation is appropriate. The residual gap — no worked example and no reference to the classical half-density literature (Rawnsley, Blattner, Woodhouse) — is very minor; the citation to [HalfDensityQFT] handles the reference concern within the series.

---

### m4 — Internal self-references ([Main], [RCPFoundations]) lack locatable identifiers

**Assessment: PARTIALLY ADDRESSED.**

The reference list has expanded substantially (13 items, up from 6 in the submitted draft). External references [Jackiw1991DeltaPotentials], [ManuelTarrach1994PertRenQM], [Barlow1998], and [Kigami2001] all have complete bibliographic information. However, the internal companion references still lack explicit repository paths or placeholder arXiv numbers:

- [Main]: "companion cornerstone manuscript in this series (2026), Theorem P4.2" — no file path, no arXiv placeholder.
- [RCPFoundations], [RGFundamental], [HalfDensityQFT]: "companion satellite paper in this series (2026)" — no file paths.

My Round 1 report specifically requested adding, e.g., "(working title; see `paper/cornerstone/` in this repository, Theorem P4.2)" for [Main] and similar for the satellites. This has not been done. For a reader outside this codebase, these references remain unlocatable.

This is a minor publication concern, not a scientific one. For internal circulation the omission is tolerable; for external submission, repository paths should be replaced by arXiv identifiers or at minimum working titles.

---

### m5 — Sections 2.2 and 2.3 overlap without clear hierarchy

**Assessment: RESOLVED.**

The bridging paragraph added at the end of Section 2.2 (see M2 above) simultaneously resolves this structural issue: it explicitly flags PN-D1.2 as preliminary (restricted to power-law ansatz) and directs the reader to Section 2.3 for the rigorous completion. The reader is no longer left wondering whether PN-P1.3 supersedes or merely supplements PN-D1.2.

---

### m6 — Beta function in PN-D6.1 lacks direct citation

**Assessment: RESOLVED.**

Section 6.2 item 2 now cites both [Jackiw1991DeltaPotentials] and [ManuelTarrach1994PertRenQM] alongside [RGFundamental]. Both are standard literature references with full bibliographic details. This exceeds what was requested and strengthens the paper's independence from the unpublished companion satellite.

---

## Verdict

**Recommendation:** ACCEPT

**Justification:** All three MAJOR issues from Round 1 have been fully and correctly resolved: the semiclassical status of the DeWitt-Morette law is now unambiguous (M1), the uniqueness argument in Section 2.2 now explicitly acknowledges its restriction and refers forward to the rigorous completion (M2), and the terminology for the d=3 renormalization is now correct (M3). All six MINOR issues have been resolved (m1, m2, m5, m6) or substantially addressed (m3), with the single residual concern on m4 (missing repository paths in internal references) being a publication logistics matter rather than a scientific deficiency. The paper is ready for acceptance.

---

## Residual Comment for Authors

The one remaining issue from m4 — the absence of repository paths or placeholder arXiv numbers in the internal companion references [Main], [RCPFoundations], [RGFundamental], [HalfDensityQFT] — should be resolved before external submission. This is not a condition of acceptance for the internal pub-track, but it is advisable to add explicit file paths (e.g., `paper/cornerstone/`) or draft-arXiv placeholders before submitting to any external venue.
