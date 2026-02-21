# Referee Report: Groupoid Composition and Quantization: The Pair-Groupoid Bridge

**Referee:** referee-1
**Date:** 2026-02-21
**Paper:** pub-track/sent/tangent-groupoid-bridge/main.md

---

## Summary

The paper argues that the path-integral sewing law is an instance of groupoid convolution
on the pair groupoid G = M × M, and that the d/2 normalization exponent is forced by
groupoid-level dimensional analysis rather than being a post-hoc Gaussian convention. The
Connes tangent groupoid is introduced to connect this composition structure to deformation
quantization via a smooth ℏ-parametrized family of groupoids. The paper then surveys
Lackman's recent non-perturbative construction of the Kontsevich star product as a twisted
convolution algebra of a geometrically quantized Lie 2-groupoid, and maps the groupoid
picture onto the project's Refinement Compatibility Principle (RCP) channels. A residual
Stone's-theorem gap for singular potentials is identified and declared irreducible.

---

## Strengths

- The identification of the sewing law as groupoid convolution is clean and conceptually
  well-motivated. The formal step from "slicing argument" to "element of a convolution
  algebra" is the paper's core structural contribution and it is executed clearly.

- Proposition TG-P1.1 (d/2 from groupoid composition) is correctly stated and its proof
  sketch is sound: Fourier multiplicativity → exponential form, then rotation symmetry +
  dimensional analysis → quadratic dispersion → Gaussian normalization. The logical
  sequence is unambiguous.

- The table in Section 4.2 mapping the three RCP channels (partition, representation,
  scale) onto groupoid structures is useful and honest: the scale channel is flagged as
  not directly encoded in the tangent groupoid, avoiding overclaiming.

- Remark TG-R1.3 (partition channel is primary) correctly orders the logical structure:
  the sewing law is automatic from the convolution algebra, while ℏ-fiber selection is
  secondary. This matches the RCP hierarchy.

- Remark TG-R1.2 (Wick rotation as A3 representation-channel operation) is an interesting
  structural observation: both Minkowski (c=i) and Euclidean (c=−1) kernels satisfy the
  groupoid-algebraic hypotheses, so the choice between them is a representation choice,
  not forced by composition. This is a non-trivial and useful point.

- Section 5.3 / Remark TG-R5.1 resolves the half-density question (TG-Q1) satisfactorily:
  bi-half-density kernels compose via Lebesgue pairing at the intermediate slot, the d/2
  normalization is unchanged, and the Van Vleck factor receives a geometric interpretation
  as intrinsic to the bi-half-density structure.

- The Stone's theorem gap (Section 6.1) is correctly identified as irreducible: domain
  specification for unbounded operators is prior to any groupoid-algebraic construction,
  and the paper does not hide this limitation.

- The bibliography is appropriately targeted: Connes 1994, Landsman 2002, Lackman 2023
  and 2024, Cattaneo-Felder 2000, Hawkins 2008 are all relevant and correctly cited.

---

## Weaknesses

### MAJOR

- **Proposition TG-P1.1 overstates its independence from the companion paper.** The
  proof sketch references Proposition PN-P1.3 in [PathIntegralNormalization] for the
  ruling-out of Lévy-stable alternatives (Remark TG-R1.1), and the companion paper
  [PathIntegralNormalization] contains essentially the identical proposition (PN-P1.3)
  with the same hypotheses and proof structure. The present paper claims to prove d/2
  "without the heat equation or Feynman-Kac formula," which is accurate, but the exclusion
  of α ≠ 2 Lévy-stable exponents relies on the dimensional basis {m, ℏ} argument that
  is developed in [PathIntegralNormalization] §2.2 and [RCPFoundations]. As written,
  Remark TG-R1.1 says "See also Proposition PN-P1.3 in [PathIntegralNormalization]"
  without clarifying whether the argument here is self-contained or logically depends on
  that result. The paper must either (a) reproduce the dimensional-basis argument for
  Lévy exclusion inline, making TG-P1.1 genuinely self-contained, or (b) explicitly
  state that Remark TG-R1.1 borrows from [PathIntegralNormalization] and is not part of
  the proof of TG-P1.1 proper. As it stands, the reader cannot tell whether TG-P1.1
  depends on the companion paper for its full statement.

- **The title/paper name mismatch is a source of confusion.** The YAML front matter
  titles the paper "Groupoid Composition and Quantization: The Pair-Groupoid Bridge"
  while the submission is housed under the directory name `tangent-groupoid-bridge` and
  the abstract prominently features the tangent groupoid as the central structure. The
  title does not mention the tangent groupoid at all, even though §§4–5 (roughly half the
  paper) are devoted to Connes' tangent groupoid and Lackman's construction. The title
  should be revised to reflect the paper's actual scope, or §§4–5 should be explicitly
  framed as extensions beyond the core pair-groupoid argument. This is not merely
  cosmetic: a reader scanning the title would expect a self-contained paper about pair
  groupoids, and would be surprised to find that the paper's most novel material
  (Lackman's non-perturbative bridge, RG-as-groupoid-reduction) concerns structures
  beyond the pair groupoid.

### MINOR

- **Remark TG-R3.1 (van Est map as unifying vocabulary) is a single 22-line paragraph
  and would benefit from being broken up.** The remark distinguishes three cases (literal
  van Est for the partition channel, structural analogy for the representation channel,
  further structural analogy for the scale channel) but the distinctions are buried in
  dense prose. A three-row table analogous to the one in Section 4.2 would make the
  logical structure transparent. Additionally, the remark explicitly flags that the
  scale-channel identification is "a structural analogy (both are generators of one-parameter
  composition semigroups) rather than a theorem," which is honest but should be elevated
  to a conspicuous caveat rather than left at the end of a long paragraph where it could
  be missed.

- **The discussion in §5.2 of Lackman [2023] contains a minor imprecision.** The paper
  states "Kontsevich's universal star product on a Poisson manifold (M,π) equals the
  twisted convolution algebra of the geometric quantization of a Lie 2-groupoid G₂
  integrating the Poisson structure." The word "equals" is strong; Lackman's result
  is an equivalence that requires choosing the right geometric quantization (prequantum
  line bundle and polarization) for the 2-groupoid. The paper should qualify this with
  "for the appropriate geometric quantization data" or point the reader to the precise
  conditions in [Lackman2023]. Without qualification, "equals" may suggest the result
  is more unconditional than it is.

- **Open problem TG-Q3' (refinement into sub-problems A, B, C) is written in LaTeX
  syntax (with \emph{} and \mathrm{} commands) rather than Markdown, breaking the
  document's format convention.** This needs to be corrected for consistency with the
  rest of the document, which uses Markdown emphasis and math delimiters uniformly.

- **The reference to "Season 1" (Remark TG-R1.2: "the Mathematician's result from
  Season 1") is opaque to any reader outside the project.** Either replace with the
  specific companion paper reference ([RCPFoundations] or the cornerstone §X.Y), or
  omit the attribution and state the result directly. Internal project history does not
  belong in a paper meant for external readers.

- **The reference [RCPFoundations] is listed as "See companion paper on RCP as a
  foundational principle" without an arXiv number, title, or year.** Similarly,
  [HalfDensityQFT] is listed as "See companion paper on half-density QFT." For an
  internal satellite paper, placeholder references are acceptable, but the paper should
  at minimum give the companion paper titles and at least the internal path or working
  title so a reader can locate them. The [PathIntegralNormalization] entry is slightly
  better (gives a title and year) but still lacks arXiv or internal path.

- **The condition (D) in Proposition TG-P1.1 states [f] = L^{-d} "so that the
  convolution integral is dimensionless."** This parenthetical justification is slightly
  misleading: the convolution integral ∫ f(x,z) f(z,y) d^d z has dimension [f]² · L^d,
  which equals L^{-d} when [f] = L^{-d}, matching the dimension of f(x,y;t). "Dimensionless"
  should be replaced by "dimension-preserving under convolution" or "the convolution
  integral has the same dimension as f." This is a small but avoidable inaccuracy.

---

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** The paper's core contribution — identifying the sewing law as groupoid
convolution and deriving d/2 from groupoid-level dimensional analysis — is mathematically
correct and conceptually novel relative to the standard heuristic derivations. The major
revision items concern logical self-containedness of TG-P1.1 relative to the companion
paper and the title/scope mismatch; both are fixable without restructuring the argument.
The minor items are presentational and require only targeted edits. The Stone's theorem
gap is correctly identified and the open problems are well-posed.

---

## Detailed Comments

**Section 1 (Introduction):**
The paper frames the pair groupoid and d/2 as its two primary results, but the
introduction paragraph starting "Beyond the composition law..." pivots immediately to the
tangent groupoid and Lackman, which together occupy more text than the pair-groupoid
argument. A brief signpost sentence acknowledging this scope (e.g., "The tangent groupoid
and Lackman's construction are treated as supporting context, not primary claims") would
help calibrate the reader's expectations.

**Section 3 (Proof of TG-P1.1):**
The proof sketch is correct but dense. Condition (M) is listed as requiring
h(·;t) ∈ L¹(ℝ^d) and ĥ(p;t) ≠ 0 a.e. The second requirement (non-vanishing Fourier
transform) is used to apply Cauchy's measurability theorem to log ĥ. However, the paper
does not explicitly state that the measurability theorem applies to additive functions on
ℝ (in the time variable), while the multiplicativity is in the product form
ĥ(p;t₁)ĥ(p;t₂) = ĥ(p;t₁+t₂). A one-sentence clarification that this is Cauchy's theorem
for measurable multiplicative functions (equivalently, measurable additive functions for
log ĥ, using the non-vanishing condition) would make the proof sketch self-contained.

**Section 4.1 (Tangent Groupoid):**
The blow-up formula (x,y) → (x, (x−y)/ℏ) as ℏ→0 is correct. However, the paper
says this is "exactly the Newton–Connes connection between secants and tangents (cornerstone
manuscript, Section 2.2)." Readers without access to the cornerstone manuscript cannot
verify this. If this connection is central to the paper's thesis (as the conclusion
suggests), a one-paragraph self-contained summary of the Newton–Connes telescoping should
appear here, rather than delegating entirely to an unavailable reference.

**Section 5.1 (Lackman 2024):**
The description of Lackman's pair-groupoid construction of functional integrals is
accurate at the level of this note. The claim "The normalization constant [...] emerges
naturally from dimensional analysis of the groupoid measure, without post-hoc adjustment"
is supported by the groupoid-Riemann-sum structure described. No correction needed, but
the qualifier "in the continuum limit" before the formula K(x,y;T) ∝ (m/2πiℏT)^{d/2}
should be flagged: the continuum limit exists for the free particle and for suitable
potentials, but not universally (Stone's theorem gap of §6.1 applies here too).

**Section 6.2 (Open Problems, TG-Q3'):**
This refinement is mathematically substantive and the three-way split (algebraic,
geometric, representation bridges) is a genuine contribution. However, it is presented
inline in the Open Problems section as a "refinement" of TG-Q3 without indicating where
this analysis came from (a blackboard? a specific agent session?). For publication
purposes, either integrate it into the body as a dedicated subsection, or frame it
as a remark with proper provenance. The LaTeX formatting issue mentioned under MINOR
also appears here.

**Bibliography:**
Cattaneo-Felder [Cattaneo2000] is cited but not explicitly referenced in the text body.
It should either be cited where the Kontsevich sigma-model path integral is discussed
(§5.2) or removed if it is not needed. Including an uncited reference in the bibliography
is poor practice.
