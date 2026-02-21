# Referee Report: Operator Ordering as Equivalence Class: Stratification and Measurability

**Referee:** referee-1
**Date:** 2026-02-21
**Paper:** pub-track/sent/ordering-equivalence/main.md

---

## Summary

The paper argues that quantum operator ordering should be understood not as an
"ambiguity" requiring ad hoc physical input, but as a gauge freedom within an
equivalence class. It introduces a four-layer stratification of the differences
between ordering prescriptions (principal symbol, connection, scalar potential,
domain), works through two explicit examples — position-dependent mass (PDM) in
1D and quantization on a curved Riemannian configuration space — and argues that
Layer 3 differences are physically unmeasurable in realistic parameter regimes.
Half-density quantization is proposed as a "canonical gauge" within this class,
analogous to Lorenz gauge in electromagnetism. The paper also connects the
equivalence structure to star-product automorphisms (deformation quantization)
and to path-integral time-slicing prescriptions (Ito vs. Stratonovich). The work
is positioned as the "representation channel" of the authors' Refinement
Compatibility Principle (RCP).

---

## Strengths

- **Conceptual clarity of the four-layer stratification.** The decomposition into
  Layers 1–4 (principal symbol / connection / scalar potential / domain) is a
  useful organizing device. It makes crisp an otherwise murky subject, and the
  assignment of each layer to a distinct physical status (universal / geometric /
  scheme-dependent / independent) is well-motivated.

- **Layer 2 universality result is non-trivial and correctly stated.** The paper's
  central technical claim — that Weyl and half-density orderings share the *same*
  first-derivative (connection) term for PDM systems — is correct. The notebook
  record (deformation-equivalence-physical.md) shows this was discovered as a
  correction to an earlier error (S290 originally claimed half-density "eliminates"
  the first-derivative term, which S294 corrected). The final paper correctly
  reports the corrected result.

- **PDM scalar computation is algebraically correct.** The LR symmetric operator
  (Section 3.1) and the half-density operator (Section 3.2) are both expanded
  correctly. The Layer 3 scalar difference
  `V_HD - V_LR = (ℏ²/8)f'' - (ℏ²/32)(f')²/f` follows from the two
  expansions by direct subtraction and is verified.

- **Star-product perspective is competently handled.** The discussion of Moyal vs.
  standard-ordered products (Section 5) and the identification of ordering changes
  with formal automorphisms of the deformation algebra (OE-P1.4) are standard but
  correctly stated.

- **Path-integral correspondence (Section 6) is physically illuminating.** The
  identification midpoint ↔ Stratonovich ↔ half-density (Proposition OE-P1.5) is
  well-known in the stochastic quantization literature, and its inclusion helps
  readers connect the operator and path-integral pictures.

- **Layer 4 (domain) is correctly kept separate.** The paper does not conflate
  self-adjoint extension freedom with ordering freedom. Layer 4 is correctly
  identified as physically independent and always measurable when present. This is
  a common error in the literature; its avoidance here is noted.

---

## Weaknesses

### MAJOR

**M1. Inconsistency between paper and notebook in the PDM scalar (Layer 3) for
Weyl ordering — and labeling mismatch between the paper's "LR" and the paper's
inline Weyl comparison.**

The paper (Section 3.1) explicitly computes the *left-right symmetric* (LR)
prescription, which has scalar `-ℏ²/4 f''(q)`. It then notes in a parenthetical
that true Weyl ordering would give `-ℏ²/8 f''`. This distinction is important:
the paper's Layer 3 comparison is between LR and HD, not Weyl and HD. However:

(a) The abstract and Section 1 say "We present two worked examples (position-dependent
mass...)... The conclusion is that ordering is a gauge freedom, with half-density
quantization serving as a canonical representative." The abstract and introduction
do not distinguish LR from Weyl — readers unfamiliar with this subtlety will
interpret the PDM example as comparing Weyl vs. HD.

(b) Proposition OE-P1.2 is titled "Deformation equivalence is physical" and states
that "Left-right symmetric and half-density prescriptions agree on Layers 1 and 2,
differing only in the O(ℏ²) scalar potential (Layer 3)." But the analogy to a
"canonical gauge" throughout the paper (including the abstract) uses Weyl ordering
as the implicit comparison. The paper sends mixed signals: the calculation uses LR,
the conceptual framing implies Weyl.

(c) The notebook (deformation-equivalence-physical.md) computes the Weyl–HD
difference explicitly and finds `Δ = -ℏ²/(2m) · f'²/(16f)`. Substituting into
the paper's notation this is `-(ℏ²/32m)(f'/f)²·f = -(ℏ²/32)(f')²/f` (with m=1),
which is a *different* Layer 3 difference than `(ℏ²/8)f'' - (ℏ²/32)(f')²/f`
that the paper obtains for HD–LR. The paper never reconciles these two Layer 3
differences. A reader who checks the notebook will find an apparent contradiction.

**Required fix:** The paper should either (i) clearly commit to comparing LR vs. HD
and state explicitly that the Weyl comparison is deferred, or (ii) include the
Weyl vs. HD comparison as a separate subsection (using the notebook's result for
the difference `-ℏ²/(2m)·f'²/(16f)`) and show that both differences confirm
Layer 3 deformation freedom. The current conflation of LR and Weyl is misleading.

---

**M2. PDM numerical estimate uses an α range inconsistent with the perturbative
regime declared.**

Section 3.4 states: "Take f(q) = 1 + αq² (weak position-dependence, |α| ≪ 1,
**dimensionless**)." But if α is dimensionless and q has dimensions of length, then
f = 1 + αq² is not dimensionally consistent. The notebook (deformation-equivalence-
physical.md, Part 2) correctly uses `f = 1 + αq²` with `α = α₀/a²` where
`a = √(ℏ/(mω))` is the oscillator length and α₀ is the true dimensionless
parameter. The paper's α ~ 0.001–0.01 is the dimensionful quantity (units of
[length]^{-2}), not a dimensionless ratio.

More concretely:
- The notebook finds `|ΔE₀| = ℏω α₀²/16` with α₀ ∈ {0.1, 0.3} giving
  |ΔE₀| ∈ {0.006, 0.056} meV.
- The paper finds `|δ(E₁-E₀)| ~ 1.2×10⁻⁶ – 1.2×10⁻⁴ meV` for α ~ 0.001–0.01.

These are consistent if one identifies α (paper) = α₀/a² with a ~ 10 nm,
giving α₀ ~ α × a² ~ (0.001 nm⁻²)(10 nm)² = 0.1 — matching the notebook's
lower end. However, the paper never states this identification. A reader cannot
reproduce the numerical estimate from the text as written.

Additionally, the paper's assertion that α ~ 0.001–0.01 is "typical effective-mass
variation over the oscillator length" is vague. GaAs effective mass m* ≈ 0.067 m_e
varies by ~5–30% across a heterostructure, not by a dimensionless parameter of
0.001–0.01 (which would represent sub-percent variation).

**Required fix:** Define dimensionless α₀ = α × a² explicitly, state the numerical
values α₀ ~ 0.1–0.3 used, and quote the resulting |ΔE₀| ~ 0.006–0.06 meV from
the notebook. The current text conflates a dimensionful α with a dimensionless
parameter, making the estimate unreproducible.

---

### MINOR

**m1. The Lorenz-gauge analogy is stated more strongly than it can bear.**

Sections 5 (OE-H1.3) and 7.2 assert that half-density is "analogous to Lorenz
gauge in electromagnetism." The paper itself correctly states in Section 7.2 that
"This analogy is exact at Layer 2 but does not extend to Layer 3." However, the
analogy is introduced in the abstract and conclusion without this qualifier, giving
the impression of a stronger structural equivalence than exists. In true gauge
invariance, different gauges give exactly the same physics. Here, different
ordering prescriptions give *different* Layer 3 physics (physically inequivalent
O(ℏ²) scalar potentials). The analogy is illustrative but approximate, and the
paper should foreground this limitation more consistently.

Suggested minimal fix: Add to the abstract "...with half-density quantization
serving as a canonical representative within the equivalence class at the level of
principal symbol and connection geometry — analogous to Lorenz gauge, though the
analogy does not extend to the O(ℏ²) scalar potential layer."

---

**m2. Proposition OE-P1.3 (Geometric prescriptions agree on Layers 1 and 2) is
stated with insufficient precision.**

The proposition states that geometric prescriptions "all produce connection terms
proportional to ∂_i g^{ij} and ∂_i ln|g|, **differing only by scheme-dependent
numerical coefficients**." But if they differ by numerical coefficients in the
connection term (Layer 2), they do not in fact agree on Layer 2 — they only agree
on the *form* of the connection term. This contradicts the Layer 2 universality
claim made for the PDM example (Section 3.3), where Layer 2 is *identical* (both
LR and HD give the same f'∂ coefficient, without any scheme-dependent factor).

The curved-space Layer 2 claim is weaker than the flat PDM case. The proposition
should distinguish these two situations: for PDM on flat space, Layer 2 is
identical; for curved configuration space, Layer 2 is universal in *form* (∝ ∂g)
but scheme-dependent in *coefficient*.

---

**m3. Section 5.2 (Vey product) notation error.**

The "standard-ordered (or Wick) product" formula (Section 5.2) writes:
```
f ★_std g = fg + (iℏ/2){f,g} - (ℏ²/4){{f,g}} + O(ℏ³)
```
The difference from Moyal is given as `-(ℏ²/8){{f,g}}`. But if Moyal has
`-(ℏ²/8){{f,g}}` and std has `-(ℏ²/4){{f,g}}`, then the difference should be
`-(ℏ²/8){{f,g}}`, which is what the paper says — but this implies the standard
product has a *larger* negative coefficient than Moyal. The attribution "Wick" for
this product is non-standard: the Wick (normal-ordered) product is typically the
creation-annihilation ordering, not the coefficient-1/4 double-Poisson product.
The paper should use a more precise reference for where this particular star-product
expansion comes from (e.g., Ali-Englis [4], Section 4).

---

**m4. Missing citation for the heat-kernel curvature-potential formula.**

Section 4.3 states that the effective potential includes `V_curv = (ℏ²/6m) R(q)`,
attributed to "the heat-kernel (half-density) prescription." Section 4.4 derives
this from the Van Vleck determinant expansion. The coefficient 1/6 is indeed
correct for the heat kernel on a curved manifold (it appears in DeWitt's expansion
[3]), but the paper does not cite DeWitt's 1957 paper [3] at this specific claim —
it only lists DeWitt in the references without inline citation at Sections 4.3–4.4.
An inline `[DeWitt1957]` citation at the introduction of V_curv would make the
attribution traceable.

---

**m5. Sewing law discussion (Section 6.3) is tautological without showing that
the sewing law constrains the discretization.**

The sewing law K(q₂,q₀;2ε) = ∫dq₁ K(q₂,q₁;ε)K(q₁,q₀;ε) is stated as a
"composition compatibility condition." But no example is given showing how the
sewing law *fails* for an inconsistent discretization prescription, or how it
*selects* a preferred one. Without this, Section 6.3 merely asserts the sewing
law must hold without showing it is non-trivial. If the goal is to motivate the
half-density/Stratonovich choice via the sewing law, the argument must be made
explicit or the section should be reduced to a remark.

---

**m6. Reference list is thin for a paper on operator ordering.**

The paper cites only three external references (DeWitt 1957, Ali-Englis 2005,
de Gosson 2006). Given the scope — PDM quantization, curved-space quantization,
star products, path integral discretization — the following are missing and should
be added:

- **BenDaniel-Duke (1966)** and **von Roos (1983)** — the two classic papers on
  PDM ordering that the notebook (deformation-equivalence-physical.md) cites, and
  which define the BenDaniel-Duke prescription that is a standard alternative to LR.
- **Feynman (1951) or Feynman-Hibbs** for the path-integral time-slicing connection.
- **Kontsevich (1997)** for the formality theorem and gauge group of star-products,
  which the notebook treats as foundational to the equivalence result.
- **de Gosson (2018)** "Short-time propagators and the Born-Jordan rule" for the
  Moyal–Born-Jordan difference.

The absence of von Roos (1983) in particular is notable: it is the standard
reference for the three-parameter family of PDM orderings, and reviewers familiar
with that literature will notice its absence.

---

## Verdict

**Recommendation:** MAJOR REVISION

**Justification:** The paper's core conceptual contribution — the four-layer
stratification and the demonstration that Weyl/LR and half-density agree on Layer 2
— is correct and useful. However, two MAJOR deficiencies prevent acceptance: (M1) a
labeling inconsistency between the LR and Weyl prescriptions that creates confusion
about which comparison is actually being made, and (M2) a dimensional-analysis error
in the numerical estimate that makes the key observable-measurability claim
unverifiable as written. Both are fixable with moderate effort: M1 requires either
committing to LR-vs-HD throughout or adding a Weyl-vs-HD subsection using the
notebook's result; M2 requires introducing the dimensionless ratio α₀ = αa²
explicitly and quoting corrected numerical values. Once these are resolved, the
paper should be re-reviewed.

---

## Detailed Comments

### Section 3.1 — LR vs. Weyl labeling (M1 detail)

The footnote-style parenthetical on line 75 reads:
> "This is sometimes loosely called 'Weyl ordering' in the physics literature, but
> differs from true Weyl quantization, which would give the totally symmetric form
> (1/4)(fp̂² + 2p̂fp̂ + p̂²f) with scalar potential −ℏ²/8 f'' instead of −ℏ²/4 f''.
> The left-right form is simpler to compute and suffices for the Layer 3 comparison."

This parenthetical correctly distinguishes LR from Weyl, but its placement mid-
derivation means many readers will miss it. The acknowledgment that the layer 3
difference used in the paper is LR–HD (not Weyl–HD) should be elevated to the
beginning of Section 3, stated clearly, and the Weyl–HD difference (which is
`-(ℏ²/32)(f')²/f`, from the notebook) should be quoted for completeness.

### Section 3.4 — Numerical estimate (M2 detail)

The paper writes "α ~ 0.001–0.01 (typical effective-mass variation over the
oscillator length)." This α has dimensions of [length]⁻² since f = 1 + αq². To
compare with experiment, one needs α₀ = α × a² (dimensionless), where
a = √(ℏ/(m*ω)) is the oscillator length. For GaAs: m* = 0.067 m_e, ℏω = 10 meV
→ a ≈ 10.4 nm. Then:
- α ~ 0.001 nm⁻² → α₀ ~ 0.1
- α ~ 0.01 nm⁻² → α₀ ~ 1 (outside perturbative regime)

The notebook computes `|ΔE₀| = ℏω α₀²/16`, giving for α₀ = 0.1–0.3:
`|ΔE₀| ~ 0.006–0.056 meV`, which is below the 0.1 meV resolution. The paper's
value of 1.2×10⁻⁶ – 1.2×10⁻⁴ meV is suspiciously smaller by 4–5 orders of
magnitude, suggesting the numerical expression was evaluated differently from what
the algebra implies. This needs explicit reconciliation.

### Section 7.1 — "below typical experimental energy resolution"

The text says: "the energy shift between Weyl and half-density orderings is
|ΔE₀| ~ 0.006–0.06 meV for GaAs quantum well parameters, well below experimental
resolution (~0.1 meV)." But (a) the paper compares LR and HD, not Weyl and HD;
and (b) the text says 0.006–0.06 meV here but 1.2×10⁻⁶ – 1.2×10⁻⁴ meV in
Section 3.4. The two numerical claims are inconsistent. One of them must be wrong.
(The 0.006–0.06 meV figure in Section 7.1 matches the notebook; the 1.2×10⁻⁶ –
1.2×10⁻⁴ meV figure in Section 3.4 does not.) This internal inconsistency must
be resolved.

### Section 4.2 — Curved-space "Weyl-ordering generalization"

The formula given for Ĥ_W on a curved manifold:
```
Ĥ_W = -(ℏ²/2m) × (1/2)[g^{ij}(q)∂_i∂_j + ∂_i∂_j g^{ij}(q)] + V(q)
```
is not the standard Weyl ordering on a curved manifold (which would require a
more careful treatment via the Weyl map in local Darboux coordinates, not a naive
symmetrization of g^{ij} with ∂_i∂_j). The formula as written is not Hermitian
with respect to the Riemannian volume form unless special conditions on g hold.
The authors should either (a) clarify what Hilbert space and inner product this
operator acts on, or (b) label this as a "naive symmetrization" prescription and
acknowledge it is not the standard curved-space Weyl quantization.

### Section 5.3 — "Unitary transformation" relating Weyl and std

The claim that Ĥ_std = Û†Ĥ_W Û with Û = 1 + O(ℏ) is correct in the formal power-
series sense (deformation equivalence), but Û is not generically unitary in the
operator sense — it is a formal invertible map. For the claim to be used in
arguments about eigenvalues being the same "up to O(ℏ²)", one needs to be careful:
the eigenvalues of similar (but not unitarily equivalent) operators need not be
O(ℏ²) close in general. The paper should specify that this is a formal power-series
statement, not a functional-analytic one.
