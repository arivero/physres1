# Q147 — Red Team

## Attack 1: Is the Derivation Actually Correct?

**Claim:** ω_φ² = M/r₀³ follows from the circular-orbit formulas.

**Check the algebra:**
Starting from ω_φ = (L/r₀²)(1-2M/r₀)/E:

ω_φ² = (L²/r₀⁴) · (1-2M/r₀)² / E²

Substitute:
- L² = Mr₀²/(r₀-3M)
- E² = (r₀-2M)²/[r₀(r₀-3M)]
- (1-2M/r₀)² = (r₀-2M)²/r₀²

ω_φ² = [Mr₀²/(r₀-3M)] · [(r₀-2M)²/r₀²] · {1/r₀⁴} · [r₀(r₀-3M)/(r₀-2M)²]

The (r₀-2M)² terms cancel:
ω_φ² = [Mr₀²/(r₀-3M)] · [r₀(r₀-3M)] / [r₀⁴ · r₀²]

The (r₀-3M) terms cancel:
ω_φ² = Mr₀² · r₀ / r₀⁶ = Mr₀³/r₀⁶ = M/r₀³ ✓

**Attack fails.** Derivation is correct.

## Attack 2: Is the Proper-Time Factor Correct?

**Claim:** T_τ/T_t = √(1-3M/r₀)

**Independent derivation:**
For circular orbit, dτ = √(-g_tt) dt = √(1-2M/r₀) dt at fixed r, θ, φ.

But wait — this is NOT the right formula for the orbital period. During one orbit, both t and φ change. We need:

dτ² = -g_tt dt² - g_φφ dφ²
    = (1-2M/r₀) dt² - r₀² dφ²

For circular orbit: dφ/dt = ω_φ = √(M/r₀³)

So:
dτ² = (1-2M/r₀) dt² - r₀² (M/r₀³) dt²
    = [(1-2M/r₀) - M/r₀] dt²
    = [(r₀-2M)/r₀ - M/r₀] dt²
    = [(r₀-3M)/r₀] dt²

Therefore:
dτ/dt = √[(r₀-3M)/r₀] = √(1-3M/r₀) ✓

**Alternative check using E:**
From dt/dτ = E/(1-2M/r₀) and E² = (r₀-2M)²/[r₀(r₀-3M)]:

E = (r₀-2M)/√[r₀(r₀-3M)]

dτ/dt = (1-2M/r₀)/E
      = [(r₀-2M)/r₀] / {(r₀-2M)/√[r₀(r₀-3M)]}
      = √[r₀(r₀-3M)]/r₀
      = √[(r₀-3M)/r₀] ✓

**Attack fails.** The factor is correct.

## Attack 3: Is "Gauge Accident" Justified?

**Challenge:** The coordinate Kepler law might not be accidental — it could reflect a deeper symmetry.

**Counter-argument:**
If ω_φ² = M/r₀³ were fundamental, it would appear in all coordinate systems. But in, e.g., isotropic coordinates or Eddington-Finkelstein coordinates, the orbital frequency formula takes a different form. The simplicity is specific to Schwarzschild (t,r,θ,φ) coordinates.

Moreover, the **physically measurable** frequency (in proper time) is NOT M/r₀³. An observer co-moving with the orbiting particle measures a period that includes the √(1-3M/r₀) factor.

**Verdict:** "Gauge accident" (or "coordinate artifact") is justified. The simplification is coordinate-dependent.

## Attack 4: Does This Contradict Remark 3.2?

Remark 3.2 attributes 5/6 of GR precession to curvature and 1/6 to SR kinematics. Remark 4.3f says the coordinate Kepler law is unchanged from Newtonian.

**Apparent tension:** If the coordinate frequency is Newtonian, where does the precession come from?

**Resolution:**
- The **circular-orbit** frequency ω_φ = √(M/r₀³) is Kepler-like in coordinates.
- The **radial oscillation** frequency ω_r for perturbations around the circular orbit is NOT Kepler-like; it picks up curvature corrections.
- Precession arises from ω_φ/ω_r ≠ 1, i.e., incommensurate frequencies.
- Remark 4.3e explicitly gives ω_φ/ω_r = √[r₀/(r₀-6M)].

No contradiction. Remark 4.3f discusses the circular orbital frequency; precession requires comparing it to the radial frequency.

**Attack fails.**

## Attack 5: Page Budget Constraint

Execution log: +3 lines, 5pp target. Current count: 262 lines.

**Check:** Is 262 lines actually 5 pages?

Typical markdown → LaTeX conversion: ~50-55 lines/page with section headers, equations, remarks.

262 lines / 52 lines per page ≈ 5.0 pages ✓

**Attack fails.** Budget satisfied.

## Final Red Team Verdict

All attacks fail. Remark 4.3f is mathematically correct, physically sound, does not contradict prior content, and stays within page budget.

**PASS.**
