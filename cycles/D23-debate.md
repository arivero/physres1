# D23 Debate: Does “unitarity selects midpoint” overclaim?

Date: 2026-02-14

## Question
Is the manuscript’s informal slogan “unitarity selects the symmetric (half-density) convention” strictly correct in the \(H=qp\) witness, or does it require additional domain/measure hypotheses?

## Working answer
Likely: symmetry/self-adjointness is the real selection gate, and it depends on the Hilbert-space pairing and boundary behavior (e.g. at \(q=0\) for \(\mathbb R_+\)). The "unitarity selects midpoint" claim should be phrased as a conditional statement unless a uniqueness theorem is shown.

## Next check
Compute adjoints and boundary terms for \(-i\hbar(q\partial_q + c)\) on explicit domains and map back to \(\alpha\).

## Resolution (2026-02-14, S280 completed)

The computation is done. The answer is nuanced but clear:

1. **The slogan is not overclaiming uniqueness of \(\alpha=1/2\).** The symmetry defect is \(i\hbar(2\alpha-1)\langle u,v\rangle\), which is zero iff \(\alpha=1/2\). This holds for any inner-product domain where integration by parts is valid. So the \(\alpha\)-selection is robust.

2. **The slogan is slightly imprecise about *which* requirement is doing the work.** "Unitarity" implies self-adjointness (Stone's theorem), which implies symmetry. Symmetry alone already forces \(\alpha=1/2\). Saying "unitarity selects" is true but overpowered -- it is like saying "the fundamental theorem of calculus implies 1+1=2" when arithmetic suffices.

3. **The domain/boundary subtlety is real but orthogonal to the \(\alpha\)-selection.** Self-adjointness (and thus unitarity) additionally depends on whether the configuration space is \(\mathbb{R}_+\) (automatic via the dilation group) or \(\mathbb{R}\) (one-parameter family of extensions due to the singularity at \(q=0\)). But this is a separate question from which \(\alpha\) yields symmetry.

**Verdict:** The manuscript's informal phrasing in H0.2 is acceptable as a heuristic bullet point, provided it is understood that "unitarity" here means "unitarity in the standard scalar \(L^2\) picture." A future C-cycle should tighten the wording to "symmetry of the generator" if space permits, and add a parenthetical noting the domain dependence of essential self-adjointness.

