# C13 Plan

## Goal
Turn `papers/planck-area/main.md` from a program note into a substantive, self-contained follow-up paper draft.

## Scope
1. Add one concrete half-density composition model (kernel calculus) showing coordinate invariance and where a \(\text{length}^{d/2}\) normalization scale enters.
2. Specialize to \(d=4\) and isolate the universal area-scale requirement in explicit formulas.
3. Make the hypothesis ladder explicit and modular: identify which assumptions are geometric facts vs representational choices vs universality/selection principles, and record what changes when each hypothesis is relaxed.
   - Explicitly track and test the three “upper” hypotheses: `H2.3` (dimensionless scalar representative), `H2.4` (background-free constancy), `H2.5` (analyticity / no fractional powers).
4. Add a cleaned derivation based on [RiveroAreal] showing the inverse-square \(D=4\) cancellation story, with assumptions and status labels.
5. Add a short section explaining how this interacts with the main paper’s RCP/RG narrative (what is compatibility, what is conjectural).

## Risks
1. Slipping from half-density scaling into speculative quantum-gravity claims without clear hypothesis labels.
2. Overspecifying the Planck identification without excluding alternative scales.
3. Mixing different “dimension-selection” mechanisms (gravity dimensionality, division-algebra/hopf-bundle facts, SUSY constraints) without clearly separating which hypothesis produces which selection.

## Acceptance Tests
1. `papers/planck-area/main.md` gains at least one labeled `Proposition` and one labeled `Derivation` beyond the current outline-level statements.
2. All citations used in the draft are present in `paper/bibliography.md`.
3. No cycle IDs appear in manuscript content.
