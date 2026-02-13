# Q161 Plan: Review C277 (dirac-probes Remark 2.2a)

**Referee cycle**: Q161
**Target cycle**: C277
**Manuscript**: `papers/dirac-probes-corners-impulses/main.md`
**Insert location**: Between Remark 2.2 and Remark 2.3

## Scope

Review the newly inserted Remark 2.2a concerning the du Bois-Reymond lemma and the regularity chain from almost-everywhere to pointwise to smooth recovery.

## Review checklist

1. **Mathematical correctness**:
   - Du Bois-Reymond lemma (1879) statement: for \(f \in L^1_{\text{loc}}\), vanishing against all \(\eta \in C_c^\infty\) gives \(f = 0\) only a.e.
   - Regularity upgrade: hypothesis (H3) provides continuity at \(t_0\), enabling pointwise conclusion
   - Bootstrap: Hilbert differentiability theorem iterates the Euler-Lagrange equation to \(q \in C^\infty\) when \(\mathcal{L}\) is smooth
   - Claim that (H3) is the weakest hypothesis for pointwise recovery

2. **Placement**:
   - Natural flow: Remark 2.2 → Remark 2.2a → Remark 2.3
   - Remark 2.2 discusses role of each hypothesis
   - Remark 2.2a deepens the regularity hierarchy
   - Remark 2.3 shifts to structural parallel with polygonal refinement

3. **Cross-references**:
   - References to (H3) from Theorem 2.1
   - References to continuity gate concept

4. **Cycle-label leak**:
   - Check for stray cycle labels (e.g., C277) in manuscript text

## Expected verdict

PASS if all four criteria are satisfied.
CONDITIONAL PASS if minor mathematical or expository corrections needed.
FAIL if mathematical error or structural problem exists.
