# S292 Debate: Scope of the degree-counting uniqueness argument

Date: 2026-02-14

## Question
The degree-counting argument (Section 5a) assumes the regulator has the specific form exp(-ε f((x-y)²/t)). Does this parametric family cover all physically reasonable Fresnel regularizations, or could a qualitatively different regularization scheme (e.g., sharp cutoffs, momentum-space regulators, lattice regularization) evade the uniqueness result?

## Working answer
The argument is conclusive within the stated class (exponential regulators depending on (x-y)²/t). The key structural fact — that composition closure requires the total exponent to be quadratic in the integration variable — is robust and independent of the specific form of f. However:

1. **Momentum-space regulators** (e.g., exp(-ε p²) in Fourier space) are covered implicitly: by S288 (blackboard 1), the Fourier transform of a composition-compatible kernel must be Gaussian, and exp(-ε p²) is the Fourier dual of the iε position-space regulator. So momentum-space regulators are related to f(x)=x by Fourier transform.

2. **Sharp cutoffs** (e.g., χ(|x-y| < R)) are not of the form exp(-ε f(·)) and fall outside the stated class. They would need separate analysis. However, sharp cutoffs generically break the semigroup (product of cutoff functions is not a cutoff of the same form).

3. **Lattice regularization** is structurally different (discrete, breaks translation invariance) and also falls outside scope.

The result is best stated as: "within the class of translation-invariant, exponential-form Fresnel regulators, iε is unique." This is the physically relevant class for continuum quantum mechanics.

## Next check
A C-cycle promoting this to paper/main.md should include a clear scope statement about the regulator class. The extension to non-exponential regulators (sharp cutoffs) could be a separate S-cycle if needed, but is likely of diminishing returns.
