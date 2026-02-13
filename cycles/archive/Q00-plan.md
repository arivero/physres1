# Q00 Plan

## Goal
Establish a repeatable “PhysRev quality” review pass that can be run on any manuscript in this repo without derailing active research.

## Scope (What We Check)
For each target manuscript, produce a short review with:
1. **Thesis clarity:** one-sentence claim, what is new, what is assumed.
2. **Derivation integrity:** any “Derivation” blocks have complete hypotheses and no hidden measure/scale assumptions.
3. **Notation consistency:** especially what “\(d\)” means (spatial vs spacetime vs composition variable), and unit conventions.
4. **Claim hygiene:** heuristics are labeled as such; conjectures are marked; no overclaiming beyond what is derived.
5. **Literature anchoring:** at least one independent primary reference for each load-bearing technical assertion (OA-first; otherwise `PENDING`).
6. **Reader experience:** roadmap, section transitions, and a clear “what to take away”.
7. **Red-team objections:** list 3 likely referee objections and whether we can answer them (or must weaken claims).

## Targets (First Pass)
1. `paper/main.md` (cornerstone).
2. `papers/planck-area/main.md` (half-density → scale/area follow-up).
3. `papers/rg-fundamental/main.md` (RG as compatibility).

## Acceptance Tests
1. `cycles/Q00-execution.md` contains a short review section for each target (≤ 1 page each).
2. The review identifies ≥ 3 actionable fixes and tags each fix as one of:
   - `C` (content change), `S` (study/blackboard), `B` (bibliography/anchor).

