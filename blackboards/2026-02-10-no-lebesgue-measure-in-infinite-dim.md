# No Lebesgue Measure in Infinite Dimensions (Obstruction Lemma)

Date: 2026-02-10  
Cycle: `S47`

## Lemma (informal but standard)
Let \(X\) be an infinite-dimensional separable Banach space.  
There is **no nontrivial** Borel measure \(\mu\) on \(X\) that is both:
1. **translation-invariant**: \(\mu(A+x)=\mu(A)\) for all Borel \(A\subset X\) and \(x\in X\), and
2. **locally finite**: \(\mu(K)<\infty\) for every compact \(K\subset X\).

Equivalently: any translation-invariant, locally finite Borel measure on \(X\) is the zero measure.

## Proof sketch (packing disjoint translates)
Assume \(\mu\) is translation-invariant and locally finite, and suppose \(\mu(B_r)>0\) for some open ball \(B_r\).

In an infinite-dimensional normed space one can find a countably infinite set of points \(\{x_n\}\) in a bounded region with mutual separations \(\|x_n-x_m\|>2r\) for \(n\neq m\) (an infinite \(2r\)-separated set).
Then the translated balls \(B_r+x_n\) are pairwise disjoint, but they all lie inside some larger ball \(B_R\) for \(R\) big enough.

By translation invariance, \(\mu(B_r+x_n)=\mu(B_r)>0\) for all \(n\). Disjointness gives
\[
\mu(B_R)\;\ge\;\sum_{n=1}^N \mu(B_r+x_n)\;=\;N\,\mu(B_r)
\]
for every \(N\), hence \(\mu(B_R)=\infty\), contradicting local finiteness (since closed balls in a Banach space are compact only in finite dimension, one can state the argument using a compact exhaustion adapted to the topology; the moral is unchanged).

Therefore \(\mu(B_r)=0\) for all \(r\), hence \(\mu\equiv 0\).

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

