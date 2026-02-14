# D25 Execution: Random Impulses, Stochastic Calculus, and Time-Slicing Conventions

Date: 2026-02-14
Status: Completed

## Decision (append-only)
- Chosen target: Map the N-impulse refinement model (Dirac-probes Section 4.5) to the Itô/Stratonovich dictionary, with multiplicative noise to make the Itô correction non-vanishing.
- Why now: Outlook item 4 of the Dirac-probes companion explicitly flags this as open. The alpha-discretization of Section 6.3 (Derivation D4.1b) provides the quantum side of the dictionary. The computation is minimal and self-contained.

## One-sentence novelty claim (append-only)
The project's alpha-discretization parameter (Section 6.3) maps directly to the stochastic integral convention (alpha = 0 is Itô, alpha = 1/2 is Stratonovich), with the O(hbar) ordering shift and the Itô correction (1/2) g g' dt sharing a common structural origin: the cost of commuting a nonlinear evaluation with an O(sqrt(Dt)) increment.

## Scope disclaimer (append-only)
This is a convention dictionary, not an ontological claim about path integrals "being" stochastic processes. The dictionary maps discretization choices; it does not extend to full stochastic mechanics (Nelson, etc.).

## Triage outcome (2026-02-14)
1. **Minimal model chosen:** Position-dependent impulse variance sigma(q) in the N-impulse framework. The specific witness is geometric noise g(q) = q (multiplicative, ensuring nonzero Itô correction).
2. **Discretization-to-convention mapping established:**
   - alpha = 0 (prepoint) = Itô
   - alpha = 1/2 (midpoint) = Stratonovich
   - alpha = 1 (postpoint) = anti-Itô
3. **Itô correction computed:** For g(q) = q, the Stratonovich SDE dq = q o dW is equivalent to the Itô SDE dq = (1/2)q dt + q dW. The correction term is (1/2) q dt.
4. **Energy-level witness:** The impulse-work formula Delta H = J * v_bar (Remark 3.2a) uses midpoint velocity (Stratonovich). The Itô version uses v_-. The difference is J^2/(2m) per step, yielding a cumulative noise-induced drift of sigma^2 T/(2m).

## Spawned cycles (planned)
- `S282`: stochastic-kick toy witness (Itô vs Stratonovich). **Completed.**
- `B30` (optional): authoritative stochastic-calculus anchor. **Not needed** — the result is standard textbook material (e.g. Gardiner, Handbook of Stochastic Methods; Kloeden & Platen, Numerical Solution of SDEs). No load-bearing claim requires an independent anchor.

## Acceptance criteria check
- Single clean statement: **YES.** "Midpoint discretization corresponds to Stratonovich; converting to Itô adds the correction term (1/2) sigma(q) sigma'(q) dt. For the geometric witness g(q) = q, this correction is (1/2) q dt."
- Hypotheses stated: **YES.** 1D, multiplicative but C^1 noise, Euler-Maruyama convergence assumed.
- Explicit computed witness: **YES.** Geometric Brownian motion, verified by both direct discrete expansion and the general conversion formula.
