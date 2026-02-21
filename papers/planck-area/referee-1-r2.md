# Referee Report (Round 2): Planck Area from Half-Density Normalization

**Referee:** referee-1
**Date:** 2026-02-21
**Round:** 2
**Paper:** pub-track/sent/planck-area/main.md
**Round 1 report:** papers/planck-area/referee-1.md

---

## Summary of Revision

The authors have made a focused and disciplined revision. The most important change
is the demotion of the former Proposition PA-P4.2 (b-calculus contact spectrum) to
Conjecture PA-C4.2, with the three-agent attribution removed and an explicit disclaimer
that a self-contained proof or completed companion paper is required before the claim
can be elevated. A second major addition is a sustained "Important caveat" in Heuristic
PA-H2.5c that situates the tree-level/loop distinction within perturbative gravity
and acknowledges non-perturbative caveats. Several minor issues have also been resolved:
the [PathIntegralNormalization] placeholder is now a proper companion-paper citation,
PA-D1.9 has been relabeled a Heuristic with an explicit distributional-convergence
disclaimer citing Hormander, the Yang-Mills example PA-E3 now states the domain of
p explicitly, and the Vassilevich equation number is cited in Remark PA-H2.6c.

Two minor issues (MINOR-2 and MINOR-3) remain unresolved.

---

## Status of Round 1 Issues

### MAJOR Issues

**[MAJOR-1] PA-P4.2 unverified, "THREE-AGENT result" without derivation.**
Status: **RESOLVED.**

The former Proposition PA-P4.2 is now Conjecture PA-C4.2. The "(THREE-AGENT result:
mathematician + physicist + critic, BB4; sev-2)" attribution has been removed. The
revised text explicitly states: "The deficiency-index claim...and spectrum formula
require a self-contained proof or reference to a completed companion paper; they are
stated here as a conjecture pending such verification." The d=2 contrast is now
explicitly conditional: "Contrast with d=2 (if the conjecture holds)." The conjectured
implication for the area-scale program is clearly flagged as conditional on the
deficiency-index and spectral claims. Sub-issues (a)-(d) from the Round 1 report are
all addressed by the demotion: a conjecture need not supply a derivation in this paper.
The resolution is appropriate and the labeling is now honest.

**[MAJOR-2] "Gravity-only" restriction inadequately motivated as a physical principle.**
Status: **SUBSTANTIALLY RESOLVED** (one sub-issue partially open, see below).

Heuristic PA-H2.5c has been expanded with a substantive "Important caveat" paragraph
that gives the following: (i) the tree-level/loop distinction is situated in the
Wilsonian effective-action framework, with the EH action defining the tree-level
vertex and higher-derivative corrections suppressed by powers of E^2 G_d; (ii)
analyticity in G_d is identified precisely as analyticity in the perturbative
gravitational expansion; (iii) the physical meaning — "the half-density normalization
be definable without needing to resum the gravitational loop series" — is stated
explicitly; (iv) the label "tree-level sufficiency criterion rather than a mathematical
elegance condition" names the principle accurately; (v) the non-perturbative caveat is
acknowledged and the conditional nature of the conclusion is restated.

The final summary of Section 3.3 reinforces this: "the Planck area identification is
motivated by, not derived from, the half-density formalism — it requires the additional
PA-H2.4 + PA-H2.5a + gravity-only hypotheses."

**Remaining sub-issue (not a blocking weakness):** Sub-issue (a) from Round 1 asked
why the m=0 case in Example PA-E2 (gravity + cosmological constant) is physically
preferred over m=1, m=2, etc. The paper still provides only parsimony ("d=4 is the
only case with m=0, no need to involve Lambda_d") as the answer. This is an honest
framing — the preference is aesthetic/parsimonious rather than structural — and the
paper does not claim otherwise. This residual sub-issue is acceptable for publication
given that the paper is explicit about the conditional nature of all conclusions
depending on the gravity-only restriction.

---

### MINOR Issues

**[MINOR-1] B-DEF-P1.1 cross-reference undefined in this paper.**
Status: **RESOLVED.**

The revised Conjecture PA-C4.2 no longer invokes B-DEF-P1.1. The cross-reference
has been removed and replaced with the explicit conjecture disclaimer. No dangling
cross-reference remains.

**[MINOR-2] Notation d vs D inconsistently managed.**
Status: **UNRESOLVED.**

The Section 1 notation warning remains (read d as D in PA-D1.3), but the body still
switches between d and D without tagging in PA-H2.6a, PA-H2.6c, and now Conjecture
PA-C4.2. For example, PA-C4.2 uses "d=4 b-calculus" and "for all d >= 2" while the
surrounding conformal-filter heuristics use D freely. The warning-in-advance approach
is a partial mitigation, but a reader who enters any of these sections without the
notation block fresh in mind will face ambiguity. This remains a minor readability
concern. The paper is publishable with this notation as-is; a global notation pass
would improve it further.

**[MINOR-3] Heuristic PA-H1.4 redundant (Section 4).**
Status: **UNRESOLVED.**

Heuristic PA-H1.4 (compact restatement of Derivation PA-D1.3) remains in Section 4,
placed after the Van Vleck derivations and before the Section 5 connection to the
refinement-composition framework. Its position still interrupts the flow of Section 4,
which is otherwise entirely about stationary phase and Van Vleck prefactors. The
remark is not incorrect; it is merely misplaced. This is a minor structural issue
that does not affect the paper's arguments.

**[MINOR-4] Example PA-E3 domain of p unstated.**
Status: **RESOLVED.**

The revised PA-E3 now states "with integer p >= 0" and explicitly discusses p=1
(undefined, YM coupling dimensionless in that formal limit) and p=0 (dimensionless C,
no scale). The argument is now complete.

**[MINOR-5] [PathIntegralNormalization] dangling citation.**
Status: **RESOLVED.**

Reference 10 in the revised paper is now a full citation: A. Rivero and A.I.Scaffold,
"Path-Integral Normalization: The d/2 Exponent as Composition Compatibility Datum,"
companion satellite paper in this series (2026). This is a companion paper in the
same series, not yet published independently, but it is an honest citation. The key
information — that this is a companion satellite paper treating the d/2 exponent across
multiple contexts — is now stated explicitly for the reader.

**[MINOR-6] Vassilevich equation number missing.**
Status: **RESOLVED.**

Remark PA-H2.6c now cites "[Vassilevich2003HeatKernel, eq. (4.14) for the a_1
coefficient]" at the end of the passage listing the five manifestations of the d/2
exponent. Verifiability is restored.

**[MINOR-7] PA-D1.9 epsilon-to-0 limit unjustified for a Derivation.**
Status: **RESOLVED.**

The item is now labeled `Heuristic PA-D1.9` (not Derivation) and contains an
explicit parenthetical: "(The epsilon->0 limit below is formal; a rigorous treatment
requires distributional convergence in the Schwartz topology, e.g. via stationary-phase
estimates in the distributional sense — see Hormander, *The Analysis of Linear Partial
Differential Operators I*, §7.7.)" The label change and the Hormander pointer together
adequately address the concern.

---

## Remaining Issues

Two unresolved MINOR issues carry over:

1. **MINOR-2 (d/D notation):** A global notation pass (replacing untagged d or D with
   parenthetical "(spatial)"/"(spacetime)" on first use in each derivation/conjecture
   block) would eliminate a persistent source of confusion, but the paper is intelligible
   as-is given the warning in Section 1. Not a blocking issue.

2. **MINOR-3 (PA-H1.4 placement):** Moving or removing Heuristic PA-H1.4 from its
   current position in Section 4 would improve the logical flow of that section, but
   the remark is not incorrect. Not a blocking issue.

Neither remaining issue is a barrier to publication.

---

## Verdict

**Recommendation:** ACCEPT

**Justification:** Both MAJOR issues from Round 1 have been adequately resolved: the
former Proposition PA-P4.2 is now honestly labeled Conjecture PA-C4.2 with an explicit
disclaimer, and the gravity-only restriction is now given a precise physical
interpretation (tree-level sufficiency in perturbative gravity) with appropriate
non-perturbative caveats. Five of the seven MINOR issues are resolved; the two
remaining (notation and one displaced remark) are minor readability concerns that do
not affect the paper's correctness or argument structure. The paper's core contribution
— a carefully structured hypothesis ladder showing precisely which conclusions are
geometric facts and which require additional selection principles — is sound and clearly
presented. The paper is ready for publication.
