# S49 Execution: Concrete Scheme/Ordering Non-Uniqueness from Time Slicing

## Work
- Produced a minimal explicit time-slicing calculation for the toy Hamiltonian \(H=pq\):
  - `blackboards/2026-02-10-ordering-ambiguity-from-time-slicing-pq.md`
- Derived a one-parameter family of generators \(L_\alpha\) (left/right/midpoint evaluation) that differ by \(O(\hbar)\) constants and correspond to different operator orderings:
  - \(\alpha=0\): \(-\hat p\hat q\),
  - \(\alpha=1\): \(-\hat q\hat p\),
  - \(\alpha=\tfrac12\): symmetric ordering.

## Result
We now have a concrete, self-contained witness that "refinement/composition is non-unique" even before QFT: different discretization conventions for the same classical expression can land in quantum-distinct operators.

## Next
- `C76`: promote a 2-3 sentence version into `paper/main.md` as a companion to `Heuristic H0.2` item 2.

