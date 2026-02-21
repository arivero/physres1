# Painleve Isomonodromy: RCP Stage 2.5 Assessment

Promoted from blackboards/2.md (THREE-AGENT: mathematician + physicist + critic).
Date: 2026-02-21.

## Summary

This notebook assesses the relationship between Painleve isomonodromy and RCP composition. The conclusion (three-agent consensus): isomonodromy is RCP-COMPATIBLE but NOT RCP-FORCED. An independent integrability axiom (I_int) is required. Stage 2.5 branches into two sub-branches: 2.5a (established, Painleve) and 2.5b (conjectural, Virasoro c/24).

---

## 1. Core Definitions

**Def 1.1.** Linear ODE system: dPsi/dx = A(x,t) Psi, A(x,t) rational in x.

**Def 1.2.** Isomonodromy: d_t A = d_x B + [A,B] (zero-curvature / Lax condition). Monodromy matrices M_j in GL(n,C) preserved under t-deformation.

**Def 1.3.** Painleve I-VI = reductions of isomonodromy conditions for 2x2 systems on P^1.

**Source:** Jimbo-Miwa-Ueno (1981), Harnad (1993), Bertola-Tovbis arXiv:1506.06897

## 2. Composition Compatibility

**P2.1 (Lax -> semigroup).** Zero-curvature implies parallel transport U(x3,x1;t) = U(x3,x2;t) . U(x2,x1;t). Composition (A1) is satisfied.

**P2.2 (Monodromy groupoid).** Stokes data form a GROUPOID: objects = singular points {a_j}, morphisms = Stokes matrices S_j in GL(n,C), composition = matrix multiplication along paths.

**P2.3.** The monodromy representation pi_1(P^1 \ {sing}) -> GL(n,C) IS a groupoid homomorphism.

## 3. Negative Result: (C) Does NOT Force Isomonodromy

**P3.1.** (C) alone does NOT force isomonodromy.
- (C) is satisfied by ALL propagators (heat kernels, Schrodinger, generic path integrals).
- Isomonodromy requires: (i) auxiliary spectral parameter x, (ii) Lax structure, (iii) specific rational A(x,t).
- These are ADDITIONAL structure beyond (C).

**P3.2.** Additional axiom needed: **(I_int)**: system admits Lax pair.
- (C) + (I_int) -> Painleve isomonodromy (in 2x2 case with rational connections on P^1)
- (I_int) is NOT derivable from (C) alone.

## 4. RCP Channel Assessment

| RCP Axiom | Isomonodromy | Derivable from (C)? |
|-----------|-------------|---------------------|
| A1 (composition) | YES (parallel transport) | Trivially (it IS composition) |
| A2 (identity limit) | YES (U(x,x;t) = 1) | YES |
| A3 (representation) | YES (gauge equivalence) | Partial |
| A4 (scale) | COMPATIBLE (dimensionless monodromy) | PARTIAL |
| A5 (dimensional) | YES (monodromy dimensionless) | Partial |

**A4 clarification (physicist P10.5):** Isomonodromy is COMPATIBLE with scale changes (monodromy dimensionless) but does not REQUIRE a specific scale. Parameter t is NOT the RG scale mu. Monodromy invariance under t is definitional (Lax structure), not a dynamical beta=0 fixed point.

## 5. Stage 2.5 Branching Diagram

```
              Stage 2: (C)+(D)+(I) -> hbar              [ESTABLISHED: P4.2]
             /                        \
Stage 2.5a: (C)+(I_int) -> Painleve   Stage 2.5b: (C)+(Virasoro) -> c/24
  [ESTABLISHED: P3.1-P3.2]              [CONJECTURAL: no derivation]
                                          \
                                           Stage 3: (C)+(RG fixed pt) -> CFT [beta=0]
```

**H5.1 (Stage 2.5 = (C) + Lax).** Stage 2 = (C) only; Stage 2.5 = (C) + (I_int); Stage 3 = (C) + Virasoro/RG.

**H5.2 (Isomonodromy != RG).** Scale channel (A4) acts as beta(g) flow, generically no fixed point. Isomonodromy = constraint on Lax connection, NOT a dynamical beta=0. The analogy "conserved charge = fixed point of time evolution" confuses invariance of a derived quantity with stationarity of coupling flow. The genuine beta=0 connection is through CFT (Stage 3), NOT through the Painleve branch.

## 6. Conjectures (Unverified)

**Conjecture 6.1 (formerly H6.4).** The tau-function MAY be interpretable as a partition function of the monodromy groupoid. The identity tau(t) = Det(1-K) (Its-Izergin-Korepin-Slavnov) holds for specific integrable Fredholm operators but does NOT generalize to arbitrary groupoid partition functions. The leap "Det = groupoid measure" is unproven.

**Conjecture 6.2 (Stage 2.5b).** "(C)+(Virasoro) -> c/24" as a forcing result analogous to P4.2 is unproven. The c/24 appearance in Virasoro characters (Cardy formula) is well-known but the claimed forcing chain has no derivation.

## 7. Transseries Structure

**P7.1.** Painleve transcendents admit two-parameter transseries:
y(t; sigma_1, sigma_2) = y_formal(t) + sigma_1 e^{-S/hbar} y_inst(t) + sigma_2 e^{+S/hbar} y_inst_hat(t) + ...

**P7.2.** Stokes automorphism (alien derivative) acts on the two-parameter family. Composition of Stokes matrices IS composition in the monodromy groupoid. (Standard: Loday-Richaud 2014, Mitschi-Sauzin 2016.)

**Connection:** Alien Leibniz rule (RCP-Res-P1.1) applies to isomonodromy transseries.

## 8. Connections

- notebooks/integrable-systems-rcp.md (student exploration, less rigorous; §3.2 superseded by P3.1)
- notebooks/resurgence-composition-bridge.md §11 (RCP-Res-P1.1 alien Leibniz rule)
- anomalies.md: Painleve Stage 2.5 (OPEN entry)
- Nekrasov-Shatashvili (2009): Painleve as quantization conditions in 4D N=2 gauge theories (AGT correspondence = Stage 2.5b branch, not 2.5a)

## 9. Assessment (Three-Agent Consensus)

- Isomonodromy as RCP extension: SOUND. Genuinely extends the Stage 2 -> Stage 3 chain.
- (C) forcing isomonodromy: NO. (I_int) is an independent axiom.
- Painleve branch (Stage 2.5a): ESTABLISHED. Well-founded on P3.1-P3.2.
- Virasoro branch (Stage 2.5b): CONJECTURAL. No derivation of "(C)+(Virasoro)->c/24".
- tau-function = groupoid partition function: CONJECTURE. Unverified generalization.
- Load-bearing for cornerstone: NO. This is exploratory (sev-3).
- Potential satellite paper: YES, but needs (I_int) motivation and computational examples.

## References

- Jimbo-Miwa-Ueno (1981): isomonodromy deformations
- van Spaendonck-Vonk arXiv:2204.09062: exact WKB + Painleve
- Bertola-Tovbis arXiv:1506.06897: Stokes data and tau-functions
- Loday-Richaud (2014): Stokes automorphisms
- Mitschi-Sauzin (2016): alien calculus
- Nekrasov-Shatashvili (2009): Painleve in 4D N=2 gauge theories

## Source

Blackboard: blackboards/2.md (session 9, 2026-02-21)
- Mathematician: P3.1-P3.3, P5.1-P5.2, H6.1-H6.4, transseries §7
- Physicist: P10.1-P10.5 (H6.2 correction, A4 reclassification)
- Critic: C11.1-C11.8 (sev-2 identification), §12 fixes (H6.4/Stage 2.5b -> conjecture)
