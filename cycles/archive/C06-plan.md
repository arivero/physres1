# C06 Plan

## Goal
Explain renormalization as the mechanism that makes refinement limits well-defined when naive composition/refinement diverges, and express RG invariance as consistency across scales.

## Scope
1. Define a regulator/cutoff parameter and distinguish bare versus renormalized parameters.
2. State the renormalization requirement: regulator-dependent intermediates, regulator-independent observables.
3. Derive an RG (scale-consistency) equation from cutoff independence / semigroup consistency.
4. Give one concrete non-QFT example of RG-like refinement control (numerical-analysis composition / rooted trees), then connect to QFT-level counterterms conceptually.

## Claims
1. If an observable \(O_\Lambda\) depends on a cutoff \(\Lambda\) only through cutoff-dependent bare parameters \(g_B(\Lambda)\), then cutoff-independence implies an RG equation for \(g_B(\Lambda)\).
2. RG is a consistency constraint under composed refinement steps: integrating out short scales and rescaling back defines a flow (semigroup) on parameters.
3. The same combinatorial structure (rooted-tree composition) organizing refinement corrections in numerical integration reappears in renormalization bookkeeping, supporting the paper's "controlled refinement" thesis [RiveroOde2002] [ConnesKreimer2000].

## Risks
1. Sliding into diagrammatic/QFT specifics without defining the minimal objects first.
2. Overclaiming measure-theoretic rigor or strictness when only structural equations are shown.
3. Losing dimensional control in beta-function formulas and parameter definitions.

## Acceptance Tests
1. `paper/main.md` section 8 replaces the placeholder with a coherent renormalization-as-refinement narrative.
2. Section 8 contains at least two new equations and one labeled derivation.
3. Section 8 explicitly connects RG consistency to earlier composition/refinement themes.
4. Section 8 ends with a transition paragraph into `C07` integration/stress-test.
