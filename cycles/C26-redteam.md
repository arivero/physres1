# C26 Red Team

## Failure Modes
1. **Factor fights:** adding a “convention map” still leaves ambiguity if plane-wave normalization conventions are not pinned.
2. **Sign/branch mistakes:** the \(+i0\) prescription and \(\ln(-E-i0)=\ln E-i\pi\) choice is easy to get wrong.
3. **Overclaiming invariance:** confusing “beta function invariant” with “\(\kappa_\ast\) invariant under scheme changes” (it is only invariant up to a multiplicative constant fixed by one physical datum).

## Mitigations
- State the precise integral definition with the \((2\pi)^{-d}\) measure and the \(T(E;\Lambda)=\big(g_B^{-1}-I\big)^{-1}\) convention.
- Quote only the asymptotics already used elsewhere in the manuscript and keep the log-branch choice implicit in the displayed \(+i\pi\) term.
- Explicitly say: finite-subtraction shifts rescale \(\kappa_\ast\) (and \(R\)), while leaving the beta function unchanged.

