# S267 — Plan

## Objective
Compute the SR epicyclic (radial oscillation) frequency for circular orbits
under a general power-law force F = K/r^q, and determine whether the result
yields a promotable remark for Section 5 of the relativistic-central-orbits paper.

## Specific questions
1. Derive omega_r^2 = W_L''(r_0)/m_eff. Determine the correct m_eff from
   the Hamiltonian framework (is it gamma m or gamma^3 m?).
2. Compute the ratio omega_r/omega_phi for general q.
3. For q=2: verify that omega_r/omega_phi = omega (precession parameter
   from Remark 3.2).
4. Check overlap with Remark 5.2c (stability-precession duality gamma^2 omega^2 = 1).
5. Assess whether the general-q formula adds content beyond what is already
   in Section 5.2 (stability criterion) and Remark 5.2c (q=2 duality).

## Constraints
- Paper at 286/315 lines (~29 lines of room).
- A remark must be <= 5 lines to be viable.

## Method
- Hamiltonian analysis: expand H = sqrt(m^2c^4 + p_r^2 c^2 + L^2c^2/r^2) + U(r)
  to quadratic order around the circular orbit (r_0, p_r = 0).
- Extract effective radial mass and oscillation frequency.
- Compute omega_phi = L/(gamma m r_0^2) and form the ratio.
- Cross-check against Newtonian epicyclic frequency ratio sqrt(3-q).
- Cross-check q=2 case against Remark 3.2 and Remark 5.2c.
