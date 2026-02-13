# S258 Red Team: Attack Vectors on the Proposed Bertrand Remark

**Date:** 2026-02-13

---

## Attack 1: "Generic irrationality" is not the same as "no closed orbits"

**Objection:** The remark claims SR "breaks" Bertrand closure because omega is
"generically irrational." But Bertrand's theorem says "all bound orbits are
closed." The negation is: "there exist bound orbits that are not closed" — which
requires only ONE non-closed orbit, not "generic" non-closure. Conversely, the
remark is actually proving something stronger (generic non-closure) than needed
to negate Bertrand. The phrasing should be precise.

**Defense:** The remark is correct. Bertrand says "all bound orbits closed."
SR gives: for generic L, the orbit is not closed. This immediately negates
"all." The "generic" phrasing is actually the natural one (it tells you how
badly Bertrand fails — not just for one pathological orbit, but for almost all
orbits). No logical error.

**Verdict:** Defense prevails. The phrasing is fine; "generically open" is
stronger than the minimum needed, which is a feature, not a bug.

---

## Attack 2: omega could be rational for physically relevant orbits

**Objection:** The remark says omega is "generically irrational," but physical
orbits occupy a specific (small) region of parameter space. Perhaps for the
Solar System or for atomic physics, the relevant omega values are close to
rational, so the "generically irrational" claim is true but misleading.

**Defense:** This is a valid nuance but does not undermine the remark. The
remark is a structural statement about the force law, not a claim about any
specific physical system. Bertrand's theorem is likewise a structural statement
("for ALL bound initial conditions"). The point is that the "all" fails in SR,
not that any particular orbit is or isn't closed.

Moreover, for v << c, omega is close to 1 (which is rational), but "close to
rational" is not "rational." The orbit is a precessing ellipse with very slow
precession — it nearly closes but does not. This is physically observable
(Mercury's precession) and structurally significant.

**Verdict:** Defense prevails. The nuance could be mentioned but does not
invalidate the remark.

---

## Attack 3: The Hooke claim is unsupported

**Objection:** If the remark mentions both Bertrand potentials, the Hooke case
is not derived in the paper. A referee will ask for a derivation or a citation.
The remark bootstraps on Kumar-Bhattacharya (2011) and Homorodean (2013), but
those papers use different relativistic frameworks (not necessarily the same
"SR particle in external potential" model as this paper). The claim may not
transfer.

**Defense:** This is the strongest objection. The debate (S258-debate.md)
already recommends scoping the remark to q=2 only and mentioning Hooke in
passing. If the remark is kept to q=2, this attack does not apply.

If the Hooke case is included, it should be a literature pointer only, not a
claim of proof: "For the other Bertrand potential (Hooke's law), relativistic
corrections likewise break orbit closure [Kumar-Bhattacharya 2011]."

**Verdict:** Attack partially succeeds. Restrict the Hooke claim to a
literature pointer or omit it.

---

## Attack 4: The mislabeling in Example 5.2b undermines credibility

**Objection:** If the paper labels q=1 as "Hooke" and then a new remark
discusses Bertrand's theorem (which involves the actual Hooke force at q=-1),
a careful reader will notice the inconsistency. This makes the paper look
careless.

**Defense:** Agreed — the mislabeling should be fixed before or simultaneously
with the Bertrand remark. The fix is easy: change "Hooke / isotropic
oscillator" to "inverse-linear" at line 257.

**Verdict:** Attack succeeds conditionally. The fix is easy and should be
bundled with the remark promotion.

---

## Attack 5: The remark does not add enough beyond Remark 3.2

**Objection:** Any reader who sees omega < 1 in Remark 3.2 can immediately
infer non-closure. The Bertrand remark just states the obvious conclusion.
It wastes the reader's time.

**Defense:** This underestimates the remark's content. The key insight is not
just "omega < 1 implies precession" (which is obvious) but:

1. The *measure-theoretic* statement that closure fails for *almost all*
   orbits (not just "most" or "many").
2. The connection to Bertrand's theorem — a specific, named classical result
   that many readers know.
3. The structural framing: SR narrows the class of closed orbits from "two
   infinite families" to "measure-zero subsets."

These are not obvious from Remark 3.2 alone. The remark adds a layer of
interpretation.

**Verdict:** Defense prevails. The remark adds non-trivial structural content.

---

## Strongest Surviving Attack

**Attack 3 (Hooke claim unsupported)** is the most dangerous. Mitigation:
scope the remark to q=2 and add Hooke only as a literature pointer.

**Attack 4 (mislabeling)** is also important but has a simple fix.

No mathematical error in the proposed content. No guardrail violation.
