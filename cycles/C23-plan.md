# C23 Plan

## Goal
Promote the S01 blackboard branch map into the Planck-area draft so the H2.5 discussion is explicitly split (integrality vs perturbative analyticity vs transmutation), and thread the new B01 anchors (Jackiw + Van Vleck) into the manuscript citation points where they matter.

## Scope
1. `papers/planck-area/main.md`
   - Integrate the S01 split as explicit sub-hypotheses (H2.5a/H2.5b, and a separate transmutation branch).
   - Tighten the “\(D=4\Rightarrow\) area” language so it is explicitly branch-conditional and dimension-bookkept.
   - Add citations where the Van Vleck prefactor is invoked.
2. `paper/main.md`
   - Add a primary citation for the Van Vleck prefactor discussion.
   - Add a standard delta-function potential anchor where the 2D delta appendix is introduced (Jackiw).
3. `papers/rg-fundamental/main.md`
   - Cite Jackiw in the 2D/3D delta lore sections as an independent standard anchor.

## Risks
1. Turning a clarity promotion into a major rewrite.
2. Over-citing: adding references that do not actually support the specific statement.

## Acceptance Tests
1. `papers/planck-area/main.md` explicitly distinguishes H2.5a/H2.5b and the transmutation branch.
2. `paper/main.md` cites `[VanVleck1928Correspondence]` at the semiclassical-prefactor discussion and cites `[Jackiw1991DeltaPotentials]` at the delta appendix entry point.
3. Manuscript policy guardrail passes:
   - `rg -n 'C[0-9]{2}' paper/main.md` returns no matches.

