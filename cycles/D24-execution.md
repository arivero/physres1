# D24 Execution: Functional Delta Objects and Stationary-Set Localization

Date: 2026-02-14
Status: Completed

## Decision (append-only)
- Chosen target: Produce a referee-safe dictionary of all delta-adjacent constructions across the manuscripts, with a single safe/unsafe classification criterion.
- Why now: The delta-objects paper (Outlook item 2) explicitly calls for clarifying which parts of the "functional delta" story survive rigorous regularization. The main paper uses delta(nabla f), delta', diagonal delta kernels, and delta potentials in Sections 5.5-5.6 without a unified classification. A referee could ask "what exactly do you mean by delta here?" at five different points.

## One-sentence novelty claim (append-only)
The five delta-adjacent constructions in the manuscripts are unified by a single criterion: a delta construction is scheme-independent (safe) precisely when it evaluates a continuous object against a converging mollifier sequence, so the result is independent of the mollifier; products or coincident-point evaluations of singular distributions are scheme-dependent (unsafe) and require explicit regularization.

## Scope disclaimer (append-only)
This is a synthesis/organization contribution, not a new mathematical result. The underlying facts (distributional change of variables, Schwartz impossibility, absence of path-space Lebesgue measure) are standard. The novelty is collecting them into a single dictionary with a uniform criterion and applying it systematically to the manuscripts' usage.

## Spawned cycles (planned)
- `S281`: delta-object dictionary + toy witnesses.
- `B29` (optional): coarea/Schwartz anchors.

## 2026-02-14 Execution

### Inputs read
- `paper/main.md` Section 5.5 (D3.5, D3.5a), Section 5.6, H0.2a
- `papers/delta-objects/main.md` Sections 3.1a, 3.1b, 3.4, Outlook item 2
- `papers/dirac-probes-corners-impulses/main.md` Section 5 (safe/unsafe table, Remark 5.3a Schwartz impossibility)
- `paper/notes/weak-euler-lagrange-jump-conditions.md` (delta vs delta' toy model)
- `blackboards/1.md` (prior content: self-adjoint extensions, already promoted to delta-objects paper)

### Conceptual triage
Identified five distinct delta-object types:
1. **Stationary-set delta** delta(f') / delta(nabla f): localization on critical points via distributional change of variables. Safe (mollifier-universal).
2. **Distributional derivative** delta': defined by duality, realizable as point-splitting limit. Safe.
3. **Diagonal delta kernel** delta(x-y)|dx|^{1/2}|dy|^{1/2}: identity kernel on half-densities. Safe (Schwartz kernel theorem).
4. **Delta potential** g*delta(x): rank-one perturbation / self-adjoint extension. Safe in d=1; requires renormalization in d>=2.
5. **Path-space delta** "delta(delta S)": heuristic only. No path-space Lebesgue measure (H0.2a); must be regulated via time-sliced finite-dim approximation.

### Safe/unsafe criterion established
**Mollifier universality:** the result is scheme-independent iff the mollifier-sequence limit is unique, which happens iff the probed object is continuous (or otherwise regular) at the relevant point. Products of singular distributions or coincident-point evaluations are scheme-dependent.

### S281 spawned and completed
- Created S281-{plan,execution,debate,redteam}.md
- Wrote `blackboards/1.md` with:
  - 5-row dictionary table
  - 5-row do/don't table
  - Safe/unsafe criterion with examples
  - Witness A: point-splitting for delta' (complete proof)
  - Witness B: stationary-set identity (complete proof + multi-dim extension)
  - Analysis of when delta(delta S) is acceptable (+ regulated substitute)
  - Dictionary paragraph (promotion-ready, ~120 words)

### Acceptance criteria check
- [x] Compact dictionary paragraph that can be promoted later without rewriting
- [x] Crisp statement of when delta(delta S) is acceptable as shorthand (if ever)
- [x] Output separates: finite-dimensional truths, distributional truths, and path-space heuristics
- [x] Safe criterion in terms of mollifier universality vs diagonal singularity/products

### Result
D24 is complete. All acceptance criteria met. S281 completed as the expected spawn. B29 deferred (the distributional change-of-variables formula and Schwartz impossibility are standard enough not to need a dedicated bibliography cycle).

