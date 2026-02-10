# S18 Plan: Derivatives of the Diagonal Delta Kernel in Half-Density Language (Contact Terms)

## Goal
Clarify, in a coordinate-free way, what “derivatives of the delta” mean in the kernel/half-density calculus used across the repo, and why this is the natural language for QFT counterterms/contact terms.

Key targets:
- the identity kernel \(\delta_{\mathrm{diag}}\) as a canonical bi-half-density distribution,
- the relation “derivative in \(x\) equals minus derivative in \(y\)” as a **Lie-derivative** identity,
- connection to point splitting: difference quotients \(\to \delta'\),
- how derivative counterterms show up as derivatives of \(\delta_{\mathrm{diag}}\).

## Scope
- One blackboard note with explicit formulas and at least one coordinate-free statement using Lie derivatives.
- No manuscript promotion in this cycle.

## Acceptance Tests
1. The note states and explains:
   \[
   (\mathcal L_{V_x}+\mathcal L_{V_y})\,\delta_{\mathrm{diag}}=0
   \quad\Rightarrow\quad
   \mathcal L_{V_x}\delta_{\mathrm{diag}}=-\mathcal L_{V_y}\delta_{\mathrm{diag}}.
   \]
2. The note connects this to the coordinate identity \(\partial_{x^\mu}\delta(x-y)=-\partial_{y^\mu}\delta(x-y)\).
3. The note explicitly ties the identity to:
   - point splitting \((\delta(\cdot+\varepsilon)-\delta)/\varepsilon\to\delta'\),
   - derivative counterterms as diagonal distributions.

## Planned Outputs
- `blackboards/2026-02-10-derivatives-of-diagonal-delta-kernel.md`
- `cycles/S18-{plan,debate,execution,redteam}.md`

