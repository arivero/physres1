# Referee Report: Refinement Compatibility as a Foundational Principle

**Referee:** referee-2
**Date:** 2026-02-21
**Paper:** pub-track/sent/rcp-foundations/main.md

---

## Summary

The paper proposes the Refinement Compatibility Principle (RCP) as a unifying
meta-framework for classical mechanics, quantum mechanics, and renormalization.
RCP is organised into three operational channels — partition compatibility,
representation compatibility, and scale compatibility — each of which demands
that physical predictions remain in an admissible family after a controlled
transformation (time subdivision, operator ordering change, or RG scale shift).
The framework is anchored by three worked examples (Noether's theorem, ordering
ambiguity, 2D delta renormalization) and by a "crown witness" theorem (Theorem
P4.2) asserting that the semigroup composition law alone forces the existence
and value of Planck's constant. The paper is explicitly a satellite/foundational
companion to a longer chain of work; it refers to four or five further satellite
papers in preparation.

---

## Strengths

- The three-channel decomposition (partition / representation / scale) provides
  a genuinely useful conceptual scaffold; it is operationally stated and links
  naturally to standard machinery (Noether, Stone, RG).
- The 2D delta renormalization example (Sections 5.1–5.5) is technically correct
  and pedagogically strong: the logarithmic divergence, the renormalized coupling,
  the beta function, and dimensional transmutation are all treated cleanly.
- Remark RCP-P6.1 (axiom reduction: composition is the single master axiom, with
  identity and dimensional homogeneity derived) is the paper's sharpest conceptual
  contribution and is clearly argued.
- The regularity remarks (RCP-R6.2, RCP-R6.3) show appropriate mathematical
  hygiene by spelling out the Kato–Rellich and Stone's-theorem conditions that the
  main theorem tacitly relies on.
- The Efimov remark (RCP-R5.1) is a genuine strengthening of the scale-channel
  section: it provides a qualitatively different (limit-cycle vs. fixed-point) RG
  witness and gives a PSL(2,R) group-law interpretation of the three-body RG step.
- The paper is largely well-written and the argument chain is followable for a
  competent reader.

---

## Weaknesses

### MAJOR

**M1. Theorem P4.2: the forcing of κ = ℏ is not actually proved in this paper.**

Section 6 presents Theorem P4.2 as the "crown witness" and its central claim is
that composition forces κ = ℏ (item 5 of the theorem statement). However, the
paper contains no proof of this claim; it defers entirely to "[Main]" which is
described as "in preparation." This is a fundamental gap: the paper's primary
advertised result is present only as an unproven assertion citing an absent
companion. The result may well be true, but as written the reader is given the
theorem statement, a list of nine conclusions, and two explanatory remarks, with
zero derivation. For a paper that explicitly calls this the "RCP crown witness"
and builds Sections 7.1 and 7.2 on its conclusions, the absence of even a sketch
proof (or a self-contained statement of what the Cauchy functional equation
argument actually does) is a critical deficiency. Either a proof sketch sufficient
to verify the logic must be included, or the theorem must be clearly labelled
"Theorem (proved in [Main]; assumed here)" and the paper's contribution
re-scoped accordingly.

**M2. The central RCP equation (Section 1.2) is dimensionally and
type-theoretically ambiguous.**

The operational form states:
$$\mathcal{O}_{h,\theta} = \mathcal{O}_{h',\tau(\theta)} \circ \mathcal{T}.$$
But O_{h,θ} is described as a "prediction" (a number, or map from states to
numbers), while T is described as a transformation (an automorphism of
configuration/phase space or parameter space). The composition ∘ is undefined:
what category are these objects in? If O is a map from states to real numbers,
then O ∘ T makes sense only if T acts on states before O evaluates them. If O
maps (initial conditions) → (final conditions), then T should be a morphism in
the same category. Neither interpretation is stated. In the Noether example, the
"compatibility datum" τ_C(θ) is the Noether charge, so here θ is not a fixed
parameter bundle but a field on phase space — a very different type from the
coupling g_R(μ) that plays the role of θ in the scale channel. The paper should
either (a) give a precise categorical or functional-analytic definition of the
objects in the master equation, or (b) explicitly acknowledge that O, T, and τ
play different roles in each channel and that the master equation is schematic.
As written, the impression that Section 1.2 is a rigorous unified equation is
misleading.

**M3. The representation-channel "crown witness" (Section 7.1, item 2) is
weaker than presented.**

The partition-channel witness is P4.2 (composition forces κ = ℏ — a strong
uniqueness result). The scale-channel witness is the fixed-point + Efimov
limit-cycle pair (existence of RG-invariant observable, a concrete demonstration).
By contrast, the "representation-channel crown witness" offered in Section 7.1 is
only the observation that domain data must be included in θ. This is a correct
and useful point, but it is not a "forcing" result in the same sense as P4.2 or
the RG beta function: it establishes that representation changes can fail if
domain data is omitted, not that representation compatibility forces a unique new
structural constant or qualitatively new physics. The asymmetry between the three
"crown witnesses" is significant and is not acknowledged. If no stronger result is
available for the representation channel, the paper should state this honestly
rather than presenting three witnesses as if they were comparably strong. The
Padé reconstruction claim (Section 7.1, item 3, attributed to the scale channel)
is also under-justified: no formula is given, and the claim that Padé [0/1] of a
contact expansion "exactly recovers the Yukawa mediator pole" is stated without
proof or citation. This needs either a derivation or a reference.

### MINOR

**m1. Noether example (Sections 3.1–3.3): the RCP interpretation overstates novelty.**

The observation that Noether's theorem is about symmetry surviving
discretization/refinement is correct, but it is essentially the content of Noether's
theorem itself, not an RCP deduction from it. The paper acknowledges this in the
final paragraph of 3.3 ("the existence proof is Noether's, not RCP's"), but the
earlier framing ("the Noether charge is the compatibility datum τ_C(θ)") still
reads as if RCP is doing the work. The example would be more honest if it were
framed from the outset as "RCP provides a language in which Noether's theorem is
the partition-compatibility statement" rather than as a worked witness.

**m2. The beta-function sign in Section 5.3.**

The beta function is stated as β(g_R) = (m/πℏ²) g_R². This is positive, implying
the coupling grows in the UV (UV-free theory is excluded), which is the correct
result for the 2D contact interaction. However, the sign of d(1/g_R)/dμ is
written as −m/(πℏ²) (negative), so as μ increases, 1/g_R decreases, i.e., g_R
increases with μ. This is consistent, but the sign convention in the relation
μ d/dμ (1/g_R) = −m/(πℏ²) should be checked against the standard Rajeev/Kaplan
sign convention, which is sometimes quoted as −m/(2πℏ²) depending on whether the
loop integral prefactor is written with a factor of 2. The paper should cite a
definitive source (e.g., Kaplan 1995, or Beane–Bedaque–Haxton–Phillips) for the
numerical coefficient and confirm the factor of 2π vs. π.

**m3. PSL(2,R) claim in Remark RCP-R5.1 lacks an accessible reference.**

The claim that RG steps for the three-body problem form a PSL(2,R) group is
attributed to arXiv:2509.04746. This is a recent preprint, and the connection
between Möbius transformations and the three-body RG is non-standard enough to
warrant at least one sentence of explanation (how does the three-body T-matrix
respond as a Möbius map?). The remark is technically interesting but as written
it asserts a non-obvious mathematical structure without any derivation or
accessible secondary reference.

**m4. A5 (dimensional homogeneity) is labelled "optional" without discussion.**

Axiom A5 is the only axiom marked "(optional)" but the paper does not explain
what RCP looks like without A5, or in what physical contexts A5 fails. If A5 is
optional, at least a sentence should say whether any of the worked examples or
Theorem P4.2 require it (the text says A5 is not needed for P4.2 since dimensional
consistency is derived from A1, which is welcome, but this should be stated
explicitly in the axiom list, not only in later remarks).

**m5. Section 7.3, question 1 (CPT as compatibility): no reference to existing work.**

The suggestion that CPT symmetry might arise as a "time-reversal compatibility"
RCP closure condition is interesting. The CPT theorem is usually derived from
Lorentz invariance and locality in local QFT (Streater–Wightman). If the claim
is that RCP offers a new route to CPT, even as a conjecture, it should cite the
standard results and flag what new work is needed to make the RCP version precise.

**m6. Reference list is sparse for the scope claimed.**

The paper claims to unify classical mechanics, quantum mechanics, and
renormalization as RCP instances. The reference list includes only 11 entries:
Arnold (classical mechanics), Landsman (deformation quantization), three
experiment/Efimov papers, one arXiv preprint, and five companion papers in
preparation. Missing references that a reader would expect:
- Atiyah–Segal axioms (cited in Section 7.3 but not listed as a reference)
- Kontsevich formality theorem (cited in Proposition RCP-Rep-P1.1 but not listed)
- Stone's theorem (cited in several remarks but no textbook reference)
- Kato–Rellich theorem (cited in R6.2 but no reference)
- Hille–Yosida theorem (cited in RCP-R7.2 but no reference)
- A standard renormalization/RG textbook (e.g., Collins 1984, or Peskin–Schroeder
  for the scale-channel examples)
- Kaplan 1995 or similar for the 2D delta renormalization beta function

---

## Verdict

**Recommendation:** MAJOR REVISION

**Justification:** The paper has a sound conceptual programme and the worked
examples are largely competent, but two critical issues prevent acceptance. First,
the central theorem (P4.2, "composition forces ℏ") is presented without any proof
or proof sketch, making the paper's primary advertised result unverifiable without
access to an as-yet-unpublished companion. Second, the master RCP equation is
type-theoretically ambiguous in a way that undermines the claim of a rigorous
unified framework. The representation-channel crown witness is also significantly
weaker than presented. All three issues are fixable — by including a proof sketch
of P4.2, by clarifying the categorical setting of the master equation, and by
honestly calibrating the three crown witnesses against each other — but they
require substantive revision.

---

## Detailed Comments

**Section 1.2 (master equation):** The notation O_{h,θ} ∘ T requires a definition
of the category. Suggest replacing the single equation with two lines: (i) the
informal statement (predictions must close under parameter updates), and (ii) an
explicit statement that the precise formulation is channel-dependent and spelled
out in Sections 3–5.

**Section 2.1, A2:** The remark that A2 is not an independent axiom (derived from
A1) is welcome but the axiom list still numbers it A2. If it is not an axiom, it
should be clearly called "Lemma A2 (derived)" or "Observation A2" to avoid
confusion.

**Section 3.3, "RCP witness":** The claim "without the Noether charge, partition
refinement would break symmetry" is true in the sense that the conservation law
would not be tracked, but partition refinement of the action functional does not
break Noether conservation — conservation holds at every partition level if the
action has the symmetry at each level. The RCP interpretation here conflates "the
charge must be tracked as a bookkeeping datum" with "compatibility would fail."
This should be made more precise.

**Section 6.1, item 5 ("A structural constant κ with [κ] = [action], necessarily
κ = ℏ"):** This is the paper's central claim. The word "necessarily" is very
strong. The argument as sketched is: dimensional analysis forces [κ] = [action],
and the physical setup (mass m, action-based dynamics on R^d) provides no other
action-dimensional quantity, so κ must be a new fundamental constant identified
with ℏ. This argument is correct as far as it goes, but "necessarily κ = ℏ" says
not just that there exists an action-dimensional constant, but that it equals the
observed ℏ. That identification requires the physical interpretation (matching the
spectrum of the hydrogen atom, for instance), which is beyond what composition
alone provides. The theorem statement should distinguish "there must exist an
action-dimensional parameter κ" (which composition does force) from "κ = ℏ"
(which requires identification with experiment).

**Section 7.1, item 3 (Padé reconstruction):** The sentence "Padé [0/1] applied
to contact expansion C_0 + C_2 q^2 exactly recovers the Yukawa mediator pole
−g²/(4πm q²) from two Wilson coefficients" requires a derivation or citation.
As stated it is an assertion. This should be either proved in a few lines (it is
likely a simple rational approximation calculation) or cited to [RGFundamental].

**Section 7.3, Atiyah–Segal connection:** This is an important and credible
claim — the composition axiom A1 is the Atiyah–Segal functoriality condition for
0+1-dimensional QM. A reference to the original Atiyah (1988) or Segal axioms
paper should be added to the reference list.

**References:** Add entries for at minimum: Atiyah (1988) TQFTs and Segal (1988),
Kontsevich (2003) formality, a standard functional analysis text for Stone and
Hille–Yosida (Reed–Simon vol. I–II would suffice), and a renormalization standard
reference (Collins 1984 or Peskin–Schroeder).
