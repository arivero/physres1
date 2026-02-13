# Q82 Execution: Referee pass on relativistic-central-orbits

Date: 2026-02-13

## Findings

### 1. Internal path reference — NEEDS FIX
Line 10: `The cornerstone manuscript (``paper/main.md``) uses central-force refinement...`
This exposes the internal file path `paper/main.md`. For a standalone paper, this should be a generic reference like "the cornerstone manuscript" or a proper citation.

### 2. Meta-language — NEEDS FIX
Line 12: `This note is "outside scope" of the cornerstone paper but tracks a conversation branch:`
The phrase "tracks a conversation branch" is internal working language that shouldn't appear in a publishable paper. Replace with something like "records a self-contained derivation of" or "examines."

### 3. Empty YAML metadata — NEEDS FIX
Lines 3-4: `author: []`, `date: ""` — should be filled for publication readiness.

### 4. Notation — CLEAN
- Sections 2-3: explicit c, K, L, γ, v, r. Consistent. ✓
- Section 4: G=c=1 convention stated clearly. ✓
- Section 4.2: unit restoration correctly given. ✓
- Section 5: explicit c (consistent with Sections 2-3). ✓

### 5. Mathematics — CLEAN
- Section 2: F = γmv²/r for perpendicular force → K = γmv²r^{q-1}. ✓
- Section 3: v = K/L for q=2 (dividing K by L eliminates γmr). ✓
  L > K/c bound follows immediately. ✓
  Radius formula with √(1-K²/(c²L²)) correct. ✓
- Section 4.1: dV_eff/dr = 0 for null geodesics → r_ph = 3M. ✓
  Impact parameter b = 3√3 M at photon sphere. ✓
- Section 4.3: L²(r) = Mr²/(r-3M), E²(r) = (r-2M)²/(r(r-3M)). ✓
  V_eff'' at circular orbit → r_ISCO = 6M. ✓
  ISCO values: L = 2√3 M, E = 2√2/3. ✓
- Section 5.2: W_L''(r_0) = L²/(mr_0⁴γ³)(1+(2-q)γ²). ✓
  Stability criterion 1+(2-q)γ² > 0. ✓
  Newtonian limit γ→1 gives q<3. ✓
  For q=2: always stable. ✓
  For 2<q<3: v²/c² < 3-q. ✓

### 6. Citations — ADEQUATE
- [BoscagginDambrosioFeltrin2020RelKepler] at line 67: anchors SR Kepler circular solutions. ✓
- [Carroll1997LectureGR] at line 105: anchors standard Schwarzschild results. ✓
- Both arXiv-hosted (OA). ✓
- Note: only 2 references, but the paper is a short self-contained note. Adequate.

### 7. Encoding — CLEAN
No Unicode escapes found. ✓

### 8. Reader flow — GOOD
Clear progression: purpose → SR circular orbits → inverse-square special case → GR baseline → SR stability → outlook. Each section builds on the previous.

### 9. No labeled blocks
Unlike other satellite papers (planck-area, rg-fundamental, half-density-qft), this paper uses plain section structure without labeled derivation/remark blocks (e.g., "Derivation RCO-D1.1"). This is a style inconsistency but not a blocker — the paper works as a short note without them.

## Tier assessment
**NOT YET Tier 1.** Three issues need fixing:
1. Internal path `paper/main.md` on line 10 → generic reference.
2. "Tracks a conversation branch" on line 12 → proper academic language.
3. Empty author/date metadata.

After one C cycle (C128) addressing these three items, the paper can be promoted to Tier 1.

## Recommended follow-up
1. **C128**: fix companion pointer (line 10), meta-language (line 12), YAML metadata.
2. Then promote relativistic-central-orbits from Tier 2 to Tier 1 in publications.md.
