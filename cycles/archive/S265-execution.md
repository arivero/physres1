# S265 — Execution

## 1. Isolating where q=2 enters each derivation

### Role 1: Critical exponent (Remark 3.1b)

The SR effective potential is W_L(r) = sqrt(m^2 c^4 + L^2 c^2/r^2) + U(r),
with U'(r) = K/r^q, so U(r) ~ -K/((q-1) r^{q-1}) for q > 1.

As r -> 0:
- Centrifugal barrier: sqrt(m^2 c^4 + L^2 c^2/r^2) ~ Lc/r  (power: r^{-1})
- Attractive potential: -K/((q-1) r^{q-1})                    (power: r^{-(q-1)})

Barrier wins iff 1 > q-1, i.e., q < 2. At q = 2, both terms scale as 1/r
and the outcome depends on the coefficient comparison Lc vs K.

**Where q = 2 enters:** The critical exponent is fixed by the ultrarelativistic
energy-momentum relation E ~ pc (degree 1 in p), combined with L = rp giving
p ~ 1/r. The barrier exponent is always 1 in SR. The condition is:
barrier exponent > potential exponent, i.e., 1 > q-1, i.e., q < 2.

### Role 2: Stability boundary (Remark 5.2a)

The stability criterion at a circular orbit is W_L''(r_0) > 0, which reduces to

  1 + (2-q) gamma^2 > 0.

This is unconditionally satisfied (for all gamma >= 1) iff 2-q >= 0, i.e., q <= 2.
For q > 2, the factor (2-q) is negative and imposes gamma^2 < 1/(q-2).

**Where q = 2 enters:** The factor (2-q) appears from the second derivative of
the effective potential. Let me trace this more carefully.

From the paper's Section 5.2:

  W_L''(r_0) = (L^2)/(m r_0^4 gamma^3) * [1 + (2-q) gamma^2]

The "1" comes from the centrifugal term's second derivative (pure kinematics),
while the "(2-q) gamma^2" comes from the potential's contribution to the
curvature of W at the circular orbit. The sign flip at q = 2 occurs because:

At q = 2, the potential contributes *zero* curvature correction to the effective
potential at the circular orbit (in the sense that the gamma-dependent stability
correction vanishes). This is the same balancing that makes q = 2 marginal in
Role 1.

### Role 3: Dimensional identity (Remark 3.1)

From the circular-orbit condition K = gamma m v^2 r^{q-1} and L = gamma m r v:

  K/L = v * r^{q-2}

For q = 2, the r-dependence drops out: K/L = v (exact, no dependence on r, m,
or gamma). For any other q, the ratio K/L still involves the radius, which
re-introduces mass and gamma dependence.

**Where q = 2 enters:** The exponent q-2 in r^{q-2} vanishes at q = 2. This is
a dimensional/algebraic fact: [K] has dimensions of [energy * length^{q-1}],
and [L] = [energy * time] = [momentum * length]. The ratio K/L has dimensions
of [velocity * length^{q-2}]. Only when q = 2 does this become a pure velocity.

### Role 4: Sommerfeld (Remark 3.2b)

The orbit equation for q = 2 is u'' + omega^2 u = (mK/L^2) omega^2, with
omega^2 = 1 - K^2/(c^2 L^2). This is Sommerfeld's equation. The parameter
omega depends on K/L, which by Role 3 is a velocity (K/L = v_circ). So
omega^2 = 1 - v_circ^2/c^2 = 1/gamma_circ^2. The Sommerfeld structure is a
direct consequence of the dimensional identity v = K/L.


## 2. Are Roles 1 and 2 mathematically related?

**Yes, but they are not equivalent.** They probe the effective potential at
different locations and in different ways:

- **Role 1** (critical exponent) asks about the *asymptotic behavior* of W_L(r)
  as r -> 0. It is a global question about whether a centrifugal barrier exists
  at all.

- **Role 2** (stability) asks about the *local curvature* W_L''(r_0) at the
  circular orbit. It is a perturbative/local question about small oscillations.

However, they share a common algebraic root: **the degree of the
energy-momentum relation**. Here is the connection:

(a) The ultrarelativistic E ~ pc (degree 1) determines the barrier exponent
    in Role 1.

(b) The same degree-1 behavior propagates into the second derivative of the
    effective potential. The stability factor 1 + (2-q) gamma^2 can be
    rewritten. At the circular orbit, gamma^2 = 1 + (L/(mc r_0))^2. In the
    ultrarelativistic limit gamma >> 1, the stability factor becomes
    approximately (2-q) gamma^2, which is positive iff q < 2 — the same
    threshold as Role 1.

(c) At moderate speeds (gamma ~ 1), Role 2 gives q < 3 (Newtonian stability).
    Role 1 in the Newtonian limit also gives q < 3. The two thresholds agree
    in both the Newtonian and ultrarelativistic limits, but they answer
    *different physical questions* (barrier existence vs. oscillation stability)
    at intermediate regimes.

**Precise logical relationship:**

- Role 1 (barrier exists) is necessary for Role 2 (stable orbit exists):
  if there is no centrifugal barrier, there is no circular orbit to be
  stable around.

- Role 1 does not imply Role 2: a barrier can exist (preventing fall to
  center) while the circular orbit is still unstable (e.g., the Newtonian
  inverse-cube q = 3 case has a marginal barrier and marginal instability,
  but for 2 < q < 3 in the Newtonian case, there IS a barrier AND the
  orbit IS stable — so the implication would go the wrong way if phrased
  carelessly).

Wait, let me be more careful. In the Newtonian case:
- Role 1: barrier exists iff q < 3.
- Role 2: circular orbit stable iff q < 3 (same threshold!).

In the SR case:
- Role 1: barrier exists iff q < 2 (unconditionally) or q = 2 with L > K/c.
- Role 2: unconditionally stable iff q <= 2.

So the thresholds coincide! For the Newtonian case both give q < 3, and for
the SR ultrarelativistic limit both give q < 2. This is NOT a coincidence.

**The deep reason:** The stability of a circular orbit in a power-law potential
and the existence of a centrifugal barrier are both controlled by the same
exponent comparison: the degree of the kinetic energy in momentum vs. the
degree of the potential in 1/r. When these degrees match, both the barrier
and the stability become marginal simultaneously.

More precisely: the centrifugal barrier exponent is n (where E ~ p^n in the
relevant momentum regime: n = 2 Newtonian, n = 1 ultrarelativistic). The
barrier overwhelms r^{-(q-1)} iff n > q-1, i.e., q < n+1. The stability
criterion at the circular orbit also gives q < n+1 in the same regime. Both
thresholds are q_crit = n + 1 = (degree of E(p)) + 1.

This is the unifying formula: **q_crit = deg(E, p) + 1**, where deg(E, p)
is the homogeneity degree of the energy-momentum relation in the relevant
(high-p) limit.

| Regime | deg(E,p) | q_crit = deg + 1 | Barrier? | Stable? |
|--------|----------|-------------------|----------|---------|
| Newton | 2 | 3 | q < 3 | q < 3 |
| SR (UV) | 1 | 2 | q < 2 | q < 2 |


## 3. Is the dimensional identity (Role 3) the underlying cause?

**No. Role 3 is an algebraic consequence of the same exponent match, not its
cause.** Here is the argument:

The circular-orbit condition gives K/L = v * r^{q-2}. The exponent q-2
vanishes at q = 2. But why is the "special" exponent 2 here the same as
q_crit in SR?

The q_crit = 2 in SR comes from the energy-momentum relation E ~ pc (degree 1)
giving barrier exponent 1, and 1 = q_crit - 1. So q_crit = 2.

The dimensional identity has q = 2 from the exponent in r^{q-2} vanishing.
This exponent q-2 arises from dividing the circular-orbit condition
K = gamma m v^2 r^{q-1} by L = gamma m r v, giving K/L = v r^{q-2}. The
exponent is (q-1) - 1 = q - 2.

These are the same "2" for a different reason: the "2" in q-2 counts
(force law exponent) - (angular momentum contribution). The "2" in q_crit = 2
counts (barrier exponent + 1). In both cases, the "2" traces back to the
fact that the SR barrier scales as r^{-1} (one power of r from L = rp, one
from E = pc).

So Role 3 and Roles 1-2 share a common structural origin (the degree of the
energy-momentum relation determines both the barrier exponent and the
dimensional balancing), but neither causes the other. They are *siblings*,
not parent-child.


## 4. Does Role 4 (Sommerfeld) add an independent constraint?

**No.** Role 4 is a direct consequence of Role 3. The orbit equation for
general q involves complicated r-dependent coefficients. For q = 2,
the dimensional identity v = K/L (Role 3) eliminates the mass and the
Lorentz factor from the orbit equation, leaving a simple harmonic
oscillator in u with shifted frequency omega. This simplification IS
the Sommerfeld equation. Without Role 3 (i.e., for q != 2), the orbit
equation does not reduce to a linear ODE with constant coefficients.

So: Role 4 is a *consequence* of Role 3, which is a *sibling* of Roles 1-2.


## 5. Structure of the relationships

```
          Energy-momentum degree (n)
          [Newton: n=2, SR: n=1]
               /         \
              /           \
    Role 1 (barrier)   Role 3 (dimensions)
    q_crit = n+1       K/L = v * r^{q-n}
    [q < n+1 for       [radius drops out
     barrier]            iff q = n+1]
              \           /
               \         /
    Role 2 (stability)   Role 4 (Sommerfeld)
    [same threshold      [consequence of
     q < n+1]             Role 3 at q=2]
```

The unifying observation: **q = 2 is the SR value of q_crit = deg(E,p) + 1,
where deg(E,p) = 1 is the ultrarelativistic degree of the energy-momentum
relation.** This single number simultaneously:

- sets the barrier threshold (Role 1),
- sets the unconditional stability boundary (Role 2),
- makes K/L a pure velocity (Role 3, since r^{q-q_crit} = r^0 = 1),
- enables the Sommerfeld simplification (Role 4, via Role 3).


## 6. Assessment: is a consolidation remark worth promoting?

### Arguments FOR

1. The unifying formula q_crit = deg(E,p) + 1 is clean, correct, and not
   stated anywhere in the paper. The paper has the individual roles scattered
   across Remarks 3.1, 3.1b, 5.2a, and 3.2b, but never connects them.

2. A 2-3 sentence remark tying them together would strengthen the paper's
   "refinement-witness" framing: the fact that q = 2 is special in SR (but
   q = 3 in Newton) is itself a refinement witness — the same force law
   changes its structural role when the kinematic framework is refined.

3. The observation that Roles 1 and 2 coincide (same q_crit) is non-trivial
   and pedagogically valuable. A reader might think the barrier question
   (r -> 0) and the stability question (perturbations at r_0) are independent.

### Arguments AGAINST

1. The paper already has 286 lines / 5pp. Adding a remark pushes closer to
   the 6pp PLB boundary, and the index notes only ~29 lines of room remain.

2. The individual remarks (3.1, 3.1b, 5.2a) already make the key points. A
   consolidation remark risks being "meta-commentary" rather than new content.

3. The formula q_crit = deg(E,p) + 1, while clean, is essentially a
   restatement of "the barrier exponent determines the critical exponent"
   (Remark 3.1b). Naming it as "deg + 1" adds notation without new physics.

4. Remark 5.2c (stability-precession duality) already partially connects
   Roles 1 and 2 at q = 2 by showing gamma^2 omega^2 = 1.

### Verdict

**MARGINAL. Lean toward NO for the current paper, but flag as potential
Outlook item or footnote.**

Reasoning:

- The unifying observation is correct and instructive, but the paper already
  conveys the key points through its individual remarks. A consolidation
  remark would be "the fourth time the paper says q = 2 is special" — it
  adds conceptual unity but no new mathematics.

- The most economical way to include this insight is a single sentence in the
  Outlook (Section 6), not a standalone remark. Something like: "The three
  special roles of q = 2 identified in this paper — critical exponent
  (Remark 3.1b), stability boundary (Remark 5.2a), and dimensional identity
  (Remark 3.1) — all trace to the ultrarelativistic degree of the
  energy-momentum relation, and shift together to q = 3 in the Newtonian
  limit."

- If the paper had more room (e.g., below 4pp), a full remark would be
  justified. At 5pp with a 6pp ceiling, a single Outlook sentence is the
  right dosage.


## 7. Draft consolidation text (for possible Outlook insertion)

**Option A: Single sentence in Outlook (recommended)**

> The three structural roles of q = 2 identified in this paper — as the SR
> critical exponent for the centrifugal barrier (Remark 3.1b), the
> unconditional stability boundary (Remark 5.2a), and the unique exponent
> yielding a mass-independent velocity identity (Remark 3.1) — all originate
> from the ultrarelativistic energy-momentum relation E ~ pc having degree 1,
> and shift in unison to q = 3 in the Newtonian limit where E = p^2/(2m) has
> degree 2.

(~55 words, 1 sentence)

**Option B: Standalone remark (not recommended at current page count)**

> `Remark 5.2d (Triple threshold at q = 2).`
> The inverse-square law plays three distinct special roles in SR: (i) it is
> the critical exponent for centrifugal-barrier existence (Remark 3.1b);
> (ii) it is the boundary of unconditional stability (Remark 5.2a); and
> (iii) it is the unique exponent for which v = K/L is mass-independent
> (Remark 3.1). All three trace to the same structural root: the
> ultrarelativistic energy-momentum relation E ~ pc has degree 1 in p,
> fixing q_crit = (degree) + 1 = 2 and simultaneously making the exponent
> r^{q-2} trivial. In the Newtonian limit (degree 2), all three roles shift
> to q = 3.

(~85 words, 3 sentences)
