# Philosophenweg: Composition on Internal Symmetry Spaces

**Date:** 2026-02-22, solo walk, 3 turns

## Turn 1: What does composition on a Lie group mean?

Heat kernel on G satisfies composition law (heat semigroup).
Physical realizations: quantum rotor (rigid body on SO(3)), hydrogen angular part on S^2.
In gauge theory: Wilson loop holonomy = "propagator" on G. Concatenation = composition.

P4.2 on G: normalization t^{-dim(G)/2}, forced kappa_G = hbar for a rotor.
For Chern-Simons: kappa_G ~ 1/k where k is the level.

## Turn 2: Chern-Simons as P4.2 on the gauge group

Parallel formulation:
- Stage 2: composition on R^d forces kappa = hbar
- Stage 3.5: composition on G (via CS path integral) forces kappa_G = 4pi/(k+g^vee)
- Stage 4: composition on Cob forces q = e^{2pi i/(k+g^vee)}

Each is P4.2 on a different "configuration space" with increasing categorical complexity.
NOT new (paper P9.1b-Q1d says this implicitly), but the clean parallel formulation
"P4.2 on the group manifold" hasn't been stated explicitly.

## Turn 3: Why V_HD on G is physically trivial for gauge theory

V_HD constant on G (Prop M0.1) => ordering ambiguity for single-link gauge theory is
a constant energy shift per link. No spatial modulation of the lattice Hamiltonian.
True for SU(2) (V_HD = -1), expected for SU(3), and general compact G.

The physically interesting case: ordering on NON-homogeneous gauge orbits or orbifolds.
There, V_HD varies and genuinely changes physics.

## Key insight for the paper

The "P4.2 on different configuration spaces" formulation unifies Stages 2-4:
hbar, k, and q are all forced by the same mechanism (composition semigroup on
the appropriate space), with the "space" upgrading from R^d to G to Cob.
This could be a strengthening sentence for P9.1 (forced-completion chain).

## Not pursued

- Explicit computation of V_HD on lattice gauge theory (would need lattice formulation)
- Connection to q-deformed composition (BB4 CFT-Q1 already resolved)
