# D12 Red-Team: modified-equation witness for “running data” in step-doubling

Date: 2026-02-11

## Failure modes
1. **Scope creep into full B-series / Butcher group formalism.**
2. **Ambiguity in notation** (`f'(f)` shorthand unclear to non-ODE readers).
3. **Analogy overreach** (“RG is just numerical analysis”) rather than “shared compatibility grammar”.

## Mitigations
- Keep the deliverable to explicit Euler and \(O(h^2)\) terms; treat higher-order trees as future work.
- Define \(f'(y)\) as a Jacobian (Fréchet derivative) and write \(f'(y)f(y)\) explicitly before using shorthand.
- Add a one-sentence scope disclaimer: this is a toy *compatibility* witness, not an identification of domains.

