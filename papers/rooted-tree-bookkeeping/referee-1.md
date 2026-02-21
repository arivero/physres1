# Referee Report: Rooted Trees as Bookkeeping: The Butcher–RG Dictionary

**Referee:** referee-1
**Date:** 2026-02-21
**Paper:** pub-track/sent/rooted-tree-bookkeeping/main.md

---

## Summary

The paper constructs a side-by-side dictionary between Butcher's rooted-tree formalism for Runge–Kutta (RK) numerical integrators and the Connes–Kreimer Hopf-algebraic formalism for perturbative renormalization. It argues that the shared combinatorial structure—rooted-tree Hopf algebra with coproduct encoding admissible cuts—is not a coincidence but reflects a common algebraic pattern: controlling composition in the presence of obstructions (discretization error vs UV divergences). The paper is a companion note to a larger work on "refinement compatibility" [Main], and it provides worked examples (midpoint RK2, 2D delta-interaction renormalization), explicit coproduct formulas through order 3, and a concise dictionary table. The intended contribution is expository clarity and novelty-by-placement within the companion framework, not new theorems.

---

## Strengths

- The framing is intellectually honest: the paper explicitly names Brouder [2000] as the originator of the dictionary and positions itself as an exposition rather than a new discovery.
- The distinction between literal algebraic identity (Hopf algebra combinatorics) and structural analogy (group vs semigroup, physical interpretation of tree nodes) is well drawn and consistently maintained.
- The worked example in Section 4.4 (2D delta interaction) is physically appropriate and computed correctly. It pairs neatly with the midpoint RK example and the five-point parallel list at the end of that section is illuminating.
- Explicit coproduct formulas in Section 6.2 for trees up to order 3, including the careful note that `•·•` is a forest product in H (not H⊗H), show real attention to algebraic precision.
- The scope and non-goals statement in Section 1.2 is clear and sets realistic expectations.

---

## Weaknesses

### MAJOR

**M1. Incorrect elementary differential for `tau_3^(2) = [[•]]` (Section 3.5)**

The paper writes:

> `F(tau_3^(2))(y) = (f' ∘ f)'(y) f(y) = f''(y)(f(y), f(y)) + f'(y) f'(y) f(y)`

This is wrong. The elementary differential is defined recursively: for a tree `tau = [t_1, ..., t_m]` with root and subtrees `t_1, ..., t_m`,

    F(tau)(y) = f^(m)(y)(F(t_1)(y), ..., F(t_m)(y))

where `f^(m)` is the m-th Fréchet derivative. For `[[•]] = [[t_1]]` with `t_1 = [•]`, we have m=1 and `F(t_1)(y) = F([•])(y) = f'(y)f(y)`. Therefore:

    F([[•]])(y) = f^(1)(y)(F([•])(y)) = f'(y) · (f'(y) f(y))

This is `(f')^2 f` — iterated application of the Jacobian, with no `f''` term. The paper's formula `(f'∘f)'(y) f(y)` applies the chain rule to the scalar composition `f'∘f` and then multiplies by `f(y)`, which is not the correct recursion. The expression `f''(y)(f(y), f(y))` that appears in the paper is the elementary differential for `[•,•]`, not `[[•]]`. The two order-3 trees have distinct elementary differentials precisely because of this distinction.

This error propagates into the narrative of Section 3.5, which discusses why the two trees are "not the same." The trees ARE combinatorially distinct, and the paper correctly notes this, but the given formula for `F([[•]])` blurs the distinction in the wrong direction. A reader who trusts the formula will come away with an incorrect understanding of how the recursion works.

**The error must be corrected before publication.** The corrected formula is:

    F([[•]])(y) = f'(y)(f'(y)(f(y)))  [i.e., (f')^2 f, iterated Jacobian application]

**M2. Duplicate section numbering (Section 4.4 appears twice)**

The paper contains two subsections both labeled "4.4":
- First 4.4: "RG Flow as Tree Composition" (the beta-function discussion ending with a placeholder)
- Second 4.4: "Worked Example: 2D Delta Interaction (One-Loop)"

This is a structural error. The worked example should be renumbered 4.5, and all cross-references updated accordingly. As written, a reader navigating by section number will be confused, and the placeholder text in the first "4.4" ("A fully worked two-loop example ... is deferred ...") followed immediately by an allegedly worked example in the second "4.4" is particularly disorienting.

**M3. Mislabeled RG example in Section 4.3**

Section 4.3 presents `tau = [•]` (one node with one child, an order-2 tree) and labels it "one-loop sunset." The sunset diagram is a standard two-loop self-energy diagram (two propagator lines connecting two vertices, forming a loop). The appropriate one-loop example for tree `[•]` (which has a non-trivial nested structure with one admissible cut) is a one-loop diagram with one nested subdivergence, not a sunset. The coproduct term `• ⊗ •` for `[•]` encodes the subtraction of a subdivergence within a larger diagram — this is a nested structure, not a sunset. The sunset has two independent loop integrations and no nesting. This mislabeling could mislead physicists who work with Feynman diagrams. The labeling should be corrected (e.g., to "one-loop self-energy with subdivergence" or similar).

### MINOR

**m1. Colloquial "Wait—" interruption in Section 3.5**

The sentence "Wait—these are not the same" is colloquial and unsuitable for a formal paper, even a note. This should be rewritten as a direct declarative statement, e.g., "These two trees are combinatorially distinct: ..."

**m2. Ambiguous description of coproduct convention in Section 6.2**

The paper describes the admissible cut for `[•]` as "root stump on left, child subtree on right" → `• ⊗ •`. In the standard Connes–Kreimer convention, the left factor of `Δ` is the pruned forest (subtrees above the cut, i.e., the child) and the right factor is the pruned remainder tree (with root, i.e., the root stump). The paper's description reverses the standard labeling, though since both factors happen to be `•` for this case, the formula is correct. For order-3 trees the paper switches to correct statements (e.g., "root stump on left" for `[•,•]` and correctly gives `•·• ⊗ •`). However, the inconsistency with the standard convention should be flagged explicitly, or the paper should state which convention it adopts.

**m3. Butcher product formula in Section 3.5 is incomplete**

The expression:

    (a_mid ★ a_mid)(tau_3^(1)) = a(tau_1)^2 · gamma(tau_3^(1)) / sigma(tau_3^(1)) = 1^2 · 1/2 = 1/2

appears without defining `gamma(tau)` (which in Butcher's notation is related to the density or the tree factorial). The symbol `gamma` is introduced here without prior definition. Either define it or cite where the formula comes from.

**m4. Coproduct description for `[•]` in Section 4.3 says "one node with one child"**

This correctly describes `[•]` as an order-2 tree, but then calls it a "sunset." This inconsistency with the tree order is a related issue to M3 above.

**m5. Missing reference for the 2D delta renormalization example**

The 2D contact interaction renormalization (Section 4.4) is a textbook result (e.g., Adhikari 1986, or Jackiw 1991 / van Haeringen 1979). While the computation is standard, a reference would be appropriate given that this is presented as a worked example anchoring the dictionary.

**m6. The first Section 4.4 ends with "Placeholder" text**

The note "Placeholder: A fully worked two-loop example ... is deferred to a later draft" reads as an unfinished draft marker, not a polished statement of scope. This should be converted to a proper remark or forward reference, e.g., "A two-loop worked example is deferred to future work; the one-loop structure suffices to anchor the dictionary at this order."

---

## Verdict

**Recommendation:** MAJOR REVISION

**Justification:** The paper has two structural errors that must be fixed before publication: the incorrect elementary differential for `[[•]]` (M1) and the duplicate section-4.4 numbering (M2). The mislabeled "sunset" (M3) is a content error that could mislead readers with a Feynman-diagram background. Once these three items are corrected, the remaining issues are minor and do not require re-review.

---

## Detailed Comments

### Section 3.5 — Elementary Differential for `[[•]]`

The correct recursion (see e.g. Butcher [2016] §2.2 or Hairer–Lubich–Wanner [2006] §III.1) gives:

For `tau = [t_1]` (single child), `F([t_1])(y) = f'(y) · F(t_1)(y)` (the Jacobian `f'(y)` applied to the vector `F(t_1)(y)`).

Applying this twice: `F([[•]])(y) = f'(y)(f'(y)(f(y)))`.

The paper's formula `(f'∘f)'(y) f(y)` computes d/dy(f'(y)·f(y))·f(y), applying the product rule/chain rule on the scalar composition, which is a different object. This formula would be correct if one were computing d/dy of the order-2 elementary differential, but that is not the elementary differential for `[[•]]`.

A concrete scalar example clarifies the distinction. Let `f(y) = y^2` (on `R^1`). Then:
- `F([•])(y) = f'(y)f(y) = 2y · y^2 = 2y^3`
- `F([[•]])(y) = f'(y)(F([•])(y)) = 2y · 2y^3 = 4y^4` (correct)
- Paper's formula: `(f'∘f)'(y)f(y) = (2f(y)·f'(y) + f'(y)f'(y))·f(y)` — for `f=y^2` this gives `(2y^2·2y + 2y·2y)·y^2 = (4y^3+4y^2)y^2`, which differs.

The error does not affect the coproduct formulas in Section 6.2 (which are correct independently), but it does undermine the narrative in Section 3.5.

### Section 4.4 (first) — Placeholder Text

The placeholder reads like a draft note. Consider either: (a) removing the placeholder entirely and letting Section 4.5 stand as the worked example, or (b) replacing with: "The one-loop structure suffices to anchor the dictionary at leading order; a two-loop worked example showing explicit tree grafting on the RG side is deferred to future work."

### References — Missing Jackiw/Adhikari for 2D delta

The 2D contact interaction renormalization has a well-known textbook treatment. A representative reference to add: R. Jackiw, "Delta function potentials in two- and three-dimensional quantum mechanics," in *M.A.B. Beg Memorial Volume*, eds. A. Ali and P. Hoodbhoy (World Scientific, 1991), pp. 25–42. Or: S.K. Adhikari, Am. J. Phys. 54 (1986) 362. This would help the reader locate the standard derivation.
