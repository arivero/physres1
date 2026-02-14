# S292 Red Team: Parametrized Fresnel Regularization Failure Modes

Date: 2026-02-14

## Failure modes

### 1. Algebra/sign errors in the f(x)=x composition
- **Risk:** The claim that composition closes exactly with same ε could have a sign or factor error.
- **Mitigation:** The calculation reduces to S291's completing-the-square (already verified), with the single modification im/(2ℏ) → im/(2ℏ) - ε. The Gaussian integral formula √(π/(-α)) for Re(α) < 0 is standard. The normalization algebra (Section 3c) is explicit and checkable. **Low risk.**

### 2. Degree-counting argument gap for non-polynomial f
- **Risk:** The argument "f(a) has degree 2·deg(f) in y" assumes f is polynomial. What about smooth non-polynomial f (e.g., exp(x), sin(x))?
- **Mitigation:** For smooth f, expand in Taylor series: f(x) = Σ cₙ xⁿ. If any cₙ ≠ 0 for n ≥ 2, the exponent contains terms of degree ≥ 4 in y, breaking the Gaussian integral. The constant and linear terms (n=0,1) are the only ones compatible. This extends the polynomial argument to all smooth f. **Medium risk** — the Taylor argument assumes convergence of the series within the integration domain. For entire functions this is fine; for non-analytic smooth functions, the argument becomes distributional.

### 3. Hidden assumption: regulator depends on (x-y)²/t specifically
- **Risk:** The ansatz f((x-y)²/t) is specific. What about f((x-y)², t) with separate t-dependence, or f((x-y)²/t^α) for α ≠ 1?
- **Mitigation:** The choice (x-y)²/t is dictated by dimensional homogeneity (D): the argument of f should be dimensionless (in natural units). Alternative dimensionless combinations like (x-y)²·m/(ℏt) differ only by a constant rescaling (absorbed in ε). The exponent α = 1 in t^α is forced by dimensional analysis for the combination (length²/time). **Low risk** for the free particle; **medium risk** for interacting potentials where S_cl/ℏ provides an alternative dimensionless argument.

### 4. Result is not promotable due to restricted scope
- **Risk:** The uniqueness holds only for the free particle in 1D, which might be too narrow for a manuscript claim.
- **Mitigation:** The degree-counting argument is dimension-independent (each spatial dimension contributes independently to the Gaussian integral). Extension to d dimensions is immediate. Extension to interacting potentials is plausible but not proven (the regulator would need to be compatible with the full action, not just the kinetic term). State scope clearly in any promotion.

### 5. Overstatement: "iε is theorem, not input"
- **Risk:** The result says iε is forced among exponential-form regulators. But iε could still be considered "input" in the sense that one must choose to regularize at all (rather than work with distributional/conditional integrals).
- **Mitigation:** Fair point. The precise claim is: "IF one regularizes the Fresnel integral with an exponential damping factor, THEN the unique composition-compatible choice is the iε prescription." The need for regularization itself comes from requiring absolute convergence (which is arguably a separate input). State this distinction in promotion.
