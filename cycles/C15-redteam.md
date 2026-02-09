# C15 Red Team

## Main Risks / Failure Modes
1. **Only one external anchor so far.** We now have the Tarrach–Manuel paper as a validation reference, but a second independent reference would further reduce “single-source” risk.
2. **Boundary-condition viewpoint needs convention hygiene.** It is standard that 2D point interactions correspond to self-adjoint extensions with a scale parameter; even with [ManuelTarrach1994PertRenQM] cited, we should keep the \(2e^{-\gamma}\) and scheme-constant mapping explicit to avoid silent convention drift.
3. **Gaussian coarse-graining is Euclidean.** The example is clean because the integral converges; in the oscillatory (real-time) path integral one should either Wick rotate or phrase the argument as stationary-phase plus determinant. Avoid implying that all coarse-graining is literally a convergent integral.
4. **Semigroup vs group might still feel “philosophical”.** To prevent this, keep emphasizing explicit non-invertibility statements (many UV completions → one IR description) and, if needed later, add a second example (e.g. block-spin on a finite Gaussian chain).

## Mitigations
1. Optionally add one more independent source (OA if possible) and align formulas in a short convention table.
2. Keep a short “dictionary” paragraph (\(\mu\), \(\kappa_\ast\), \(R\), scheme constant \(C\)) in the follow-up draft, and only promote the minimal needed piece into `paper/main.md`.
