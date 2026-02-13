# S259 — Execution

## 1. Mathematical argument for the critical exponent shift

### Newtonian case
For a power-law force F(r) = K/r^q (q > 1), the potential is
U(r) = -K/((q-1) r^{q-1}). The Newtonian effective potential at fixed
angular momentum L is

    W_NR(r) = L²/(2mr²) + U(r).

As r → 0⁺, the two competing singular terms are:
- Centrifugal barrier: +L²/(2mr²) ~ r^{-2}
- Attractive potential: -K/((q-1) r^{q-1}) ~ -r^{-(q-1)}

The barrier wins (i.e. W_NR → +∞) iff the barrier exponent exceeds the
potential exponent: 2 > q-1, i.e. **q < 3**. At q = 3 both terms scale
as 1/r², and the outcome depends on L (marginal case). For q > 3 the
attractive potential overwhelms the barrier — no centrifugal protection,
hence collapse.

**Origin of the exponent 2 in the barrier:** In Newtonian mechanics,
kinetic energy is E_kin = p²/(2m). For circular motion, p_perp = L/r,
so the centrifugal energy is L²/(2mr²) — the exponent 2 in 1/r² comes
directly from the *quadratic* energy-momentum relation.

### SR case
The SR effective potential at fixed L is

    W_SR(r) = √(m²c⁴ + L²c²/r²) + U(r).

As r → 0⁺, the kinetic (rest + centrifugal) term has leading behavior:

    √(m²c⁴ + L²c²/r²) ≈ Lc/r   [ultrarelativistic limit, r → 0].

This is *linear* in 1/r. Now the competing terms are:
- Centrifugal barrier: +Lc/r ~ r^{-1}
- Attractive potential: -K/((q-1) r^{q-1}) ~ -r^{-(q-1)}

The barrier wins iff 1 > q-1, i.e. **q < 2**. At q = 2 both terms scale
as 1/r, and the outcome depends on Lc vs K (the three regimes of Section 3.1).
For q > 2 the attractive potential overwhelms the SR centrifugal barrier.

**Origin of the exponent 1 in the barrier:** In SR, the ultrarelativistic
energy-momentum relation is E ≈ pc (linear, not quadratic). With p = L/r,
this gives Lc/r — the exponent 1 in 1/r comes from the *linear*
energy-momentum relation.

### Summary of the shift
| Regime | E-p relation | Centrifugal barrier | q_crit |
|--------|-------------|-------------------|--------|
| Newtonian | E = p²/(2m) | L²/(2mr²) ~ 1/r² | 3 |
| SR (r → 0) | E ≈ pc | Lc/r ~ 1/r | 2 |

The critical exponent drops by exactly 1 because the ultrarelativistic
energy-momentum relation is one power lower in p than the Newtonian one.
Equivalently: the centrifugal barrier exponent equals the degree of the
energy-momentum relation in the relevant (high-p) limit, and that degree
drops from 2 to 1 when going from Newton to Einstein.

## 2. Physical interpretation

The mechanism is clean and structural:

(a) In Newtonian mechanics, kinetic energy is *quadratic* in momentum:
    E = p²/(2m). Angular momentum conservation L = r × p forces p ~ 1/r
    at small r, giving a centrifugal barrier ~ 1/r². Any power law with
    q < 3 cannot overcome this quadratic barrier.

(b) In SR, the energy-momentum relation E = √(m²c⁴ + p²c²) becomes
    *linear* in the ultrarelativistic limit (E ≈ pc). The same angular
    momentum conservation gives a centrifugal barrier ~ 1/r (one power
    weaker). Now only power laws with q < 2 are unconditionally blocked.

(c) The inverse-square force (q = 2) sits exactly at the new critical
    threshold: the barrier and attraction scale identically as 1/r, and
    the competition reduces to the dimensionless ratio Lc/K. This is why
    the bound L > K/c is non-trivial for q = 2 in SR, whereas in
    Newtonian mechanics q = 2 is safely below q_crit = 3.

The shift Δq_crit = -1 is not accidental — it reflects the fundamental
change in the degree of homogeneity of the kinetic energy as a function
of momentum: deg(p²/2m) = 2, deg(pc) = 1.

## 3. Draft remark (Remark 3.1b)

> `Remark 3.1b (Why the critical exponent drops by one).`
> The shift from q_crit = 3 (Newtonian) to q_crit = 2 (SR) has a
> transparent kinematic origin. In Newtonian mechanics, E = p²/(2m)
> makes the centrifugal barrier scale as L²/(2mr²) ∝ r^{-2}; this
> overwhelms the attractive potential ∝ r^{-(q-1)} iff q < 3. In SR,
> the ultrarelativistic limit E ≈ pc replaces the barrier by Lc/r ∝ r^{-1}
> — one power weaker — so the barrier wins iff q < 2. The critical
> exponent drops by exactly 1 because the energy-momentum relation
> changes from quadratic to linear in the high-momentum limit relevant
> at r → 0.

(3 sentences, ~95 words. Fits naturally after the current line 82 content
and before Remark 3.1a.)

## 4. Assessment: promotion value

**FOR promotion:**
- Line 82 asserts the shift q_crit = 3 → 2 as a structural fact but does
  not explain *why* it is exactly 1. The draft remark fills that gap.
- The explanation is self-contained (2-3 sentences) and requires no new
  formalism — it only interprets the r → 0 asymptotics already displayed.
- It connects the orbit-admissibility story to the energy-momentum relation,
  which is the paper's central theme (kinematic refinement witnesses).
- The "degree of homogeneity" framing unifies with Section 5's stability
  analysis, where the same q = 2 boundary appears from a different angle.

**AGAINST promotion:**
- The argument is arguably implicit in the displayed asymptotics of line 77.
  A careful reader can reconstruct it.
- Adding another remark between lines 82 and 84 risks crowding Section 3.1.

**Verdict:** Worth promoting. The remark makes an implicit structural point
explicit, directly serves the "refinement-witness" framing, and is compact
enough not to bloat the section. Recommend insertion as Remark 3.1b, placed
between the current line 82 and Remark 3.1a (which would be renumbered to
3.1c), or alternatively after Remark 3.1a (keeping numbering as-is and
calling the new one 3.1b).
