# Referee Report: Rooted Trees as Bookkeeping: The Butcher–RG Dictionary

**Referee:** referee-1
**Round:** 2 (re-review after MAJOR REVISION)
**Date:** 2026-02-21
**Paper:** pub-track/sent/rooted-tree-bookkeeping/main.md

---

## Summary

The paper constructs a side-by-side dictionary between Butcher's rooted-tree formalism for Runge–Kutta (RK) numerical integrators and the Connes–Kreimer Hopf-algebraic formalism for perturbative renormalization. It argues that the shared combinatorial structure—rooted-tree Hopf algebra with coproduct encoding admissible cuts—is not a coincidence but reflects a common algebraic pattern: controlling composition in the presence of obstructions (discretization error vs UV divergences). The paper provides worked examples (midpoint RK2, 2D delta-interaction renormalization), explicit coproduct formulas through order 3, and a concise dictionary table. It is a companion note to a larger work [Main] and explicitly credits Brouder [2000] as the originator of the dictionary.

---

## Response to Round-1 Issues

### MAJOR Issues: Resolution Status

**M1. Incorrect elementary differential for `[[•]]` (Section 3.5) — RESOLVED**

The R1 report identified a wrong formula for `F([[•]])(y)`. The revised paper now states (line 174):

> `F(tau_3^(2))(y) = f'(y)(f'(y) f(y))`, i.e., the Jacobian `f'` applied to the order-2 elementary differential `f'f`.

The accompanying Remark (lines 176–177) explicitly clarifies that `tau_3^(2)` contains no `f''` term and is purely iterated Jacobian application `f'(y) f'(y) f(y)`, not the chain-rule expansion of `(f' circ f)'`. This is the correct formula and the explanation is unambiguous. The Remark also explicitly states that this distinction is tracked automatically by the Butcher recursion, reinforcing the corrected understanding. **M1 is fully resolved.**

**M2. Duplicate Section 4.4 numbering — RESOLVED**

The revised paper now correctly numbers the worked RG example as **Section 4.5** ("Worked Example: 2D Delta Interaction (One-Loop)"), with Section 4.4 retaining the title "RG Flow as Tree Composition." All internal cross-references have been updated consistently: Section 6.2 now points to "Section 4.5" in both relevant occurrences (lines 361, 389). **M2 is fully resolved.**

**M3. Mislabeled "sunset" diagram in Section 4.3 — RESOLVED**

The R1 report objected to labeling the order-2 tree `[•]` a "sunset" (which is a two-loop diagram). The revised Section 4.3 (lines 232–238) now uses the label **"one-loop self-energy"** for the tree `[•]`, which correctly describes a diagram with one nested subdivergence. The sunset label has been removed entirely. **M3 is fully resolved.**

### MINOR Issues: Resolution Status

**m1. Colloquial "Wait—" in Section 3.5 — RESOLVED**

No occurrence of the phrase "Wait—" (or any equivalent colloquialism) is present in the revised paper. The relevant passage in Section 3.5 now opens with a formal declarative remark: "These two trees are **distinct** combinatorial objects, even though they both have order 3." **m1 is resolved.**

**m2. Ambiguous coproduct convention in Section 6.2 — PARTIALLY RESOLVED**

The revised paper retains the same description (line 357): "admissible cut between root and child (root stump on left, child subtree on right)." In the standard Connes–Kreimer convention, the left factor of Delta is the pruned forest (the removed subtrees), which for `[•]` means the child `•` goes left and the root stump `•` goes right. The paper's stated ordering ("root stump on left, child subtree on right") thus inverts the standard labeling. Since both sides happen to be `•` for this particular tree, the formula `• ⊗ •` is still correct, but the description remains inconsistent with the convention and with the order-3 cases where the distinction matters. The paper does not explicitly declare which convention it adopts.

For `[•,•]` (order-3), the paper writes `2(• ⊗ [•])` — this places the pruned subtree `•` on the left and the root-with-remaining-child `[•]` on the right. For `[[•]]`, it writes `[•] ⊗ •` — placing the root-stump (with middle-node) on the left and the innermost child on the right. These two cases are mutually consistent but still differ from the explicit description given for the order-2 case. The inconsistency is minor (and does not produce any incorrect formula), but a single explicit statement of convention would eliminate potential reader confusion. This remains a residual minor concern.

**m3. Incomplete Butcher product formula (gamma undefined) — RESOLVED**

The revised paper (line 195) now defines `gamma(tau) = |tau|! / sigma(tau)` inline and cites `[Butcher2016, §3.1]` for the full convolution rule. **m3 is resolved.**

**m4. Section 4.3 inconsistency — RESOLVED**

This issue was coupled to M3. With the "sunset" label removed and replaced by "one-loop self-energy," the inconsistency between the tree order (order-2) and the diagram label is eliminated. **m4 is resolved.**

**m5. Missing reference for 2D delta renormalization — RESOLVED**

The revised paper adds `[Jackiw1991]` (R. Jackiw, "Delta function potentials in two- and three-dimensional quantum mechanics," *M.A.B. Beg Memorial Volume*, World Scientific, 1991) as Reference 7, and cites it in Section 4.5 at the point where the divergent loop integral is introduced (line 258). **m5 is resolved.**

**m6. Placeholder text in Section 4.4 — RESOLVED**

The placeholder text has been replaced by a proper forward-reference statement (line 248): "A two-loop worked example showing explicit tree grafting on the RG side is deferred to future work; the one-loop structure suffices to anchor the dictionary at leading order." This is a polished statement of scope. **m6 is resolved.**

---

## Evaluation on Own Merits (Revised Paper)

### Strengths

- All three MAJOR errors from R1 are cleanly corrected. The elementary differential formula for `[[•]]` is now correct, the section numbering is consistent, and the diagram label is appropriate.
- The worked example pairing (midpoint RK in Section 3, 2D delta interaction in Section 4.5) is well-chosen and the five-point parallel list at the end of Section 4.5 is clear and illuminating.
- Explicit coproduct formulas up to order 3 in Section 6.2, including the careful algebraic note that `•·•` is a forest product in H (not H⊗H), demonstrate genuine algebraic care.
- The scope and non-goals statement (Section 1.2) remains admirably clear. The paper does not overclaim.
- Attribution to Brouder [2000] is explicit and prominent; the paper positions itself correctly as an exposition and dictionary, not a new theorem.
- The distinction between "literal algebraic equivalence" (Hopf algebra combinatorics) and "structural analogy" (group vs semigroup, physics interpretation) is consistently maintained throughout.

### Weaknesses

#### MAJOR

None.

#### MINOR

- **Residual coproduct-convention ambiguity (from m2):** The explicit description of the order-2 coproduct ("root stump on left, child subtree on right") is inverted relative to the standard Connes–Kreimer convention, in which the left factor is the pruned forest. Since both factors happen to equal `•` for the order-2 case the formula is correct, but a single sentence declaring the adopted convention explicitly would prevent reader confusion when checking against the primary literature.

- **Butcher product computation at order 3 remains schematic:** Line 192 gives `(a star a)(tau_3^(1)) = (sum over ways to graft two tau_1 trees)` without computing the explicit value. The surrounding text confirms the conclusion qualitatively but does not complete the computation numerically. This is not an error — the paper explicitly defers the full convolution formula to [Butcher2016, §3.1] — but a reader wishing to verify the order-2 accuracy conclusion numerically has to leave the paper to do so.

- **Section 6.2 antipode formula notation:** The antipode recursion (line 381) writes `S(tau) = -tau - sum_{tau = tau' ⊗ tau''} S(tau') tau''`. The indexing `tau = tau' ⊗ tau''` is non-standard notation (the sum should be over the reduced coproduct terms, i.e., the non-trivial summands in `Delta_red(tau)`). The paper clarifies this in the following sentence ("excluding tau ⊗ 1 and 1 ⊗ tau"), so the reader can follow the derivation, but the formula itself would be cleaner with `Delta_red` written explicitly.

---

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** All three MAJOR issues from Round 1 have been correctly and completely addressed: the elementary differential formula for `[[•]]` is now right, the duplicate section numbering is fixed, and the sunset mislabeling is gone. All six MINOR issues are resolved or substantially improved. The remaining concerns (coproduct convention clarification, a schematic Butcher product computation, and non-standard antipode notation) are genuinely minor and do not compromise the paper's correctness or utility. A brief revision addressing these three residual points, none of which requires re-review, will ready the paper for publication.

---

## Detailed Comments

### Residual Minor Point 1 — Coproduct Convention (Section 6.2)

Add a single sentence after the notation block, before the order-1 tree formula, declaring the convention explicitly. A suitable sentence:

> "We follow the convention of Connes–Kreimer [Connes1999] in which `Delta(tau) = sum_{cuts c} P^c(tau) ⊗ R^c(tau)`, where `P^c(tau)` is the pruned forest (subtrees above the cut) and `R^c(tau)` is the remaining rooted tree (with root). For the order-2 tree `[•]`, the single admissible cut removes the child `•` (left factor) and leaves the root stump `•` (right factor), giving `• ⊗ •`."

This would also resolve the apparent tension with the English description on line 357, which says "root stump on left." If the author prefers the opposite convention (pruned forest on right), the sentence should state this and explain the resulting sign of the description.

### Residual Minor Point 2 — Butcher Product Computation (Section 3.5)

The text at line 192 could add a brief parenthetical: "... (sum over ways to graft two `tau_1` trees); for the midpoint method with `a(tau_1) = 1`, this gives `(a star a)(tau_3^(1)) = a(tau_1)^2 * gamma(tau_3^(1)) = 1 * 2 = 2/sigma(tau_3^(1))` ..." or simply state the numerical result explicitly. Alternatively, a remark that "the explicit computation yields `(a star a)(tau_3^(1)) = 1/4` vs the order-3 condition value `1/6`, confirming a defect at order 3" would let the reader verify the claim without leaving the paper.

### Residual Minor Point 3 — Antipode Formula Notation (Section 6.2, line 381)

Consider replacing:

> `S(tau) = -tau - sum_{tau = tau' ⊗ tau''} S(tau') tau''`

with:

> `S(tau) = -tau - sum_{(tau)} S(tau') tau''`

where `sum_{(tau)}` is Sweedler notation for the reduced coproduct `Delta_red(tau) = Delta(tau) - tau ⊗ 1 - 1 ⊗ tau`. This is standard in the Hopf algebra literature and avoids the notational overload of writing `tau = tau' ⊗ tau''` as the index of a summation.
