# S289 Execution: Distributional convergence test for kappa -> 0

Date: 2026-02-14

## Work performed
- Derived distributional pairing <K_t(.,y), phi> for free-particle propagator
- Performed Fresnel rescaling to show free-particle kappa -> 0 limit is exact identity (Fresnel nascent delta)
- Extended to general potential via semiclassical/Van Vleck kernel
- Computed stationary phase for kappa -> 0: stationary point at p_f = 0, giving x_0(y,t) = classical endpoint with zero final momentum
- Explicit harmonic oscillator witness: x_0 = y/cos(omega t) != y, residual action S_cl = -m omega y^2 tan(omega t)/2 != 0
- Identified three obstructions: (1) support shift, (2) oscillatory divergence from residual phase, (3) non-commutativity of t -> 0 and kappa -> 0 limits
- Verified dimensional analysis: [K] = length^{-d} = [delta] throughout, no dimensional obstruction
- Identified free particle (V = 0) as unique exception where all obstructions vanish

## Artifacts produced
- `blackboards/2.md`: Full distributional obstruction analysis (overwrites S282 Ito content)

## Commands run (if any)
```bash
(none — pure calculation)
```

## Result
- **Three-obstruction theorem** for kappa -> 0 at fixed t > 0 with V != 0:
  1. Support shift: stationary phase localizes at x_0(y,t) != y (classical trajectory endpoint)
  2. Oscillatory divergence: residual phase exp(i S_cl(x_0,y;t)/kappa) prevents distributional convergence
  3. Non-commutativity: lim_{kappa->0} lim_{t->0} != lim_{t->0} lim_{kappa->0}
- Free particle is the unique exception (x_0 = y, S_cl = 0 at stationary point)
- Confirms P4.2(iii): kappa -> 0 collapses to Hamilton-Jacobi with no distributional identity

## Promotion candidate (pointer)
- Location: blackboards/2.md, Section 7 (Verdict)
- Target: delta-objects Section 4.1c ("Why kappa -> 0 fails distributionally")
- Also strengthens P4.2(iii) in paper/main.md with explicit mechanism

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **yes**
- The free particle is the unique case where kappa -> 0 preserves the identity limit. This is because the zero-momentum classical path trivially stays at the initial point (x_0 = y) and has zero action (S_cl = 0). Any V != 0 breaks both conditions. The primary obstruction is oscillatory (non-convergent phase), not dimensional.
- Entry added to docs/anomalies.md: not needed (result is expected, confirms P4.2(iii); the "free particle exception" is a refinement, not an anomaly)

## Spawned cycles
- `C31x` (when ready): promote verdict into delta-objects Section 4.1c
- `C32x` (when ready): strengthen P4.2(iii) in paper/main.md with explicit harmonic oscillator witness
