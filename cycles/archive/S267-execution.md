# S267 — Execution

## 1. Effective radial mass from the Hamiltonian

The SR Hamiltonian at fixed angular momentum L is

  H = sqrt(m^2 c^4 + p_r^2 c^2 + L^2 c^2/r^2) + U(r)

with U'(r) = K/r^q. Denote the relativistic kinetic energy
E_kin = sqrt(m^2 c^4 + p_r^2 c^2 + L^2 c^2/r^2) = gamma mc^2.

At the circular orbit: r = r_0, p_r = 0, and gamma_0 determined by
gamma_0 mc^2 = sqrt(m^2 c^4 + L^2 c^2/r_0^2).

Hamilton's equations:

  dr/dt = dH/dp_r = p_r c^2 / (gamma mc^2) = p_r / (gamma m)
  dp_r/dt = -dH/dr = -W_L'(r)  (where W_L is the effective potential with p_r = 0)

For the quadratic expansion around (r_0, p_r = 0):

  d^2H/dp_r^2 |_{p_r=0} = c^2/(gamma_0 mc^2) - 0 = 1/(gamma_0 m)

(The second term, -p_r^2 c^4/(gamma mc^2)^3, vanishes at p_r = 0.)

So the linearized Hamiltonian is:

  H_2 = const + p_r^2/(2 gamma_0 m) + (1/2) W_L''(r_0) (delta r)^2

This is a standard harmonic oscillator with effective mass **m_eff = gamma_0 m**
(NOT gamma^3 m). The gamma^3 m "longitudinal mass" applies to acceleration
*parallel* to the velocity. Here, the Hamiltonian analysis automatically
accounts for the geometry: p_r is conjugate to r, and the expansion of
sqrt(...) in p_r at p_r = 0 gives 1/(gamma m), not 1/(gamma^3 m).

The radial oscillation frequency is therefore:

  **omega_r^2 = W_L''(r_0) / (gamma_0 m)**


## 2. Explicit computation of omega_r^2

From Section 5.2 of the paper:

  W_L''(r_0) = L^2 / (m r_0^4 gamma^3) * (1 + (2-q) gamma^2)

Substituting:

  omega_r^2 = [L^2 / (m r_0^4 gamma^3)] * [1 + (2-q) gamma^2] / (gamma m)
            = L^2 (1 + (2-q) gamma^2) / (m^2 r_0^4 gamma^4)


## 3. Orbital frequency omega_phi

From L = gamma m r_0^2 (dphi/dt) (angular momentum definition):

  omega_phi = dphi/dt = L / (gamma m r_0^2)

  omega_phi^2 = L^2 / (gamma^2 m^2 r_0^4)


## 4. The frequency ratio

  omega_r^2 / omega_phi^2 = [L^2 (1 + (2-q)gamma^2) / (m^2 r_0^4 gamma^4)]
                           / [L^2 / (gamma^2 m^2 r_0^4)]
                          = (1 + (2-q)gamma^2) / gamma^2
                          = 1/gamma^2 + (2-q)

Using 1/gamma^2 = 1 - v^2/c^2 = 1 - beta^2:

  **omega_r^2 / omega_phi^2 = 3 - q - beta^2**

Equivalently: omega_r^2 / omega_phi^2 = (3-q) - v^2/c^2.


## 5. Cross-checks

### 5a. Newtonian limit (v/c -> 0)

  omega_r^2 / omega_phi^2 -> 3 - q

This is the standard Newtonian epicyclic frequency ratio. For q = 2
(Kepler): ratio = 1, so omega_r = omega_phi (closed ellipses). For q = 1
(inverse-linear): ratio = 2. For q = -1 (Hooke, F = kr): ratio = 4, so
omega_r = 2 omega_phi (also closed orbits — Bertrand's theorem). Correct.

### 5b. q = 2 (inverse-square)

  omega_r^2 / omega_phi^2 = 1 - beta^2 = 1/gamma^2

So omega_r/omega_phi = 1/gamma.

From Remark 3.2: the precession parameter is omega = sqrt(1 - K^2/(c^2 L^2)).
Since v = K/L for q = 2: omega = sqrt(1 - v^2/c^2) = 1/gamma.

Therefore omega_r/omega_phi = omega (the Binet precession parameter). CHECK.

Physical interpretation: the orbit equation u = A cos(omega phi) + const
means the radial oscillation completes omega cycles per radian of phi,
hence omega_r = omega * omega_phi. This is exactly what we derived.

### 5c. Connection to Remark 5.2c

Remark 5.2c states: gamma^2 omega^2 = 1 for q = 2.

Our result: omega_r/omega_phi = 1/gamma, i.e., gamma * (omega_r/omega_phi) = 1.

Squaring: gamma^2 (omega_r/omega_phi)^2 = 1.

Since omega_r/omega_phi = omega (the precession parameter), this gives
gamma^2 omega^2 = 1. Our derivation provides the *mechanism* behind
Remark 5.2c: the stability-precession duality is the statement that the
epicyclic frequency ratio at q = 2 equals 1/gamma.

### 5d. Stability condition

omega_r^2 > 0 requires 3 - q - beta^2 > 0, i.e., beta^2 < 3 - q.

This is exactly the stability criterion v^2/c^2 < 3 - q from Section 5.2
(line 257). So positivity of the epicyclic frequency IS the stability
condition. This unifies Section 5.2 with the frequency interpretation.

### 5e. Comparison with GR (Schwarzschild)

From Remark 4.3e: omega_phi/omega_r = sqrt(r_0/(r_0 - 6M)) for
Schwarzschild, hence omega_r^2/omega_phi^2 = 1 - 6M/r_0.

For weak fields: v^2/c^2 ~ M/r_0 (Kepler), so the SR formula gives
omega_r^2/omega_phi^2 = 1 - M/r_0. The GR formula gives 1 - 6M/r_0.

The SR contribution is 1/6 of the GR correction, consistent with the 1/6
precession ratio established in Remark 3.2.


## 6. Assessment: is a remark promotable?

### Content of the formula omega_r^2/omega_phi^2 = 3 - q - beta^2

1. **New over existing text:** The general-q frequency ratio formula itself
   is not in the paper. Section 5.2 states the stability criterion
   1 + (2-q)gamma^2 > 0 but does not interpret it as an epicyclic frequency.
   Remark 5.2c gives the q = 2 duality but does not generalize to other q.

2. **Physical content:** The formula says the SR correction to the Newtonian
   epicyclic frequency is a *universal* subtraction of beta^2, independent
   of the force law exponent q. This is a clean, non-trivial statement.

3. **Structural role:** It unifies three existing threads:
   - Stability (Section 5.2): positivity of the ratio
   - Precession (Remark 3.2): q = 2 specialization gives omega
   - Duality (Remark 5.2c): a special case of the general formula

4. **Overlap:** Partially overlaps Remark 5.2c, but strictly generalizes it.
   Remark 5.2c is the q = 2 specialization.

### Length estimate

A 5-line remark stating the formula and its key consequences is feasible:
- Line 1: State the formula
- Line 2: Newtonian limit recovery
- Lines 3-4: q = 2 specialization connecting to Remark 3.2
- Line 5: Stability criterion as positivity

### Verdict

**PROMOTE.** The formula omega_r^2/omega_phi^2 = 3 - q - v^2/c^2 is compact,
non-trivially new (general q, not just q = 2), and unifies existing material.
It fits in <= 5 lines. Place after Remark 5.2c as Remark 5.2d.


## 7. Draft remark text

`Remark 5.2d (SR epicyclic frequency ratio).`
The Hamiltonian framework of Section 5.1 gives the radial oscillation
frequency \(\omega_r^2/\omega_\phi^2 = 3-q-v^2/c^2\), where
\(\omega_\phi=L/(\gamma m r_0^2)\) is the orbital frequency. The Newtonian
epicyclic ratio \(3-q\) is reduced by exactly \(\beta^2\), independently of
\(q\). Positivity recovers the stability criterion of Section 5.2; for
\(q=2\), the ratio reduces to \(1/\gamma^2=\omega^2\) (Remark 3.2), so
the orbit-equation precession parameter \(\omega\) is the radial-to-orbital
frequency ratio — making the duality of Remark 5.2c a special case.
