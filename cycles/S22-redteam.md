# S22 Redteam: Failure Modes

## Failure Modes
1. **Ambiguity:** \(\tau\) is described vaguely (“some map exists”) without a concrete compatibility equation.
2. **Overclaim:** stating “\(\tau\) must exist” as a theorem in general without hypotheses.
3. **Confusion of parameters:** mixing discretization scale \(h\) with the action-scale regulator \(\eta\) or with the scalarization gauge \(L_\ast\).
4. **Unphysical claim:** implying that physical \(\hbar\) literally runs under RG.

## Mitigations
1. State the compatibility equation in a boxed form; define every symbol.
2. Label existence/uniqueness claims as heuristic unless proved in a specific model.
3. Keep a consistent symbol table: \(h\)=resolution, \(\eta\)=action-scale regulator, \(g\)=couplings, \(L_\ast\)=scalarization gauge.
4. Frame “running \(\eta\)” as a regulator/normalization parameter unless explicitly identified with \(\hbar\).

