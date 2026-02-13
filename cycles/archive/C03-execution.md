# C03 Execution

## Manuscript Deltas
1. Replaced section 5 placeholder with a full weak/distributional treatment in `paper/main.md`.
2. Added weak Euler-Lagrange statement, mollifier-based point probing, and explicit impulse jump conditions.
3. Added explicit no-impulse corner condition derivation (Weierstrass-Erdmann local form).
4. Added explicit caveats section forbidding undefined nonlinear distribution products.
5. Added transition paragraph into `C04` (composition/path integral).

## Equations Added
1. Weak Euler-Lagrange operator \(F[q]=\partial_q\mathcal L-\frac{d}{dt}\partial_{\dot q}\mathcal L\) as a distribution.
2. Mollifier probing identity using \(\eta_\varepsilon=\rho_\varepsilon(\cdot-t_0)u\).
3. Corner condition (unforced): \([\partial_{\dot q}\mathcal L]_{t_0^-}^{t_0^+}=0\).
4. Impulse-forced Euler-Lagrange equation with \(J\delta(t-t_0)\) and the momentum jump condition.
5. Specialization to \(\mathcal L=\frac{m}{2}\|\dot q\|^2-V(q)\): \(m(\dot q^+-\dot q^-)=J\).

## Sections Touched
1. `paper/main.md`.
2. `cycles/C03-plan.md`.
3. `cycles/C03-debate.md`.
4. `cycles/C03-redteam.md`.
5. `cycles/index.md`.

## Rationale
`C03` makes “Dirac-supported probes of stationarity” precise by enforcing mollifier limits and separating linear distribution identities from undefined nonlinear products, while keeping the physics link via impulses and corners.

## Acceptance Test Results
1. Weak Euler-Lagrange + mollifier probe present: passed.
2. Impulse/jump-condition derivation present: passed.
3. Corner-condition derivation present: passed.
4. Explicit caveats section present: passed.
5. Transition to `C04` present: passed.
