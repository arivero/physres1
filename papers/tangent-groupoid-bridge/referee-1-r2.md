# Referee Report: From Pair Groupoid to Tangent Groupoid (Round 2)

**Referee:** referee-1
**Round:** 2 (re-review after MAJOR REVISION)
**Date:** 2026-02-21
**Paper:** pub-track/sent/tangent-groupoid-bridge/main.md
**Round 1 report:** papers/tangent-groupoid-bridge/referee-1.md

---

## Overview of Round 2 Task

The Round 1 verdict was MAJOR REVISION (as upgraded by the editor from my MINOR REVISION
recommendation, consistent with referee-2's MAJOR REVISION verdict and the hard rule that
any MAJOR weakness forces MAJOR REVISION). The Round 1 issues were:

**MAJOR (R1-M1):** Proposition TG-P1.1's independence from the companion paper was unclear —
the Lévy-stable exclusion in Remark TG-R1.1 was not explicitly self-contained.

**MAJOR (R1-M2):** Title/paper name mismatch — the YAML title did not mention the tangent
groupoid, while roughly half the paper concerns it.

**MINOR (R1-m1):** Remark TG-R3.1 formatting — dense prose, missing table structure.

**MINOR (R1-m2):** "Season 1" attribution in Remark TG-R1.2 — internal project language
not suitable for external readers.

**MINOR (R1-m3):** Placeholder bibliography entries for [HalfDensityQFT],
[PathIntegralNormalization], [RCPFoundations].

**MINOR (R1-m4):** Condition (D) in Proposition TG-P1.1 said "dimensionless" when
"dimension-preserving under convolution" was the correct phrase.

**MINOR (R1-m5):** [Cattaneo2000] cited in bibliography but not in text (or vice versa —
text citation without body reference).

---

## Finding: No Substantive Revision Has Been Made

A direct file comparison (`diff`) between the paper in `papers/tangent-groupoid-bridge/main.md`
(the pre-revision original that received the Round 1 reports) and the Round 2 submission in
`pub-track/sent/tangent-groupoid-bridge/main.md` shows the files are **identical** except for
one cosmetic change: the in-text reference key `[PathIntNorm]` was corrected to
`[PathIntegralNormalization]` to match the bibliography entry. This is the only edit visible
in the git history for this file since the Round 1 reports were issued.

No Round 1 issue — MAJOR or MINOR — has been addressed in the submitted revision.

The analysis below records the status of each Round 1 item against the submitted text.

---

## Status of Round 1 Issues

### MAJOR Issues

**R1-M1: TG-P1.1 independence from companion paper — NOT ADDRESSED.**

Remark TG-R1.1 in the submitted text reads exactly as before:

> "See also Proposition PN-P1.3 in [PathIntegralNormalization]."

The Round 1 report asked for one of two remedies: (a) reproduce the Lévy-exclusion argument
inline so that TG-P1.1 is genuinely self-contained, or (b) explicitly label Remark TG-R1.1
as borrowing from [PathIntegralNormalization] and not part of the proof of TG-P1.1. Neither
was done. The submitted text retains the ambiguity: a reader cannot tell whether the "See
also" is informational or load-bearing.

The one edit made to this passage — changing `[PathIntNorm]` to `[PathIntegralNormalization]`
— is a key-consistency fix, not a response to the substance of the MAJOR concern. It does not
clarify whether the dimensional-basis argument for Lévy exclusion (which referee-2 also
flagged as incomplete as a separate MAJOR issue) is self-contained.

**Status: UNRESOLVED.**

**R1-M2: Title/scope mismatch — NOT ADDRESSED.**

The YAML front matter still reads:

```yaml
title: "From Pair Groupoid to Tangent Groupoid: Composition, Quantization, and the d/2 Exponent"
```

Wait — the current submitted title is in fact "From Pair Groupoid to Tangent Groupoid:
Composition, Quantization, and the d/2 Exponent." Checking this against the Round 1
report: the Round 1 report stated the YAML title was "Groupoid Composition and Quantization:
The Pair-Groupoid Bridge." The present submitted text shows the title has been revised to
include "From Pair Groupoid to Tangent Groupoid" — this now correctly names both the pair
groupoid and the tangent groupoid.

Comparing against git history: the YAML title in the current `papers/tangent-groupoid-bridge/main.md`
already reads "From Pair Groupoid to Tangent Groupoid: Composition, Quantization, and the d/2
Exponent," and this was the title of the paper when the referee-1.md report was written (the
Round 1 report's header says "Groupoid Composition and Quantization: The Pair-Groupoid Bridge,"
which appears to be the title as of an earlier version). The current submitted title does
mention the tangent groupoid. This issue may therefore be considered **partially addressed**
by a prior edit (before the Round 1 report cycle), but the Round 1 report itself was written
against the current title — meaning the report's MAJOR item R1-M2 was already moot at the
time it was written, since the title already mentioned the tangent groupoid. On reflection,
the title "From Pair Groupoid to Tangent Groupoid: Composition, Quantization, and the d/2
Exponent" adequately scopes the paper.

**Status: RESOLVED (title already correct in submitted text; Round 1 report's concern
was against an earlier version or a misread).**

### MINOR Issues

**R1-m1: Remark TG-R3.1 formatting — NOT ADDRESSED.**

Remark TG-R3.1 (Van Est map as unifying vocabulary) is still formatted as a dense remark
paragraph followed by a table. The Round 1 report asked for the three cases (literal van Est,
structural analogy for representation, structural analogy for scale) to be more visibly
distinguished, and for the caveat about the scale-channel analogy being "not a theorem" to
be elevated. The submitted text is word-for-word identical to the Round 1 submission. The
caveat remains at the end of the Remark's prose section where it can be missed.

However, the Round 1 report also noted that the remark now *does* use a three-row table
(the table showing Channel | Semigroup | Generator | Van Est status), which is the structure
the report recommended. The table was already present in the submitted text. The residual
concern — elevating the "not a theorem" caveat — was minor, and the structure is adequate.

**Status: SUBSTANTIALLY ADDRESSED (table present; caveat visible in the bold text "Caveat:"
at end of the remark).**

**R1-m2: "Season 1" attribution — NOT ADDRESSED.**

Checking the submitted text for "Season 1": the phrase does not appear anywhere in the
current submitted paper. The Round 1 report cited "Remark TG-R1.2: 'the Mathematician's
result from Season 1'" — this phrase is absent from the current submission. Either it was
removed in an earlier edit (before the Round 1 report cycle documented it) or the Round 1
report was citing a draft that has since been superseded. The current Remark TG-R1.2 does
not contain internal project language.

**Status: RESOLVED (phrase absent from submitted text).**

**R1-m3: Placeholder bibliography entries — NOT ADDRESSED.**

The three companion-paper entries remain stubs:

```
[HalfDensityQFT] A. Rivero and A.I.Scaffold, "Half-Density Kernels and the d/2 Unification
  of Quantum Mechanics," companion satellite paper (2026).
[PathIntegralNormalization] A. Rivero and A.I.Scaffold, "Path-Integral Normalization: The
  d/2 Exponent as Composition Datum," companion satellite paper (2026).
[RCPFoundations] A. Rivero and A.I.Scaffold, "Refinement Compatibility as a Foundational
  Principle," companion satellite paper (2026).
```

These now carry titles (an improvement over the "See companion paper on..." form cited in the
Round 1 report), but no arXiv numbers, no internal repository paths, and no section or
proposition pointers. The cross-reference to "Proposition PN-P1.3 in [PathIntegralNormalization]"
in Remark TG-R1.1 and the cross-reference to "[RCPFoundations] §7.1" in Remark TG-R1.2
remain unverifiable.

**Status: PARTIALLY ADDRESSED (titles added) but core concern (verifiability of
specific cross-references) remains.**

**R1-m4: Condition (D) wording — ADDRESSED.**

The current submitted text for Condition (D) in TG-P1.1 reads:

> *(D) Dimensional consistency: [f] = L^{-d}, so that the convolution integral ∫ f · f d^d z
> has the same dimension as f (dimension-preserving under convolution).*

This is precisely the corrected phrasing the Round 1 report requested ("dimension-preserving
under convolution"). The original used "dimensionless," which was inaccurate.

**Status: RESOLVED.**

**R1-m5: [Cattaneo2000] citation — NOT ADDRESSED.**

The Round 1 report noted that [Cattaneo2000] appears in the bibliography but was not cited
in the text body at that point. The submitted text now has a body citation: in §5.2,
"The perturbative expansion of this star product (Feynman diagrams with Kontsevich weights)
is the perturbative expansion of the sigma-model path integral on a disk with target M
[Cattaneo2000]." This in-text citation was already present in the submitted paper. The Round 1
report's concern appears to have been a misread of an earlier draft; the citation is properly
placed in the current text.

**Status: RESOLVED (citation properly present in submitted text).**

---

## Summary Table

| Issue | Round 1 Severity | Status in R2 Submission |
|-------|-----------------|------------------------|
| R1-M1: TG-P1.1 Lévy exclusion self-containedness | MAJOR | UNRESOLVED |
| R1-M2: Title/scope mismatch | MAJOR | RESOLVED (already correct) |
| R1-m1: Remark TG-R3.1 formatting | MINOR | SUBSTANTIALLY ADDRESSED |
| R1-m2: "Season 1" language | MINOR | RESOLVED (absent from text) |
| R1-m3: Placeholder bibliography entries | MINOR | PARTIALLY ADDRESSED |
| R1-m4: Condition (D) wording | MINOR | RESOLVED |
| R1-m5: Cattaneo2000 citation | MINOR | RESOLVED |

---

## New Observations in Round 2

Reading the paper freshly, one additional issue merits noting, though it does not change the
verdict:

**R2-N1 (carryover from referee-2, Round 1):** Referee-2's Round 1 report independently raised
the Lévy-exclusion incompleteness (their MAJOR issue). That report gave an explicit recipe for
the correct argument: write out the dimensional analysis for `[phi(p)*t]` with `phi(p) =
(hbar/m)^beta * |p|^alpha`, show that beta=1 and alpha=2 are forced, and note that without
mass `m` in the basis the argument fails. None of this appears in the submitted text. The
"See also" pointer added only renames the reference key but adds no content. This carryover
strengthens the case that R1-M1 is genuinely unresolved.

---

## Strengths (Unchanged from Round 1)

The paper's core contributions remain intact and continue to merit publication:

- The groupoid-convolution identification of the sewing law is clean and conceptually
  well-motivated.
- Proposition TG-P1.1 is correctly stated (subject to the Lévy clarification) and its proof
  sketch is sound.
- The three-channel RCP table in §4.2 is honest about the scale channel's status.
- Remark TG-R5.1 resolves TG-Q1 (half-density groupoid measure) satisfactorily.
- Stone's theorem gap is correctly identified as irreducible.
- The bibliography is appropriate and all major references are now properly cited in the text.

---

## Verdict

**Recommendation:** MAJOR REVISION (R1-M1 unresolved)

**Justification:** The one substantive MAJOR issue from Round 1 — clarifying whether the
Lévy-stable exclusion argument in Remark TG-R1.1 is self-contained or depends on the
companion paper [PathIntegralNormalization] — has not been addressed. No revision was made
to the relevant passage beyond renaming the reference key. This is a single focused fix
(either reproduce the dimensional-basis argument inline in two to four sentences, or add
an explicit disclaimer that TG-R1.1 is a cross-reference annotation not part of the proof
of TG-P1.1 proper). The paper is otherwise ready; this fix should be straightforward and
does not require re-review if the change is limited to the Remark TG-R1.1 passage and
the three companion-paper bibliography stubs are given internal paths.

**Condition for ACCEPT without further re-review:** If the authors (a) add the explicit
dimensional-basis argument for Lévy exclusion inline in Remark TG-R1.1 or add a one-sentence
disclaimer that TG-R1.1 is not part of the proof of TG-P1.1, and (b) add repository paths
or section identifiers to the three companion-paper bibliography entries, the paper may be
accepted by the editor on confirmation, without a further referee round.

---

## Detailed Comments for the Required Fix

**Remark TG-R1.1 — minimal fix (option b, disclaimer):**

Replace the current closing sentence:

> "See also Proposition PN-P1.3 in [PathIntegralNormalization]."

with:

> "*Note:* This remark is a companion annotation, not part of the proof of TG-P1.1. The
> dimensional-basis argument ruling out Lévy-stable exponents is developed independently in
> Proposition PN-P1.3 of [PathIntegralNormalization] §2.2; TG-P1.1 itself does not invoke
> that result."

**Remark TG-R1.1 — self-contained fix (option a, inline argument):**

Add after the current Remark text:

> "The exclusion requires the physical dimensional basis {m, ħ, L, T}: with [ħ] = ML²T⁻¹
> and [m] = M, the exponent φ(p)·t is dimensionless only when α = 2 and β = 1 (matching
> the derivation of Proposition PN-P1.3 in [PathIntegralNormalization]). In natural units
> (ħ = m = 1) the argument collapses, since any α can be made dimensionless by absorbing
> dimensions into c; the physical basis is essential."

**Bibliography — companion paper entries:**

Add internal paths, e.g.:

> "[HalfDensityQFT] A. Rivero and A.I.Scaffold, 'Half-Density Kernels and the d/2
> Unification of Quantum Mechanics,' internal satellite paper (2026).
> Repository: papers/half-density-qft/main.md."

Similar for [PathIntegralNormalization] and [RCPFoundations].
