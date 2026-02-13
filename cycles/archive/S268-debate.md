# S268 — Debate

## The case FOR promotion

1. **Explicitness has value.** Mathematical papers routinely state corollaries
   that are "obvious" combinations of nearby results, because readers benefit
   from seeing the chain closed explicitly. E = mc^2 omega ties three threads
   (energy, precession, stability) into a single formula — even if each
   pairwise link exists, the triple conjunction is never stated.

2. **Pedagogical symmetry.** Section 3 introduces omega for orbit shape.
   Section 5 uses gamma for stability. Stating E = mc^2 omega in Section 3
   would give the reader an early energy anchor, so that by the time they
   reach Remark 5.2c, the energy-precession link is already familiar.

3. **Line budget allows it.** The paper is at ~286 lines / 5pp. A 3-line
   remark keeps it well within the 6pp PLB limit.

## The case AGAINST promotion

1. **Redundancy from two independent routes.** The identity is implicit
   by inspection from two separate places in the existing text:
   (a) W_min = mc^2 sqrt(1 - K^2/(c^2 L^2)) [Section 3.1, line 78] and
       omega^2 = 1 - K^2/(c^2 L^2) [Remark 3.2, line 95] —
       these are 12 lines apart, and W_min = mc^2 omega requires only
       recognizing that the same radical appears in both.
   (b) gamma^2 omega^2 = 1 [Remark 5.2c] combined with the standard
       E = mc^2/gamma — one multiplication.
   A standalone remark for a one-step deduction from adjacent text
   crosses into padding territory.

2. **Remark 5.2c subsumes the structural content.** The "stability-precession
   duality" gamma^2 omega^2 = 1 is a three-way link (stability factor,
   precession frequency, Lorentz factor). Adding E = mc^2 omega merely
   rescales by mc^2 — the structural content is already in 5.2c.

3. **Forward reference problem.** To state E_circ = mc^2 omega in Section 3,
   one needs E = gamma mc^2 - K/r = mc^2/gamma. This relies on the virial
   relation or the effective-potential framework of Section 5. Placing the
   remark in Section 3 creates a forward reference; placing it after 5.2c
   makes it immediately redundant.

4. **No GR payoff.** S260 showed that no clean GR analogue exists:
   E_GR = (1-2M/r)/sqrt(1-3M/r) does not factor into a single precession
   parameter times mc^2. So the SR identity, while aesthetically pleasing,
   does not open a structural comparison thread.

5. **The physical interpretation (omega as binding measure) is already
   conveyed.** Section 3.1 states W_min = mc^2 sqrt(1 - K^2/(c^2 L^2))
   and notes it ranges from mc^2 (Newtonian) to 0 (capture). This IS the
   binding interpretation; calling the radical "omega" adds a label, not
   physics.

## Weighing

The "against" case is stronger on three axes: mathematical novelty (one-step
from existing text), structural content (subsumed by 5.2c), and physical
content (binding interpretation already present in W_min). The "for" case
rests on pedagogical explicitness, which is valid but insufficient to justify
a standalone remark in a PLB-length paper at 5pp.

## Resolution

**NOT PROMOTE** as a standalone remark. The S260 deferral is resolved:
the overlap with Remark 5.2c is not partial but essentially complete once
the W_min expression in Section 3.1 is accounted for.

**Minor future action (below S-cycle scope):** If a future C cycle touches
Section 3.1 or Remark 3.2, a parenthetical annotation
"(so that W_min = mc^2 omega)" could be inserted at negligible cost. This is
a C-cycle editorial decision, not an S-cycle finding.
