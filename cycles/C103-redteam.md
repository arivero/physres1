# C103 Red Team: failure modes for this promotion wave

Date: 2026-02-12

## Failure modes

- **Overclaiming / scope creep:**
  - Risk: R1.1 might appear to take a side in the Pourciau/Nauenberg debate.
  - Mitigation: R1.1 is deliberately neutral — it cites both sides and notes the manuscript's hedging is sufficient. It does not adjudicate the debate.

- **Weak anchoring (citation keys without bibliography entries):**
  - Risk: [Nauenberg2003KeplerArea] and [Pourciau2003] are now referenced in the manuscript but not yet in `paper/bibliography.md`.
  - Mitigation: B14 spawned to add the entries. The keys are self-documenting (author + year + short tag) so a reader can locate the references even before the ledger is updated.

- **Companion regularity parenthetical consistency:**
  - Risk: The companion D1.0 now says "(O(h^2) requires C^1; O(h^3) requires C^2)" but still opens with "smooth f".
  - Status: No real conflict. "Smooth" (C^infty) is a stronger but compatible assumption. The parenthetical notes the minimal requirement, same as the main paper.

- **Runge--Kutta typography:**
  - Risk: Other occurrences of "Runge-Kutta" may exist in companion papers.
  - Status: Checked — companion already uses "Runge--Kutta". Only the main paper had the hyphen.
