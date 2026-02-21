# Referee Report: Refinement Compatibility as a Foundational Principle (Round 2)

**Referee:** referee-2
**Round:** 2 (re-review after MAJOR REVISION)
**Date:** 2026-02-21
**Paper:** pub-track/sent/rcp-foundations/main.md
**Round 1 report:** papers/rcp-foundations/referee-2.md

---

## Summary of Revision

The authors have revised the paper in response to all three MAJOR issues and all six MINOR
issues raised in Round 1. The revision is substantial: a proof sketch for P4.2 has been
added, the master equation has been annotated with a type note, the representation-channel
witness asymmetry has been explicitly acknowledged, the reference list has been expanded
from 11 to 18 entries, and numerous other clarifications have been made. This round
assesses whether the revisions adequately resolve the Round 1 concerns.

---

## Assessment of MAJOR Issues

### M1. Theorem P4.2: proof sketch or proper reframing as hypothesis

**Round 1 finding:** The theorem was presented as the paper's "crown witness" but contained
no derivation; it deferred entirely to the companion [Main] (in preparation). The request
was for either a proof sketch sufficient to verify the logic, or a clear relabelling as
"assumed here."

**Revision:** The theorem statement has been revised in two respects. First, the header now
explicitly reads: "Theorem (from [Main] Proposition P4.2; assumed here as hypothesis — see
proof sketch below)." Second, a proof sketch has been added covering the simplest but most
important implication: that composition forces the t^{-d/2} normalization. The sketch
proceeds by Fourier transform, the Cauchy multiplicative functional equation, the uniqueness
of its measurable solutions, and then dimensional analysis to fix the quadratic form of
φ(p). The full Lévy exclusion is referenced to [TangentGroupoidBridge] Remark TG-R1.1, and
the remaining P4.2 conclusions (exponential weight, i-epsilon uniqueness, κ=ℏ
identification) are attributed to [Main] and [TangentGroupoidBridge] Proposition TG-P1.1,
with a note that a self-contained derivation using groupoid convolution appears there.

Furthermore, item 5 of the theorem now makes a careful and important distinction:
composition forces the existence of a structural constant κ with [κ] = [action]; the
identification κ = ℏ requires (a) the dimensional basis {m, L, T} of the physical setup and
(b) experimental identification (the hydrogen spectrum is named explicitly). This addresses
the Round 1 detailed comment on "necessarily κ = ℏ" — the word "necessarily" in the
original item 5 has been replaced by a two-step formulation.

**Assessment: M1 substantially resolved.**

The proof sketch genuinely allows a competent reader to verify the core Cauchy functional
equation step independently. The theorem is now correctly labelled as an assumed hypothesis
(proved in companion work) rather than a self-contained result. The distinction between
"composition forces an action-dimensional κ" and "κ = ℏ requires experimental
identification" is clearly and correctly drawn in item 5.

One residual concern: the proof sketch covers the d/2 exponent but the text asserts that
"the remaining P4.2 conclusions follow by similar dimensional and functional-equation
arguments developed in [Main]." This is still a forward reference for most of the nine
conclusions, but given that (a) the paper now correctly labels P4.2 as assumed, (b) the
most non-trivial step (the Cauchy functional equation argument) is now sketched, and (c) the
reader has a clear pointer to two companion papers for the rest, this is acceptable for a
satellite/foundational companion paper. The paper no longer misrepresents the epistemic
status of the theorem.

---

### M2. Type ambiguity in the master RCP equation

**Round 1 finding:** The equation O_{h,θ} = O_{h',τ(θ)} ∘ T was presented as a rigorous
unified formula but the types of O, T, and τ differ across channels in incompatible ways:
O is a number in one channel, a quantization map in another, and a scattering amplitude in a
third. The composition ∘ was undefined. The request was either for a precise
categorical/functional-analytic definition, or an explicit acknowledgement that the equation
is schematic.

**Revision:** Immediately following the master equation in Section 1.2, the authors have
added a block entitled "Note on types" that reads:

> "This equation is a schematic unifying statement; the precise mathematical objects O, T,
> and τ differ across channels. In the partition channel, O is a transition kernel (map from
> initial to final configurations), T is time subdivision, and τ is the Noether charge
> (Section 3). In the representation channel, O is a quantization map (classical symbols to
> operators), T is an ordering change, and τ includes domain data (Section 4). In the scale
> channel, O is a scattering amplitude, T is a cutoff shift, and τ is the RG flow
> (Section 5). The channel-specific formulations are spelled out in Sections 3–5."

**Assessment: M2 resolved.**

This note does exactly what Round 1 requested: it explicitly states that the master equation
is schematic and provides the concrete type interpretation for each channel. The impression
that Section 1.2 offers a single rigorous unified formula is no longer present. The fix is
concise and appropriately placed. A purely categorical formulation was offered as one of two
acceptable options in Round 1; the authors chose the other (explicit schematic
acknowledgement), which is equally valid.

---

### M3. Representation-channel witness asymmetry

**Round 1 finding:** The three "crown witnesses" were presented as comparably strong, but
the representation-channel witness (domain data must be included in θ) is structurally
weaker than the partition-channel witness (P4.2 forces κ = ℏ uniquely) and the scale-channel
witness (fixed-point + limit-cycle RG pair). The asymmetry was not acknowledged. The Padé
reconstruction claim (Section 7.1, item 3) was asserted without proof or citation.

**Revision:** The revision addresses this issue in several places:

(a) Section 7.1, item 2 now contains an explicit caveat: "Note on relative strength: This
witness is weaker than the partition-channel witness (P4.2): it establishes that
representation changes can fail if domain data is omitted, but it does not force a unique
new structural constant or qualitatively new physics."

(b) A new Remark RCP-R7.2 ("Reversibility signature of RCP channels") introduces a
systematic classification of the three channels' forcing strength via their algebraic
structure: partition channel → Stone's theorem (strongly continuous unitary group, unique
forcing); scale channel → Hille-Yosida theorem (contraction semigroup, existence but
functional form underdetermined); representation channel → Morita equivalence (category-
invertible, classified gauge family, intermediate). The hierarchy is stated as:
Stone (group, unique) ⊃ Morita (category-invertible, classified gauge family) ⊃ Hille-Yosida
(semigroup, existence only).

(c) A new Proposition RCP-Rep-P1.1 ("Representation channel forcing hierarchy") formalizes
the three-layer structure for the representation channel: (C) alone forces existence of a
star-product (Kontsevich formality); (C) + unitarity forces the Morita equivalence class;
(C) + unitarity + Euclidean symmetry selects the Moyal product uniquely within the class on
flat space.

(d) Section 7.1, item 3 (Padé reconstruction) now includes an inline derivation: "C₀/(1 -
(C₂/C₀)q²) is the [0/1] Padé approximant, whose pole at q² = C₀/C₂ gives the mediator
mass," with a reference to [RGFundamental].

**Assessment: M3 substantially resolved.**

The asymmetry between the three crown witnesses is now not only acknowledged but turned into
a positive structural contribution: Remark RCP-R7.2 and Proposition RCP-Rep-P1.1 give a
principled algebraic explanation of why the forcing strengths differ, grounded in the
Stone/Morita/Hille-Yosida hierarchy. This is a genuine improvement over both the original
and what Round 1 requested (which was only honest acknowledgement). The representation
channel is now presented as "moderate (classified gauge family)" rather than as comparably
strong to P4.2, which is accurate.

The Padé claim has been given a brief inline derivation sufficient to verify the rational
approximation step, with the fuller treatment in [RGFundamental]. This satisfies the Round 1
request.

The only minor residual point: Proposition RCP-Rep-P1.1 still relies on [Kontsevich2003]
and implicitly on Morita equivalence machinery for deformation quantizations (the latter is
attributed to results associated with Rieffel and others, but no specific reference is
given for the Morita-equivalence characterisation of star-products sharing the same classical
limit). This is not a blocking concern — the claim is well-known in the deformation
quantization literature — but a citation to Rieffel or to Bursztyn-Waldmann would
strengthen it.

---

## Assessment of MINOR Issues

### m1. Noether example: novelty framing

**Round 1:** The framing "RCP is doing the work" was misleading; the example should be
presented as "RCP provides a language for Noether's theorem."

**Revision:** Section 3.3 has been revised to say explicitly: "RCP provides a language in
which the Noether charge Q is the compatibility datum τ_C(θ)..." The final paragraph already
read "the existence proof is Noether's, not RCP's" in the original; the revised framing in
the body of 3.3 now matches this closing statement. A reference to [MarsdenWest2001] has
also been added for the discrete Noether theorem in the variational integrator setting.

**Assessment: m1 resolved.**

### m2. Beta function sign convention and Kaplan reference

**Round 1:** The numerical coefficient in β(g_R) should be checked against Rajeev/Kaplan
sign conventions (factor of 2π vs. π), and a definitive source should be cited.

**Revision:** Reference [Kaplan1995] has been added (entry 18 in the revised list: Kaplan
1995/1997, nucl-th/9610052, "Few-body systems with short-range interactions"). The beta
function is stated as β(g_R) = (m/πℏ²)g_R². The coefficient m/(πℏ²) — rather than
m/(2πℏ²) — corresponds to the convention where the loop integral is written without a factor
of 1/2 in the angular integration (consistent with the I(E;Λ) formula in Section 5.2 where
the 2D angular integral gives a factor of 2π absorbed into (2π)² in the denominator, giving
m/(2πℏ²) per loop; the renormalization condition adds a factor of 2 from the cutoff
differentiation). The Round 1 concern about the factor of 2π vs. π deserves a comment in
the paper itself, since the two conventions are both present in the literature and the
derivation in Section 5.3 proceeds from the I(E;Λ) expression, which uses the coefficient
m/(2πℏ²). Following the chain: μ d/dμ (1/g_R) = μ d/dμ [−(m/2πℏ²)ln(Λ²/μ²)]_renorm =
−m/(πℏ²) × (1/2) × (−2) = m/(πℏ²) after the chain-rule application with a factor of 2
from the square. The arithmetic is internally consistent. The addition of [Kaplan1995]
satisfies the primary request for a definitive source citation.

**Assessment: m2 substantially resolved.** The Kaplan reference is now present. A one-sentence
note in Section 5.3 confirming the factor-of-2 origin would be ideal but is not blocking.

### m3. PSL(2,R) claim: accessible reference and explanation

**Round 1:** The claim that RG steps form PSL(2,R) needed at least one sentence of
explanation (how does the three-body T-matrix respond as a Möbius map?).

**Revision:** Remark RCP-R5.1 has been substantially expanded. The revised version explains:
the RG step Λ→Λ' acts on coupling space as a real Möbius transformation λ₃ → (aλ₃+b)/
(cλ₃+d) with ad−bc=1; these form PSL(2,R) closed under composition; the limit cycle
corresponds to a hyperbolic element (|tr|>2, two real fixed points); composition of two RG
steps equals composition of two Möbius maps. The reference [BedaqueHammerVanKolck1999]
(now entry 10) has been added for the original RG treatment of the Efimov limit cycle, and
[arXiv:2509.04746] is retained for the PSL(2,R) identification.

**Assessment: m3 resolved.**

### m4. A5 (optional) without explanation

**Round 1:** A5 is labelled "optional" without explaining what RCP looks like without A5,
and the axiom list did not explicitly state that P4.2 does not require A5.

**Revision:** Axiom A5 in Section 2.1 now reads: "A5 is optional because it is not needed
for any of the worked examples or for Theorem P4.2 (where dimensional consistency is derived
from A1 alone; see Remark RCP-P6.1). Without A5, RCP still functions as a closure
principle; A5 restricts the class of allowed parameter bundles but does not add new forcing
content." The statement that Theorem P4.2 does not require A2 as input is now also made
explicit in the Corollary A2 entry.

Additionally, the Round 1 detailed comment about A2 being mislabelled as an axiom when it
is derived has been addressed: A2 is now clearly labelled "Corollary A2 (Identity limit —
derived from A1)" in both the heading and the body text.

**Assessment: m4 resolved.**

### m5. CPT as compatibility: no reference to existing work

**Round 1:** Section 7.3 question 1 (CPT as RCP closure) should cite the standard CPT
theorem and flag what new work is needed to make an RCP version precise.

**Revision:** The revised Section 7.3 now reads: "the standard CPT theorem derives from
Lorentz invariance and locality in local QFT [OsterwalderSchrader1973]; an RCP derivation
would need to show that partition compatibility forces CPT without presupposing Lorentz
invariance." Reference [OsterwalderSchrader1973] (Osterwalder-Schrader, Commun. Math. Phys.
1973) is now entry 14 in the reference list.

**Assessment: m5 resolved.**

### m6. Reference list sparse for scope claimed

**Round 1:** Seven missing references were specifically identified: Atiyah-Segal,
Kontsevich, Stone's theorem, Kato-Rellich, Hille-Yosida, a renormalization standard
reference, and Kaplan 1995.

**Revision:** The reference list has grown from 11 to 18 entries. New additions include:
[Kontsevich2003] (entry 13), [OsterwalderSchrader1973] (entry 14), [Atiyah1988] (entry 15),
[MarsdenWest2001] (entry 16), [ReedSimon1975] (entry 17, covers Stone, Kato-Rellich,
and Hille-Yosida in a single volume), [Kaplan1995] (entry 18), and [Noether1918] (entry 12).

The original Round 1 list also called for "a standard renormalization/RG textbook (e.g.,
Collins 1984, or Peskin-Schroeder)." This specific entry is still missing: [ReedSimon1975]
covers functional analysis but not renormalization; [Kaplan1995] covers the specific 2D
beta function; but a general renormalization textbook (Collins, Peskin-Schroeder, Zinn-Justin)
is still absent. The satellite paper [RGFundamental] is listed as the scale-channel companion,
which partially mitigates this, but for the scope claimed (unification of QM and
renormalization) a standard external reference remains advisable.

**Assessment: m6 substantially resolved.** All specifically named missing references are
now present. The absence of a general renormalization textbook is a minor residual gap.

---

## Overall Assessment

The revision is thorough and addresses all three MAJOR issues and all six MINOR issues raised
in Round 1. The quality of the responses is notably high: M3 in particular has been not
merely acknowledged but converted into a new structural contribution (Remark RCP-R7.2 and
Proposition RCP-Rep-P1.1 on the Stone/Morita/Hille-Yosida hierarchy). The paper is now
intellectually honest about the epistemic status of P4.2 (assumed from companion, with
sketch proof), about the schematic nature of the master equation, and about the relative
forcing strength of the three channels.

Remaining concerns are all minor:

1. The Padé reconstruction inline derivation is sufficient but the full treatment is in
   [RGFundamental] (in preparation); this is acceptable given the satellite structure.
2. The Morita-equivalence step in Proposition RCP-Rep-P1.1 would benefit from a citation
   to Rieffel or Bursztyn-Waldmann.
3. A general renormalization textbook reference is still missing from the list.
4. The beta-function coefficient factor-of-2 origin could be stated explicitly in Section 5.3,
   but the arithmetic is internally consistent.

None of these rise to MAJOR level. The paper's conceptual programme is sound, its examples
are correct, and the revision has converted its most significant weakness (epistemic
overclaiming on P4.2 and crown-witness parity) into genuine new structure.

---

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** All three MAJOR issues have been substantively resolved; the revision has
improved the paper beyond what was minimally required, particularly in the addition of the
Stone/Morita/Hille-Yosida classification of forcing strength. Three minor gaps remain: a
missing general renormalization reference, a missing Morita-equivalence citation in
Proposition RCP-Rep-P1.1, and a brief note on the beta-function coefficient that would
preempt reader confusion. These do not require re-review; a single revision pass should
suffice, after which the paper is suitable for acceptance.

---

## Detailed Comments for Final Revision

**Section 5.3 (beta function coefficient):** Add one sentence after the beta function
display: "The coefficient m/(πℏ²) follows from the loop integral I(E;Λ) in Section 5.2,
where the 2D angular integration contributes a factor of 2π absorbed into (2π)², and the
differentiation of the ln(Λ²/μ²) = 2ln(Λ/μ) term contributes an additional factor of 2;
see [Kaplan1995] for the standard derivation." This preempts the factor-of-2π vs. π
confusion that appears in different renormalization conventions.

**Section 7.1, Proposition RCP-Rep-P1.1, Layer 2:** Add a citation for the Morita-equivalence
characterisation of deformation quantizations with the same classical limit. Suitable
references: Rieffel (1993) for C*-algebraic Morita equivalence in the context of quantization,
or Bursztyn-Waldmann (2002), "The characteristic classes of Morita equivalent star products
on symplectic manifolds," Commun. Math. Phys. **228** (2002), 103–121. One reference
suffices; without it the claim in Layer 2 is asserted without support.

**Section 8 (references):** Add one standard renormalization reference, e.g.:
[Collins1984] J. C. Collins, *Renormalization*, Cambridge University Press, 1984. This is
appropriate for the scale-channel sections (5.1–5.5) and the general scope claim in the
abstract. The satellite paper [RGFundamental] covers RCP-specific aspects but readers
unfamiliar with renormalization need an external entry point.

**Section 7.3, question 2 (categorical structure):** The added remark that "this
identification is complete for 0+1-dimensional quantum mechanics... the extension to
d+1-dimensional QFT, where A4 enters as a condition on the infinite-dimensional target
category, remains open" is a welcome clarification of the limits of the claim. No change
needed.

**Section 6.1, Remark RCP-P6.1 (Axiom reduction):** The remark is now substantively correct
and clearly written. No change needed.
