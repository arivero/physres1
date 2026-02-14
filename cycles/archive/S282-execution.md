# S282 Execution: Stochastic-Kick Computation — Itô Correction Witness

Date: 2026-02-14
Status: Completed

## Work performed
- Derived the discretization-stochastic dictionary for the N-impulse model with position-dependent impulse variance.
- Computed the Itô correction explicitly for the geometric noise model g(q) = q.
- Verified the Stratonovich-to-Itô conversion both from the general formula (1/2) g g' dt and from direct discrete calculation of the midpoint vs prepoint expected increments.
- Mapped the correction to the energy-impulse formula of Dirac-probes Remark 3.2a: the difference Delta H_Strat - Delta H_Ito = J^2/(2m) is the noise-induced energy drift.
- Connected the alpha-discretization of main paper Section 6.3 (Derivation D4.1b) to the stochastic convention: alpha = 0 is Itô, alpha = 1/2 is Stratonovich, and the O(hbar) ordering shift has the same structural origin as the Itô correction.

## Artifacts produced
- `blackboards/2.md`: Full derivation (overwriting previous Caustics/Maslov content from S213, which was a draft remark and can be recovered from cycle archive if needed).

## Commands run (if any)
None (pen-and-paper derivation).

## Result
- The clean statement is established: midpoint discretization = Stratonovich (chain-rule preserving, variational); prepoint = Itô (martingale, no chain rule). The Itô correction (1/2) g(q) g'(q) dt is the general conversion term.
- For the geometric witness g(q) = q: the correction is (1/2) q dt, converting the zero-drift Stratonovich SDE into the Itô SDE with drift (1/2) q.
- The energy-level witness: Delta H_Strat - Delta H_Ito = J^2/(2m) per step, giving a cumulative noise-induced drift of sigma^2 T/(2m) over the full interval.

## Promotion candidate (pointer)
- Location: `blackboards/2.md`, "Clean Statement" section.
- The theorem statement + witness is compact enough for promotion as a remark in the Dirac-probes companion (Outlook item 4) or as a footnote in Section 6.3 of the main paper, via a future C cycle.

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **no**
- The result is standard stochastic calculus mapped onto the project's language. The value is the explicit dictionary and the connection to the alpha-ordering witness, not novelty per se.

## Spawned cycles
- No further spawns needed. The result is self-contained.
- A future C cycle could promote a compact remark into the Dirac-probes companion (Outlook item 4) or Section 6.3 of the main paper.
