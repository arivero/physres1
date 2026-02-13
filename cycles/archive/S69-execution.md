# S69 Execution: Newton-impulse ↔ symplectic-Euler connection

Date: 2026-02-12

## Summary
Wrote blackboard note `blackboards/2026-02-12-newton-impulse-symplectic-euler.md` with:
1. Explicit identification: Section 3.2's kick-drift = symplectic Euler for separable H = T + V.
2. Conservation argument: L conservation (D1.1) follows from (a) force centrality at kick step, (b) free drift preserving cross product. Symplectic perspective adds: the map preserves ω exactly, and L is a quadratic invariant under rotational symmetry.
3. Section 8 bridge: both explicit and symplectic Euler have step-doubling discrepancies, but symplectic corrections are constrained to preserve ω — analogous to gauge-invariant counterterms in QFT.
4. Promotion candidate: one-paragraph remark for Section 3.3 or 8.4.

## Key result
The structural narrative:
- Newton's scheme is "gauge-compatible" (symplectic) from the start.
- Its order errors exist but are *constrained* by geometric structure.
- This is a micro-model: symmetries constrain allowed counterterms.

## Outputs
- `blackboards/2026-02-12-newton-impulse-symplectic-euler.md`

## Spawned cycles
- `C105`: promote the symplectic-Euler remark into the manuscript (Section 3.3 or 8.4) + add Berkeley citation to Section 1 or 3.1. Bundle both into one promotion wave.
