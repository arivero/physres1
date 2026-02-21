# Referee Report: Planck Area from Half-Density Normalization

**Referee:** referee-2
**Date:** 2026-02-21
**Paper:** `pub-track/sent/planck-area/main.md`

---

## Summary

The paper argues that treating quantum propagation kernels as bi-half-densities
is natural for coordinate-invariant composition, but that passing from the
intrinsic half-density objects to scalar numerical amplitudes requires choosing
a reference half-density. Under three additional hypotheses — (H2.3)
dimensionless scalar representatives, (H2.4) background-free constancy, and
(H2.5a) integrality of coupling-exponents — a universal length^(d/2) constant
is forced, and a "gravity-only sieve" (Derivation PA-D1.3) singles out d=4 as
the unique spacetime dimension in which Newton's constant G_d supplies that
constant with integer power. The paper's main novelty is a careful itemization
of which parts of the argument are geometric facts, which are representational
choices, and which are selection principles, together with a systematic study of
what happens when each hypothesis is individually dropped or replaced.

---

## Strengths

- **Exemplary hypothesis hygiene.** The paper's most valuable contribution is
  precisely delineating which conclusion follows from which hypothesis, with
  explicit labels (Proposition / Heuristic / Derivation). This allows a reader
  to evaluate each ingredient independently, and the branch-table in Section 3.2
  is an unusually honest accounting of what the main claim does *not* prove.

- **Dimensional correctness throughout.** Every dimensional matching step is
  explicit. The Diophantine equation n(d-2) = d/2 and its three-obstruction
  decomposition (parity, magnitude, and d=2 triviality) are correctly verified.
  The case analysis for Examples PA-E1 through PA-E4 is arithmetically sound.

- **Multiple independent witnesses for the d/2 exponent.** The paper marshals
  five convergent manifestations of the half-density exponent d/2: the identity
  kernel normalization (PA-D1.2b), the free-propagator semigroup (PA-D1.4a),
  the Van Vleck determinant (PA-D1.4), the heat-kernel trace expansion
  (PA-H2.6c), and the dimensional-regularization pole structure — demonstrating
  that the exponent is structurally forced rather than a convention.

- **Honest conjectural status.** The paper explicitly labels the Planck-area
  conclusion as resting on additional universality hypotheses (PA-H2.4 +
  PA-H2.5a + gravity-only), and the abstract itself distinguishes "proved
  (minimal claim)" from "conjectural (additional hypotheses required)." This is
  more forthright than comparable literature in quantum-gravity phenomenology.

- **Transmutation branch treated seriously.** Heuristic PA-H2.13 and Derivation
  PA-D1.6a give a proper account of dimensional transmutation as an alternative
  scale supplier, and the 2D delta example (PA-E5 / PA-E5a–PA-E5c) provides a
  worked explicit model. The three-level RG hierarchy (semigroup, transmutation,
  dimension-sieve) is a useful organizing framework.

- **Good citation practice.** Primary sources are used: Woodhouse (1992),
  Bates–Weinstein (1997) for half-densities; Van Vleck (1928), Morette (1951),
  DeWitt (1957) for the semiclassical kernel; Vassilevich (2003) for heat
  kernels. The citations are specific and include section/page references where
  relevant.

---

## Weaknesses

### MAJOR

- **M1. The PA-H2.5a "integrality sieve" needs stronger physical motivation.**
  The core dimension-selection claim (d=4 singled out) rests entirely on the
  restriction that the scalarization constant be an integer-power monomial in
  admitted couplings (PA-H2.5a). Heuristic PA-H2.5c offers the physical
  reinterpretation as "classical (tree-level) gravity suffices only in d=4", but
  this is itself still a heuristic. The paper acknowledges that this hypothesis
  is the "UV hypothesis" that can be dropped to allow transmutation in any d, and
  that admissibility of couplings is needed to prevent the sieve from being
  vacuous (PA-H2.7a). What is missing is a clear *physical* reason — beyond
  "mathematical elegance" or "simplicity" — why one should adopt PA-H2.5a over
  the transmutation route. In what physical framework does it follow that the
  scalarization constant must be analytic in G_d near G_d=0? This is not
  furnished. Without it, the d=4 selection is a mathematical observation dressed
  as a physical result. This is stated candidly in the paper itself (the label
  "Heuristic" and the "knob" discussion make clear the result is conditional),
  but the lack of motivation for the hypothesis means the conclusion has less
  physical content than the paper structure might suggest to a casual reader.
  The paper should either (a) give a physical scenario in which PA-H2.5a is
  forced by consistency requirements, or (b) more prominently label the d=4
  conclusion as "motivated by, not derived from, the half-density formalism."

- **M2. The reference [PathIntegralNormalization] is cited but not in the
  reference list.** In Derivation PA-D1.2b, the paper cites
  "[PathIntegralNormalization]" for "a comprehensive treatment showing this
  exponent is forced across temporal composition, Van Vleck determinant in curved
  space, heat-kernel diffusion, and renormalization thresholds." This tag does
  not appear in the reference list (items 1–9 at the end). This is a broken
  citation. It may refer to a companion satellite paper in this series (the
  MEMORY.md mentions a "path-integral-normalization" satellite), but if so it
  must be cited explicitly by title, authors, and path. A missing citation on a
  key claim is a publication-blocking defect.

- **M3. The conformal-Laplacian computation in PA-H2.6a is stated without full
  derivation and the result requires verification.**
  The paper asserts (in Heuristic PA-H2.6a) that for
  g_{mu nu} = e^{2 sigma} delta_{mu nu} in dimension D, the conjugated operator
  Delta-tilde psi equals a specific expression with four terms, and that the
  (partial sigma)^2 coefficient is D(4-D)/4. This is used to claim D=4 is
  singled out. The computation is plausible — it follows from the transformation
  formula for the scalar Laplacian under a conformal rescaling — but no
  derivation or reference is given for the four-term formula. The standard
  conformal transformation of the Laplacian is well-known but the half-density
  conjugation step (conjugating by |g|^{1/4} = e^{D sigma/2}) shifts the
  coefficients in a D-dependent way that is easy to get wrong. A reader wishing
  to verify this result must reproduce a non-trivial calculation from scratch.
  Either a brief derivation (even in an appendix or inline sketch) or a specific
  page reference to a text where this conjugated operator formula appears is
  needed.

### MINOR

- **m1. Section numbering and label consistency.**
  Section 6 ("Open Problems") contains inline propositions (PA-H4.1,
  PA-P4.2) that do not appear in the main hypothesis-ladder (Section 3.1). PA-P4.2
  in particular is labeled as a Proposition (suggesting mathematical proof) and
  is annotated "(THREE-AGENT result: mathematician + physicist + critic, BB4;
  sev-2)" — an internal provenance tag that should not appear in a paper intended
  for external readers. The tag should be removed or moved to a footnote/
  acknowledgment. PA-H4.1 and PA-P4.2 feel appended rather than integrated;
  the paper should either incorporate them into the main text or explicitly
  designate Section 6 as a "supplementary notes" section.

- **m2. Notation clash: sigma_* for both the reference half-density and a
  conformal factor.**
  In Sections 3 and 3.5, sigma_* is used for the reference half-density. In
  Heuristic PA-H2.6a, sigma(x) (without the asterisk) is used for the conformal
  factor. In Remark PA-H2.6c, xi_conf is used for conformal coupling. These are
  distinct, but the proximity of "sigma_*" and "sigma(x)" in the same section
  risks confusion. A brief disambiguation line ("sigma(x) here denotes the
  conformal factor, not the reference half-density sigma_*") would help.

- **m3. The d=2 case in PA-D1.3a is handled incompletely.**
  The paper states "For d=2, G_2 is dimensionless and gravity provides no scale."
  This is correct, but the d=2 case is also special in that it is the dimension
  of the 2D delta transmutation example used extensively in Section 3.3 and
  PA-E5. The relationship between "d=2 gravity is trivial" and "d=2 delta
  transmutation is the minimal witness" is not drawn. A one-sentence remark
  connecting these would prevent a reader from thinking the two appearances of
  d=2 are unrelated.

- **m4. PA-E3 (Yang-Mills sieve) gives d in {8, 6, 5} but p=1 is excluded
  without explanation.**
  The derivation says "p-1 | 4, i.e. p in {2,3,5}". The case p=1 gives
  d = 4*1/(1-1), which is undefined (0 denominator). The case p=0 gives d=0.
  The paper should note that p=1 is excluded because it gives a singular equation
  (the coupling would be dimensionless), and p=0 is excluded trivially. This is
  a minor gap in the case analysis that a careful reader will notice.

- **m5. Heuristic PA-H1.1 uses slightly imprecise language.**
  PA-H1.1 says "if K_1(x,y) and K_2(y,z) are chosen so that their product in
  the intermediate variable y is a density, then the integral is
  coordinate-invariant." This is technically accurate but the "if...chosen"
  construction obscures the key structural point: choosing both K_1 and K_2 to
  be *half*-densities in y ensures their product is always a density, without
  any additional "choosing." The phrasing as written could suggest that the
  density-product property is an additional assumption rather than a consequence
  of the half-density structure. PA-D1.1 makes this precise, but a reader
  skimming the heuristics might be misled.

---

## Verdict

**Recommendation:** MAJOR REVISION

**Justification:** The paper's core geometric claims are correct and the
hypothesis accounting is exemplary, but two issues block publication: a broken
citation ([PathIntegralNormalization] absent from the reference list), and
insufficient physical motivation for the integrality hypothesis PA-H2.5a that
drives the d=4 selection. The conformal-Laplacian claim (M3) also needs a
derivation or reference. Minor structural issues (internal provenance tags,
notation near-clashes, minor case-analysis gaps) should be corrected alongside.

---

## Detailed Comments

### On M1 (Integrality hypothesis motivation)

The paper is scrupulous in stating that PA-H2.5a is a hypothesis, but the
reader deserves at least a brief discussion of why one would impose it in a
physical theory. Heuristic PA-H2.5c provides the most promising direction:
"d=4 is the unique dimension where the half-density normalization can be
supplied by the classical (tree-level) gravitational coupling alone." If this
were elevated from a heuristic to a more precise statement — e.g., "in a
canonical quantization scheme where the path integral measure is not
renormalized beyond tree level, PA-H2.5a is the appropriate restriction" — the
d=4 selection would have a physically intelligible motivation rather than
appearing as an imposed constraint. Alternatively, if the program is ultimately
about recovering the Planck area from structural constraints of the kernel
formalism without new physics input, the paper should more clearly distinguish
what it claims to derive (a d/2 dimensional slot that needs filling) from what
it assumes (that a particular class of functions may fill it).

### On M2 (Missing reference)

The tag [PathIntegralNormalization] in PA-D1.2b must be resolved. If this is
a companion paper in the satellite series, add it to the reference list with
the full citation. If it refers to a planned but not-yet-completed paper, the
citation should be replaced with an explicit statement like "see companion
paper [X], in preparation" or the claim should be weakened to match what is
proved in the present paper. The current state — a citation tag with no entry
— is not acceptable for publication.

### On M3 (Conformal Laplacian computation)

The four-term formula for Delta-tilde psi in conformal coordinates is a
classical result but requires a careful sign convention and dimension-count.
The coefficient of the (partial^2 sigma) term should be checked: for the
operator L = -nabla^2 on R^D, conjugation by e^{D sigma/2} produces the
operator e^{-2 sigma}(-partial^2 - (D-2) partial sigma cdot partial - ...),
and the (partial sigma)^2 coefficient in the half-density-conjugated form
involves the specific D-dependence that gives D(4-D)/4. This is plausible but
a one-paragraph derivation (or a precise reference, e.g., Wald GR appendix on
conformal transformations, or Birrell–Davies QFT in Curved Space) would
transform this from an asserted formula into a verified result.

### On m1 (Internal tags)

The "(THREE-AGENT result: mathematician + physicist + critic, BB4; sev-2)"
annotation in PA-P4.2 should be removed or placed in a footnote for internal
tracking purposes. This type of internal provenance notation has no place in
a paper submitted for external review, and its appearance suggests the paper
has not been fully copy-edited before submission.

### On m4 (PA-E3 case p=1)

Add a parenthetical: "The case p=1 is excluded since it gives d = 4p/(p-1)
undefined (the YM coupling would be dimensionless in that formal limit); p=0
gives a dimensionless C, which carries no scale."

### Dimensional checks (summary, all passed)

- [G_d] = length^{d-2} from the EH action: correct (c=hbar=1 units).
- n(d-2) = d/2 => d=4, n=1: correct.
- k = d/(2(d-2)) < 1 for d >= 6: correct (e.g., d=6: k=6/8=3/4 < 1).
- d/2 half-integer for odd d: correct (parity obstruction categorical).
- [g_d^2] = length^{d-4} from YM action: correct.
- p(d-4) = d => d = 4p/(p-1): correct.
- 2n = d/2 => d = 4n for alpha_* sieve: correct.
- Free-propagator semigroup prefactor cancellation: correct (standard Gaussian
  integral in R^d).
- Delta-tilde formula (PA-H2.6a): plausible but unverified (see M3).
- Heat-kernel coincidence coefficient a_1 vanishing at D=4 for conformal
  coupling: consistent with Vassilevich (2003), accepted as correct.
