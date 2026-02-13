# Q79 Execution: Referee pass on C124 (RG-D1.2a in rg-fundamental)

Date: 2026-02-13

## Findings

### 1. RG-D1.2a mathematical correctness — CLEAN
- Shell integral at threshold: exact, -(m/πℏ²) ln(Λ/Λ'). Verified by SymPy in S85.
- Matching condition: 1/g_eff(Λ') = 1/g_B(Λ) + (m/πℏ²) ln(Λ/Λ'). Consistent with Section 5.2's renormalization condition (g_eff(Λ') = g_R(Λ') when both are at the same scale). ✓
- Semigroup composition: ln(Λ/Λ₁) + ln(Λ₁/Λ₂) = ln(Λ/Λ₂). Trivially correct. ✓
- κ_* formula: Λ² exp(2πℏ²/(mg_B(Λ))). Cross-checked against Section 5.3 definition (μ² exp(2πℏ²/(mg_R(μ)))). They agree when μ = Λ and g_R = g_B (bare coupling at the cutoff scale). ✓
- Beta function: β(g) = (m/πℏ²) g². Matches Section 5.2's RG-D1.2 exactly. ✓

### 2. Cross-references — CLEAN
- RG-P1.1 (Section 2): correctly cited for semigroup composition. ✓
- RG-H1.4 (Section 6): correctly cited for non-invertibility. ✓
- RG-D1.7 (Section 6.1): correctly cited for Schur-complement analogy. ✓

### 3. Notation consistency — CLEAN
- Uses W_{Λ→Λ'} matching the convention in RG-P1.1 and RG-P1.3. ✓
- Uses g_eff(Λ') (distinct from g_R(μ) of Section 5.2). Good — distinguishes the two approaches. ✓
- Uses I_shell with subscript, consistent with Section 5.5's I_div/I_fin split. ✓

### 4. Conclusion (Section 7) — NEEDS UPDATE
Line 585 reads: "Natural extensions include adding one explicit Wilsonian fixed-point computation in a standard QFT example, and sharpening the rooted-tree bookkeeping discussion..."
With RG-D1.2a, the paper now contains an explicit Wilsonian computation (shell integration + beta function), though not a fixed-point computation and not in a QFT example. The conclusion should:
- Acknowledge that RG-D1.2a provides a Wilsonian derivation within the QM model.
- Adjust the outlook: a QFT-level Wilsonian computation remains an extension, but the basic Wilsonian mechanism is now demonstrated.

### 5. Supplementary material reference — PRE-EXISTING ISSUE
Line 112: "The cutoff loop integrals in 1D/2D/3D... are collected in the supplementary material." No supplementary material section exists. This was present before C124 and is not introduced by it. Low priority but should be addressed before P01.

### 6. Reader flow — GOOD
RG-D1.2a sits at the end of Section 5.2 after the integrated RG flow equation. This is a natural placement: the reader first sees the renormalization-condition approach, then gets the Wilsonian complement. The derivation is self-contained (doesn't require reading Section 6 first but benefits from it afterward).

### 7. Claim boundaries — CLEAN
RG-D1.2a is labeled "Derivation", which matches its content (explicit computation, not a conjecture or heuristic). The cross-references to RG-P1.1, RG-H1.4, and RG-D1.7 all have correct label types.

## Recommended follow-up cycles

1. **C125** (minor): Update conclusion (Section 7, line 585) to reflect that RG-D1.2a provides a Wilsonian derivation. Adjust the "natural extensions" outlook.
2. **C126** (minor): Either create a supplementary material section with the 1D/2D/3D loop integrals, or remove the reference to supplementary material at line 112. (Pre-existing issue, not introduced by C124.)
3. No S or B cycles needed.
