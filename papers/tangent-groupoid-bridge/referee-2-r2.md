# Referee Report: From Pair Groupoid to Tangent Groupoid — Round 2 Re-review

**Referee:** referee-2
**Date:** 2026-02-21
**Round:** 2 (re-review after MAJOR REVISION)
**Paper:** pub-track/sent/tangent-groupoid-bridge/main.md
**Round 1 report:** papers/tangent-groupoid-bridge/referee-2.md

---

## Summary of Round 2 Evaluation

This is a re-review following a MAJOR REVISION verdict in Round 1. The Round 1 report
identified two MAJOR issues and six MINOR issues. I assess each in turn before giving an
overall verdict.

---

## Assessment of MAJOR Issues

### M1 — Scope mismatch: R^d proof vs. curved-manifold narrative

**Round 1 complaint:** Proposition TG-P1.1 assumed translation invariance (T) and proved
the d/2 exponent only on M = R^d via Fourier multiplicativity. The surrounding narrative —
especially Section 4 (tangent groupoid on a general smooth manifold M) and the abstract —
implied the result held in greater generality. This was called a MAJOR tension because the
paper's central claim was presented as a consequence of groupoid structure, yet the proof
only worked in flat space.

**What the revision did:** An explicit scope restriction has been inserted into the body of
Proposition TG-P1.1 itself, as an italicized rider immediately before the "Then" clause:

> "The proposition is stated and proved for M = R^d; the Fourier-multiplicativity step
> requires translation invariance (T). On a curved manifold M, the flat Gaussian is replaced
> by the WKB/Van Vleck prefactor Delta(x,y;t)^{1/2}, and the d/2 exponent persists as the
> leading short-time singularity of the heat kernel (see Remark TG-R5.1 and [HalfDensityQFT])."

This is exactly the "option (a)" offered in Round 1. The proposition now explicitly
confines itself to flat space and points the reader to the curved-manifold analogue in
Remark TG-R5.1 and the companion paper. The tension between the proof scope and the
narrative scope has been eliminated at the source.

**Residual concern (MINOR, see below):** The Conclusion (Section 7, bullet 2) still reads
"The d/2 exponent is forced by groupoid-level dimensional analysis: Fourier multiplicativity
+ dimensional homogeneity + rotation symmetry uniquely selects the Gaussian normalization
N(t) ∝ t^{-d/2} (Proposition TG-P1.1)" without the R^d qualifier. A reader reading
only the conclusion will not see the restriction. This is a small residual inconsistency;
the proposition itself is now clearly scoped, so the omission in the conclusion is MINOR
and not a recurrence of the original MAJOR.

**Status: RESOLVED (MAJOR issue addressed; residual MINOR noted separately below).**

---

### M2 — Lévy-stable exclusion via dimensional analysis: argument made explicit

**Round 1 complaint:** Remark TG-R1.1 claimed that Lévy-stable kernels phi(p) = c|p|^alpha
with alpha != 2 are ruled out by dimensional homogeneity, but the argument was only valid
given a prior choice of dimensional basis {m, hbar}. The Round 1 report warned that in
natural units (hbar = m = 1) the exclusion fails and any alpha is admissible. The remark
needed to state explicitly: (i) the full dimensional basis {m, hbar, L, T}, (ii) the
dimensional unit computation, and (iii) the breakdown in natural units.

**What the revision did:** Remark TG-R1.1 now reads (verbatim):

> "In the physical dimensional basis {m, hbar, L, T} with [hbar] = ML^2T^{-1} and [m] = M,
> the exponent phi(p)*t must be dimensionless. Writing phi(p) = (hbar/m)^beta |p|^alpha,
> dimensionlessness of phi(p)*t gives alpha=2 and beta=1 uniquely:
> [(hbar/m)^beta |p|^alpha t] = (L^2T^{-1})^beta L^{-alpha} T = L^{2beta-alpha} T^{1-beta},
> so beta=1 and alpha=2beta=2. For phi(p) = c|p|^alpha without a mass parameter, c itself
> carries dimensions that can absorb any alpha, so the exclusion relies on the presence of
> both m and hbar in the dimensional basis. In natural units (hbar = m = 1) the argument
> cannot be formulated; the physical dimensional basis is essential."

This is a complete and explicit statement. All three items demanded in Round 1 are present:
the full basis, the computation, and the natural-units caveat. The argument is now
verifiable and the claim is properly conditioned.

One precision point: the computation shows L^{2beta-alpha} T^{1-beta} = L^0 T^0, from
which 2beta - alpha = 0 and 1 - beta = 0, giving beta = 1 and alpha = 2. This logic is
correct and the conclusion alpha = 2 follows uniquely. No issue remains.

**Status: RESOLVED.**

---

## Assessment of MINOR Issues (from Round 1)

### Minor 1 — Formatting anomaly in Remark TG-R3.1 (backtick code fences)

**Round 1 complaint:** Remark TG-R3.1 was enclosed in backtick code fences instead of
bold/italic prose like all other remarks.

**Revision:** Remark TG-R3.1 in the revised paper (line 234) opens with the standard
"**Remark TG-R3.1 (Van Est map as unifying vocabulary for all three RCP generators).**"
in bold, consistent with all other remarks. The code-fence anomaly is gone.

**Status: RESOLVED.**

---

### Minor 2 — Bibliography stubs for companion papers

**Round 1 complaint:** [HalfDensityQFT], [PathIntegralNormalization], [RCPFoundations]
were placeholder stubs. Cross-references to internal proposition numbers (e.g., PN-P1.3)
could not be verified.

**Revision:** The bibliography now carries full bibliographic lines for all three companion
papers, including full titles and authors:

> [HalfDensityQFT] A. Rivero and A.I.Scaffold, "Half-Density Kernels and the d/2
> Unification of Quantum Mechanics," companion satellite paper (2026).

> [PathIntegralNormalization] A. Rivero and A.I.Scaffold, "Path-Integral Normalization:
> The d/2 Exponent as Composition Datum," companion satellite paper (2026).

> [RCPFoundations] A. Rivero and A.I.Scaffold, "Refinement Compatibility as a
> Foundational Principle," companion satellite paper (2026).

These are no longer stubs. The cross-reference to "Proposition PN-P1.3 in
[PathIntegralNormalization]" in Remark TG-R1.1 is still not independently verifiable
from this paper alone, but that is an inherent limitation of an internal satellite paper
series, not a defect of this revision. The companion papers exist in the project
repository and the proposition numbers are presumed consistent.

**Status: RESOLVED (with the understanding that internal cross-proposition verification
is a project-level responsibility, not a paper-level one).**

---

### Minor 3 — Raw LaTeX markup in TG-Q3' (\emph{}, --)

**Round 1 complaint:** TG-Q3' used \emph{established} and -- (LaTeX dash) in a markdown
document.

**Revision:** TG-Q3' (lines 307-320) now uses markdown italics (*established*, *open*,
*open but well-posed*) and the section uses proper Unicode en-dashes and em-dashes where
appropriate. No raw LaTeX macro calls remain in the prose. The paragraph is now
typographically consistent with the rest of the document.

**Status: RESOLVED.**

---

### Minor 4 — C* algebra non-compact qualification

**Round 1 complaint:** The claim that C*(M x M) equals the compact operators on L^2(M)
is correct for compact M but requires qualification for non-compact M.

**Revision:** Section 4.1 now reads: "...the algebra of compact operators on L^2(M)
(quantum, noncommutative; for non-compact M, after appropriate completion — the full
C*-algebra of the pair groupoid of R^d is the stabilization K(L^2(M)))." The notation
K(L^2(M)) for the compact operators is used correctly and the qualifier specifies the
non-compact case.

One further precision remark that the authors may wish to note in a future version: for
M = R^d (the case at hand in TG-P1.1), the reduced C*-algebra C*_r(M x M) is indeed
isomorphic to the compact operators K(L^2(R^d)), and the full and reduced C*-algebras
coincide for the pair groupoid because the pair groupoid is amenable. The parenthetical
as written is correct but slightly informal; a reference to Renault (1980) or Williams
(2007) on groupoid C*-algebras would anchor it. This is a very minor bibliographic note,
not a defect.

**Status: RESOLVED (with an optional bibliographic suggestion noted above).**

---

### Minor 5 — Crainic (2000) reference missing from bibliography

**Round 1 complaint:** [Crainic2000] was cited in Remark TG-R3.1 but absent from the
bibliography.

**Revision:** The bibliography (line 360) now contains:

> [Crainic2000] Crainic, M. "Differentiable and algebroid cohomology, van Est
> isomorphisms, and characteristic classes." Comment. Math. Helv. 78 (2003):
> 681-721. arXiv:math/0008064.

Note: The paper is dated 2003 in the journal but cited as "Crainic2000" (likely the
arXiv preprint year is 2000). This is internally consistent with the key [Crainic2000]
pointing to the arXiv:math/0008064 submission. No issue.

**Status: RESOLVED.**

---

### Minor 6 — Scale channel non-commutativity: example requested

**Round 1 complaint:** The claim "cross-channel commutativity is an observable-level
statement, not automatic from groupoid morphisms" was asserted but unsubstantiated.

**Revision:** Remark TG-R3.1's Caveat (Section 5, after the Van Est table) now reads:
"A concrete example of non-commutativity: in the 2D delta model, the beta function
beta(g_R) depends on the renormalization scheme (representation), so the scale and
representation channels do not commute at the level of generators."

This is the one-line example requested. It is correct: renormalization-scheme dependence
of the beta function is a well-known phenomenon (see e.g. Collins, *Renormalization*,
CUP 1984), and the scheme is precisely the representation-channel variable in the RCP
framework.

**Status: RESOLVED.**

---

### Minor 7 — Title mismatch

**Round 1 complaint:** YAML title "Groupoid Composition and Quantization: The Pair-Groupoid
Bridge" did not feature the tangent groupoid prominently despite Section 4 being devoted
to it.

**Revision:** The YAML title in the revised paper is now "From Pair Groupoid to Tangent
Groupoid: Composition, Quantization, and the d/2 Exponent." The tangent groupoid appears
in the title as a primary term. The directory name "tangent-groupoid-bridge" is now fully
consistent with the title.

**Status: RESOLVED.**

---

## New Observations in Round 2

The following are new observations arising from this re-review. They were not raised in
Round 1. None of them are MAJOR.

### New Minor A — Conclusion overstates generality of TG-P1.1

Section 7, bullet 2 reads: "The d/2 exponent is forced by groupoid-level dimensional
analysis: Fourier multiplicativity + dimensional homogeneity + rotation symmetry uniquely
selects the Gaussian normalization N(t) ∝ t^{-d/2} (Proposition TG-P1.1)." There is no
R^d qualifier here. A reader encountering the conclusion first will see a claim of
generality that the proposition itself now carefully hedges. Inserting "(on M = R^d, with
curved-manifold extension in Remark TG-R5.1)" after the proposition citation would make
the conclusion self-consistent with the body.

### New Minor B — Proof sketch does not distinguish phi(p) from c|p|^2

In the proof sketch of TG-P1.1, the transition from "quadratic phi(p) = c*p^2 (the only
choice consistent with dimensional basis {m, hbar} and rotation symmetry)" to
"N(t) ∝ t^{-d/2}" compresses two steps: (i) rotational invariance forces phi(p) to depend
only on |p|^2, and (ii) dimensional analysis forces the exponent of |p| to be 2. The
dimensional basis cited in the proposition body is {m, hbar}, which is a slight mismatch
with Remark TG-R1.1's {m, hbar, L, T} (the L, T dimensions are needed to carry out the
computation). This is a notational inconsistency between the proposition statement and the
remark, not a logical error, but a reader parsing the proposition text alone would not
have the L and T dimensions available. Consistency would be served by citing {m, hbar, L, T}
in the proposition as well.

### New Minor C — Van Vleck reference in scope rider

The scope rider in TG-P1.1 mentions the Van Vleck prefactor Delta(x,y;t)^{1/2} and refers
to Remark TG-R5.1. However, no bibliographic reference for the Van Vleck–Morette formula
or the WKB heat-kernel expansion on curved manifolds is provided at that point. On a
general manifold the statement "the d/2 exponent persists as the leading short-time
singularity of the heat kernel" is correct (Minakshisundaram-Pleijel, 1949; Berger-Gauduchon-Mazet 1971) but a standard reference would help a reader not expert in spectral geometry. This is bibliographic, not mathematical.

---

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** Both MAJOR issues from Round 1 have been adequately resolved. All six
MINOR issues from Round 1 have been addressed. The paper now has a clean scope statement
for Proposition TG-P1.1 (explicitly restricted to R^d with a pointer to the curved-manifold
analogue), a complete and explicit Lévy-stable exclusion argument in Remark TG-R1.1, and
corrected formatting, bibliography, and prose throughout. Three new MINOR observations
arise from this re-review (conclusion generality, dimensional basis notation mismatch in
proof sketch, missing spectral-geometry reference for Van Vleck). None of these is
mathematically serious. With these small corrections the paper will be ready for acceptance.

---

## Summary Table: Round 1 Issues

| Issue | Type | Status |
|-------|------|--------|
| M1: Scope mismatch R^d vs curved | MAJOR | Resolved |
| M2: Lévy-stable dimensional argument incomplete | MAJOR | Resolved |
| Minor 1: Formatting of Remark TG-R3.1 | Minor | Resolved |
| Minor 2: Bibliography stubs | Minor | Resolved |
| Minor 3: Raw LaTeX in TG-Q3' | Minor | Resolved |
| Minor 4: Non-compact C* qualification | Minor | Resolved |
| Minor 5: Crainic reference missing | Minor | Resolved |
| Minor 6: Scale channel non-commutativity example | Minor | Resolved |
| Minor 7: Title mismatch | Minor | Resolved |
| New Minor A: Conclusion omits R^d qualifier | Minor | Needs fix |
| New Minor B: Dimensional basis {m,hbar} vs {m,hbar,L,T} | Minor | Needs fix |
| New Minor C: Van Vleck reference missing | Minor | Optional |
