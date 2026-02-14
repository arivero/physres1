# D23 Execution: Ordering vs Unitarity in the \(H=qp\) Witness

Date: 2026-02-14
Status: Completed

## Decision (to be filled by append-only addendum)
- Chosen target: Determine what unitarity/self-adjointness implies for the \(\alpha\)-discretization family \(\hat H_\alpha = \hat p\hat q + \alpha i\hbar\); produce a referee-safe one-sentence claim.
- Why now: Heuristic H0.2 (bullet 2) informally claims "requiring unitarity selects a symmetric (half-density) convention." This claim is load-bearing for the ordering/discretization narrative (Section 6.3 D4.1b, Appendix 10.2). Making the selection criterion precise (symmetry vs self-adjointness vs unitarity) prevents overclaiming.

## One-sentence novelty claim (non-manuscript)

For the \(\alpha\)-discretization family \(\hat H_\alpha = \hat p\hat q + \alpha i\hbar\) of the classical symbol \(H=qp\), formal symmetry in \(L^2(\mathbb{R},dq)\) requires \(\alpha = 1/2\) (midpoint/Weyl), with symmetry defect \(i\hbar(2\alpha-1)\) for general \(\alpha\).

## Scope disclaimer (non-manuscript)

Essential self-adjointness (and hence unitarity of the generated group) additionally depends on the configuration space: it holds on \(\mathbb{R}_+\) via the dilation group, but on \(\mathbb{R}\) the singularity at \(q=0\) creates a one-parameter family of self-adjoint extensions.

## Spawned cycles
- `S280` (completed): operator-domain check for the dilation generator family. Delivered: `notebooks/ordering-unitarity-dilation-generator.md`.
- `B28` (not needed): the computation is self-contained; no external reference required beyond Stone's theorem and standard deficiency-index theory. If a later C-cycle promotes this to the manuscript, a bibliography cycle can be opened then.
- Potential follow-up: `Cxxx` to tighten Heuristic H0.2 bullet 2 wording from "unitarity selects" to "symmetry of the generator selects" with explicit scope.

## Acceptance check
1. One-sentence safe claim: YES (see above).
2. One-sentence scope disclaimer: YES (see above).
3. Minimal computation witness (S280): YES. The symmetry defect formula \(i\hbar(2\alpha-1)\langle u,v\rangle\) is derived by integration by parts and cross-checked by commutator algebra. Essential self-adjointness discussed for \(\mathbb{R}_+\) (dilation group, Stone's theorem) and \(\mathbb{R}\) (deficiency indices (1,1)).

## Summary of findings

### What the three candidate selectors actually do

| Selector | What it requires | What it selects | Domain-dependent? |
|----------|-----------------|-----------------|-------------------|
| Symmetry (\(\hat H = \hat H^\dagger\) on dense domain) | Formal Hermiticity | \(\alpha = 1/2\) uniquely | No |
| Essential self-adjointness | Unique s.a. extension | Automatic on \(\mathbb{R}_+\); choice on \(\mathbb{R}\) | Yes |
| Unitarity (\(e^{-itH/\hbar}\) unitary) | Self-adjointness (Stone) | Same as above | Yes |

### The logical chain
Unitarity \(\Rightarrow\) self-adjointness \(\Rightarrow\) symmetry \(\Rightarrow\) \(\alpha = 1/2\).

The midpoint selection is already decided at the symmetry level. The manuscript's "unitarity selects midpoint" is logically correct (unitarity does force \(\alpha=1/2\) via the chain above) but imprecise: symmetry alone suffices for the \(\alpha\)-selection, and the domain-dependent self-adjointness question is a separate concern.

### Relation to D9.1b (periodic domain, \(f(q)p\) family)
The D9.1b computation on \(S^1\) showed the same pattern for general \(f(q)\): Weyl ordering is symmetric while left ordering fails symmetry by an \(f'\) defect. The D23/S280 result is the \(f(q)=q\) special case on \(\mathbb{R}\), with the additional analysis of essential self-adjointness and the dilation-group connection.

### Manuscript implications
Heuristic H0.2 bullet 2 should ideally say "requiring symmetry of the generator selects" instead of "requiring unitarity selects." The current wording is not wrong, but it elides the distinction and could provoke a referee objection. A future C-cycle can tighten this.

