# Q166 — Execution

Read papers/relativistic-central-orbits/main.md and analyzed Remark 4.3g (lines 202–203).

## Review Findings

### 1. Mathematical Correctness: PASS

**SR threshold derivation:**
- Section 3 establishes L > K/c for bound orbits (line 58).
- For gravity: K = GMm (dimensional force constant).
- Specific angular momentum: ℓ = L/m.
- Therefore: ℓ > GMm/c / m = GM/c. ✓

**GR ISCO value:**
- Remark 4.3b (line 187–188): At ISCO, L² = 12M² → L_ISCO = 2√3 M.
- Section 4 uses G=c=1 units (line 105), so M is already GM/c² in SI.
- To restore units: L has dimension [length²/time] in G=c=1.
- Specific ℓ = L in G=c=1 (because mass is normalized).
- In SI: ℓ_ISCO = 2√3 GM/c. ✓

**Ratio calculation:**
- ℓ_ISCO / ℓ_SR = (2√3 GM/c) / (GM/c) = 2√3 ≈ 3.464. ✓

### 2. Unit Consistency: PASS with caveats

**Notation issue:**
- Remark 4.3g (line 202) uses "specific angular momentum ℓ=L/m" in the parenthetical, correctly distinguishing ℓ (specific) from L (total).
- Section 3.1 (line 72) uses capital L throughout, as it retains mass dimension.
- Section 4 (line 105) sets G=c=1 and uses lowercase l for specific values at ISCO.
- **However**, the remark text (line 202) writes "ℓ>GM/c (Section 3.1)" — but Section 3.1 uses capital L, not ℓ. The bound is stated as L>K/c (line 58, 82).

**Resolution:**
The mathematical content is correct, but notation is inconsistent. Section 3.1 uses L (total angular momentum) throughout. The remark converts to ℓ (specific) for the ratio comparison, which is valid, but the cross-reference to Section 3.1 should acknowledge that Section 3.1 states the bound as L>K/c, not ℓ>GM/c.

### 3. Placement: PASS

Remark 4.3g follows Remark 4.3f (line 199–201), which discusses the Kepler law in coordinate vs proper time. Remark 4.3g provides a quantitative ratio bridging SR and GR, paralleling Remark 3.2's 1/6 precession ratio. Placement is logical and maintains thematic flow (SR–GR comparison).

### 4. Cross-References: MOSTLY PASS

- "Section 3.1" (line 202): Section 3.1 exists (lines 72–82) and establishes L>K/c. ✓
- "Remark 4.3b" (line 203): Exists (lines 187–188) and gives L_ISCO=2√3 M. ✓
- "Remark 3.2" (line 203): Exists (lines 87–100) and derives the 1/6 precession ratio. ✓

**Minor issue:** The remark states "ℓ>GM/c (Section 3.1)" but Section 3.1 uses L, not ℓ. The bound L>K/c with K=GMm is stated at line 58 and line 82. The conversion to ℓ=L/m is implicit but not stated in Section 3.1.

### 5. Cycle Labels: PASS

No cycle labels (C00–C999 format) found in manuscript text.

## Issues Summary

1. **Notation mismatch:** Remark 4.3g uses ℓ (specific) when referencing Section 3.1, which uses L (total). This is resolvable by either:
   - Adding a brief note in Section 3.1 about ℓ=L/m for single-particle case, OR
   - Rewording Remark 4.3g to say "L>K/c (Section 3.1, with K=GMm and ℓ=L/m)".

2. **Unit restoration clarity:** The remark text (line 203) writes "ℓ_ISCO = 2√3 GM/c (Remark 4.3b)" but Remark 4.3b states L_ISCO=2√3 M in G=c=1 units. The factor of c is restored correctly but implicitly. For pedagogical clarity, could add "(restoring units)" or similar.

Both issues are minor and do not affect mathematical correctness.
