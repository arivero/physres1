# C286 — Red Team

## Attack 1: Effective mass should be γ³m (longitudinal), not γm
**Claim:** The radial oscillation frequency uses m_eff = γm.
**Attack:** Radial acceleration is parallel to the radial direction.
In SR, acceleration parallel to velocity uses γ³m (longitudinal mass).
**Rebuttal:** The Hamiltonian analysis expands H in p_r at p_r=0.
At the circular orbit, p_r=0, so the velocity is purely tangential.
The radial perturbation δr is perpendicular to the unperturbed velocity.
The correct expansion gives d²H/dp_r² = 1/(γm), not 1/(γ³m).
This is because p_r enters the Hamiltonian as sqrt(...+p_r²c²...),
and expanding to second order at p_r=0 gives c²/(γmc²) = 1/(γm).
**Severity:** Low — the derivation is correct, but a reader might
initially be confused. The remark text avoids this by stating the
result without deriving the effective mass.

## Attack 2: The formula is just a rewrite of the stability criterion
**Claim:** ω_r²/ω_φ² = 3−q−β² is new.
**Attack:** Rewriting 1+(2−q)γ² > 0 using 1/γ² = 1−β²:
  1+(2−q)γ² > 0  ⟺  1/γ² + (2−q) > 0  ⟺  3−q−β² > 0.
This is an algebraic rearrangement, not a new result.
**Rebuttal:** The algebraic manipulation is trivial, but the
*interpretation* as a frequency ratio is non-trivial. Knowing that
the stability condition is the positivity of an epicyclic frequency
ratio connects to classical celestial mechanics (Oort constants,
Lindblad epicyclic theory) and provides the bridge to Remark 3.2's
precession parameter at q=2.
**Severity:** Medium — valid that the algebra is simple, but the
physical interpretation adds genuine value.

## Attack 3: Section 5.2 is getting remark-heavy
**Attack:** Four remarks (5.2a–d) plus Example 5.2b = 5 items in
one subsection. This is more than any other subsection except 4.3.
**Rebuttal:** Section 4.3 has 7 items (4.3a–g). Section 5.2's items
are individually short. The density is comparable and the flow works.
**Severity:** Low.

## No blockers. Formula is mathematically correct.
