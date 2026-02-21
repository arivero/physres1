# Geometric Normalization Compatibility (A_geom): Motivation for PA-H2.5a

Promoted from blackboards/1.md (THREE-AGENT: physicist + critic + mathematician).
Date: 2026-02-21.

## Summary

This notebook analyzes a candidate "fourth RCP channel" — geometric normalization compatibility (A_geom) — which provides a physical MOTIVATION for the integrality sieve PA-H2.5a. The conclusion (three-agent consensus): A_geom is a useful reformulation of PA-H2.5a but not an independent derivation from first principles. It is suitable as motivation in the planck-area paper, not as a new axiom.

---

## 1. Statement of A_geom

**A_geom (geometric normalization compatibility):** When the path integral kernel is expressed as a scalar function (not a half-density), the normalization constant must be ANALYTIC in the coupling constants at the decoupling limit.

Formally: let |sigma_*|^2 denote the normalization scale of the half-density-to-scalar conversion. A_geom requires |sigma_*|^2 in C[[G_d]] (convergent power series in G_d near G_d = 0).

## 2. Derivation of the Integrality Sieve

The normalization scale |sigma_*|^2 has dimension [length^d]. From gravity-only coupling [G_d] = length^{d-2}:

|sigma_*|^2 ~ G_d^k, where k = d/(2(d-2)).

Analyticity at G_d = 0 requires k in Z_{>=0}. The unique solution with k=1 is d=4.

This makes PA-H2.5a ("integer coupling powers") a CONSEQUENCE of A_geom.

## 3. Independence from Existing RCP Channels

**Lemma (M12.1, mathematician).** A_geom and A_scale are INDEPENDENT CONSTRAINTS at tree level (classical gravity, G_N fixed, no RG running). At one loop and beyond, A_geom becomes mu-dependent (G*log(mu) terms mix the two), and A_geom and A_scale are no longer independent.

**Proof sketch (formal counterexamples):**
- A_scale satisfied + A_geom violated: |sigma_*|^2 = G^{1/2} (no mu-running, but non-integer power).
- A_geom satisfied + A_scale violated: |sigma_*|^2 = G^1 (integer power, but UV divergence requiring mu-dependent counterterm).

**Regime restriction:** The integrality sieve operates at the CLASSICAL (tree-level) regime where G_N is a fixed parameter. At this level, A_geom and A_scale are genuinely decoupled.

## 4. Relationship to EFT

**Key distinction (critic + mathematician consensus):** A_geom constrains the path integral MEASURE (normalization), while standard EFT perturbativity constrains MATRIX ELEMENTS. These are distinct: standard EFT uses Lebesgue measure (k=0, no G-dependence in the measure), while A_geom requires the half-density normalization to be perturbative in G when the scalar representative is demanded dimensionless.

A_geom is more primitive than EFT: it constrains the path integral BEFORE computing matrix elements.

## 5. Open Problem: k=0

k=0 (G-independent normalization) is also a valid integer solution. This corresponds to the trivial case where gravity does not contribute to the normalization. The selection of k=1 (d=4) over k=0 requires an additional input: that gravity IS dynamical and DOES contribute to the path integral measure. This is the content of PA-H2.3 (dimensionless scalar representative requirement) in the planck-area paper.

The k=0 problem remains genuinely unresolved: k>=1 is not a consequence of A_geom alone.

## 6. Verdict (Three-Agent Consensus)

- A_geom as **motivation** for PA-H2.5a: SOUND. Replaces "integer powers" with "analyticity at G=0," which is more physically transparent.
- A_geom as **derivation** of PA-H2.5a: INSUFFICIENT. Requires PA-H2.3 to have content; k=0 problem unresolved.
- A_geom as **new axiom**: NOT RECOMMENDED. Better framed as physical interpretation of the integrality sieve.
- A_geom vs A_scale **independence**: YES at tree level (Lemma M12.1); NO at loop level.

## 7. Connections

- PA-H2.5a, PA-H2.5c in papers/planck-area/main.md (the hypothesis being motivated)
- BB0 steelman criticism C4 ("d=4 is consistency, not explanation") — A_geom addresses this
- notebooks/oq1a-planck-area-fundamental.md (Buckingham pi uniqueness of L_P^2)
- A_geom' (weakened form, §8 of BB1): "leading gravity correction enters at O(G^1)" — potentially checkable in dimensional regularization of gravity

## References

- Blackboard source: blackboards/1.md (session 9, 2026-02-21)
- Physicist: proposed A_geom, self-criticism (§§9.1-9.2)
- Critic: second-agent review (§11), identified reformulation vs derivation distinction
- Mathematician: third-agent (§12), proved Lemma M12.1 (tree-level independence), confirmed k=0 open
