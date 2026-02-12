# S70 Execution: D=4 conformal half-density result -- RG-side analog check

Date: 2026-02-12

## Work performed
- Analyzed three candidate RG-side echoes of the D=4 conformal half-density cancellation:
  1. YM power-counting marginality (`[g^2] = length^{D-4} = 0` at D=4)
  2. Conformal invariance of classical YM (action weight `e^{(D-4)s} = 1` at D=4)
  3. Trace anomaly / beta function link (dimensionless beta at D=4 only)
- Identified the key structural difference: half-density filter is universal/kinematic; RG filter is coupling-specific/dynamic.
- Identified the "triple coincidence" at D=4: (a) D(4-D)/4 vanishes, (b) gauge coupling marginal, (c) G_4 = area.
- Proposed resolution of DX01 anomaly: half-density selects arena (which D), RG operates within it (how couplings run).
- Identified form-degree matching: p-form gauge fields have conformal marginality at D=2(p+1); for p=1, D=4.

## Artifacts produced
- `blackboards/2026-02-12-rg-side-d4-echo.md`

## Commands run (if any)
None (pure analysis).

## Result
- The RG side does echo D=4 through gauge-coupling marginality and YM conformal invariance, but this echo is coupling-specific (not universal like the half-density one).
- The DX01 anomaly is real but interpretable as a kinematic/dynamic split.
- Promotion candidate: a compact remark noting the independent D=4 filters and their consistency.

## Promotion candidate (copyable block)

> `Heuristic H4.0c (RG-side echo of the conformal half-density D=4 cancellation).`
> The half-density conjugation of the scalar Laplacian under conformal rescaling
> contains a quadratic-gradient term with coefficient \(D(4-D)/4\), which vanishes
> uniquely at \(D=4\) (Heuristic H4.0b). On the RG side, \(D=4\) is the unique
> dimension in which 1-form gauge couplings are marginal by power counting
> (\([g^2]=\text{length}^{D-4}\)), and in which the classical Yang--Mills action
> is conformally invariant (action-density weight factor \(e^{(D-4)\sigma}\equiv 1\)).
> Both statements share the algebraic root \((D-4)=0\), but apply to different objects:
> the half-density version is universal (independent of matter content); the RG
> version is coupling-specific (tied to the form degree of the connection via
> \(D=2(p+1)\) for a \(p\)-form gauge field). The consistency of these two
> independent filters at \(D=4\) is a nontrivial structural check within the
> manuscript's architecture, but the filters are logically independent: one selects
> the kinematic arena, the other constrains the dynamics within it.

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **yes**
- The form-degree matching \(2(p+1)=4\) for \(p=1\) gauge fields provides a more precise characterization of the D=4 coincidence than was previously noted. The \(\phi^4\) marginality at D=4 also matches, while higher-form fields (\(p\ge 2\)) do not match. This sharpens the DX01 anomaly into a testable structural question.

## Spawned cycles
- `C107` (when ready): promote the compact remark into `paper/main.md` Section 6 (near H4.0b) as H4.0c.
- Future `DX`: revisit the "deeper question" of whether the \(p=1\) preference has an independent half-density origin.
