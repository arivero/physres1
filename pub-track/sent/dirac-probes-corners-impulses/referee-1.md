# Referee Report: Dirac-Supported Probes, Corners, and Impulses: A Variational Note

**Referee:** referee-1
**Date:** 2026-02-21
**Paper:** pub-track/sent/dirac-probes-corners-impulses/main.md

## Summary

The paper expands the cornerstone manuscript's Section 5 (Propositions P3.1--P3.4) into a self-contained treatment of mollifier localization, corner/impulse conditions, and a worked delta-kick model. It states a Mollifier Localization Theorem (Theorem 2.1) with explicit hypotheses (H1)--(H3), proves the Weierstrass--Erdmann corner condition and the impulse jump condition, works through the free-particle delta-kick model in complete detail (trajectory, momentum jump, action evaluation, angular momentum), and connects the N-impulse time-slicing to the path integral. A taxonomy of safe vs. unsafe uses of the Dirac delta (Section 5) rounds out the note.

## Strengths

- The paper is genuinely self-contained: a reader unfamiliar with the cornerstone manuscript can follow the entire argument from Section 2 through Section 5 without external dependencies.
- The explicit three-hypothesis structure (H1)--(H3) for the Mollifier Localization Theorem is cleaner than many textbook treatments, and Remark 2.2a correctly identifies (H3) as the minimal gate for pointwise recovery.
- The worked model in Section 4 is pedagogically valuable: the action excess formula S - S_0 = (m/2) t_0(T-t_0)/T (Delta v)^2 is derived cleanly and connects directly to the theorems.
- The safe/unsafe taxonomy in Section 5 is well-organized. The summary table (Section 5.3) and the progression from mollifier probes (safe) through 1D delta potentials (well-defined) to d >= 2 potentials (renormalization required) to delta-squared (undefined) is clear and correctly ordered.
- Remark 4.4a (Noether charges across impulses) provides a useful general criterion (J . xi = 0) that unifies the angular-momentum example as a special case.
- The connection in Remark 5.2b between the d/2 exponent controlling path-integral normalization and the renormalization threshold for delta potentials is a genuine insight that ties Section 4.5 to Section 5.2 in a non-trivial way.

## Weaknesses

### MAJOR

- None identified. The mathematical content is correct, the logical chain is complete, and the claims are appropriately scoped.

### MINOR

1. **Remark 2.3 structural parallel claim is suggestive but loose.** The parallel between mollifier localization and Newton's polygonal construction is asserted but not made precise. The statement "both begin with an invariant that holds exactly at finite resolution" is true but vague -- the invariants are of quite different types (integral vanishing vs. area equality). The remark would benefit from one sentence acknowledging that the parallel is structural/heuristic rather than a formal theorem.

2. **Theorem 3.1 proof is compressed.** The proof sketch ("the integral of d_q L vanishes as epsilon -> 0 by boundedness; the derivative term yields the momentum jump") omits the integration-by-parts step that produces the boundary terms. A reader encountering corner conditions for the first time might struggle. One additional line showing the boundary terms explicitly would improve clarity without lengthening the paper significantly.

3. **Section 4.2 trajectory formula has a minor presentation issue.** The trajectory is written with q(0) = q_i, but the formula q(t) = q_i + v_- t uses q_i as both initial position and notation for the boundary value. This is consistent but could be clearer if the setup explicitly stated q_i := q(0).

4. **Remark 4.5c (Trotter product formula) references a companion satellite by informal name** ("the uncuttable-refinement companion satellite (Remark 3.3)") without a formal citation key. Other cross-references in the paper use bracketed keys like [BatesWeinstein1997]. Consistency would be improved by adding a citation entry for this companion, or at minimum using a consistent cross-reference format.

5. **Reference list is adequate but could be stronger on the classical calculus of variations.** The Weierstrass--Erdmann conditions (Theorem 3.1, Remark 3.1b) and the Weierstrass excess function (Remark 4.3c) are stated without a primary reference. A citation to Gelfand--Fomin (1963) or Giaquinta--Hildebrandt (1996) would anchor these classical results.

6. **Outlook item 2 (viscosity solutions at kinks)** is interesting but somewhat disconnected from the rest of the paper. The Hamilton--Jacobi viscosity-solution connection is a substantial topic; the one-sentence mention may raise more questions than it answers. Consider either expanding slightly (one sentence on why viscosity solutions are relevant to the refinement program) or removing.

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** The paper is mathematically correct, well-structured, and successfully achieves its stated goals. The weaknesses are all presentational -- no mathematical errors or logical gaps were found. The minor items above would improve clarity and referencing but do not affect the validity of any result.

## Detailed Comments

- **Section 2, Theorem 2.1:** The proof is clean and complete. The step from convolution convergence to pointwise evaluation under (H3) is standard but correctly deployed.
- **Section 3.1, Remark 3.1b:** Good addition of the second Weierstrass--Erdmann condition (energy continuity). The relationship between the two conditions (momentum from fixed-support variations, energy from corner-time variations) is correctly stated.
- **Section 3.2, Remark 3.2a:** The impulse-work formula Delta H = J . v_bar with midpoint velocity is correct and the connection to the power relation P = F . v is apt. The matched momentum/energy summary at the end of the remark is a nice organizational touch.
- **Section 4.3:** The action excess formula is verified: expanding v_-^2 t_0 + v_+^2 (T-t_0) with v_+ = v_- + Delta v and using the boundary-condition expression for v_- indeed yields S_0 + (m/2) t_0(T-t_0)/T (Delta v)^2. The positive-definiteness claim is correct for J != 0.
- **Section 4.4:** The angular-momentum preservation argument is correct. The connection to Newton's Principia Proposition 1 and the parallelogram construction is historically accurate and well-presented.
- **Section 4.5:** The normalization exponent (N+1)/2 is correctly derived from N+1 segments each contributing one factor of (m/(2 pi i hbar Delta t))^{1/2}. The cross-reference to half-density framework is appropriate.
- **Section 5.2, Example 5.2a:** The dimensional hierarchy (d=1 finite, d=2 log-divergent, d=3 linearly divergent, d >= 4 no extension) is correct and the Morrey embedding threshold d < 4 is correctly identified as the obstruction.
- **Section 5.3, Remark 5.3a:** The Schwartz impossibility theorem (1954) is correctly cited and the connection to UV divergences via products of propagators at coincident points is valid.
