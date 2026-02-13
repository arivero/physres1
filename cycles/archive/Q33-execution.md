# Q33 Execution: Quality Pass on ISCO Subsection

## Checks Run
- Reviewed Section 4 of `papers/relativistic-central-orbits/main.md` through the new `4.3 Timelike circular orbits and ISCO`.
- Verified internal consistency with the earlier definitions:
  - \(E=(1-2M/r)\dot t\), \(L=r^2\dot\phi\),
  - \(\dot r^2=E^2-(1-2M/r)(\epsilon+L^2/r^2)\).
- Checked the circular-branch algebra:
  - \(L^2=Mr^2/(r-3M)\),
  - \(E^2=(r-2M)^2/(r(r-3M))\),
  - \(V_{\rm eff}''(r)=2M(r-6M)/(r^3(r-3M))\Rightarrow r_{\rm ISCO}=6M\).
- Guardrail check:
  - `rg -n 'C[0-9]{2}' paper/main.md` (clean; no matches).

## Findings
- No edits required in this quality pass.
- Subsection closes the GR baseline TODO without scope drift.

## Next Spawn
- Run `S45` to explore the "string tension / gauge-phase asymptotics as a scale supplier" branch while keeping hypothesis filters separated from the half-density story.
