# C01 Plan

## Goal
Write the Newtonian refinement section with an explicit derivation of equal-areas invariance and its bridge to modern angular momentum conservation.

## Scope
1. Add a source-critical subsection separating Newton’s original geometric method from modern vector reformulation.
2. Derive finite-step invariance in a polygonal central-impulse model.
3. Pass to continuum areal velocity and connect to \(d\mathbf L/dt=\mathbf 0\) for central forces.

## Claims
1. Equal-areas behavior is exact at finite polygonal step in the central-impulse model.
2. The continuum areal law is a refinement limit of that exact finite-step invariant.
3. The invariance mechanism is independent of inverse-power index \(n\) in \(\mathbf F=-(K/r^n)\hat{\mathbf r}\).

## Risks
1. Mixing historical interpretation with modern formalism.
2. Treating the impulse model as literal ontology instead of a refinement scaffold.
3. Missing explicit assumptions for continuum passage.

## Acceptance Tests
1. `paper/main.md` section 3 contains at least one full derivation chain from discrete step to areal law.
2. Section 3 includes at least 2 new equations and one transition paragraph to `C02`.
3. Cycle records (`C01-debate`, `C01-execution`, `C01-redteam`) reflect unresolved assumptions clearly.
