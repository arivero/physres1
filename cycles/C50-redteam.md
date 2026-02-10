# C50 Redteam: Failure Modes

## Failure Modes
1. **Notation collision:** \(\mathcal G_b\) confuses readers with \(\mathcal C_t\) in RCP.
2. **Overclaim:** \(\tau_b\) is presented as guaranteed to exist without hypotheses.
3. **Cycle label leak:** `C50` (or similar) appears in manuscript text.

## Mitigations
1. Use \(\mathcal G_b\) (not \(\mathcal C_b\)) and define it locally.
2. Frame as a closure requirement/definition of “compatibility”, not a theorem.
3. Run `rg -n 'C[0-9]{2}' paper/main.md` before committing.

