# D27 Red Team: Odd-\(d\) Scale Supplier

Date: 2026-02-14

## Failure modes
- Turning a dimensional-analysis observation into an unjustified “dimension selection” claim.
- Confusing “fractional powers are ugly” with a mathematically/physically meaningful prohibition.
- Using a scale produced by an arbitrary convention (scheme parameter) and calling it “universal”.

## Mitigations
- Demand an explicit model witness for any claimed scale supplier.
- Keep hypothesis knobs explicit (analyticity, allowed reparametrizations, what counts as a coupling).
- If the conclusion is negative, state it as a *scope boundary* rather than a dramatic claim.

## Post-S284 failure modes (2026-02-14)

### Checked
1. **Overclaiming parity obstruction as "odd d is impossible"**: MITIGATED. The execution log and blackboard both state explicitly that the obstruction applies only to the monomial sieve, not to transmutation.
2. **YM loophole (unsquared coupling)**: MITIGATED. PA-H2.7a specifically uses action coefficients; the unsquared g_d is derived, not admitted. Blackboard note addresses this explicitly.
3. **Treating a^{3/2} as "natural" without justification**: PARTIALLY MITIGATED. The argument that PA-H2.5 constrains couplings (inputs) not derived scales (outputs) is clean. But a referee could still object that "fractional powers of anything" is unnatural. The response: transmutation is already non-analytic; the fractional power is a smooth operation on a positive real number.

### Residual risks
4. **d=1 and d=5 honest gaps**: the table correctly marks these as lacking standard transmutation witnesses. A hostile reader could focus on these gaps. Mitigation: the claim is not "transmutation works in all d" but "transmutation is parity-blind; it works in d where marginal/relevant couplings exist."
5. **Conflating scattering length with transmutation**: in d=3, the self-adjoint extension parameter (scattering length) is not produced by the same mechanism as d=2 transmutation (beta function running). The d=3 case uses power-law renormalization, not logarithmic. The scattering length is still an RG-invariant contact datum, but calling it "transmutation" in the same breath as the d=2 case may be imprecise. Mitigation: the blackboard uses "RG-invariant contact datum" rather than "transmutation" for d=3.

