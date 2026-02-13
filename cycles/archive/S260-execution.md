# S260 — Execution

## 1. Derivation of E_SR for circular orbits (q=2)

Starting data (Section 3): v = K/L, r = L^2/(Km gamma), gamma = 1/sqrt(1 - K^2/(c^2 L^2)).

The total energy (kinetic + potential) for a particle at the circular orbit is

  E = gamma m c^2 + U(r) = gamma m c^2 - K/r.

Substitute r = L^2/(Km gamma):

  E = gamma m c^2 - K * (Km gamma / L^2)
    = gamma m c^2 - K^2 m gamma / L^2
    = gamma m (c^2 - K^2/L^2)
    = gamma m c^2 (1 - K^2/(c^2 L^2)).

Now 1 - K^2/(c^2 L^2) = omega^2 (Remark 3.2) and also 1/gamma^2 (since
gamma^2 = 1/(1 - v^2/c^2) = 1/(1 - K^2/(c^2 L^2))). Therefore:

  E = gamma m c^2 / gamma^2 = m c^2 / gamma = m c^2 sqrt(1 - K^2/(c^2 L^2)).

Equivalently:

  **E_circ = m c^2 omega**

where omega = sqrt(1 - K^2/(c^2 L^2)) is exactly the precession frequency
parameter from Remark 3.2.

Cross-check: this matches the effective-potential minimum W_min = mc^2 sqrt(1 - K^2/(c^2 L^2))
stated in Section 3.1 (line 78). Good — the circular orbit sits at the bottom of the
effective potential well, so E_circ = W_min is required by consistency.

Cross-check (Newtonian limit): as c -> infinity, omega -> 1 and E -> mc^2 - mK^2/(2L^2),
recovering the rest energy plus binding energy. More precisely,
E = mc^2 sqrt(1 - K^2/(c^2 L^2)) ~ mc^2 (1 - K^2/(2c^2 L^2)) = mc^2 - mK^2/(2L^2),
which is rest energy minus the Newtonian binding energy |E_bind| = mK^2/(2L^2). Correct.

## 2. Physical interpretation

The identity E_circ = mc^2 omega = mc^2/gamma has a transparent physical meaning.

(a) E = mc^2/gamma: the total energy of a bound circular orbit equals the rest
    energy *divided* by the Lorentz factor. This is NOT the kinetic energy (gamma mc^2)
    but the total (kinetic + potential). The potential energy exactly removes the
    kinetic "excess" gamma mc^2 - mc^2 and then subtracts an additional mc^2 - mc^2/gamma.
    Decomposing: E = gamma mc^2 - K/r = gamma mc^2 - (gamma-1/gamma) mc^2 ... let's
    verify: gamma mc^2 - K/r = mc^2/gamma, so K/r = gamma mc^2 - mc^2/gamma
    = mc^2 (gamma - 1/gamma) = mc^2 (gamma^2 - 1)/gamma = mc^2 v^2/(c^2/gamma)
    ... more cleanly: K/r = mc^2 (gamma^2 - 1)/gamma = gamma m v^2, which is
    exactly F * r = (gamma m v^2/r) * r. Consistent with the virial relation.

(b) E = mc^2 omega: energy equals rest energy times the orbital-precession
    parameter. Since omega < 1 for all bound orbits (with omega -> 0 as L -> K/c),
    the energy ranges from mc^2 (Newtonian limit, omega -> 1) down to 0
    (capture limit, omega -> 0). The "more relativistic" the orbit, the lower
    both the precession parameter and the total energy.

(c) Connection between stability, precession, and energy: from Remark 5.2c,
    gamma^2 omega^2 = 1 for q=2. So E = mc^2 omega = mc^2/(gamma) unifies
    three threads: the precession frequency omega, the Lorentz factor gamma,
    and the energy. They form a single-parameter family indexed by L (or
    equivalently by v = K/L).

## 3. Comparison with Schwarzschild circular-orbit energy

From Section 4.3 (line 164), in natural units (G=c=1, m=1):

  E^2(r) = (r - 2M)^2 / (r(r - 3M)),   r > 3M.

The locally measured orbital velocity at radius r is obtained from the
coordinate Kepler law omega_phi^2 = M/r^3 (Remark 4.3f) via
v_local = r omega_phi / sqrt(1-2M/r), giving

  v_local^2 = M / (r(1 - 2M/r)),
  gamma_local^2 = 1/(1 - v_local^2) = r(1-2M/r) / (r - 3M).

Then 1/gamma_local^2 = (r-3M) / (r(1-2M/r)).

Compare with E^2 = (1-2M/r)^2 / (1-3M/r):

  E^2 = (1-2M/r)^2 / (1-3M/r)  vs.  1/gamma_local^2 = (1-3M/r) / (1-2M/r).

So E^2 * gamma_local^2 = (1-2M/r)^2 / (1-3M/r) * r(1-2M/r)/(r-3M) ...
this does NOT simplify to 1. The SR identity E = mc^2/gamma fails in GR.

Instead, in GR one has E = (1-2M/r) * dt/d(tau), and the relation
dt/d(tau) = 1/sqrt(1-3M/r) on circular orbits, so

  E_GR = (1-2M/r) / sqrt(1-3M/r).

The factor (1-2M/r) is the gravitational redshift; sqrt(1-3M/r) combines
redshift and velocity time dilation. The SR result E = 1/gamma corresponds to
the case M -> 0 where (1-2M/r) -> 1 and (1-3M/r) -> 1 - v^2/c^2 = 1/gamma^2,
recovering E -> 1/gamma.

**Key structural difference**: in SR, E_circ = mc^2/gamma involves only
the velocity (through gamma). In GR, E_circ = (1-2M/r)/sqrt(1-3M/r)
involves both velocity and the gravitational potential through separate
factors. The curvature mixes kinematic and geometric contributions so
that no single "precession parameter" captures the energy.

Weak-field check: for r >> M, (1-2M/r)/sqrt(1-3M/r) ~ 1 - 2M/r + 3M/(2r) + ...
= 1 - M/(2r) + ..., while 1/gamma ~ 1 - M/(2r) + ... (using v^2 ~ M/r).
These agree to order M/r, confirming the flat-space limit. But at order M^2/r^2,
the GR expression contains cross-terms (curvature x velocity) absent from SR.

## 4. Is the GR analogue of omega worth discussing?

One can define omega_GR such that E_GR = omega_GR, i.e.
omega_GR := (1-2M/r)/sqrt(1-3M/r). But this lacks the clean
interpretation of the SR omega (which is simultaneously the precession
frequency, 1/gamma, and the orbit equation parameter). In GR, the
precession is described by the epicyclic frequency ratio
sqrt(r/(r-6M)) (Remark 4.3e), which is a different function of r.
There is no simple identity linking E_GR to the GR precession factor.

## 5. Draft remark

**Remark 3.2a (SR circular-orbit energy and the precession parameter).**
At a circular orbit with q=2, the total energy E = gamma mc^2 - K/r evaluates
to E_circ = mc^2/gamma = mc^2 omega, where omega = sqrt(1 - K^2/(c^2 L^2))
is the precession parameter of Remark 3.2. Energy, precession, and stability
are thus encoded by a single dimensionless parameter: the same omega that
controls orbital shape also determines the binding depth. In the Schwarzschild
geometry (Section 4.3), by contrast, E_GR = (1-2M/r)/sqrt(1-3M/r) mixes
gravitational redshift and velocity effects through separate factors, and no
single parameter unifies energy with the GR precession rate — a reflection
of the curvature contributions absent from the SR model.

## 6. Promotion assessment

**Verdict: WORTH PROMOTING, but placement and length need care.**

Reasons for:
- E = mc^2 omega is elegant, non-trivial (the kinetic+potential cancellation),
  and connects three threads (energy, precession, stability) already in the paper.
- The GR comparison sharpens the SR-vs-GR structural theme (Remarks 4.3a-g).
- It fills a gap: W_min is stated in Section 3.1 but never identified as mc^2 omega.

Reasons for caution:
- The paper is at 5pp/274 lines (relativistic). Adding a remark pushes toward 6pp.
- E = mc^2/gamma for a circular orbit in a -K/r potential is a standard result in
  relativistic mechanics. The novelty is the omega connection, not the E formula.
- Must not overlap with Remark 5.2c (stability-precession duality), which already
  links gamma and omega. The new remark should focus on energy, not re-derive 5.2c.

Recommendation: promote as a compact 3-sentence Remark 3.2a (after the precession
remark). The GR comparison sentence is optional — it could go in a brief parenthetical
or be dropped to save space. A C cycle should check the line count after insertion.
