# Referee Report (Round 2): Action–Angle Indeterminacy in Central Potentials: A Referee-Safe Witness

**Referee:** referee-1
**Round:** 2
**Date:** 2026-02-21
**Paper:** pub-track/sent/action-angle-indeterminacy-central-potentials/main.md
**Round 1 report:** papers/action-angle-indeterminacy-central-potentials/referee-1.md

---

## Summary of Revision

The authors have revised the paper substantially in response to the Round 1 report. All
eight MINOR issues from Round 1 have been resolved. Both MAJOR issues have been addressed,
though M1 is only partially resolved. The revised paper is considerably cleaner: dangling
cross-references have been eliminated, the near-saturation derivation has been completed,
missing citations have been added, terminological imprecisions have been corrected, and the
POVM formula has been disambiguated. The core result (Sections 1–4) remains correct and
well-attributed. The remark-heavy structure is now explicitly justified in the abstract and
in Section 1.

---

## Status of Round 1 Issues

### MAJOR Issues

**M1: Remark 7.5a — composition law material introduced incompletely.**

*Round 1 assessment:* Remark 7.5a was internally inconsistent (claiming t^{-n/2} does NOT
arise from the action-angle Van Vleck factor while also attributing it to energy-surface
curvature without proof), carried a draft tag indicating blackboard status, and introduced
material belonging to the path-integral-normalization paper.

*Status: PARTIALLY ADDRESSED.*

The revision removes the draft/blackboard tag and resolves the internal inconsistency: it now
clearly states that t^{-n/2} does NOT arise from the action-angle Van Vleck factor but from
the energy-surface curvature matrix Omega, and defers the full derivation explicitly to the
companion paper [PathIntegralNormalization]. The Bohr-Sommerfeld single-valuedness argument
is correctly separated into a distinct paragraph. The remark is shorter and no longer claims
to prove the curvature-determinant calculation.

However, the material remains outside the stated scope of this paper ("which variables can be
simultaneously sharp in stationary states"), and the composition integral formula still
implicitly assumes I labels the same torus on both legs of the composition — a non-trivial
requirement for non-flat tori that is not stated. The authors address this by redirecting the
reader to [PathIntegralNormalization], which is acceptable as a deferral strategy provided
that paper exists and is submitted. As of this review, [PathIntegralNormalization] is listed
in the references as a "companion satellite paper in this series (2026)" but does not appear
to be in the pub-track/sent directory. The remark remains a cross-thread intrusion, though
a now-harmless one: it makes no unsupported claims, identifies its own incompleteness, and
provides a pointer. This is acceptable but not ideal.

*Verdict on M1: Conditionally resolved.* The remark no longer introduces claims it cannot
support. The residual issue — out-of-scope material and an unreferenced companion paper — is
manageable. If the editors are satisfied that [PathIntegralNormalization] will be submitted
concurrently or imminently, M1 is closed. Otherwise, the authors should add a sentence
noting that [PathIntegralNormalization] is in preparation, or excise Remark 7.5a entirely.

---

**M2: Dangling cross-references to "companion uncuttable note."**

*Round 1 assessment:* Remark 5.4 referenced "Remark 3.5 of the companion uncuttable note"
and Remark 7.6 referenced "the companion uncuttable note," creating dangling external
dependencies on an unpublished paper.

*Status: FULLY RESOLVED.*

Both references have been removed from the revised manuscript. Remark 5.4 now stands
independently, with a self-contained statement that in a ring geometry only the azimuthal
action integral acquires the flux shift e·Phi/(2pi), with the radial and polar action
integrals unaffected — precisely the clarification that was also requested in the Round 1
detailed comments. Remark 7.6 has been integrated without any external forward-reference.
The additional correction to the EBK flux formula (restricting the flux shift to the
azimuthal action) is also verified to be correct.

---

### MINOR Issues

**m1: Near-saturation of Remark 4.4 without proof.**

*Status: FULLY RESOLVED.*

Remark 4.4 now contains a complete derivation. The approximation 1-R ≈ 1/(4kappa) is derived
from the uniform asymptotic expansion I_nu(mu) ~ e^mu/sqrt(2*pi*mu)*(1-(4nu^2-1)/(8mu)+...)
of Abramowitz and Stegun §9.7.1, giving R = I_1(mu)/I_0(mu) = 1-1/(2mu)+O(mu^{-2}) and
hence 1-R^2 ≈ 1/(2kappa) for large kappa. The action variance asymptotics Var(Lz) ≈ hbar^2
kappa/2 are derived via the Bessel recurrence m*I_m = (kappa/2)(I_{m-1}-I_{m+1}). The ratio
LHS/RHS is then shown explicitly to tend to 1. The derivation is self-contained and correct.

---

**m2: SU(2) Robertson bound phrasing in Remark 6.8.**

*Status: FULLY RESOLVED.*

Remark 6.8 now specifies "the SU(2) Robertson bound Delta J_1 * Delta J_2 >= (hbar/2)|<J_3>|
for the pair (J_1, J_2) perpendicular to the mean spin direction n-hat." The imprecision
about which pair of components saturates the bound is corrected.

---

**m3: Mandelstam-Tamm saturation for coherent states without proof (Remark 5.3).**

*Status: FULLY RESOLVED.*

Remark 5.3 now provides an explicit computation: Delta E = hbar*omega*|alpha| (from the
Poisson distribution with mean |alpha|^2) and Delta t_x = 1/(2*omega*|alpha|), giving
Delta E * Delta t_x = hbar/2. The intermediate step
Delta t_x = (Delta x)/(|d<x>/dt|) = sqrt(hbar/(2m*omega))/(|alpha|*omega*sqrt(hbar/(2m*omega)))
= 1/(2*omega*|alpha|) is spelled out. The claim is now fully proved within the remark.

---

**m4: Architectural imbalance — remark-heavy structure unjustified.**

*Status: FULLY RESOLVED.*

The abstract now explicitly describes Sections 5–7 as "supplementary remarks connecting the
witness to coherent states, decoherence...contextual background within the satellite network,
not part of the core claim." Section 1 echoes this: "These remarks are supplementary context
within the satellite network...Readers seeking only the core result may proceed directly from
Section 4 to the Outlook." This explicit framing addresses the concern adequately; the
structure is now self-justifying.

---

**m5: POVM formula of Remark 2.2 valid for Lz but not clearly separated from the
oscillator case.**

*Status: FULLY RESOLVED.*

Remark 2.2 now explicitly distinguishes the two cases in its opening sentence: "For the Lz
case (doubly-unbounded integer spectrum m in Z), the phase POVM on [0,2pi) is...". The
oscillator case is parenthetically flagged: "(For the oscillator number operator with
semi-bounded spectrum n >= 0, the analogous POVM requires more care: the 'phase states'
are not orthogonal, and the resolution of identity involves a subtlety related to the
vacuum-projection obstruction of Remark 2.1; see [Holevo1982] for the rigorous treatment.)"
This is the correct treatment: the Lz POVM formula is restricted to the domain where it is
clean, and the oscillator case is redirected to the authoritative reference.

---

**m6: Terminology "Heisenberg bound" used where "Robertson bound" or "minimum uncertainty
state" is more precise (Remark 6.5).**

*Status: FULLY RESOLVED.*

Remark 6.5 now reads "saturating the Robertson bound Delta X_1 * Delta X_2 = hbar/2 for the
dimensionless quadratures X_1, X_2...at every point (minimum-uncertainty states for these
quadratures)." The terminology is standardised and correct.

---

**m7: Missing citation for "Blattner, Kostant, Sternberg" metaplectic correction
(Remark 7.5).**

*Status: FULLY RESOLVED.*

Reference [GuilleminSternberg1977] (Victor Guillemin and Shlomo Sternberg, *Geometric
Asymptotics*, AMS Mathematical Surveys 14, 1977, ISBN 0-8218-1514-8) has been added as
entry #42 in the reference list. Remark 7.5 now cites "(Blattner, 1977; Guillemin and
Sternberg, 1977 [GuilleminSternberg1977])." Note: a specific Blattner (1977) reference is
cited in the text but does not appear as a separate entry in the list; the Guillemin-Sternberg
reference adequately covers the metaplectic correction for the purpose of this remark.
This is acceptable.

---

**m8: Vortex decay timescale claim too universal (Remark 3.4).**

*Status: FULLY RESOLVED.*

Remark 3.4 now reads "typically decay into n single-quantum vortices on millisecond
timescales under dilute-BEC conditions (the precise timescale depends on trap geometry,
condensate density, and interaction strength)." This is the correct hedge and directly
incorporates the suggested language from Round 1.

---

## Additional Items from Round 1 Detailed Comments

**Remark 5.4 / EBK flux formula:** The error noted in the Round 1 detailed comments — that
the flux shift was written as applying to all action integrals rather than only the azimuthal
one — has been corrected. The revised remark now explicitly notes "only the azimuthal action
integral acquires the flux shift e·Phi/(2pi); the radial and polar action integrals are
unaffected." Resolved.

**[TongQMLectures] URL:** Reference #1 now includes the URL
`https://www.damtp.cam.ac.uk/user/tong/quantum.html` and the retrieval date (2026-02-21).
Resolved.

**Remark 2.3 (Pegg-Barnett phrasing):** The Round 1 detailed comments noted that "the phase
operator is not defined at any single finite truncation, but as a controlled limit" is
slightly misleading because the operator IS defined at each finite truncation. The revised
text reads "the phase operator is not defined at any single finite truncation, but as a
controlled limit of well-defined finite-dimensional operators." This is still logically
awkward (the operators are well-defined at each truncation; what is being defined as a
controlled limit is the physical content, not the operators themselves). This is a minor
presentational issue that does not rise to the level of requiring further revision.

---

## Remaining Issues

1. **Remark 7.5a (residual concern from M1):** The companion paper [PathIntegralNormalization]
   is listed as a reference but does not appear to be in pub-track/sent. If this paper is
   genuinely in preparation and is part of the same publication batch, the current treatment
   of Remark 7.5a is acceptable. The editors should confirm the companion paper's status
   before final acceptance. If [PathIntegralNormalization] is not imminently submitted, the
   authors should either (a) make Remark 7.5a fully self-contained by including the
   curvature-determinant computation, or (b) remove the remark and note in the Outlook that
   representation dependence of t^{-d/2} is treated elsewhere.

2. **Remark 2.3 phrasing (residual from detailed comments):** The phrase "the phase operator
   is not defined at any single finite truncation, but as a controlled limit of well-defined
   finite-dimensional operators" remains logically reversed. This is presentational only and
   does not affect correctness. No further action required unless the authors wish to clarify.

---

## Verdict

**Recommendation:** MINOR REVISION (conditional on M1 clarification)

**Justification:** All eight MINOR issues from Round 1 are fully resolved. MAJOR issue M2
(dangling cross-references) is fully resolved. MAJOR issue M1 (Remark 7.5a) is substantially
addressed: the remark no longer makes unsupported claims and defers correctly to the companion
paper. The sole remaining concern is whether [PathIntegralNormalization] is a real companion
paper that will be submitted alongside this one, or a forward reference to unpublished work.
If the editors can confirm concurrent submission of that paper, this report recommends ACCEPT.
If not, a single additional sentence in Remark 7.5a acknowledging that [PathIntegralNormalization]
is in preparation, or excision of the remark, would close the issue without requiring a
further review round. The core result is correct, well-attributed, and publication-ready.
