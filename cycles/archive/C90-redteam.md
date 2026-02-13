# C90 Red Team: Risks in the RCP Operationalization Promotion Wave

Date: 2026-02-11

## Failure modes
- Operational block is still too abstract:
  - Mitigation: include a concrete indexing \((h,\theta)\) and explicitly show the existence-claim “there exists \(\theta'\)” in equations.
- Readers confuse “closure under reparameterization” with “tautology”:
  - Mitigation: explicitly say closure can fail and point to `Derivation D4.1a` as the counterexample pattern.
- Hygiene edits accidentally remove useful context:
  - Mitigation: keep replacements minimal; prefer rephrasing file-path pointers rather than deleting entire explanatory sentences.
- New text accidentally introduces cycle IDs or transcript references:
  - Mitigation: run guard `rg` checks before committing.

