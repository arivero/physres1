# Referee Report: Delta Objects as Half-Density Kernels

**Referee:** referee-2
**Date:** 2026-02-21
**Paper:** pub-track/sent/delta-objects/main.md

## Summary

The paper argues that three apparently distinct uses of the Dirac delta — as the identity kernel, as the stationary-set concentration measure δ(∇f), and as a rank-one contact-interaction kernel — share a single geometric origin: all three arise naturally when amplitudes are treated as half-densities. The core claim is that the ε^{−d/2} scaling of the identity kernel, the |det Hess f|^{−1/2} weight of stationary-phase, and the scalarization scale appearing in renormalized point interactions are all manifestations of the half-density bundle's canonical d/2 exponent. The paper collects finite-dimensional identities and scaling computations to make this pattern explicit, and discusses where physical length scales enter upon scalarization.

## Strengths

- The unifying geometric observation is genuine and non-trivial: the d/2 exponent connecting identity-kernel scaling, stationary-phase weights, Van Vleck determinant, heat-kernel short-time singularity, and Sobolev embedding threshold is presented as one theorem in different clothes rather than four coincidences. This is an intellectually valuable compression.
- The paper is honest about its scope. The explicit disclaimer in Section 5 ("This note treats that identification as an organizing perspective, not as a theorem") is appropriate and prevents overclaiming.
- Mathematical precision is maintained throughout the finite-dimensional results. The formulas in Sections 2–4 are correct (see Detailed Comments for one minor qualification).
- The extension from 1D to nD (Sections 3.1 → 3.2), the clarification of δ(f') versus δ' (Section 3.1a/b), and the distributional Euler–Lagrange discussion (Section 3.4) are all pedagogically well-executed. The δ vs δ' confusion is widespread and the paper addresses it cleanly.
- The Van Vleck discussion (Section 3.5) is accurate and appropriately nuanced: the paper correctly distinguishes the mixed Hessian of S_{cl} from the full Hessian of a phase function, and explains why both arise from the same stationary-phase mechanism. The Maslov index treatment in Remark 3.5c is concise and correct.
- The self-adjoint extension classification (Remark 4.2, Remark 4.3) is sound and well-cited. The observation that the exponent d/2 in the heat kernel controls the critical dimension for contact-interaction renormalizability is a concrete and useful link between Sections 2 and 4.
- References are appropriate and sufficient: Bates–Weinstein for half-densities, Albeverio et al. for point interactions, Hörmander for Schwartz kernels, Jackiw and Dereziński for the renormalization side. Historical attribution to Hamilton (1834) for the mixed Hessian is a nice touch.

## Weaknesses

### MAJOR

None.

### MINOR

- **Section 3.3, formula for I(ħ):** The stationary-phase formula is stated as "up to a universal ħ-dependent factor and a signature phase" without writing out the ħ-dependent prefactor. Since the companion note on path-integral normalization presumably discusses this in detail, the current paper could at minimum cite it explicitly at this point (rather than just in Remark 2.1). This is not an error but a small gap in the chain of references.

- **Section 3.5, Example 3.5b:** The harmonic oscillator classical action formula is stated without derivation or citation. While the result is standard, a brief pointer (e.g., to Feynman–Hibbs or Schulman) would help the non-specialist reader verify it. The caustic discussion that follows is correct and interesting but hangs on this unstated formula.

- **Section 4, scalarization:** The paper correctly identifies that the rank-one kernel K_V(x,y) = g δ^{(d)}(x) δ^{(d)}(y) |dx|^{1/2}|dy|^{1/2} is "the bi-half-density distribution supported at (0,0)." However, this object is distributional and the product of two delta distributions at the same point requires care (it is a tensor product on M × M, not a product on M). The paper does use the correct M × M framework (citing Hörmander for the Schwartz kernel theorem), so this is not an error — but an explicit sentence noting that the product is well-defined as a distribution on M × M (not on M) would prevent a potential misreading.

- **Section 6, Outlook item 2:** "Clarify which parts of the 'functional delta δ(δS)' story survive rigorous regularization" — this open problem is stated but never set up in the body. The phrase δ(δS) does not appear elsewhere in the paper. Since the outlook is the only place this concept appears, either a brief gloss in the body (where the stationary-phase / Euler–Lagrange connection is discussed) or removal of this outlook item would improve coherence.

- **Title vs. content balance:** The title promises "Identity, Stationary-Set Concentration, and Point Interactions" — all three are delivered — but the paper's most substantive new contribution is probably the explicit chain: d/2 exponent → heat-kernel short-time → self-adjoint extension classification (Remarks 4.2 and 4.3). This thread is somewhat buried in the remarks. It could be flagged in the abstract or introduction for visibility.

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** The mathematical content is correct and well-organized; the unifying perspective is genuine and well-calibrated (no overclaiming). The minor issues — the missing ħ-prefactor reference, the unstated oscillator action source, the δ(δS) orphan in Outlook item 2, and the product-of-deltas clarification — are all small fixes that do not require re-review. The paper is ready for publication after these are addressed.

## Detailed Comments

**Section 2, Remark 2.1:** The pointer to [PathIntegralNormalization] is appropriate, but the remark would be self-contained if it included the one-line statement that semigroup composition forces A(t) ∝ t^{−d/2} (the computation is in the companion note `paper/notes/half-density-kernel-normalization.md`). Consider adding the two-line summary in a parenthetical.

**Section 3.1b:** The point-splitting realization of δ' is clean and correct. The final dictionary item f'(0) = ⟨−δ', f⟩ is a nice closing formula.

**Section 3.4, Example 3.4a:** The connection to "Theorem 2.1" and "Theorem 3.2" of the companion note is stated but those theorems are not described here. This is fine for a companion note, but the reader should be told which companion note. The current reference is just "the companion note" — the bibliography entry [PathIntegralNormalization] should be cited explicitly here.

**Section 4, Example 4.1b:** The cancellation of Λ in the denominator 1 − g G_0(0,0;E) = 0 is displayed cleanly. The conclusion "The transmutation scale α is the sole physical parameter" is correct and well-supported.

**Section 5, Remark 5.1:** The three-way identification (identity-kernel exponent d/2 = heat-kernel convergence condition d < 2 = Morrey embedding threshold d/2 < k) is the conceptual high point of the paper. This remark deserves to appear in the abstract or at minimum in the introduction, not only as a remark in Section 5. Consider elevating it.

**References:** All eight cited works are appropriate. The OA link to Hamilton (1834) via the TCD mathematics archive is a nice scholarly touch. Jackiw (1991) is correctly cited for the renormalization of contact interactions.
