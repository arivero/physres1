# DX03 Plan: Post-C112 structural sweep — cross-connections and claim-graph gaps

Date: 2026-02-12

## Goal
Divergent exploration: sweep the manuscript for structural gaps, cross-connection opportunities, and framing stress-tests after ~11 production cycles (S73–Q67) that added D6.2a-sg (semigroup law), D9.1a (quadratic ordering + half-density resolution), and B17 (Nauenberg 2018).

## Surprise inventory
- D6.2a-sg made H6.2's "analogy" into a derived semigroup law — is this upgrade reflected in the claim graph (Section 9)?
- D9.1a provides a geometric (half-density) ordering resolution — does Section 9.3 signal both control mechanisms (deformation + half-density)?
- No open anomalies in docs/anomalies.md.

## Cross-thread probe
- Threads to compare: Thread 1 (main paper: RG as compatibility) + Thread 6 (ordering/discretization as equivalence class)
- Expected connection: D9.1a bridges these — it shows ordering ambiguity has a geometric resolution via half-density that is distinct from the deformation-equivalence approach in Section 7.
- Question: does the claim graph in Section 9 adequately reflect both mechanisms?

## Framing stress-test
- Does v4 (RCP) still account for everything?
- Hardest case: the "two control mechanisms" (deformation + half-density) for ordering — are they genuinely independent, or is one derivable from the other?
- One way the framing could be incomplete: RCP treats partition/representation/scale as three legs, but the half-density resolution of ordering cuts across representation and scale (it's a geometric constraint, not a deformation-algebraic one).

## Candidate principle (if any)
- To be determined during execution.

## Allowed files
- `docs/research-state.md`, `docs/anomalies.md`, `docs/next-articles.md`, `docs/research-log.md`
- `cycles/DX03-*.md`, `cycles/index.md`

## Forbidden files
- `paper/main.md`, `papers/*/main.md`, `paper/bibliography.md`, `sources/`

## Expected spawns
- Possibly C113 or C114: forward-signaling edits to Section 9 claim graph.
- Possibly S76: probe whether half-density and deformation ordering controls are independent.

## Acceptance criteria
- All four sections filled in.
- `docs/anomalies.md` updated (new entries or "no new anomalies").
- Principle evolution log reviewed.
