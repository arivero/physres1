# S296 Red Team: Dimensional Obstruction to Discrete-Time Composition

Date: 2026-02-14

## Failure Modes

### FM1: Dimensional analysis is trivially obvious
**Risk:** The result that {m, hbar} cannot produce a time scale might be considered too elementary to be interesting.
**Mitigation:** The novelty is not the dimensional analysis per se, but its application to the specific question of whether P4.2's hypotheses force continuum time. The connection between (D), the dimensional obstruction, and the semigroup structure is the substantive contribution. The chain S288 -> S295 -> S296 progressively tightens the constraints.

### FM2: Lattice formulations exist and work
**Risk:** Lattice QCD and lattice QFT are well-established. Claiming "discrete time is impossible" contradicts practice.
**Mitigation:** The claim is scope-limited: discrete time is incompatible with P4.2's hypothesis (D) in the non-relativistic {m, hbar}-only setting. Lattice QFT uses c (relativistic), and lattice spacing is an explicit UV cutoff (external parameter, not derived from {m, hbar}). No contradiction with lattice practice, which acknowledges the continuum limit a -> 0 as necessary.

### FM3: Overstatement of identity limit obstruction
**Risk:** The identity limit argument (Section 6) might be challenged: on a lattice, one could define a discrete identity K_0 = delta_{ij} and a discrete semigroup without needing t -> 0 limit.
**Mitigation:** This is acknowledged as a "secondary" obstruction. The primary obstruction (dimensional, Section 2) is independent of any assumptions about the identity limit. The identity limit argument reinforces but does not carry the conclusion alone.

### FM4: Natural units confusion
**Risk:** In natural units (hbar = 1, c = 1), time has dimension 1/mass, and epsilon = 1/m is a valid time scale. This might seem to contradict the obstruction.
**Mitigation:** Natural units set c = 1, which is precisely the additional constant that resolves the dimensional obstruction (Section 3b). Setting c = 1 does not remove c from the physics; it hides it in the unit system. The obstruction is about the physical constant set, not the unit choice.

## Overall Assessment

The result is robust. The primary risk (FM2) is addressed by careful scope limitation. The argument does not claim discrete time is impossible in all frameworks, only that it is incompatible with P4.2's specific hypothesis set {m, hbar} without c.
