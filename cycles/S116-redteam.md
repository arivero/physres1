# S116 Red Team
Date: 2026-02-13
## Failure modes
1. **Trotter formula**: Standard result (Trotter 1959, Reed-Simon Vol. I). The formula e^{t(A+B)} = lim(e^{tA/N}e^{tB/N})^N holds for self-adjoint A+B on a common domain. No error in the statement.
2. **Suzuki–Trotter claim**: The symmetric splitting e^{tA/(2N)}e^{tB/N}e^{tA/(2N)} cancels the O(1/N) error from [A,B]/(2N). This is second-order convergence (O(1/N²)). Standard in computational physics (Suzuki 1976).
3. **"Uncuttable" interpretation**: The claim that "no finite product equals e^{t(A+B)}" is correct when [A,B] ≠ 0. For commuting operators, the Trotter formula is exact at N=1, consistent with the classical (ℏ→0) case where non-commutativity vanishes.
