# C112 Red Team: Failure modes for semigroup promotion

Date: 2026-02-12

## Failure modes

- **Overclaiming: "not merely an analogy" is too strong**
  - Mitigation: the claim is precise — the control maps literally satisfy the semigroup composition law. The remark says "is not merely an analogy" in the specific sense that the algebraic identity tau_b o tau_c = tau_{bc} is derived, not asserted by pattern-matching. This is accurate.

- **Reader confusion: what does "b > 0" mean for non-integer b?**
  - Mitigation: the formula tau_b(a) = a/b + (b-1)/(2b) is well-defined for all real b > 0. The derivation via b-fold composition requires integer b, but the formula extends analytically. The remark does not belabor this point (it would distract), and the semigroup law is stated for general b.

- **Scope creep: beta function language invites full RG discussion**
  - Mitigation: the remark is self-contained (7 lines) and explicitly links to H6.2 for the broader context. It does not introduce new RG terminology beyond "beta function," "fixed point," and "semigroup" — all of which are already present in the surrounding text (D6.0, H6.2).

- **Missing citation: is the general tau_b formula known?**
  - Mitigation: the formula is elementary (one-parameter affine maps). No citation is needed for a direct computation. The connection to Butcher group / RG is already cited in H6.2.
