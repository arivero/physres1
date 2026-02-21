# Referee Report: Delta Objects as Half-Density Kernels

**Referee:** referee-1
**Date:** 2026-02-21
**Paper:** pub-track/sent/delta-objects/main.md

## Summary

The paper identifies a single geometric mechanism — half-density kernel calculus — underlying three prima facie distinct uses of the Dirac delta: (1) the Schwartz kernel of the identity operator, (2) the distributional density on the stationary set of a function, and (3) the rank-one kernel of a point interaction. It works through scaling computations, stationary phase, Van Vleck determinants, self-adjoint extension theory, and dimensional transmutation, arguing that in every case the amplitude-level object carries square-root Jacobian (half-density) weights while the probability/density-level object carries the full Jacobian. A final section discusses how scalarization of half-density kernels necessarily introduces a length scale, and proposes RG-invariant scales as natural candidates.

## Strengths

- The three-way classification (identity kernel, stationary-set concentration, rank-one point interaction) is a genuinely useful organizing principle. Each delta object is shown to be an instance of the same half-density mechanism, and the parallels are drawn explicitly rather than left as folklore.
- The mathematical content is carefully graded: finite-dimensional identities are proved, and the paper is honest about labeling what is heuristic. The claim taxonomy inherited from the cornerstone manuscript is respected.
- Section 3 is rich and well-structured. The disambiguation between delta(f') and delta' (Section 3.1a) and the point-splitting realization (Section 3.1b) are pedagogically valuable, and the progression from 1D to multi-dimensional stationary-set formulas to stationary phase to Van Vleck determinant is natural.
- The self-adjoint extension discussion (Remark 4.2) is thorough, covering d=1,2,3 and the d>=4 obstruction, with correct attribution to Derezinski 2024 and the Albeverio et al. monograph. The connection to Sobolev/Morrey embedding is stated precisely.
- Remark 4.3 cleanly links the half-density exponent d/2 to the heat-kernel integral and the convergence condition d<2, making the chain from Section 2 through Section 4 tight.
- The 2D worked example (Example 4.1b) showing explicit cancellation of the UV cutoff in the bound-state condition is concrete and convincing.
- Section 5 is appropriately cautious: the scalarization-to-RG-invariant identification is presented as an "organizing perspective, not a theorem." This intellectual honesty strengthens the paper.
- References are well-chosen: Hamilton 1834 for the mixed Hessian, Jackiw 1991 for 2D dimensional transmutation, Derezinski 2024 for the modern treatment of point potentials. The annotations on each reference are helpful.

## Weaknesses

### MAJOR

- None identified. The paper makes finite-dimensional claims and verifies them; the heuristic identifications are clearly labeled. No mathematical errors were found.

### MINOR

1. **Section 3.4 feels tangential.** The Euler-Lagrange weak form and Example 3.4a (free particle smooth vs. kinked trajectories) are correct and well-written, but their connection to the paper's central thesis (half-density weights in delta objects) is not made explicit. The section reads more as a companion note to the cornerstone manuscript's variational theory than as part of the delta-objects classification. A one-sentence remark connecting distributional Euler-Lagrange to the half-density framework would improve coherence.

2. **Remark 3.5c on caustics/Maslov index.** This is mathematically correct and well-stated, but it opens a significant new topic (metaplectic structure, Maslov index) that is not developed further. Since the paper is about delta objects specifically, this remark could benefit from a sentence clarifying that a full treatment belongs in the companion papers (or the cornerstone).

3. **[PathIntegralNormalization] reference is not fully resolved.** The reference tag appears in Remark 2.1 but is not listed in the References section. It presumably refers to the companion satellite paper "Path-Integral Normalization: The d/2 Exponent as Composition Compatibility Datum." The reference should be added to the bibliography for self-containedness.

4. **Outlook item 1 is struck through.** The struck-through item "Relate determinant weights to Van Vleck type" with the note "Addressed: Section 3.5 makes the connection explicit" is an editorial artifact. In a finished publication, the resolved item should simply be removed rather than displayed with strikethrough.

5. **Notation: d vs n in Sections 3.1-3.2.** The paper uses d for the manifold dimension in Sections 1-2 and 4-5, but switches to n in the multi-dimensional stationary-set formula (Section 3.2). While not incorrect, unifying the notation to d throughout would reduce cognitive load.

6. **Section 3.1b context.** The final sentence "For the parallel smooth-function toy model... see the companion notes" is vague. Specifying which companion note would help the reader.

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** The paper is mathematically correct, well-organized, and makes a genuinely useful contribution as a dictionary/reference note for the half-density interpretation of delta objects. The minor issues are editorial (missing reference, notation inconsistency, struck-through text) and structural (two subsections with loose ties to the central thesis). None require re-review after correction.

## Detailed Comments

- **Line 17 (Section 1):** The Schwartz kernel theorem reference to Hormander is appropriate; the notation K in fraktur/mathsf is consistent throughout.
- **Line 37-41 (Section 2, scaling):** The near-diagonal computation is correct: delta^(d)(eps*v) = eps^{-d} delta^(d)(v) and |dy|^{1/2} = eps^{d/2}|dv|^{1/2}, yielding eps^{-d/2}. Verified.
- **Line 45 (Remark 2.1):** The composition argument (two |dz|^{1/2} factors pair to give |dz|) is the structural core; correctly stated. The reference to [PathIntegralNormalization] needs to be added to the bibliography (see MINOR item 3).
- **Lines 49-52 (Section 3.1):** The identity delta(f'(x)) = sum_i delta(x-x_i)/|f''(x_i)| is standard and correctly stated under the nondegeneracy hypothesis.
- **Lines 83-87 (Section 3.2):** Multi-dimensional generalization correct. Suggest changing n to d for consistency.
- **Lines 93-99 (Section 3.3):** The stationary-phase connection ("squaring amplitude weights produces density weights") is the central observation. Correctly stated.
- **Lines 115-146 (Section 3.5):** Van Vleck section is well-executed. The distinction between mixed Hessian (Van Vleck) and full Hessian (stationary-set delta) is important and clearly stated. Examples 3.5a and 3.5b are correct. Remark 3.5c on Maslov index is correct but somewhat tangential (see MINOR item 2).
- **Lines 159-164 (Example 4.1):** The 1D resolvent calculation is standard and correct. The bound-state pole at kappa = |g|m/hbar^2 and the factorized residue are verified.
- **Lines 166-174 (Example 4.1b):** The 2D cutoff cancellation is the key worked example. The algebra is correct: the bound-state condition reduces to kappa = alpha independent of Lambda.
- **Lines 186 (Remark 4.3):** The Laplace representation G_0(0,0;E) ~ integral t^{-d/2} e^{-kappa^2 t} dt giving Gamma(1-d/2) kappa^{d-2} is correct. The convergence condition d<2 is correctly identified as the threshold for dimensional transmutation.
- **Section 5:** The scalarization argument is logically clean. The conditional nature ("if one adds a universality hypothesis... then...") is appropriate for the current state of the program.
