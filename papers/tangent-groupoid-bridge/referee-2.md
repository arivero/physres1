# Referee Report: Groupoid Composition and Quantization: The Pair-Groupoid Bridge

**Referee:** referee-2
**Date:** 2026-02-21
**Paper:** pub-track/sent/tangent-groupoid-bridge/main.md

---

## Summary

The paper argues that the Feynman path-integral sewing law is an instance of groupoid
convolution on the pair groupoid G = M x M, and that the d/2 normalization exponent of
the Gaussian propagator is forced by groupoid-level dimensional analysis rather than by
ad hoc Gaussian integral bookkeeping. Proposition TG-P1.1 derives d/2 from four
algebraic hypotheses (convolution closure, translation invariance, dimensional consistency,
measurability) without invoking the Schrodinger equation. The paper then connects this
composition structure to Connes' tangent groupoid, which interpolates between the
classical tangent-bundle groupoid (hbar=0) and the pair groupoid (hbar!=0), and surveys
Lackman's 2023-2024 work making the Kontsevich star product non-perturbatively concrete
as the twisted convolution algebra of a geometrically quantized Lie 2-groupoid. The
paper closes by assigning residual open problems and identifying Stone's theorem
(self-adjointness of the Hamiltonian for singular potentials) as the single irreducible
gap not closed by groupoid-algebraic methods.

---

## Strengths

- The identification of the path-integral sewing law as groupoid convolution on the pair
  groupoid is correct and constitutes a genuine conceptual clarification. The formal
  isomorphism is standard in noncommutative geometry but is not routinely exposed in
  physics treatments of the path integral.

- Proposition TG-P1.1 is clearly stated with explicit hypotheses. The proof sketch is
  honest about what it uses: Cauchy's measurability theorem for the functional equation,
  dimensional analysis for quadratic dispersion, Gaussian normalization for the t^{-d/2}
  factor. The logical chain is self-contained.

- The paper correctly identifies and names the residual gap (Stone's theorem, Section 6.1),
  distinguishing what groupoid convolution resolves (R1, R2, R4) from what it cannot
  resolve (R3). This intellectual honesty is commendable.

- The Wick-rotation remark (TG-R1.2) — that both c=i and c=-1 satisfy the groupoid axioms,
  so Wick rotation is a representation-channel operation rather than a composition-channel
  one — is a structurally clean observation that fits naturally into the RCP framework
  articulated in the companion RCPFoundations paper.

- The survey of Lackman (2023, 2024) in Section 5 is accurate as far as can be verified
  from the arXiv identifiers given (2303.05494 and 2402.05866), and the connection between
  van Est-map triangulation refinement and RCP's partition channel is a reasonable
  structural reading.

- The half-density question (TG-Q1) is raised and then resolved inline (Remark TG-R5.1).
  The resolution — that the two half-density factors at the intermediate variable pair to
  give a full density, so composition is automatic and the Van Vleck factor becomes
  intrinsic to the bi-half-density structure — is correct and connects cleanly to the
  companion HalfDensityQFT paper.

---

## Weaknesses

### MAJOR

- **TG-P1.1 hypothesis (T) conflates translation invariance with the proof of d/2.**
  The proposition assumes translation invariance f(x,y;t) = h(x-y;t) from the outset.
  This assumption carries a large part of the normalization content: on a curved manifold
  M (where the companion papers frequently operate, since propagators on manifolds appear
  in HalfDensityQFT), translation invariance fails and the Fourier-multiplicativity step
  of the proof sketch is not available. The title of the paper uses "tangent groupoid
  bridge" and the Section 4 formulation is for general smooth manifolds M, but the
  uniqueness proposition is restricted to M = R^d. The paper should either (a) restrict
  its scope statement to flat space throughout, or (b) provide an analogue of TG-P1.1
  on a curved manifold (where the WKB/Van Vleck factor replaces the plain Gaussian).
  As written, the scope of the proposition and the scope of the surrounding narrative are
  in tension. This is a MAJOR issue because the d/2 claim is presented as a consequence
  of groupoid structure, yet the proof only works in R^d; the tangent-groupoid framing
  of Section 4 suggests generality that TG-P1.1 does not deliver.

- **The dimensional-analysis step in TG-P1.1 (ruling out Levy-stable alternatives) is
  incomplete.** Remark TG-R1.1 claims that Levy-stable kernels phi(p) = c|p|^alpha with
  alpha != 2 are ruled out by dimensional homogeneity because "the only dimensionless
  ratio constructible from {m, hbar, p, t}" forces alpha=2. This argument is only valid
  given a prior choice of dimensional basis {m, hbar}. If one works in natural units where
  hbar=1 and m=1, the argument fails: any alpha is dimensionally consistent. The claim
  should be stated as: "given the physical dimensional basis {m, hbar, L, T} with [hbar]
  = ML^2T^{-1} and the requirement [K] = L^{-d}, quadratic dispersion is singled out."
  The current phrasing is ambiguous and will mislead a reader who checks it in natural
  units. This is MAJOR because the Levy-stable exclusion is used to single out the Gaussian
  as the unique answer; if the exclusion argument is not complete, TG-P1.1's conclusion
  is weaker than claimed.

### MINOR

- **Formatting anomaly in Remark TG-R3.1.** This remark is enclosed in backtick-code
  fences (markdown inline code `Remark TG-R3.1 ...`) rather than bold or italic text
  like all other remarks in the paper. This is clearly a markup error that should be
  corrected before publication.

- **The bibliography entries for [HalfDensityQFT], [PathIntegralNormalization], and
  [RCPFoundations] are placeholder stubs** ("See companion paper on..."). For internal
  publication, these should carry at minimum the filename or the full title. The
  cross-references within the text (e.g., to PN-P1.3 in [PathIntegralNormalization] in
  Remark TG-R1.1) cannot be verified by a reader without proper pointers.

- **TG-Q3' uses LaTeX raw markup** (\emph{...}, --) that will not render in markdown.
  The rest of the paper uses LaTeX math delimiters correctly for math mode but uses
  markdown conventions for prose emphasis (bold, italic). The raw LaTeX in TG-Q3' is
  inconsistent and should be converted to markdown formatting.

- **Section 4.1 states that the C*-algebra of G_M at hbar=0 is C_0(T*M)** (commutative)
  and at hbar!=0 is the algebra of compact operators on L^2(M). The second claim —
  that C*(M x M) equals the compact operators — is correct for compact M but requires
  qualification for non-compact M (where it is the algebra of compact operators only
  after appropriate completion; the full C*-algebra of the pair groupoid of R^d is larger).
  A parenthetical qualification would suffice.

- **The Crainic (2000) reference** for the van Est map is cited in the text of Remark
  TG-R3.1 but does not appear in the bibliography. It should be added.

- **The discussion of the scale channel (Table in Section 4.2 and Remark TG-R1.3)** is
  brief to the point of being underdeveloped relative to the partition and representation
  channels. The claim that "cross-channel commutativity is an observable-level statement,
  not automatic from groupoid morphisms" is stated but not substantiated. Even a one-line
  example of a situation where the channels fail to commute would strengthen this
  assertion.

- **The paper's title in the YAML front matter** ("Groupoid Composition and Quantization:
  The Pair-Groupoid Bridge") does not match the paper identifier "tangent-groupoid-bridge"
  used in the pub-track directory name and in Remark TG-R5.1's reference to the "tangent
  groupoid." The tangent groupoid is central to Section 4 but appears only briefly in the
  title's subtitle. This is cosmetic but could cause confusion in cross-referencing.

---

## Verdict

**Recommendation:** MAJOR REVISION

**Justification:** The paper contains a genuine and useful conceptual contribution
(pair-groupoid as the structural home of the sewing law; d/2 from groupoid dimensional
analysis; Wick rotation as representation-channel operation) but the proof of
Proposition TG-P1.1 has two MAJOR gaps: (1) the scope mismatch between the flat-space
proof and the curved-manifold framing of the surrounding narrative, and (2) the
incomplete dimensional-analysis argument ruling out Levy-stable alternatives. Both must
be resolved before publication, either by tightening the scope claims or by extending
the proofs.

---

## Detailed Comments

### Section 3 (Proposition TG-P1.1)

**On hypothesis (T) and curved manifolds.** The proof sketch is entirely in Fourier
space and uses h(x-y;t) (translational symmetry) as its starting point. The tangent
groupoid of Section 4, however, is introduced for a general smooth manifold M, and the
blow-down formula (x-y)/hbar -> v in T_x M is used to motivate the "Newton-Connes
connection." A reader expecting TG-P1.1 to justify the d/2 exponent on a curved
manifold will be disappointed. Either add a remark explicitly confining TG-P1.1 to
M = R^d (and note that the curved-manifold analogue involves the WKB prefactor
Delta(x,y;t)^{1/2} instead of a flat Gaussian), or state and prove the curved-manifold
version. The latter is non-trivial but is already gestured at in Remark TG-R5.1 via the
Van Vleck factor; connecting that remark back to TG-P1.1 would resolve the tension.

**On the dimensional argument excluding Levy-stable alternatives.** The argument in
Remark TG-R1.1 should be made explicit. A complete version would be: let [K] = L^{-d},
[t] = T, [p] = L^{-1} (with hbar carrying [ML^2 T^{-1}] and m carrying [M]). Then the
exponent phi(p)*t must be dimensionless. For phi(p) = (hbar/m)^beta * |p|^alpha:
dimensionlessness of phi(p)*t gives alpha=2 and beta=1 uniquely. For phi(p) = c|p|^alpha
without a mass parameter, the argument breaks down because c itself carries dimensions
that can absorb any alpha. This means the exclusion of Levy-stable kernels relies on the
presence of both m and hbar in the dimensional basis; this should be stated explicitly.

### Section 5.2 (Non-Perturbative Kontsevich)

The identification "f * g = twisted convolution on C*(G_2)" is cited correctly from
Lackman (2023). However, the phrase "Lackman proves that Kontsevich's universal star
product ... equals the twisted convolution algebra" should be qualified: Lackman's
result is for a specific class of Poisson manifolds (those whose Poisson structure is
integrable in the sense of Crainic-Fernandes, so that a Lie groupoid integrating it
exists). The universality of Kontsevich's formula holds for all Poisson manifolds, but
Lackman's groupoid construction requires integrability. A brief qualifier ("for
integrable Poisson structures") would be accurate.

### Section 6.2 (TG-Q3')

The raw LaTeX in TG-Q3' (\emph{established}, --) should be rendered as *established*
and em-dash (--) converted to — (markdown em-dash or HTML entity). The rest of the
paper is consistently in markdown; TG-Q3' appears to have been written in a different
context and not converted.
