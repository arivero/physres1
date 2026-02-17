# D66 Discovery: Classicality as composition boundary, not composition failure

Date: 2026-02-14
Parent: D57 (failure taxonomy), D60 (forced-completion chain), D31 (κ→0 obstruction)

## Novelty target
What does the forced-completion framework say about the classical limit and
emergent classicality?

## Analysis

### The forced-completion chain is one-directional
The chain calculus → QM (A1) → QFT (A1+A4) goes UPWARD in structural complexity.
Each stage forces the next. But the DOWNWARD direction (QFT → QM → classical) is
singular:
- κ → 0 limit does not exist as a smooth limit (D31/S289: three redundant
  obstructions — residual action, oscillatory divergence, non-commuting limits)
- QFT → QM: taking finitely many modes is a truncation, not a limit
- The chain is not reversible

### Two notions of "classical"
1. **Classical-as-precursor**: classical mechanics is the starting composition
   framework (calculus, finite differences). It's NOT quantum mechanics with ℏ → 0;
   it's the framework that quantum mechanics COMPLETES.
2. **Classical-as-effective**: classical behavior observed macroscopically arises
   from subsystem composition failure (open systems, decoherence). This is D57's
   first category: environment tracing breaks the semigroup for subsystems.

### Key insight
These two notions are DIFFERENT:
- Classical-as-precursor: composition WITHOUT exponential weight. Pre-quantum.
  The forced completion adds exp(iS/ℏ).
- Classical-as-effective: composition WITH exponential weight, but observed through
  a subsystem trace that averages out quantum phases (decoherence). Post-quantum.

The "classical limit" is not returning to the precursor. It's a different process
entirely: environment-mediated composition failure producing effective classical
behavior for the subsystem. The stationary-phase mechanism (Section 6 of cornerstone)
connects the two: the stationary-phase approximation recovers classical trajectories
as saddle points of the quantum composition integral, but this is a computational
approximation, not a structural limit.

### Connection to project thesis
The project thesis (calculus → QM → QFT as forced completions) implies:
- Classical mechanics is not a special case of quantum mechanics
- It's the PRECURSOR whose composition structure is completed by QM
- The "classical limit" ℏ → 0 is singular precisely BECAUSE it tries to undo a
  forced completion (going backward through a one-way chain)

This resolves a longstanding conceptual puzzle: why is the classical limit so
technically difficult? Answer: because it's structurally impossible as a smooth
limit — you're trying to remove structure (exponential weight) that was FORCED
by composition consistency.

## Verdict
**MODERATE (philosophical synthesis).** The individual observations are known (κ→0
obstruction from D31, decoherence/open systems from D57, stationary phase from
cornerstone Section 6). The synthesis — classicality as precursor vs. classicality
as effective, with the classical limit being "undoing a forced completion" — is a
clean conceptual contribution.

### Promotability
Paper-remark quality (3-4 sentences). Natural target: cornerstone Section 9.6
(after P9.1, extending the forced-completion discussion to the classical direction).
Or as a brief observation in the RCP foundations conclusion.

## Spawned cycles
Consider batching with future C-cycle. The observation that "the classical limit
is singular because it undoes a forced completion" could be 2-3 sentences in the
cornerstone conclusion.
