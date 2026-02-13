# S49 Plan: Concrete Scheme/Ordering Non-Uniqueness from Time Slicing

## Goal
Produce one explicit, minimal example showing that different refinement/time-slicing prescriptions (left/right/midpoint evaluation) can yield quantum-distinct generators even when the classical expression is the same.

Target: a 1D toy Hamiltonian where the ordering ambiguity is transparent (e.g. \(H=pq\) or \(H=qp\)).

## Tasks
1. Write a blackboard derivation starting from a time-sliced kernel and expanding to \(O(\varepsilon)\).
2. Show how choosing \(q_k\), \(q_{k+1}\), or \(q_{mid}\) in the slice produces operators differing by \(O(\hbar)\).
3. Record a concise promotion target for `C76` (2-3 sentences as companion to `Heuristic H0.2` item 2).

## Acceptance Tests
- The example is correct and self-contained.
- The difference is explicitly quantum (vanishes in \(\hbar\to0\)).
- The narrative ties directly to "non-uniqueness of refinement/composition schemes".

