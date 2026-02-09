# C11 Plan

## Goal
Make the main manuscript’s RG discussion feel *definitional* (not post-hoc) and start a dedicated follow-up draft.

## Scope
1. Add a labeled heuristic in Section 8 explaining why renormalization prescriptions are part of the definition of the continuum theory in divergent refinement problems.
2. Add a minimal “derivative as counterterm subtraction” derivation as a calculus micro-model of counterterms.
3. Create a follow-up draft in `papers/rg-fundamental/main.md` tying the viewpoint to rooted trees / Hopf-algebra bookkeeping.

## Claims
1. In divergent refinement settings, “continuum theory” is defined by a renormalization prescription plus invariance under composed changes of scale.
2. Counterterm subtraction is the refinement correction that restores stable limits; this is visible already in difference quotients.

## Risks
1. Overclaiming “RG is fundamental” without an explicit model computation.
2. Blurring the boundary between numerical-analysis analogies and QFT coarse-graining.

## Acceptance Tests
1. `paper/main.md` adds one labeled `Heuristic` and one labeled `Derivation` in Section 8 supporting the definitional framing.
2. `papers/rg-fundamental/main.md` exists with a coherent outline and citations consistent with `paper/bibliography.md`.
3. Manuscript policy check passes: `rg -n 'C[0-9]{2}' paper/main.md` returns empty.

