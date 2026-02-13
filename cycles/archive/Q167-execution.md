# Q167 Execution: Referee review of C283 (Remark 3.1a)

## Read tasks
1. Read `papers/relativistic-central-orbits/main.md` (complete file, 275 lines)
2. Examined Remark 3.1a at line 84-85
3. Checked Section 1 (lines 8-12) for refinement-witness framing
4. Checked Section 3.1 (lines 72-82) for preceding context
5. Verified no cycle labels: `rg -n 'C[0-9]{2,3}' main.md` → clean
6. Verified no transcript citations: `rg -n 'conv_patched' main.md` → clean

## Technical accuracy audit (Remark 3.1a claims)

### Claim 1: Kinematic corrections vanish
**Stated**: "Lorentz factors, the radius contraction \(\sqrt{1-K^2/(c^2L^2)}\)) vanish"

**Verification**:
- Section 3 line 61: \(r=\frac{L^2}{Km}\sqrt{1-\frac{K^2}{c^2L^2}}\)
- As \(c\to\infty\): \(\frac{K^2}{c^2L^2}\to 0\), so \(\sqrt{1-K^2/(c^2L^2)}\to 1\) (not "vanish" → it approaches 1, meaning the correction factor \(\sqrt{1-K^2/(c^2L^2)} - 1 \to 0\))
- Lorentz factor \(\gamma=(1-v^2/c^2)^{-1/2}\to 1\) as \(c\to\infty\)

**Assessment**: The language "vanish" is imprecise. The *corrections* vanish (i.e., deviations from 1), but the factors themselves approach 1. The remark should say "kinematic correction factors" or "Lorentz factor corrections" vanish, not "Lorentz factors... vanish".

**Status**: MINOR WORDING ISSUE — technically correct intent, imprecise phrasing.

### Claim 2: Admissibility bound relaxes to L>0
**Stated**: "the admissibility bound \(L>K/c\) relaxes to the trivial \(L>0\)"

**Verification**:
- Section 3 line 56-58: SR bound is \(L>K/c\)
- As \(c\to\infty\): \(K/c\to 0\), so \(L>K/c\) becomes \(L>0\)
- Section 3.1 line 78 confirms: "In the Newtonian limit \(c\to\infty\), this reduces to \(L>0\), the trivially satisfied condition for elliptical Kepler orbits."

**Assessment**: Correct. Already stated in Section 3.1.

**Status**: ACCURATE, but duplicative of line 78.

### Claim 3: Exact Newtonian forms recovered
**Stated**: "core geometric relations (orbit radius \(r=L^2/(Km)\), binding energy \(mK^2/(2L^2)\)) are recovered exactly with no residual corrections"

**Verification**:
- Orbit radius: Section 3 line 61-64 shows \(r=\frac{L^2}{Km}\sqrt{1-K^2/(c^2L^2)} \xrightarrow{c\to\infty} \frac{L^2}{Km}\). Correct.
- Binding energy: Section 3.1 line 78 states "the well depth is \(W_{\min}=mc^2\sqrt{1-K^2/(c^2L^2)}\), recovering the Newtonian binding energy \(mK^2/(2L^2)\) as \(c\to\infty\)."

**Check binding energy limit**:
\[
W_{\min} = mc^2\sqrt{1-K^2/(c^2L^2)} = mc^2\left(1 - \frac{K^2}{2c^2L^2} + O(c^{-4})\right) \to mc^2 - \frac{mK^2}{2L^2}
\]
Energy above rest mass is \(-mK^2/(2L^2)\) (negative = bound), so binding energy is \(+mK^2/(2L^2)\). Correct.

**Assessment**: Correct. Already stated in Section 3.1 line 78.

**Status**: ACCURATE, but duplicative.

## Placement audit
**Current location**: Line 84-85, after Section 3.1 conclusion (line 82), before Remark 3.2 (line 87).

**Logical flow**:
- Section 3.1 ends with "Therefore \(L>K/c\) is necessary and sufficient..." and discusses the Newtonian limit \(c\to\infty\) → \(L>0\).
- Remark 3.1a immediately follows, summarizing the \(c\to\infty\) limit cleanness.
- Remark 3.2 then shifts to SR precession (different topic).

**Assessment**: Placement is natural — the remark concludes Section 3.1's discussion of the Newtonian limit before moving to precession. However, Section 3.1 already makes all three claims individually.

**Status**: PLACEMENT ACCEPTABLE.

## Cross-reference audit
**Stated**: "SR refines Newtonian mechanics by adding constraints that become trivial in the non-relativistic limit while preserving the underlying geometric content — a characteristic of the refinement-witness viewpoint."

**Section 1 check** (lines 8-12):
- Line 8-9: "The cornerstone manuscript uses central-force refinement as a structural bridge (equal areas / angular momentum preservation \(\leftrightarrow\) action additivity \(\leftrightarrow\) composition)."
- Line 11-12: "how relativistic kinematics modifies the simplest central-force circular-orbit conditions. The inverse-square case is singled out by an exact simplification already at the SR level."
- Abstract (line 4-5): "Newton's polygonal limit gives exact finite-step invariants, while relativistic kinematics introduces new admissibility constraints even before general relativity is invoked."

**Assessment**: The connection is valid. Section 1 frames the paper as showing how SR "introduces new admissibility constraints" (the \(L>K/c\) bound) while the abstract says "refinement arguments can be made explicit." The remark's claim that "SR refines Newtonian mechanics by adding constraints that become trivial in the non-relativistic limit" is consistent with Section 1's framing.

**Status**: CROSS-REFERENCE VALID.

## Duplication audit
**Question**: Does Remark 3.1a add value beyond what's already stated?

**Scattered statements in Section 3/3.1**:
1. Line 45: "\(\gamma\to 1\) (i.e. \(c\to\infty\))" — Newtonian limit mentioned
2. Line 61-64: Radius limit \(r\to L^2/(Km)\) shown explicitly
3. Line 78: "\(c\to\infty\) reduces to \(L>0\), the trivially satisfied condition"
4. Line 78: "recovering the Newtonian binding energy \(mK^2/(2L^2)\)"

**What Remark 3.1a synthesizes**:
- Bundles all three limit behaviors into one "structural cleanliness" statement
- Adds the interpretive frame: "SR refines Newtonian mechanics by adding constraints that become trivial in the non-relativistic limit while preserving the underlying geometric content"
- Connects to the paper's main theme ("refinement-witness viewpoint")

**Value assessment**: The remark provides a *synthesis* and *thematic connection* that Section 3.1 does not explicitly state. Without it, the reader sees three separate \(c\to\infty\) limits but no unified statement that the limit is "structurally clean" or that this cleanness is characteristic of refinement. The remark serves as a **signpost** linking the technical results to the paper's conceptual agenda.

**Status**: ADDS VALUE — not mere duplication, but thematic synthesis.

## Guardrails check
1. Cycle labels: None found (verified by `rg`)
2. Transcript citations: None found (verified by `rg`)
3. Bibliography: No spurious sources
4. Tone: Professional, appropriate for a dependent satellite note

**Status**: GUARDRAILS SATISFIED.

## Issues identified
1. **MINOR WORDING IMPRECISION**: "Lorentz factors... vanish" should be "Lorentz factor corrections vanish" or "kinematic corrections (Lorentz factors, the radius contraction factor...) approach unity, with corrections vanishing." The current phrasing could confuse readers into thinking \(\gamma\to 0\) rather than \(\gamma\to 1\).

## Verdict
**CONDITIONAL PASS** — accept with one recommended wording fix.

The remark is accurate, well-placed, and adds thematic value by synthesizing scattered limit statements into a unified "structural cleanliness" claim that connects to the refinement-witness viewpoint of Section 1. However, the phrase "Lorentz factors... vanish" is imprecise and should be corrected to clarify that the *corrections* vanish, not the factors themselves.
