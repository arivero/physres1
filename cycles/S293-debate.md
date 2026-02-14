# S293 Debate: Does the Mehler witness generalize beyond quadratic potentials?

Date: 2026-02-14

## Question
The Mehler kernel is exact only for V = (1/2)mw^2 q^2. Does the d/2 forcing mechanism extend to general potentials where the kernel is not exactly Gaussian (i.e., Seeley-DeWitt corrections a_n are nonzero)?

## Working answer
Yes, by two complementary arguments:

1. **Perturbative:** The Seeley-DeWitt expansion K_t = K_t^free * (1 + a_1 t + a_2 t^2 + ...) preserves the leading-order normalization structure. The a_n corrections are O(t^n) and do not alter the t^{-d/2} prefactor (they multiply it by 1 + O(t)). The normalization functional equation N(t)*N(s)*G(t,s) = N(t+s) is satisfied at leading order by d/2, and the corrections provide subleading consistency conditions (the Seeley-DeWitt recursion relations).

2. **Exact witness:** The Mehler kernel sums ALL a_n to a closed form (sin wt)^{-d/2} * exp(iS/hbar). The composition closes exactly, not just perturbatively. This shows the d/2 exponent and kappa persist through the full tower of corrections for this class.

The gap: for potentials where no exact closed form exists, one relies on argument (1), which is perturbative. The Mehler kernel is the strongest available non-perturbative witness.

## Next check
- Van Vleck (leading order) composition on curved space with general V (extends S287)
- Perturbative composition to O(a_2) for a non-quadratic potential (e.g., quartic oscillator)
