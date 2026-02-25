# V2 Revision Process: Writer-Referee Ping-Pong

This document records the revision process for "From Newton to the Path Integral"
(main paper, v2).

## Source and Target

- **Source:** `paper/main.md` (v1, 2045 lines)
- **Target:** `docs/main-paper/main-revised.md` (v2, ~2034 lines)

## Writing Phase

The revision was parallelized across four section groups, each handled by an
independent writing agent (Claude Opus) working from explicit WRITING GUIDELINES:

| Agent | Sections | Lines | Output |
|-------|----------|-------|--------|
| A | 1-4 (Introduction through Lagrangian/Noether) | 386 | `tmp/revised-A.md` |
| B | 5-6 (Distributions through Composition-Forcing) | 476 | `tmp/revised-B.md` |
| C | 7-9 (Deformation Quantization through Conclusion) | 562 | `tmp/revised-C.md` |
| D | 10 + References (Appendices) | 638 | `tmp/revised-D.md` |

**Total assembled:** 2062 lines.

### Writing Guidelines Applied

1. Kill the remark spiral (no over-labeling)
2. Simple labels (no alphanumeric codes like P4.2, D4.1a)
3. Trust the reader (no hand-holding transitions)
4. Cut analog chains (don't repeat "just as X, so Y" three times)
5. Separate known from new
6. Have an opinion (state conclusions directly)
7. Remove backtick labels, Package/editorial tags, transition sentences

## Referee Round 1: Friendly Review

**File:** `tmp/referee-report-v1.md`
**Verdict:** Accept with minor revisions

**Issues identified:**
1. Ghost cross-references from old labeling system (P4.2, P5.2, D4.1a, H0.2, P10.1)
   survived in sections 9-10 from multi-agent assembly
2. Speculative conclusion too long
3. Numbering gaps in Remarks
4. Missing blank line between Sections 4 and 5
5. Notation collision: bare `m` vs `m_l` for Levy index

**Fixes applied:**
- Replaced all 11+ ghost references with correct new labels
  (P4.2 -> Proposition 6.1, P5.2 -> Proposition 7.4, etc.)
- Fixed blank line
- Fixed m/m_l collision

## Referee Round 2: Hostile Review

**File:** `tmp/referee-report-v2.md`
**Verdict:** Major Revision (bordering on Reject)

### Fatal Flaws Identified

1. **Gerrymandered hypotheses in Proposition 6.1:** Hypothesis (L) presupposes
   exponential form; (D) builds in dimensional structure with {m, hbar}.
2. **Circularity in dimensional argument:** Using {m, hbar} as dimensional basis
   to derive hbar.

### Serious Weaknesses (10 total)

1. Sections 3-5 contain no new results (textbook material)
2. Scope inflation in speculative Remarks (Stages 3-4, cobordism, Verlinde, etc.)
3. RCP (Section 10.3) is vacuous
4. Proposition 6.4 (universality of kappa) is hand-waving
5. Paper is too long [rejected by authors]
6. Proposition 6.5 overclaims (works only for free flat case)
7. "Forced completions" narrative overinterprets
8. Missing engagement with Feynman-Kac theorem
9. Companion satellite escape hatch
10. Inconsistent claim taxonomy

### What Actually Works (Referee's Grudging Acknowledgement)

- Derivations 6.1-6.2: clean and correct
- Section 6.3 (ordering ambiguity): genuinely useful
- Derivation 6.6 (impulse-kick kernel): nice calculation
- Section 8.4 (step-halving as RG model): best section in the paper
- Section 10.5 (2D delta interaction): solid, self-contained
- Half-density discussion: mathematically sound
- Section 10.2 (spectral witnesses): genuine calculations

### 10 Missing References

Feynman-Kac (Kac 1949), Nelson 1964, Reed & Simon Vol II, Schulman 1981,
DeWitt-Morette 1972-1976, Hall 2013, Klauder & Daubechies 1982-1985,
Hardy 2001, Chiribella et al. 2011, Kapustin 2010.

## Fixes Applied After Referee Round 2

### 1. Circularity fix (critical)

Added **Remark** (Non-circular derivation of the action-dimensional constant)
after Proposition 6.3. Uses argument from Rivero 1998 (`quant-ph/9803035`):
hbar enters as convergence control parameter epsilon/epsilon' (distributional
regularization vs time-slicing), not from assumed dimensional basis. Supported
by tangent groupoid framework from Rivero 1997 (`funct-an/9710026`).

### 2. Proposition 6.5 scope caveat

Integrated "free flat case" limitation into the Proposition title and body
(was previously stated as general with a separate caveat paragraph).

### 3. Remark de-numbering

Removed all Remark numbers (1.1, 1.2, 3.1, 3.2, 3.3, 4.1). All Remarks are
now consistently formatted as **Remark** (descriptive title). Rationale:
the writing guidelines explicitly say "Let structure emerge, don't impose taxonomy."

### 4. Feynman-Kac engagement

Added **Remark** (Relation to Feynman-Kac semigroup theory) after the
literature-precedents remark near Proposition 6.1. Cites Kac 1949, Nelson 1964,
Schulman 1981. Positions the result: Feynman-Kac assumes generator H and derives
kernel; Proposition 6.1 works in reverse (derives necessity of kappa from
requirement that a composable kernel exists at all).

### 5. Missing references

Added 7 references: Rivero 1998, Rivero 1997, Kac 1949, Nelson 1964,
Schulman 1981, Hardy 2001, Chiribella et al. 2011. Added in-text citations
for Hardy and Chiribella in the parallel-reconstruction discussion.

### 6. Speculative Remarks consolidation

Consolidated 6 speculative Remarks (Stage 4, cobordism hypothesis, CFT sewing,
Verlinde fusion, q-deformed forcing, arithmetic rigidity) into 2 shorter Remarks
with explicit "Speculative:" prefix:
- **Remark** (Speculative: composition-forcing at higher categorical levels)
- **Remark** (Speculative: arithmetic rigidity pattern in the forcing chain)

Mathematical content preserved; prose tightened; explicitly framed as
"structural observations, not proven results."

## What Was NOT Changed

- **Paper length:** Referee 2 said "paper is far too long." Authors disagree.
  Paper stays at ~2034 lines (vs 2045 original).
- **Sections 3-5:** Referee 2 said these are textbook material. They serve the
  compositional narrative and are retained.
- **Companion satellites:** Referee 2 objected to deferring content. The satellites
  are genuine companion papers, not escape hatches.
- **RCP (Section 10.3):** Referee 2 called it "vacuous." We disagree but made
  no changes here pending the RCP satellite paper.

## Referee Round 3 (R4): Final Review

**File:** `tmp/referee-report-v4.md`
**Verdict:** Accept with minor revisions

Five items requiring correction:
1. Cross-reference errors: "Proposition Principle 10.1" → "Principle 10.1",
   "groupoid reading (Section 8)" → "(Section 7.4)"
2. Language fixes: "slogan" → "standard prescription", "trivially clean" →
   "straightforward", "Four honest scope boundaries" → "Four residual scope
   boundaries"
3. Claim taxonomy: Lemma, Corollary, Example, Principle not listed in Section 2.3
4. Proposition 10.7 derivation claim not fully exhibited
5. Companion papers "in preparation" create forward-reference burden

### Fixes applied:
- All cross-reference errors corrected
- All language items fixed
- "hostile reading" (from referee context) → "A natural objection"
- Tangent groupoid Remark expanded with dilatation structure τ_λ, semigroup law,
  bare/renormalized series, Wilson-Kogut triangle (from Rivero 1997 Section 3
  and Appendix)

## Final State

v2 paper: `docs/main-paper/main-revised.md` (2034 lines, 50 references)
PDF: `docs/main-paper/main-revised.pdf` (328KB)
