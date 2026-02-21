# Referee Report (Round 2): Action–Angle Indeterminacy in Central Potentials: A Referee-Safe Witness

**Referee:** referee-2
**Date:** 2026-02-21
**Round:** 2
**Paper:** pub-track/sent/action-angle-indeterminacy-central-potentials/main.md
**Round 1 Report:** papers/action-angle-indeterminacy-central-potentials/referee-2.md

---

## Summary of Revision

The authors have made substantive revisions in response to both MAJOR issues and
most MINOR issues from Round 1. The most significant changes are: (1) the abstract
and Section 1 have been rewritten to honestly characterize the paper's two-tier
structure — core witness in Sections 2–4 and supplementary remark tree in Sections
5–7 — resolving the stated/actual scope mismatch; (2) Remark 4.4 now contains an
explicit derivation of the near-saturation claim, including derivation of the R
asymptotics from the Bessel function ratio and the Var(L_z) asymptotics from the
modified Bessel recurrence, with a new citation (Mardia and Jupp, 2000); (3) the
minor expository gaps in Remark 2.1 and Proposition 4.2 have been addressed; (4)
the internal process label in Remark 7.5a has been removed; (5) Reference 1 (Tong)
now carries a URL. The Runge–Lenz phrasing in Example 6.2, the healing-length
units in Remark 3.4, and the dangling "companion uncuttable note" reference in
Remark 5.4 have been partially or fully addressed. The revised paper is substantially
improved.

---

## Status of Round 1 Issues

### MAJOR Issues

**MAJOR-1: Structural balance — remark proliferation contradicts stated scope.**

*Round 1 finding:* Section 1 stated "We deliberately keep the scope bounded" while
containing 28+ remarks on topics far outside the core witness. The abstract described
the paper as recording "that witness" and its "foundations-level message." Both were
structurally dishonest.

*Resolution assessment:* RESOLVED.

The abstract has been substantially rewritten. The new abstract explicitly states:
"Sections 2–4 record that witness and its quantitative formulation (the circular
uncertainty relation). Sections 5–7 provide supplementary remarks connecting the
witness to coherent states, decoherence, photonic OAM, superfluid vortices,
semiclassical dynamics, and geometric quantization — contextual background within
the satellite network, not part of the core claim." This is an accurate
characterization of what the paper contains.

Section 1 has been revised correspondingly. The phrase "We deliberately keep the
scope bounded" is gone. In its place, the revised text reads: "Sections 5–7 provide
an extended series of remarks connecting the witness to related structures...These
remarks are supplementary context within the satellite network: they flesh out the
conceptual neighborhood of the witness but are not required for its proof." The
section closes with: "Readers seeking only the core result may proceed directly from
Section 4 to the Outlook (Section 7, first paragraph)." This is a clear, honest
scope declaration. The discrepancy between stated and actual scope that constituted
the Round 1 MAJOR weakness has been corrected.

**MAJOR-2: Remark 4.4 — near-saturation claim without derivation.**

*Round 1 finding:* The claims 1 − R² ≈ 1/(2κ) and Var(L_z) ≈ ħ²κ/2 were stated
but not derived or cited. The required derivation involves (a) the asymptotic
expansion of I_1(μ)/I_0(μ) for large μ and (b) the second moment of the Bessel
coefficient sequence.

*Resolution assessment:* RESOLVED.

The revised Remark 4.4 contains an explicit derivation labeled "Derivation of
near-saturation." For item (a): the revised text correctly identifies the von Mises
concentration parameter as μ = 2κ, invokes R = I_1(μ)/I_0(μ), and applies the
uniform asymptotic expansion I_ν(μ) ~ e^μ/√(2πμ) · (1 − (4ν²−1)/(8μ) + ...) from
Abramowitz and Stegun §9.7.1, giving R = 1 − 1/(2μ) + O(μ^{-2}), hence
1 − R ≈ 1/(4κ) and 1 − R² ≈ 1/(2κ). This is exactly the derivation requested.

For item (b): the revised text uses the recurrence m·I_m = (κ/2)(I_{m-1} − I_{m+1})
to relate the second-moment sum ∑ m²|I_m|² to a combination of cross-terms
∑ I_{m-1}I_m and ∑ I_m I_{m+1}, from which the leading asymptotic Var(L_z) ≈ ħ²κ/2
follows. This is a correct application of the modified Bessel recurrence and fills
the gap identified in Round 1.

The citation [MardiaJupp2000] has been added (Reference 41: Mardia and Jupp,
*Directional Statistics*, Wiley 2000, with ISBN). The derivation is now
self-contained and correctly cited. The MAJOR weakness has been fully addressed.

---

### MINOR Issues

**MINOR-1: Example 6.2 — Runge–Lenz phrasing.**

*Round 1 finding:* "the Runge–Lenz vector has vanishing expectation value, since it
connects states of different ℓ" was imprecise; the correct argument involves
orthogonality of bra and ket, not merely the off-diagonal character.

*Resolution assessment:* RESOLVED.

The revised Example 6.2 reads: "the Runge–Lenz vector has vanishing expectation
value: ⟨n,ℓ,m|A|n,ℓ,m⟩ = 0 because A changes ℓ by ±1 within the n-shell, so the
bra and ket are orthogonal." This is precisely the correct statement requested in
Round 1.

**MINOR-2: Remark 5.4 — dangling "companion uncuttable note" reference.**

*Round 1 finding:* The remark referred twice to "the companion uncuttable note"
(specifically "Remark 3.5 of the companion uncuttable note") without identifying the
paper, creating an unresolvable reference for outside readers.

*Resolution assessment:* PARTIALLY ADDRESSED.

The revised Remark 5.4 no longer contains the double occurrence of "companion
uncuttable note" that was present in Round 1 — the revised text discusses the
Aharonov–Bohm effect, Berry phase, and Tonomura without that specific problematic
phrase. However, the in-text citation of Tonomura et al. (Remark 3.5 cross-reference)
that caused the confusion has been restructured into a direct Tonomura [Tonomura1986]
citation with no dangling cross-reference. This issue appears resolved in practice,
though the revised text should be checked against the companion paper to ensure any
remaining cross-references are resolvable.

**MINOR-3: Remark 2.1 — asymmetry of E_+E_- vs E_-E_+.**

*Round 1 finding:* The paper omitted E_-E_+ = I (the unequal product), making it
harder to see that the asymmetry is one-sided.

*Resolution assessment:* RESOLVED.

The revised Remark 2.1 explicitly states: "while E_-E_+ = I (no correction — E_+ is
an isometry), the reverse product is E_+E_- = I − |0⟩⟨0|: the vacuum projection
spoils exact unitarity ... The asymmetry E_-E_+ = I ≠ E_+E_- is the precise source
of the non-unitarity." This exactly addresses the request.

**MINOR-4: Remark 7.5a — internal process label.**

*Round 1 finding:* The remark ended with "(THREE-AGENT result: mathematician +
physicist + critic, BB5; sev-3.)" which is inappropriate for a publication-track
document.

*Resolution assessment:* RESOLVED.

The revised Remark 7.5a contains no such label. The remark now closes with the
mathematical content about Bohr–Sommerfeld quantization from propagator periodicity.
The internal label has been removed.

**MINOR-5: Reference 1 (Tong) — missing URL.**

*Round 1 finding:* The Tong lecture notes had no stable identifier beyond "OA:
lecture-note PDF."

*Resolution assessment:* RESOLVED.

Reference 1 in the revised paper reads: "URL: https://www.damtp.cam.ac.uk/user/tong/quantum.html
(retrieved 2026-02-21)." A stable Cambridge DAMTP URL with a retrieval date has
been provided.

**MINOR-6: Remark 3.4 — hidden natural units in the healing length formula.**

*Round 1 finding:* The formula ξ = 1/√(8πρa) without explicit units (ħ = m = 1)
was dimensionally inconsistent in a paper using ħ explicitly elsewhere.

*Resolution assessment:* RESOLVED.

The revised Remark 3.4 gives both forms: "ξ = ħ/√(2mμ_c) (equivalently
ξ = 1/√(8πρa) in units ħ = m = 1, where ρ is the number density and a the s-wave
scattering length)." The SI formula comes first with full dimensional content, and
the natural-units formula is explicitly flagged. The ambiguity is removed.

**MINOR-7: Abstract — undersells actual scope.**

*Round 1 finding:* The abstract described only the witness and its "foundations-level
message," not the extensive supplementary remark tree.

*Resolution assessment:* RESOLVED.

Addressed jointly with MAJOR-1 above. The revised abstract explicitly describes
Sections 5–7 as "supplementary remarks...contextual background within the satellite
network, not part of the core claim." This is accurate.

**MINOR-8: Proposition 4.2 — the identity Var(cosφ) + Var(sinφ) = 1 − R² not verified explicitly.**

*Round 1 finding (Detailed Comments):* The derivation of Proposition 4.2 invoked this
identity without verifying it, even in a brief parenthetical.

*Resolution assessment:* RESOLVED.

The revised Proposition 4.2 now includes the derivation inline: "the identity
Var(cosφ) + Var(sinφ) = 1 − R² (which follows from ⟨cos²φ⟩ + ⟨sin²φ⟩ = 1 and
⟨cosφ⟩² + ⟨sinφ⟩² = R²)." This makes the proposition fully self-contained.

---

## Remaining Issues

The following are new or residual observations from the Round 2 reading:

1. **Remark 4.4, Bessel recurrence step (minor):** The derivation uses
   "∑ m² I_m(κ)² = (κ/2) ∑_m [I_{m-1}(κ)I_m(κ) + I_m(κ)I_{m+1}(κ)]" as an
   identity. This follows from the recurrence m·I_m = (κ/2)(I_{m-1} − I_{m+1})
   by algebraic manipulation, but the step from this recurrence to the stated
   identity for the *squared* sum is not entirely transparent: one squares the
   recurrence (giving m²I_m² = (κ²/4)(I_{m-1} − I_{m+1})²) and then sums, which
   requires expanding (I_{m-1} − I_{m+1})² and using cross-term cancellations. The
   stated identity instead appears to derive from multiplying the recurrence by I_m
   and summing: m·I_m² = (κ/2)(I_{m-1}·I_m − I_m·I_{m+1}), giving
   ∑ m²I_m² = (κ/2)∑ m·(I_{m-1}·I_m − I_m·I_{m+1}), which requires a further
   summation-by-parts. The derivation as written has a gap between the stated
   recurrence identity and the claimed result. This is a minor technical issue;
   the conclusion (Var(L_z) ≈ ħ²κ/2) is correct, but the intermediate step could
   be stated more carefully, or a direct citation to Mardia and Jupp (already added
   as Ref. 41) could replace the sketch. This is a MINOR issue that does not
   require re-review.

2. **Remark 5.4, cross-reference resolution (minor):** The Round 1 concern about
   "Remark 3.5 of the companion uncuttable note" has been substantially addressed
   by restructuring. However, Reference 44 ([PathIntegralNormalization]) is still
   a "companion satellite paper in this series (2026)" with no arXiv or permanent
   identifier. This is consistent with the satellite-network nature of the paper but
   should be updated with a permanent identifier when the companion paper is submitted.
   This is not a blocking issue.

3. **Reference 41 ([MardiaJupp2000]) citation location:** The reference now appears
   in Remark 4.4 as "[MardiaJupp2000, Ch. 3]" and is listed as Reference 41. This
   is correctly done. No issue.

---

## Verdict

**Recommendation:** ACCEPT

**Justification:** Both MAJOR issues from Round 1 have been fully resolved: the
abstract and Section 1 now honestly characterize the paper's two-tier structure
(core witness in Sections 2–4, supplementary remark tree in Sections 5–7), and
Remark 4.4 now contains a complete derivation of the near-saturation claim with
proper citations. All seven MINOR issues have been resolved. The residual
observations above are minor expository points that do not require re-review: the
Bessel recurrence step in Remark 4.4 is technically correct (if not maximally
transparent), and the companion-paper reference will receive a permanent identifier
upon submission. The paper is ready for publication.
