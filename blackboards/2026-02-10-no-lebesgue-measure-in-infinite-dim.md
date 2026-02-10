# No Lebesgue Measure in Infinite Dimensions (Obstruction Lemma)

Date: 2026-02-10  
Cycle: `S47`

## Lemma (informal but standard)
Let \(X\) be an infinite-dimensional separable Banach space.
There is **no nontrivial** Borel measure \(\mu\) on \(X\) that is both:
1. **translation-invariant**: \(\mu(A+x)=\mu(A)\) for all Borel \(A\subset X\) and \(x\in X\), and
2. **finite on some nonempty open set** (equivalently: \(\mu(B_r(0))<\infty\) for some ball \(B_r(0)\)).

This is one convenient formulation of "there is no Lebesgue/Haar measure in infinite dimensions": infinite-dimensional Banach spaces are not locally compact, hence they do not admit a nontrivial translation-invariant Radon measure that is finite on compact sets and positive on open sets.

## Proof sketch (packing disjoint translates inside one finite ball)
Assume \(\mu\) is translation-invariant and \(\mu(B_R(0))<\infty\) for some \(R>0\).

In an infinite-dimensional normed space one can find a countably infinite set of points \(\{x_n\}\subset B_{R/2}(0)\) with mutual separations \(\|x_n-x_m\|>R/4\) for \(n\neq m\) (an infinite separated set; e.g. via a Riesz-lemma construction).
Then the balls \(B_{R/16}(x_n)\) are pairwise disjoint and lie inside \(B_R(0)\).

By translation invariance, \(\mu(B_{R/16}(x_n))=\mu(B_{R/16}(0))\) for all \(n\). Therefore, for every \(N\),
\[
\mu(B_R(0))\;\ge\;\sum_{n=1}^N \mu(B_{R/16}(x_n))\;=\;N\,\mu(B_{R/16}(0)).
\]
Since \(\mu(B_R(0))<\infty\), this forces \(\mu(B_{R/16}(0))=0\). Translating and scaling the argument yields \(\mu\equiv 0\).

## Operational relevance for our refinement program
The formal symbol \(D\phi\) in a path integral is **not** an ordinary translation-invariant countably additive "Lebesgue measure on path space".
So a refinement-to-zero definition of amplitudes cannot be "just take the limit of integrals with respect to \(D\phi\)".

The cure is definitional:
- define amplitudes/kernels by finite refinement + composition constraints (semigroup law, normalization, locality),
- accept that regulation/subtraction and scheme choices are part of the definition when singular probes/divergences appear,
- treat \(\hbar\) (and RG running) as the deformation/control scale in which the refinement limit is made stable.

## Promotion target (for `C74`)
Add a 2-3 sentence heuristic remark near `Heuristic H0.2` in `paper/main.md`:
- there is no canonical Lebesgue measure on infinite-dimensional path space,
- hence "refine and integrate" is not a raw classical limit but a *construction* requiring extra structure,
- this motivates why quantization is naturally phrased as controlled refinement data (operator/semigroup definition; regularization; scheme compatibility).
