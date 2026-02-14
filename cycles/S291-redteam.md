# S291 Red Team: Lorentzian composition study failure modes

Date: 2026-02-14

## Failure modes

### 1. Algebra/sign mistakes
- **Risk**: sign error in completing the square, wrong branch of √i, factor-of-2 error
- **Mitigation**: The calculation has been done line by line with intermediate checks. The final result K_{t+s}(x,z) matches the standard textbook answer (Feynman-Hibbs Ch. 3, Schulman Ch. 4). Each algebraic step is explicit and verifiable.
- **Status**: LOW RISK. Standard textbook calculation; independently verified.

### 2. Free particle is too special
- **Risk**: The free particle kernel is exactly Gaussian, so composition is exact. For interacting potentials, the short-time kernel is only approximately Gaussian; composition would require stationary phase approximation. The d/2 exponent conclusion might not extend.
- **Mitigation**: The d/2 exponent is a NORMALIZATION property of the kernel, not a property of the phase. P4.2 derives it from the semigroup functional equation for the prefactor A(t), which is independent of the potential. The free-particle calculation demonstrates the mechanism; the semigroup argument makes it general.
- **Status**: MEDIUM RISK. The generalization from free to interacting is logically sound via the semigroup argument, but not demonstrated by explicit calculation here. This is acknowledged in scope.

### 3. iε verdict may be too strong
- **Risk**: Claiming iε is "purely input" might overstate the case. In the Euclidean-to-Lorentzian continuation framework, iε emerges naturally from Wick rotation, which could be considered "forced" by the requirement of having both a path integral AND a Hamiltonian formulation.
- **Mitigation**: The verdict carefully states "iε is input for convergence, not output of composition." This is a narrow claim about the composition integral itself. Whether iε is forced by other physical requirements (unitarity, spectral condition, Wick rotation) is a separate question not addressed here.
- **Status**: MEDIUM RISK. The narrow claim is correct. A broader claim about iε necessity from first principles would require additional analysis.

### 4. Conditional convergence is fragile
- **Risk**: The Fresnel integral converges only conditionally. Under changes of variable, reordering of integration, or approximation, conditionally convergent integrals can give wrong answers. The composition integral might not commute with limits or approximations.
- **Mitigation**: This is exactly why the verdict is "partial closure" rather than "full closure." The conditional convergence is the precise mechanism by which Lorentzian composition is weaker than Euclidean. The blackboard notes this explicitly in section 8.1.
- **Status**: ACKNOWLEDGED. This is a feature of the analysis, not a bug.

### 5. Branch of √i ambiguity
- **Risk**: The Schrödinger kernel prefactor involves √(1/i) = √(-i) = e^{-iπ/4}. Different branch choices give different phases. The composition integral must be consistent with the branch choice.
- **Mitigation**: The standard convention is √(i) = e^{iπ/4}, and the Fresnel integral produces exactly this phase factor. The branch choice is fixed by requiring K_t→δ as t→0+ with the correct sign. This is indeed an additional input (signature-dependent), consistent with the verdict.
- **Status**: LOW RISK. Convention-dependent, but standard and consistent.

## Overall assessment
The calculation is correct and the verdict (partial closure, criterion 2) is well-supported. The main weakness is that only the free-particle case is computed explicitly; the extension to interacting potentials relies on the semigroup argument from P4.2 rather than direct computation. This is appropriate for the scope of S291.
