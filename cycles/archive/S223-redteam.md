# S223 — Red Team

## Remark 3.1b — mathematical correctness
- The W-E second condition [H]_{t₀⁻}^{t₀⁺} = 0 follows from allowing
  variations that shift the breakpoint time. This is a standard result
  in calculus of variations (Gelfand & Fomin §4, Giaquinta & Hildebrandt).
- For autonomous L: dH/dt = -∂L/∂t = 0, so H conserved on each segment.
  Then [H] = 0 is automatic. The remark correctly notes this simplification.
- For non-autonomous L: [H] = 0 is still a variational consequence, not
  just an energy conservation statement. The remark's claim is correct.

## Remark 4.3a — correctness
- t₀(T-t₀)/T: derivative w.r.t. t₀ is (T-2t₀)/T = 0 at t₀=T/2.
  Value at maximum: (T/2)(T/2)/T = T/4. Correct.
- Endpoint behavior: at t₀→0, factor → 0. At t₀→T, factor → 0. Correct.
