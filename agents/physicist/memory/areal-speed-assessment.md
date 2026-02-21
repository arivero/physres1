# Areal-Speed Paper: Publication-Readiness Assessment

**Paper:** `papers/areal-speed/main.md` (259 lines)
**Date:** 2026-02-21
**Assessor:** Physicist

## 1. Origin and Context

This paper was extracted from the planck-area paper's old §5 after a THREE-AGENT review
(BB3, mathematician+physicist+critic) unanimously recommended removal:
- §5 was tangential to the half-density thesis (core of planck-area)
- PA-H1.3 (areal-speed heuristic) was the ONLY link to §§1-4, and was NOT weight-bearing
- §5 overlapped substantially with relativistic-central-orbits satellite
- Full removal was applied; planck-area is now 503 lines without §5

The paper starts at "# 5." (section number inherited from planck-area), which immediately
signals it wasn't written as a standalone paper.

## 2. Content Summary

The paper develops Rivero's "Planck areal speed" observation:
- PA-D1.5: inverse-square circular orbit + Planck areal speed → radius = Compton length
- PA-D1.5a: generalized to power-law F=K/r^q; linear Compton scaling only at q=2 (n=3 spatial, D=4)
- PA-D1.5b: SR continuation of inverse-square witness; interpolation Compton→Planck floor
- PA-D1.5c-f: clock-choice sensitivity (dA/dt vs dA/dτ), covariant reformulations
- PA-D1.5g-m: non-circular extensions, non-planar caution, observability criteria, uncertainty scaffold

## 3. Physics Assessment

### 3.1 What is correct and genuinely interesting
- PA-D1.5 (Newtonian Compton scaling): CORRECT. Exact algebra, clean limiting case.
  The G-cancellation r = 4k²ℏ/(cM) is non-trivial and worth stating.
- PA-D1.5a (q=2 uniqueness): CORRECT and insightful. The link q=2 ↔ n=3 ↔ D=4 is
  a clean dimensional argument. This is the strongest content in the paper.
- PA-D1.5b (SR continuation): CORRECT kinematically. The interpolation from Compton
  branch (M≪M_P) to Planck floor (M≫M_P) is physically transparent.

### 3.2 Where it goes wrong (physically)
- **No physical mechanism.** The paper imposes ȦP = cLP as a postulate without any
  dynamical justification. Why should the Planck areal speed be quantized? In standard
  physics, areal speed is conserved (Kepler's second law) but continuous, not quantized.
  There is no underlying theory that fixes ȦP = cLP.
- **No quantum-mechanical basis.** The Bohr-Sommerfeld quantization of angular momentum
  L = nℏ gives ȦP = nℏ/(2m), but this is mass-dependent and has nothing to do with
  Planck areal speed. The paper does not connect to Bohr-Sommerfeld at all.
- **Clock-convention dependence (PA-D1.5c) undermines the heuristic.** The high-mass
  asymptotic (the Planck floor) depends on whether one uses dA/dt or dA/dτ. This is
  a sign that the postulate is kinematic bookkeeping, not physics.
- **The observability section (PA-D1.5i-m) is an observational pipeline for a quantity
  that has no predicted non-trivial value.** Standard celestial mechanics gives dA/dt
  via Kepler's second law. Unless the paper predicts a specific departure from Kepler's
  areal speed, there is nothing to test.

### 3.3 Dimensional analysis check
- [ȦP] = [c][LP] = (L/T)(L) = L²/T. This is correct for areal speed.
- r = 4ȦP²/(GM): [L²/T]² / ([L³/(MT²)] × M) = L⁴T⁻²/(L³T⁻²) = L. Correct.
- The algebra throughout is dimensionally consistent.

### 3.4 Limiting cases
- M → 0: r → ∞ (correct: light objects orbit far out)
- M → ∞ (Newtonian): r → 0 (correct)
- M → ∞ (SR, dA/dt fixed): r → 2LP (Planck floor). Physically speculative.
- c → ∞: SR expressions reduce to Newtonian. Correct.
- q → 2: Compton scaling recovered. Correct.
- q = 3: radius drops out (degenerate). Correct.

## 4. Publication Readiness Assessment

### 4.1 Structural problems
1. **Not a paper.** The section numbering starts at "# 5." — a literal cut-paste from planck-area.
   No introduction, no abstract beyond "Extracted from Planck Area note," no conclusion.
2. **No original result.** PA-D1.5 restates Rivero's published observation [RiveroAreal].
   PA-D1.5a (the q=2 uniqueness) is the most original content but is a one-line dimensional argument.
3. **Scope bloat.** 13 sub-remarks (PA-D1.5a through PA-D1.5m) develop clock conventions,
   covariant reformulations, uncertainty propagation — all for an observational pipeline
   that has no prediction to test.
4. **Genre mismatch.** This is not a research paper (no theorem, no new physics prediction),
   not a review (too narrow), not a letter (too long). It reads like an extended remark
   from a longer paper — which is exactly what it was before extraction.
5. **Overlap with rel-orbits.** The SR orbit mechanics (PA-D1.5b and beyond) duplicates
   content in the relativistic-central-orbits satellite, which is already PUBLISHED (docs/).

### 4.2 What would be needed for publication
To turn this into a publishable paper, one would need:
1. An actual physical prediction (departure from Kepler's areal speed at some scale)
2. OR a rigorous mathematical theorem (e.g., "composition + areal-speed quantization → X")
3. A proper introduction explaining why this question matters
4. Removal of overlap with rel-orbits

### 4.3 Verdict

**DISCARD.** (git rm, per lifecycle rule)

Rationale:
- The two genuinely useful results (PA-D1.5 + PA-D1.5a) are already preserved:
  PA-D1.5 is Rivero's published observation [RiveroAreal], and both are in git history
  from planck-area's old §5.
- The SR extensions overlap with the already-published rel-orbits paper.
- There is no path to publication without inventing new physics content.
- Keeping it in the papers/ directory violates the lifecycle rule:
  "No paper should linger indefinitely in draft."

**Alternative to full discard:** salvage PA-D1.5a (the q=2 → D=4 link) as a Remark
in the rel-orbits satellite or in the cornerstone paper's Section 3 discussion.
This preserves the one original insight without maintaining a zombie paper.

## 5. Comparison with Other Genre-Mismatch Papers

| Paper | Issue | Content | Verdict |
|-------|-------|---------|---------|
| areal-speed | extracted remark, no original result | PA-D1.5 (published), PA-D1.5a (one-liner) | DISCARD |
| fermionic-mediators | survey, no original result | EFT/contact review | GENRE DECISION pending |
| uncuttable | perspective, no original result | resurgence/RCP framing | GENRE DECISION pending |

Areal-speed is worse than the other two: those at least have survey value as self-contained
treatments. Areal-speed is a severed appendix of planck-area with no standalone coherence.
