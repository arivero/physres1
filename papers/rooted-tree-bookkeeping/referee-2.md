# Referee Report: Rooted Trees as Bookkeeping: The Butcher–RG Dictionary

**Referee:** referee-2
**Date:** 2026-02-21
**Paper:** pub-track/sent/rooted-tree-bookkeeping/main.md

---

## Summary

The paper presents a side-by-side dictionary between Butcher theory (B-series for
Runge–Kutta methods) and perturbative renormalization (Connes–Kreimer Hopf algebra
for BPHZ counterterms), arguing that both use the same rooted-tree combinatorics to
manage recursive cancellations that arise when composing local transformations. Two
worked examples anchor the dictionary: the midpoint RK method (order-2) on the
numerical side and a 2D contact-interaction renormalization (one-loop) on the QFT
side. The paper is careful to distinguish literal algebraic identity (same Hopf
coproduct formulas) from structural analogy (group vs semigroup, meaning of tree
nodes). It explicitly credits Brouder (2000) as the originator of the correspondence
it expounds.

---

## Strengths

- The paper's central claim — that the same coproduct formulas appear verbatim in
  both settings — is mathematically accurate and precisely stated. Section 6.2 makes
  this concrete with explicit low-order coproduct computations that are correct.

- The Scope and Non-Goals section (1.2) is exemplary. The paper commits to specific
  deliverables and explicitly disclaims what it does not prove, preventing the reader
  from being misled about the strength of the results.

- The choice to include two genuinely different worked examples (midpoint RK and 2D
  delta interaction) rather than one example from each side of the same toy system
  considerably strengthens the case that the dictionary is non-trivial.

- The paper honestly addresses the key asymmetry (group vs semigroup, §5.3) rather
  than eliding it. This is intellectually important and distinguishes the paper from
  a merely promotional account.

- Credit to Brouder (2000) [ref 6] is prominent and appropriately placed. The paper
  does not overclaim originality.

- The 2D delta-interaction example (§4.4) is well-chosen: it is exactly solvable,
  makes dimensional transmutation explicit, and the beta function is derived rather
  than quoted, giving the paper genuine pedagogical value.

---

## Weaknesses

### MAJOR

- **Elementary differential formula for** \(\tau_3^{(2)} = [[\bullet]]\) **is incorrect (Section 3.5, line 174).**
  The paper states
  \[
  F(\tau_3^{(2)})(y) = (f' \circ f)'(y)\,f(y) = f''(y)(f(y), f(y)) + f'(y)\,f'(y)\,f(y).
  \]
  By the standard Butcher recursive definition, the elementary differential for the
  linear chain \(\tau_3^{(2)} = [[\bullet]]\) is
  \[
  F([[\bullet]])(y) = f'(y)\bigl[f'(y)\,f(y)\bigr] = (f' \circ F([\bullet]))(y),
  \]
  which equals \(f'(y)\,f'(y)\,f(y)\) — only the last term in the claimed expression,
  not the sum \(f''(f,f) + f'f'f\). The formula \(f''(f,f)\) belongs to
  \(\tau_3^{(1)} = [\bullet,\bullet]\), not to the linear chain. The parenthetical
  \((f' \circ f)'(y)\,f(y)\) is the source of the error: expanding via the chain rule
  gives a sum involving \(f''\), but the elementary differential for \([[\bullet]]\)
  does not contain an \(f''\) term. This is a concrete mathematical mistake in a
  section whose stated purpose is to illustrate the tree structure explicitly. It needs
  correction before publication.

  Note: the surrounding argument (that the midpoint method is order-2 and not order-3)
  is correct in conclusion; only the formula for \(F(\tau_3^{(2)})\) is wrong.

- **Section 3.5 contains an unexplained internal flag ("Wait—").** Line 176 begins
  with "Wait—these are not the same:…". This is a draft artefact — an author's
  self-correction mid-exposition — not polished prose. Beyond being stylistically
  unacceptable for a publication, the sentence following the flag is doing genuine
  expository work (explaining that the two order-3 trees differ), so the content
  should be retained but rewritten as a proper remark or observation.

- **The Butcher product computation in §3.5 is incomplete and partially circular.**
  Equation (3.5.4),
  \[
  (a_{\mathrm{mid}} \star a_{\mathrm{mid}})(\tau_3^{(1)}) = a(\tau_1)^2 \cdot
  \gamma(\tau_3^{(1)}) / \sigma(\tau_3^{(1)}) = 1^2 \cdot 1/2 = \tfrac{1}{2},
  \]
  introduces \(\gamma(\tau_3^{(1)})\) without defining it (not defined anywhere else in
  the paper), and the claim that this equals \(\tfrac{1}{2}\) is stated but not derived
  from first principles. The Butcher product is referenced as "(a convolution on trees,
  built from the Hopf coproduct)" in §2.4 but never given an explicit formula. For a
  paper whose declared purpose is to exhibit the algebraic machinery explicitly, this is
  a gap: either give the explicit convolution formula for \(a \star b\) or remove the
  claim and say only "the composition is \(O(h^3)\) as expected."

### MINOR

- **Duplicate section heading §4.4.** The paper has two subsections both numbered 4.4:
  one titled "RG Flow as Tree Composition" (lines 247–255) and the immediately following
  one titled "Worked Example: 2D Delta Interaction (One-Loop)" (lines 257–305). The
  second §4.4 presumably should be §4.5. This is a numbering error that must be fixed.

- **The "placeholder" in §4.4 (first occurrence) is inconsistent with the paper's
  actual content.** Line 255 states "A fully worked two-loop example … is deferred to a
  later draft." But Section 3.5 and §6.2 do provide explicit order-3 computations that
  serve as a two-loop template. The placeholder should either be removed or updated to
  acknowledge that partial coverage is given in those sections.

- **The description of the "sunset" diagram in §3.5 (line 203) is potentially
  misleading.** The paper says the sunset has "no nested subdivergence (both loops must
  be subtracted simultaneously)." In four-dimensional \(\phi^4\) theory the two-loop
  sunset (fish or double-bubble graph) can in fact contain subdivergences depending on
  the theory and regularization. The paper should either qualify "in the context of this
  paper's one-loop template" or choose a cleaner example (e.g., the one-loop self-energy
  in \(\phi^4\) versus a nested diagram).

- **The B-series formula in §2.2 may confuse readers regarding the symmetry factor.**
  The exact flow has the coefficient \(1/(\sigma(\tau)\,|\tau|!)\), but this is the
  product of the symmetry factor and the order factorial. Standard references (Butcher
  2016, Hairer–Lubich–Wanner 2006) write the coefficient as \(1/(|\tau|!\,\alpha(\tau))\)
  where \(\alpha(\tau) = \sigma(\tau)\) (Butcher's notation) or as
  \(\Phi(\tau)/|\tau|!\) with a different normalization. The paper should either match a
  standard notation precisely or give a self-contained definition of \(\sigma(\tau)\).

- **The midpoint B-series coefficient** \(a(\tau_3^{(1)}) = 1/8\) **(§3.5) is
  asserted without derivation.** Since this value and \(a(\tau_3^{(2)}) = 0\) play a
  key role in demonstrating order-2 accuracy, a brief derivation (or at minimum a pointer
  to the Butcher tableau computation) would make the section self-contained.

- **Reference [Brouder2000] is listed as reference 6 but cited inconsistently.** It
  appears as "[Brouder1999]" in companion paper `papers/rg-fundamental/main.md` and as
  "[Brouder2000]" here. The arXiv preprint date is 1999, the journal publication date
  is 2000. The paper should pick one label and use it consistently; the chosen label
  should match what appears in other satellite papers citing the same work.

- **The coproduct formula in §4.3 for** \(\Delta([\bullet])\) **labels the subtracted
  subdiagram incorrectly as a "one-loop sunset."** Line 244 says "Example (one-loop
  sunset): Tree \(\tau = [\bullet]\)". But \([\bullet]\) is an order-2 tree with two
  nodes, corresponding to a one-loop diagram — not a sunset, which is typically a
  two-loop graph. The label should be "one-loop self-energy" or simply "one-loop
  diagram."

---

## Verdict

**Recommendation:** MAJOR REVISION

**Justification:** The paper contains one clear mathematical error (the elementary
differential formula for \(\tau_3^{(2)}\) in §3.5), one unresolved draft artefact
("Wait—" in §3.5), and one substantive gap (undefined symbol \(\gamma\) in the Butcher
product computation). These must be corrected before publication. The remaining items are
minor and can be addressed in revision without re-review.

---

## Detailed Comments

### Section 2.2 (B-Series Notation)

The coefficient \(1/(\sigma(\tau)\,|\tau|!)\) for the exact flow should be compared to
a standard reference to confirm it matches Butcher 2016 or HLW 2006 precisely. In some
formulations the coefficient is written \(e(\tau)/|\tau|!\) where \(e(\tau)\) counts
the number of "monotone labellings" of the tree and equals \(|\tau|!/\sigma(\tau)\). If
\(\sigma\) here is the symmetry group order, then \(1/(\sigma(\tau)\,|\tau|!)\) is not
the standard form. Please verify and either fix or define explicitly.

### Section 3.5 (Order-3 Trees, line 174)

Replace the incorrect formula
\[
F(\tau_3^{(2)})(y) = (f'\circ f)'(y)\,f(y) = f''(y)(f(y),f(y)) + f'(y)\,f'(y)\,f(y)
\]
with the correct Butcher recursive definition:
\[
F([[\bullet]])(y) = f'(y)\bigl[f'(y)\,f(y)\bigr].
\]
Note: \(f''(y)(f(y),f(y))\) does not appear here. The result is purely
\(f'(y)\,f'(y)\,f(y)\) (a composition of two first derivatives applied in sequence).

### Section 3.5 (line 176: "Wait—")

This phrase should be replaced with a properly formatted observation, e.g.:

> **Remark.** Although both trees have order 3, their elementary differentials differ:
> \(\tau_3^{(1)}\) involves \(f''\), while \(\tau_3^{(2)}\) involves only \(f'\) composed
> twice. They are distinct combinatorial objects representing distinct physical operations.

### Section 3.5 (Butcher product formula)

Define \(\gamma(\tau)\) explicitly (it appears to be the number of "increasing labellings"
or equivalently \(|\tau|!/(\alpha(\tau)\sigma(\tau))\) for some \(\alpha\)), or remove the
explicit numerical computation and replace it with a qualitative statement. As written, the
formula is opaque.

### Section 4.3 (line 244)

Change "one-loop sunset" to "one-loop self-energy diagram" (or "simple one-loop diagram").
A sunset diagram has two or more propagators connecting two vertices; \([\bullet]\) with
one child corresponds to a single propagator loop.

### Section 4.4 (duplicate numbering)

Renumber the second §4.4 ("Worked Example: 2D Delta Interaction") to §4.5 throughout.

### References

Decide on "[Brouder1999]" vs "[Brouder2000]" and apply the same label in all satellite
papers. The arXiv submission date is 1999-04-03 (hep-th/9904014); the EPJ-C publication
date is 2000. A neutral choice is "[Brouder2000]" matching the journal year, but either
is acceptable if applied consistently.
