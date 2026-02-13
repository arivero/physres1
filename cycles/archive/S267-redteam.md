# S267 — Red Team

## Physics correctness

### 1. Is the effective mass gamma m correct?

Claim: m_eff = gamma_0 m for small radial oscillations about a circular orbit.

Check: The Hamiltonian H = sqrt(m^2 c^4 + p_r^2 c^2 + L^2 c^2/r^2) + U(r).
The second derivative in p_r at p_r = 0 gives d^2H/dp_r^2 = 1/(gamma_0 m).
The linearized kinetic energy is p_r^2/(2 gamma_0 m). This is standard
Hamiltonian perturbation theory and is correct.

Note: This is NOT the longitudinal mass gamma^3 m. The longitudinal mass
applies when force is parallel to velocity. In the Hamiltonian framework,
the effective mass emerges from the p_r expansion of the relativistic
energy, which gives gamma m (not gamma^3 m) because p_r is the canonical
momentum conjugate to r, and the expansion is around p_r = 0 with the
tangential momentum L/r fixed.

Alternative derivation (Lagrangian): The radial equation of motion for a
particle with angular momentum L is:

  d/dt (gamma m dr/dt) = L^2/(gamma m r^3) - dU/dr + correction terms

At the circular orbit, dr/dt = 0 and gamma = gamma_0 (determined by v_perp
only). For a small radial perturbation delta_r with dr/dt small, the
left side becomes approximately gamma_0 m (d^2 delta_r/dt^2) to leading
order. (The gamma correction from the small radial velocity is second-order
in the perturbation.) The right side gives -W_L''(r_0) delta_r. So
omega_r^2 = W_L''(r_0)/(gamma_0 m). CONFIRMED.

### 2. Is the formula omega_r^2/omega_phi^2 = 3-q-beta^2 correct?

Algebra check:

  omega_r^2 = W_L''/(gamma m) = [L^2/(m r_0^4 gamma^3)] * (1+(2-q)gamma^2) / (gamma m)
            = L^2 (1+(2-q)gamma^2) / (m^2 r_0^4 gamma^4)

  omega_phi^2 = L^2 / (gamma^2 m^2 r_0^4)

  Ratio = (1 + (2-q)gamma^2) / gamma^2 = 1/gamma^2 + 2 - q = (1 - beta^2) + 2 - q
        = 3 - q - beta^2.   CONFIRMED.

### 3. q = 2 cross-check

  Ratio = 3 - 2 - beta^2 = 1 - beta^2 = 1/gamma^2.
  omega_r/omega_phi = 1/gamma = sqrt(1 - v^2/c^2) = sqrt(1 - K^2/(c^2 L^2)) = omega.
  Matches Remark 3.2.   CONFIRMED.

### 4. Newtonian cross-check

  beta -> 0: ratio -> 3 - q. Standard result.   CONFIRMED.

### 5. Stability cross-check

  omega_r^2 > 0 iff 3 - q - beta^2 > 0 iff beta^2 < 3 - q.
  Equivalent to v^2/c^2 < 3 - q, which is 1 + (2-q)gamma^2 > 0.
  Matches Section 5.2.   CONFIRMED.

## Overlap concerns

### With Remark 5.2c
Remark 5.2c states gamma^2 omega^2 = 1 for q = 2. Our Remark 5.2d states
omega_r^2/omega_phi^2 = 3-q-beta^2, which for q = 2 gives 1/gamma^2 = omega^2.
The new remark explicitly acknowledges this as a special case. Overlap is
managed, not duplicative.

### With Section 5.2 (stability criterion)
Section 5.2 states 1 + (2-q)gamma^2 > 0. Our formula recasts this as
3-q-beta^2 > 0, which is algebraically identical. The new content is the
*interpretation* as an epicyclic frequency ratio, not a new inequality.
This is appropriate — the interpretation is the contribution.

## Draft text review

The draft (from execution, section 7) is:

> Remark 5.2d (SR epicyclic frequency ratio).
> The Hamiltonian framework of Section 5.1 gives the radial oscillation
> frequency omega_r^2/omega_phi^2 = 3-q-v^2/c^2, where omega_phi = L/(gamma m r_0^2)
> is the orbital frequency. The Newtonian epicyclic ratio 3-q is reduced by
> exactly beta^2, independently of q. Positivity recovers the stability criterion
> of Section 5.2; for q=2, the ratio reduces to 1/gamma^2 = omega^2 (Remark 3.2),
> so the orbit-equation precession parameter omega is the radial-to-orbital
> frequency ratio — making the duality of Remark 5.2c a special case.

Issues:
- "The Hamiltonian framework of Section 5.1" — Section 5.1 does not explicitly
  present a Hamiltonian. It presents W_L(r) as an effective potential. Should say
  "the effective-potential framework" or "linearizing W_L" instead.
- The remark defines omega_phi but not omega_r. This is fine — omega_r is the
  radial oscillation frequency, which is self-explanatory in context.
- "independently of q" — nice emphasis on universality, but strictly the formula
  itself *depends* on q (through the 3-q term). What is universal is the *SR
  correction* -beta^2. This is correctly stated as "reduced by exactly beta^2,
  independently of q."

Suggested fix: Replace "Hamiltonian framework of Section 5.1" with
"effective-potential framework of Section 5.1" or simply "Section 5.1."

## Verdict

**All physics confirmed. Minor wording fix needed. PROMOTE.**
