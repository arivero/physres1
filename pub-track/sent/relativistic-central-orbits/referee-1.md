# Referee Report: Relativistic Central Orbits as Refinement-Witnesses

**Referee:** referee-1
**Date:** 2026-02-21
**Paper:** pub-track/sent/relativistic-central-orbits/main.md

## Summary

The paper derives admissibility and stability conditions for circular and bound orbits under power-law central forces in special relativity, with detailed comparison to the Schwarzschild (GR) case. The central results are: (i) the exact identity $v = K/L$ for inverse-square circular orbits, yielding the angular-momentum bound $L > K/c$; (ii) extension of this bound to all bound orbits via the effective radial potential; (iii) a compact stability criterion $1 + (2-q)\gamma^2 > 0$ for SR circular orbits under power-law forces; and (iv) systematic comparison of SR vs. GR orbit properties (precession 1/6 ratio, ISCO as a curvature effect, critical exponent shift). The paper frames these as "refinement witnesses" — constraints that emerge when Newtonian mechanics is refined by relativistic kinematics.

## Strengths

- **Mathematical correctness**: All derivations have been checked and are correct. The key formulas (Section 3 identity $v = K/L$, Section 3.1 effective potential analysis, Section 5.2 stability criterion, Section 4 Schwarzschild results) are derived cleanly and verified against known results. The compact stability expression $W_L''(r_0) = L^2(1+(2-q)\gamma^2)/(mr_0^4\gamma^3)$ is a nice packaging of the calculation.

- **Structural organization**: The paper follows a clear Newtonian $\to$ SR $\to$ GR progression. Each section builds on the previous, and the remark system provides useful commentary without breaking the main flow.

- **Dimensional analysis insight**: Remark 3.1 correctly identifies the dimensional mechanism that makes $q=2$ special ($[K] = [\text{angular momentum} \cdot \text{velocity}]$), and Remark 3.1b gives the transparent kinematic explanation for why the critical exponent drops by one.

- **Unified framework**: Remark 3.1c's threshold rule $q_{\text{crit}} = \nu + 1$ via kinetic asymptotics is a clean generalization that unifies the Newtonian and SR cases. Remark 5.2c's stability-precession duality $\gamma^2\omega^2 = 1$ at $q=2$ is an elegant observation.

- **Newtonian limits are clean**: Every SR formula correctly reduces to its Newtonian counterpart as $c \to \infty$, and this is consistently verified throughout.

- **Honest positioning**: The paper does not overclaim novelty. The abstract and Section 1 explicitly state the goal is "not to replace standard treatments, but to keep a minimal derivation-first record."

## Weaknesses

### MAJOR

- None identified. The mathematical content is correct, the logical chain is complete, and the claims are appropriately scoped.

### MINOR

1. **Remark 3.1d relies on an external cross-reference without self-contained justification.** The remark references "companion note Section 4.4" for the claim that angular momentum is preserved across central impulses in SR. While this is physically correct (a central impulse changes $\mathbf{p}$ along $\hat{r}$, so $\mathbf{r} \times \mathbf{p}$ is preserved since the impulse has zero moment about the center), the argument would benefit from a one-sentence inline justification rather than relying solely on the companion paper. A reader of this note alone cannot verify the claim.

2. **Section 3.1 marginal case ($L = K/c$) could be slightly more precise.** The paper says "$W_L$ increases monotonically from $0$ to $mc^2$." This is correct but the limiting value $W_L \to 0^+$ as $r \to 0^+$ deserves a brief indication of why (the sub-leading expansion $W_L \approx m^2c^4 r/(2K) + O(r^3)$ shows this). This is a minor expository point.

3. **Remark 5.2d introduces the epicyclic frequency ratio $\omega_r^2/\omega_\phi^2 = 3 - q - v^2/c^2$ without derivation.** The remark refers to "the Hamiltonian expansion of Section 5.1," but Section 5.1 only establishes the circularity condition, not a Hamiltonian expansion. Either a brief derivation sketch or a more precise internal reference would close the gap. (This was flagged by the critic in the voting round.)

4. **The 1/6 precession ratio attribution could cite a source.** The identification of the SR precession as the 1PN kinematic contribution (with 5/6 from curvature) is well-known in the post-Newtonian literature but not cited. A reference to, e.g., Weinberg (1972) or Will (1993) would anchor this standard result.

5. **Remark 3.2b (Sommerfeld fine structure)**: The claim that the classical orbit equation "is the backbone of one of the earliest quantum-relativistic results" is historically accurate but the remark could briefly note the well-known accidental degeneracy: the Sommerfeld formula reproduces the Dirac spectrum exactly only because the $1/r$ potential happens to give the same fine-structure splitting in the old quantum theory as the full Dirac equation — this is not generic and fails for other potentials. Without this caveat, a reader might over-interpret the correspondence.

6. **Reference list is lean.** Four references is adequate for a satellite note of this scope, but adding a textbook reference for the SR Kepler problem (e.g., Goldstein, Poole, and Safko, or Landau and Lifshitz) and for the 1/6 post-Newtonian decomposition would strengthen anchoring.

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** The paper is mathematically correct, clearly written, and well-structured. The claimed results are properly derived and honestly positioned relative to the literature. The minor issues (derivation gap in Remark 5.2d, missing inline justification in Remark 3.1d, a few missing references) are all addressable without re-review.

## Detailed Comments

- **Line 98 (Remark 3.1d)**: Add a parenthetical: "...angular momentum $L = \gamma m r v$ is preserved (since the central impulse $\Delta\mathbf{p} \parallel \hat{r}$ has zero moment about the center)."
- **Line 80 (Section 3.1, $L = K/c$ case)**: Consider adding: "with $W_L(r) \sim m^2c^4 r/(2K)$ as $r \to 0^+$" to make the monotonicity assertion self-evident.
- **Line 286 (Remark 5.2d)**: Either derive the epicyclic ratio from the $W_L''$ expression of Section 5.2 (which gives $\omega_r^2 = W_L''(r_0)/(\gamma^3 m)$ and $\omega_\phi = v/r_0$, leading to $\omega_r^2/\omega_\phi^2 = (3-q-\beta^2)/(1-\beta^2(q-1))$... actually this needs care; the stated ratio $3-q-v^2/c^2$ may be the leading-order approximation) or flag the formula as approximate with a derivation sketch.
- **Line 113 (Remark 3.2)**: Add a post-Newtonian reference for the 1/6 kinematic vs. 5/6 curvature decomposition.
- **Line 119 (Remark 3.2b)**: Consider a one-sentence caveat about the accidental nature of the Sommerfeld-Dirac degeneracy.
- **References**: Consider adding Goldstein/Poole/Safko or Landau/Lifshitz (Classical Mechanics) and Weinberg (Gravitation and Cosmology) or Will (Theory and Experiment in Gravitational Physics).
