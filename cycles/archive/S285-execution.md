# S285 Execution: Newton Polygonal Convergence Witness

Date: 2026-02-14
Parent: D28

## Work performed
- Stated the convergence theorem for the symplectic Euler (kick-drift) method applied to separable Hamiltonians with Lipschitz forces: global O(h) error on finite time intervals (standard result from Hairer-Lubich-Wanner, Geometric Numerical Integration, Theorem IX.3.1).
- Translated the hypotheses into central-force language: force field Lipschitz on the domain visited, orbit in compact region away from singularities, finite time.
- Identified the symplectic structure bonus: angular momentum and equal-area law are exact at each finite step (not a limiting statement), and backward error analysis gives exponentially long near-conservation of energy.
- Constructed the failure mode witness: Kepler radial collision orbit (L=0, V=-K/r), where the force diverges as (t_c-t)^{-4/3} and the Lipschitz constant blows up, causing the fixed-step scheme to accumulate O(1) error before collision time.
- Wrote a promotable paragraph linking the convergence theorem to the manuscript's existing hedge in `Remark H1.1a`.

## Artifacts produced
- `blackboards/6.md`: Newton polygonal convergence theorem + failure mode (overwritten from S208 non-perturbative contact; S208 promoted to `notebooks/nonperturbative-contact-pade.md`).
- `notebooks/caustics-maslov-half-density.md`: promoted from former blackboard 2 (S213) during slot management.

## Commands run (if any)
None (analytical work only; no symbolic computation needed for this standard result).

## Result
- A clean convergence statement is now available: the kick-drift construction converges with O(h) global error on any finite time interval where the force is Lipschitz (away from r=0 singularity).
- The failure mode is explicit: Kepler radial collision, where Lipschitzness breaks down and fixed-step integration fails.
- The promotable paragraph connects these to the manuscript's existing scope boundary.

## Promotion candidate (pointer)
- Location: `blackboards/6.md`, Section 6 ("Promotable Paragraph")
- Short summary: The kick-drift construction is the symplectic Euler method. Convergence is O(h) under Lipschitz force (finite time, away from collision). Failure at r=0 where Lipschitz constant diverges. Structural invariants (L, equal areas) are exact at finite step regardless.

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **no**
- The convergence statement and failure mode are standard results from geometric numerical integration. The value is in stating them explicitly in the manuscript's language, not in new mathematics.

## Spawned cycles
- No immediate spawns. A future `C` cycle may promote the paragraph into `Remark H1.1a` or a new `Remark H1.2a` in Section 3.
- `B33` (deferred): the standard references (HLW06, Nauenberg1994/2003) are already known; a bibliography cycle is not needed unless a referee demands specific citation formatting.
