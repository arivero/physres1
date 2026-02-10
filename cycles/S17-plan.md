# S17 Plan: Conformal Rescaling of the Half-Density Laplacian; D=4 as an Intersection Point

## Goal
Extract the conceptual core of the S16 computation:
- treat the conformal factor \(g=e^{2\sigma}\bar g\) as a “scalarization gauge change”,
- compute how the conjugated Laplacian on half-densities transforms under this change,
- show why \(D=4\) is singled out (within the conformal ansatz) as an *intersection* of two simplification conditions.

## Scope
- One blackboard note that:
  1. derives the general family \(O_a:=e^{a\sigma}\Delta_g e^{-a\sigma}\) in the flat-base conformal class,
  2. specializes to the half-density choice \(a=D/2\),
  3. identifies two “simplicity” conditions and shows they coincide at \(D=4\).
- Include a SymPy check for the coefficient structure in a reduced 1D dependence model (record command + output).
- No manuscript promotion in this cycle.

## Acceptance Tests
1. New blackboard note exists with a clean boxed formula for \(O_a\) and its specialization \(a=D/2\).
2. The note explicitly states the two conditions:
   - no first-derivative term: \(a=(D-2)/2\),
   - no \((\partial\sigma)^2\) term: \(a\in\{0,D-2\}\),
   and explains why half-density \(a=D/2\) meets the second only at \(D=4\).
3. The note labels the “dimension filter” interpretation as heuristic.

## Planned Outputs
- `blackboards/2026-02-10-conformal-rescaling-and-half-density-laplacian-family.md`
- `cycles/S17-{plan,debate,execution,redteam}.md`

