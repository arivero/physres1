# Referee Report: Rooted Trees as Bookkeeping: The Butcher–RG Dictionary

**Referee:** referee-2
**Round:** 2 (response to MAJOR REVISION)
**Date:** 2026-02-21
**Paper:** pub-track/sent/rooted-tree-bookkeeping/main.md

---

## Summary

The paper presents a dictionary between Butcher theory (B-series for Runge–Kutta
methods) and perturbative renormalization (Connes–Kreimer Hopf algebra for BPHZ
counterterms), arguing that both use the same rooted-tree Hopf algebra to organize
recursive cancellations arising from composition. Two worked examples anchor the
dictionary: the midpoint RK method (order-2) and a 2D contact-interaction
renormalization (one-loop). The paper carefully distinguishes literal algebraic
identity (same coproduct formulas) from structural analogy (group vs semigroup,
different physical meanings of tree nodes). This is the second submission, revised
in response to a MAJOR REVISION recommendation.

---

## Response to Round 1 Issues

### MAJOR Issues (R1)

**MAJOR-1: Elementary differential formula for** \(\tau_3^{(2)} = [[\bullet]]\) **incorrect.**

R1 status: RESOLVED.

The revised paper (§3.5, line 174) now correctly states
\[
F(\tau_3^{(2)})(y) = f'(y)\bigl(f'(y)\,f(y)\bigr),
\]
which is purely \(f'\) applied to \(f'f\), with no spurious \(f''\) term. The chain-rule
expansion that incorrectly introduced \(f''(f,f)\) has been removed. The Butcher recursive
rule \(F([t_1,\ldots,t_m]) = f^{(m)}(\ldots)(F(t_1),\ldots,F(t_m))\) is now applied
correctly for \(m=1\). The surrounding argument about the midpoint method having order 2,
not 3, remains correct and is now fully supported by correct formulas.

**MAJOR-2: "Wait—" draft artefact in §3.5.**

R1 status: RESOLVED.

The phrase "Wait—these are not the same:..." has been replaced with a properly
formatted **Remark** (line 176) that reads: "These two trees are **distinct**
combinatorial objects, even though they both have order 3. \(\tau_3^{(1)}\) involves the
second Fréchet derivative \(f''(f,f)\) (two subtrees grafted simultaneously)…" The
expository content has been preserved and the register is now appropriate for publication.

**MAJOR-3: Butcher product computation incomplete; symbol \(\gamma(\tau)\) undefined.**

R1 status: SUBSTANTIALLY RESOLVED.

The revised paper removes the explicit numerical formula
\((a_{\mathrm{mid}} \star a_{\mathrm{mid}})(\tau_3^{(1)}) = 1^2 \cdot \gamma/\sigma =
1/2\) that introduced the undefined symbol \(\gamma\). In its place, §3.5 (lines 190–195)
gives a qualitative statement: the Butcher product sums over ways to graft two \(\tau_1\)
trees, and the composition coefficients are confirmed to differ from the exact-flow
coefficients consistently with order-2 accuracy. The reference to [Butcher2016, §3.1] is
appropriate. The authors have rightly recognized that a complete derivation of the Butcher
convolution formula in this note would be a disproportionate undertaking and have chosen
instead to point to the primary source. This is an acceptable resolution.

---

### MINOR Issues (R1)

**MINOR-1: Duplicate §4.4 heading.**
RESOLVED. The section "Worked Example: 2D Delta Interaction (One-Loop)" is now correctly
numbered §4.5 throughout.

**MINOR-2: Placeholder "deferred to later draft" inconsistent with actual content.**
RESOLVED. The text at §4.4 now reads "A two-loop worked example … is deferred to future
work; the one-loop structure suffices to anchor the dictionary at leading order." This no
longer conflicts with the partial coverage in §3.5 and §6.2.

**MINOR-3: "One-loop sunset" mislabeling in §4.3.**
RESOLVED. The label now reads "one-loop self-energy," which correctly describes the
order-2 tree \([\bullet]\) with a single propagator loop.

**MINOR-4: Symmetry factor \(\sigma(\tau)\) undefined.**
NOT RESOLVED. The revised paper still uses \(\sigma(\tau)\) in §2.2 and §2.3 without a
self-contained definition. The B-series formula \(1/(\sigma(\tau)\,|\tau|!)\) is stated
but \(\sigma(\tau)\) is only identified implicitly as "a symmetry factor." Standard
treatments (Butcher 2016, HLW 2006) define this either as the order of the automorphism
group of \(\tau\) or equivalently through the recursion \(\sigma([t_1,\ldots,t_m]) =
\sigma(t_1)\cdots\sigma(t_m)\cdot\prod_i m_i!\) where \(m_i\) is the multiplicity of
repeated subtrees. A one-sentence definition or a pointer to a specific equation in a
cited reference would make the paper self-contained on this point.

**MINOR-5: Midpoint coefficients \(a(\tau_3^{(1)}) = 1/8\), \(a(\tau_3^{(2)}) = 0\) asserted
without derivation.**
NOT RESOLVED. These values are central to the order-3 analysis but are still stated
without supporting calculation. A parenthetical derivation from the Butcher tableau (two
stages, weights \(b = (0,1)\), coupling matrix \(A = \begin{pmatrix} 0 & 0 \\ 1/2 & 0
\end{pmatrix}\)) would take three lines and would make §3.5 genuinely self-contained
rather than asking the reader to trust the assertion.

**MINOR-6: Reference label [Brouder2000] vs [Brouder1999] cross-paper inconsistency.**
PARTIALLY RESOLVED within this paper. The revised paper uses [Brouder2000] consistently
internally. Whether the label matches usage in companion papers cannot be verified from
this paper alone; cross-paper label consistency should be checked by the authors before
final submission.

---

## Strengths (Revised Paper)

- All three MAJOR weaknesses from R1 have been resolved. The mathematical content is now
  correct and the exposition is at publication standard.

- The Remark in §3.5 (formerly the "Wait—" fragment) is an improvement: it explains the
  distinction between \(\tau_3^{(1)}\) and \(\tau_3^{(2)}\) as a deliberate pedagogical
  point rather than an author's hesitation. The observation that \(\tau_3^{(2)}\) contains
  **no** \(f''\) term — stated explicitly — is the kind of precision that makes this section
  valuable.

- The Hopf coproduct appendix (§6.2) is now internally consistent with the corrected §3.5:
  the coproduct formulas for \(\tau_3^{(1)}\) and \(\tau_3^{(2)}\) match their correctly
  stated elementary differentials.

- The 2D delta interaction worked example (§4.5) remains well-executed: dimensional
  transmutation is derived explicitly, the beta function is computed, and the five-point
  parallel to the midpoint RK example is clean and informative.

- The paper's commitment to not overclaiming — distinguishing algebraic identity from
  structural analogy, and crediting Brouder (2000) prominently — continues to be
  intellectually sound and honest.

---

## Weaknesses (Revised Paper)

### MAJOR

None.

### MINOR

- \(\sigma(\tau)\) is not defined self-containedly in §2.2 (MINOR-4 above, unresolved from
  R1). This is a genuine readability gap: a reader unfamiliar with B-series notation will
  not know whether \(\sigma(\tau)\) is the Butcher symmetry factor, the automorphism group
  order, or something else. The fix is one sentence.

- The midpoint order-3 coefficients \(a(\tau_3^{(1)}) = 1/8\), \(a(\tau_3^{(2)}) = 0\)
  are still asserted without derivation (MINOR-5 above). For a paper that otherwise
  derives its results explicitly, this asymmetry weakens the self-containedness of §3.5.

- **New observation:** The paper's abstract states "both admit compositional structure
  (method concatenation vs scale composition)." The word "both" suggests parallel
  compositional structures of equal strength, but §5.3 correctly notes that Butcher admits
  time reversal while RG does not. The abstract could add a parenthetical "(with
  important differences detailed in §5.3)" to prevent a reader from forming an
  over-optimistic impression before reaching the body.

---

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** The three MAJOR weaknesses from Round 1 have been adequately addressed
— the mathematical error is corrected, the draft artefact is replaced with proper prose,
and the undefined symbol is removed in favor of a reference. Two previously raised MINOR
issues remain unresolved (definition of \(\sigma(\tau)\) and derivation of the order-3
midpoint coefficients), and one new MINOR observation is noted (abstract slightly
overstates the parallelism). These are small, targeted fixes that do not require
re-review. If the authors address the two unresolved MINORs and the new observation,
the paper is acceptable for publication.

---

## Detailed Comments

### Section 2.2 (B-series formula)

Define \(\sigma(\tau)\) explicitly on first use. Suggested addition after the formula:
"where \(\sigma(\tau)\) is the order of the automorphism group of \(\tau\) (equivalently,
the number of symmetries of \(\tau\) as a labeled rooted tree; see [Butcher2016, §3.1])."
This costs one line and makes §2.2 self-contained.

### Section 3.5 (Midpoint coefficients at order 3)

The values \(a(\tau_3^{(1)}) = 1/8\) and \(a(\tau_3^{(2)}) = 0\) follow from the
Butcher tableau of the midpoint method. For \(\tau_3^{(1)} = [\bullet,\bullet]\) the
relevant Butcher coefficient is \(a(\tau_3^{(1)}) = \sum_{i,j,k} b_i a_{ij} a_{ik} =
b_2 \cdot (1/2)^2 = 1 \cdot 1/4 \cdot 1/2 = 1/8\) (the three-stage index runs over the
two stages of the explicit midpoint method with only stage 2 having non-zero weight). For
\(\tau_3^{(2)} = [[\bullet]]\) the coefficient is \(a(\tau_3^{(2)}) = \sum_{i,j,k} b_i
a_{ij} a_{jk} = b_2 a_{21} a_{1k}\); but stage 1 has \(a_{1k} = 0\) for all \(k\), so
\(a(\tau_3^{(2)}) = 0\). Adding these two lines of computation (or a sentence explaining
why \(a(\tau_3^{(2)}) = 0\) from the explicit tableau) would close the gap.

### Abstract

Consider adding a hedge: "both admit compositional structure (method concatenation vs
scale composition, with important differences in invertibility detailed in §5.3)." This
is a one-clause insertion that accurately previews the paper's own careful §5.3
discussion.

### References

Check cross-paper consistency of [Brouder2000] vs [Brouder1999] before final submission
to the companion paper series.
