# S266 — Execution

## Question 1: General-q velocity relation — already covered by Remark 3.1?

From Section 2, the circular-orbit condition K = γmv²r^{q-1} and the angular
momentum L = γmrv yield, upon division:

  K/L = v · r^{q-2}

For q = 2, this gives v = K/L (mass-independent, radius-independent).
For q ≠ 2, solving for v gives v = (K/L)r^{2-q}, which depends on radius.
Since the orbit radius itself depends on m and γ through L² = Kγmr^{3-q},
the velocity is implicitly mass-dependent.

**Cross-check**: Remark 3.1 (lines 69–70) states exactly this:
> "For general q, the circular-orbit condition gives K/L = v · r^{q-2};
> eliminating the residual r^{q-2} re-introduces the mass and Lorentz factor,
> and no clean mass-independent identity survives."

**Verdict on Q1**: Fully covered. A Section 2 remark on this topic would
duplicate Remark 3.1 verbatim.

## Question 2: Total energy at general-q circular orbit

For a power-law force F = K/r^q, the potential is U(r) = -K/((q-1)r^{q-1})
for q ≠ 1. The circular-orbit energy is:

  E_circ = γmc² + U(r_0) = γmc² - K/((q-1)r_0^{q-1})

Using the orbit condition K = γmv²r_0^{q-1}, substitute:

  U(r_0) = -γmv²/(q-1)

So:

  E_circ = γmc²(1 - v²/((q-1)c²))

For q = 2 (U = -K/r): E_circ = γmc²(1 - v²/c²) = γmc² · 1/γ² = mc²/γ
  = mc²√(1 - K²/(c²L²)), using v = K/L.

This is the result already stated in Section 3.1 (line 78): "the well depth is
W_min = mc²√(1 - K²/(c²L²))."

For general q, E_circ = γmc²(1 - v²/((q-1)c²)) is a formula involving v,
which itself depends on r and m. It does not simplify to a function of (K, L, m, c)
alone — the radius (or equivalently v) persists as a free parameter.

The q = 2 energy formula is special precisely because v = K/L eliminates
the geometric degree of freedom. This is again the same dimensional uniqueness
captured by Remark 3.1.

**Interplay with stability**: Note that E_circ = γmc²(1 - v²/((q-1)c²))
is positive iff v² < (q-1)c². For q = 2, this is v < c (always satisfied
for physical motion). For q = 3, this is v < c√2 (always satisfied since
v < c). So the energy positivity does not produce a new constraint beyond
v < c. Not structurally interesting.

**Verdict on Q2**: The energy formula for general q is not illuminating.
The q = 2 simplification is already implicit in Section 3.1. No remark needed.

## Question 3: Other structural observations about Section 2

Candidate A — "Section 2 as the hub": Section 2's orbit condition
L² = Kγmr^{3-q} is re-derived in Section 5.1 (line 228–230) and used
throughout Sections 3–5. One could add a "roadmap remark" noting this.
But roadmap remarks are editorial, not structural. They add words without
physics. Not worth the line budget.

Candidate B — "Newtonian limit of Section 2": Line 45 says "This reduces
to the Newtonian relation when γ→1." One could spell out: L² = Kmr^{3-q},
which is the standard Newtonian circular-orbit condition. But this is
trivially obvious and not worth a remark.

Candidate C — "The γ-dependence as an implicit equation": For general q,
the orbit condition L² = Kγmr^{3-q} has γ on the RHS, which itself depends
on v and hence on r. So the condition is actually transcendental in r for
q ≠ 2. For q = 2, v = K/L is constant, so γ is constant, and the condition
is algebraic: r = L²/(Kγm). This "algebraic vs transcendental" distinction
is a valid structural observation — but it is again a consequence of the
v = K/L identity, and Remark 3.1 already identifies the dimensional root.

**Verdict on Q3**: No candidate survives the overlap/value filter.

## Overall assessment

Section 2 is correctly structured as pure kinematic setup with no remarks.
Every structural observation that arises from its equations is already
captured downstream:
- Dimensional uniqueness of q = 2 → Remark 3.1
- Energy simplification → Section 3.1
- Stability implications → Section 5
- Newtonian limit → stated at line 45

Adding a remark to Section 2 would either (a) duplicate existing content
or (b) add editorial/roadmap material that does not carry physics content.
Given the 29-line budget remaining, those lines are better spent elsewhere.
