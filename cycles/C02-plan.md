# C02 Plan

## Goal
Recast the Newtonian invariant from `C01` in action language by deriving Euler-Lagrange equations and rotational Noether conservation.

## Scope
1. Define variation of action with explicit endpoint conditions.
2. State minimal regularity assumptions and the fundamental lemma used to pass from weak stationarity to pointwise equations.
3. Derive Euler-Lagrange equations as stationarity condition.
4. Show rotational symmetry implies conserved angular momentum and recover areal law.
5. Optionally record the parallel time-translation (energy) conservation for autonomous central motion.
6. Add transition toward distributional/point-like probes in `C03`.

## Claims
1. Stationarity of action under compactly supported variations yields Euler-Lagrange equations.
2. Rotational symmetry implies a conserved Noether charge \(p_\theta\), matching the `C01` angular momentum invariant.
3. The areal law \(dA/dt=L_{\mathrm{ang}}/(2m)\) is the geometric projection of that Noether conservation.
4. If \(\mathcal L\) is time-independent, the energy \(E=\dot q\cdot\partial_{\dot q}\mathcal L-\mathcal L\) is conserved and yields the effective radial reduction.

## Risks
1. Hidden regularity assumptions in integration-by-parts step.
2. Confusion between Lagrangian symbol \(\mathcal L\) and angular momentum symbol \(L_{\mathrm{ang}}\).
3. Overstating rigor when distributional extensions are only sketched.

## Acceptance Tests
1. `paper/main.md` section 4 contains explicit Euler-Lagrange derivation.
2. Section 4 contains explicit Noether/angular-momentum bridge to `C01`.
3. Section 4 includes one transition paragraph into `C03`.
