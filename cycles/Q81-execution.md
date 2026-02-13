# Q81 Execution: Referee pass on half-density-qft

Date: 2026-02-13

## Findings

### 1. Unicode encoding error — NEEDS FIX
Line 182: `Remark HD-D5.2 (Point splitting produces \u03b4' contact terms).`
The `\u03b4` is a Python/JSON Unicode escape for δ. It should be the actual character `δ'` or LaTeX `\delta'`. This is a rendering bug that will produce garbled output in PDF.

### 2. Claim boundaries — CLEAN
- HD-D1.1, HD-D1.1a, HD-D1.2, HD-D1.3: labeled "Derivation" — all contain explicit computations. ✓
- HD-D1.3a: labeled "Remark" — commentary on an earlier derivation, not a new computation. ✓
- HD-D4.1: labeled "Remark" — conceptual point about doubled space. ✓
- HD-D5.1, HD-D5.2: labeled "Remark" — observations about delta kernel properties. ✓

### 3. Notation — CLEAN
- Uses D throughout for spacetime dimension (consistent with the main paper's convention for spacetime). ✓
- Uses |g|^{1/4} consistently for the half-density scalarization. ✓
- Uses ψ for densitized field, φ for scalar field, tilde for conjugated operators. ✓

### 4. Citations — CLEAN after B18
- Section 2: [BatesWeinstein1997] [Hormander2003] at kernel definition. ✓
- Section 3: [Wald1984] at scalar field setup. ✓
- Section 4: [BatesWeinstein1997] [deGosson2018] at QM propagator connection. ✓
- Section 7: [Costello2011] at BV outlook. ✓
- References section: 5 entries, properly formatted. ✓

### 5. Mathematics — CLEAN
- HD-D1.1a (Gaussian normalization): correct ε^{-D/2} argument. ✓
- HD-D1.2 (kinetic operator conjugation): manifestly symmetric form. ✓
- HD-D1.3 (conformal expansion): D(4-D)/4 coefficient. SymPy-verified per line 121. ✓
- HD-D1.3a (conformal coupling distinction): ξ = D/(4(D-1)) ≠ ξ_conf = (D-2)/(4(D-1)). Correct. ✓
- Section 4 (kernel relation): G̃(x,y) = |g(x)|^{1/4} G_g(x,y) |g(y)|^{1/4}. Correct. ✓

### 6. Cross-references — CLEAN
- Line 22: "the main paper's kernel-composition spine" — informal, appropriate for companion note. ✓
- Line 196: "A separate note develops that stronger hypothesis ladder" — generic pointer to planck-area. ✓
- Abstract: "connects to broader themes... developed elsewhere" — properly signals companion status. ✓

### 7. Reader flow — GOOD
Clear progression: scope → kernel semantics → worked computation → propagators → contact terms → link to scale program → BV outlook. Each section is self-contained with labeled blocks.

## Tier assessment
**READY for Tier 1** after fixing the Unicode issue (one C cycle).

## Recommended follow-up
1. **C127** (minor): fix the \u03b4 Unicode escape on line 182 → δ.
2. Update publications.md to promote half-density-qft from Tier 2 to Tier 1.
