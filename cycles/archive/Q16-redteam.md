# Q16 Redteam: Failure Modes

## Failure Modes
1. **Rhetorical drift:** readers interpret “floor” as a fundamental bound, not a model asymptotic.
2. **Equation-trust gap:** no explicit sanity check recorded for the large-\(M\) limit.
3. **Cross-thread bleed:** SR continuation accidentally read as replacing the Newtonian D1.5 witness.

## Mitigations
1. Keep caveat language adjacent to the result.
2. Record symbolic limit checks in the cycle execution file.
3. Keep D1.5 (Newtonian witness) and D1.5b (SR continuation) as separate remarks with separate claims.

