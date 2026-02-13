# S54 Debate: Use ODE Step-Halving or a Gaussian-Integral Witness?

## Question
For formalizing \(\tau\), is it better to use:
1) step-halving in numerical ODE integrators, or
2) Gaussian integration / Schur-complement elimination?

## Current Resolution
Use ODE step-halving as the most transparent "compose then compare" toy model (one variable, one page).
Keep Gaussian elimination as a parallel witness already present elsewhere (Schur complement notes) if needed.

