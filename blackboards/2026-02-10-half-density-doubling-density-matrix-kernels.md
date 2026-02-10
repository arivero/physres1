# Half-Density Doubling: Density Matrices as Kernels on \(M\times M\)

Date: 2026-02-10  
Cycle: `S42`

## Goal
Make explicit, in kernel language, the structural reason why "probabilities" and real expectation values involve **doubling** (bra/ket, forward/backward), and show that the half-density formalism makes the doubled composition coordinate-free.

This is meant as a promotion target for `papers/half-density-qft/main.md` (and possibly a short pointer in `paper/main.md`).

## Setup: kernels on half-densities
Let \(M\) be a \(D\)-manifold and work with half-densities \(\Gamma(|\Omega_M|^{1/2})\).
An operator \(U\) acting on half-densities has a canonical bi-half-density kernel
\[
K_U(x,y)=u(x,y)\,|dx|^{1/2}|dy|^{1/2}.
\]
Evolution of a (half-density) wavefunction \(\psi\) is
\[
\psi_t(x)=(U_t\psi_0)(x)=\int_M K_t(x,y)\,\psi_0(y).
\]

## Pure states and the density-operator kernel
The rank-one operator \(\rho=|\psi\rangle\langle\psi|\) has kernel
\[
K_\rho(x,y)=\psi(x)\,\overline{\psi(y)}.
\]
This is again a bi-half-density: half-density in \(x\) times half-density in \(y\).

## Doubling formula: \(\rho_t=U_t\rho_0 U_t^{-1}\)
Assume \(U_t\) is unitary (so \(U_t^{-1}=U_t^\dagger\)). Then at the kernel level,
\[
K_{\rho_t}(x,y)
=\int_{M\times M} K_t(x,x')\,K_{\rho_0}(x',y')\,\overline{K_t(y,y')}.
\]
This is the precise doubled-composition pattern:
- one copy of \(M\) for the "forward" (ket) slot \(x'\),
- one copy of \(M\) for the "backward" (bra) slot \(y'\),
- and the kernel appears with complex conjugation in the backward slot.

Crucially, the half-density calculus makes this coordinate-free: the products
\(K_t(x,x')K_{\rho_0}(x',y')\) are densities in the intermediate variables \((x',y')\), so the double integral needs no background measure choice.

## Interpretation
1. **Amplitude vs density:** amplitudes propagate via one kernel \(K_t\); densities (operators) propagate via \(K_t\otimes \overline{K_t}\), i.e. a kernel on the doubled space \(M\times M\).
2. **QFT echo:** in field theory, the same structural doubling appears when representing \(|\mathcal A|^2\) or real-time expectation values: one "forward" and one "backward" copy of fields. This is a structural observation here; promoting it beyond a remark should be paired with a dedicated bibliography cycle.

## Promotion Candidate
Add one short remark to `papers/half-density-qft/main.md` explaining:
- why densities naturally live on \(M\times M\) (kernel doubling),
- why half-densities keep the doubled composition canonical.
