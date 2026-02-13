# Q85 Execution: Referee pass on fermionic-mediators

Date: 2026-02-13

## Findings

### 1. Internal "repo" language — NEEDS FIX (3 lines)
- Line 8 (abstract): "aligned with the repository's 'refinement compatibility' program" → should say "aligned with the broader refinement-compatibility program" or similar.
- Line 19: "the repo's point-interaction/RG witnesses" → "the program's point-interaction/RG witnesses" or "related point-interaction/RG witnesses."
- Line 84: "the repo's 'controlled refinement' theme" → "the controlled-refinement perspective" or similar.

### 2. Empty YAML metadata — NEEDS FIX
Lines 3-4: `author: []`, `date: ""` — should be filled.

### 3. Claim boundaries — CLEAN
- Remark 3.1 (Obstruction statement): commentary on the Grassmann issue. ✓
- Derivation 4.1 (Contact expansion gives δ): explicit Fourier transform computation. ✓

### 4. Notation — CLEAN
- D for spacetime dimension, d for spatial dimension. Consistent. ✓
- Standard QFT conventions (action, generating functional). ✓

### 5. Mathematics — CLEAN
- Section 2: Gaussian elimination S_eff[J] = -½ J K⁻¹ J. Standard. ✓
- Section 3: Grassmann source obstruction. Correct. ✓
- Section 4: Fourier transforms ∫ e^{iq·r} = δ^{(d)}(r), ∫ q² e^{iq·r} = -∇²δ^{(d)}(r). Standard. ✓
- Derivation 4.1: contact expansion C₀δ - C₂∇²δ + ⋯. Correct. ✓

### 6. Citations — CLEAN
- [Floerchinger2024QFT1Lecture21] at line 47: Grassmann source statement. ✓
- [Jackiw1991DeltaPotentials] at line 79: singular delta interactions. ✓
- [ManuelTarrach1994PertRenQM] at line 79: perturbative renormalization. ✓
- [BonneauFarautValent2001SAE] at line 82: self-adjoint extensions. ✓
- All 4 references have OA/arXiv versions. ✓

### 7. Encoding — CLEAN
No Unicode escapes found. ✓

### 8. Reader flow — GOOD
Clear progression: scope → bosonic story → fermionic obstruction → IR replacement → boundary conditions → outlook.

### 9. Paper length
95 lines, very short. But the paper makes one clear point with proper references and one explicit computation. Length is appropriate for the scope.

## Tier assessment
**NOT YET Tier 1.** Two fixable issues:
1. Three instances of "repo" language (lines 8, 19, 84).
2. Empty YAML metadata.

After one C cycle (C130) fixing these, the paper can be promoted to Tier 1.

## Recommended follow-up
1. **C130**: fix "repo" language and YAML metadata.
2. Promote fermionic-mediators to Tier 1.
