# S258 Debate: Is the Bertrand–SR Remark Valuable?

**Date:** 2026-02-13

---

## Position A: The remark adds significant structural value

1. **Self-contained for q=2.** The argument that omega = sqrt(1 - K^2/(c^2 L^2))
   is generically irrational follows immediately from Remark 3.2's orbit
   equation. No new derivation is needed — it is a 2-line observation on
   existing content.

2. **Connects to a famous theorem.** Bertrand's theorem is one of the most
   cited structural results in classical mechanics. Pointing out that SR
   breaks it is a natural "refinement witness" — exactly the paper's theme.

3. **Motivates the paper's emphasis on q=2.** The paper already notes many
   special properties of q=2 (dimensional identity v = K/L, stability
   boundary, precession-stability duality). Adding "q=2 is one of only two
   Bertrand potentials, and SR breaks its closure property" rounds out the
   picture.

4. **Lightweight.** The remark can be 3 sentences. It does not inflate the
   paper or require new sections.

---

## Position B: The remark is unnecessary or risky

1. **The Hooke side is under-developed.** The paper has no SR orbit equation
   for q = -1 (Hooke). Mentioning both Bertrand potentials without deriving
   the Hooke case risks a half-baked claim. A referee could ask: "You claim
   SR breaks both, but you only show q = 2."

2. **The q = 2 closure failure is obvious.** Any reader of Remark 3.2 who
   knows Bertrand's theorem can immediately see that omega < 1 implies non-
   closure. Writing it out may feel patronizing.

3. **Scope creep risk.** The paper is a "dependent note" (line 12) recording
   specific SR constraints. A Bertrand remark broadens the scope toward a
   general orbit-closure survey. This may trigger a referee comment about
   focus.

4. **Mislabeling entanglement.** Example 5.2b mislabels q = 1 as "Hooke."
   Adding a Bertrand remark before fixing this creates internal tension.

---

## Resolution

**Include the remark, but scope it to q = 2 only.**

- The q = 2 argument is self-contained and non-trivial (generic irrationality
  of omega is a measure-theoretic statement, not a tautology).
- Mention the Hooke case in passing ("the other Bertrand potential") with a
  literature pointer, but do not claim to prove non-closure for it.
- Fix the Example 5.2b mislabeling in the same or an adjacent C cycle.
- Keep the remark to 2-3 sentences.

This balances structural insight against the risk of under-supported claims
about the Hooke force.

---

## Side debate: Is the mislabeling finding (q=1 != Hooke) important?

**Yes.** It is a genuine error: in the paper's convention F = K/r^q, the
Hooke force F = kr corresponds to q = -1, not q = 1. The label at line 257
could confuse a reader who knows Bertrand's theorem (since q = 1 is not a
Bertrand potential). This should be corrected regardless of whether the
Bertrand remark is added.

However, fixing it has downstream implications: if q = -1 is added to
Example 5.2b, the stability criterion 1 + (2 - (-1)) gamma^2 = 1 + 3 gamma^2
> 0, which is unconditionally stable — consistent with the Newtonian result.
The fix is straightforward and mathematically clean.
