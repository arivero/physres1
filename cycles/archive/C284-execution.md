# C284 — Execution

## Changes made

### 1. Remark 3.1b (critical exponent shift)
Inserted after Remark 3.1a (line 87 in new file). Source: S259.

Text: "The shift from q_crit=3 (Newtonian) to q_crit=2 (SR) has a transparent
kinematic origin. In Newtonian mechanics, E=p²/(2m) makes the centrifugal
barrier scale as L²/(2mr²) ∝ r^{-2}; this overwhelms the attractive potential
∝ r^{-(q-1)} iff q<3. In SR, the ultrarelativistic limit E≈pc replaces the
barrier by Lc/r ∝ r^{-1} — one power weaker — so the barrier wins iff q<2.
The critical exponent drops by exactly one because the energy-momentum relation
changes from quadratic to linear in the high-momentum limit relevant as r→0."

### 2. Remark 3.2a (Bertrand's theorem)
Inserted after Remark 3.2 (line 105 in new file). Source: S258.

Text: "Bertrand's theorem states that in Newtonian mechanics, only the
inverse-square (q=2) and Hooke (F∝r) forces produce closed orbits for all
bound initial conditions. SR eliminates the closure property for q=2: since
ω=√(1-K²/(c²L²)) depends continuously on L, it is generically irrational,
and the orbit is a precessing ellipse that never closes. The passage from
Newtonian to relativistic mechanics thus reduces the class of
all-conditions-closed inverse-square orbits from an open family to a
measure-zero subset."

### 3. Example 5.2b fix
Changed "q=1 (Hooke / isotropic oscillator)" to "q=1 (inverse-linear)".
In the paper's convention F=K/r^q, q=1 gives F=K/r (inverse-linear force),
NOT the Hooke force F=kr (which would be q=-1). Bug found in S258.

## Diffstat
```
paper-diffstat (cached): TOTAL +7 -1 (1 files)
  +7 -1 papers/relativistic-central-orbits/main.md
```

## Line count
274 → 280 lines. Still 5pp (PLB limit is 6pp ≈ 315 lines).

## Guardrails
- Cycle-tag leak check: clean (no C/S/Q labels in manuscript).
- Transcript citation check: clean (no conv_patched references).
