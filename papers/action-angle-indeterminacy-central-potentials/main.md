---
title: "Action–Angle Indeterminacy in Central Potentials: A Referee-Safe Witness"
author: "Alejandro Rivero"
date: "2026"
abstract: |
  “Action–angle indeterminacy” should not be read as a force-range heuristic (in the style of energy–time slogans), but as a clean conjugacy statement: sharpening an action variable broadens the conjugate angle variable. For central potentials the safest, most explicit instance is the azimuthal pair \((\phi,L_z)\): an \(L_z\) eigenstate has \(\phi\)-dependence \(e^{im\phi}\), hence a uniform azimuthal probability distribution; conversely, any state localized in \(\phi\) must involve a broad superposition of angular-momentum modes (Fourier on the circle). This note records that witness and explains its foundations-level message: classical orbit-phase/orientation pictures correspond to semiclassical packets/superpositions rather than single stationary eigenstates.
---

# 1. Purpose and scope
This dependent note isolates one specific “action–angle indeterminacy” statement that is both explicit and referee-safe in a central potential:
**\(\phi\) is delocalized in an \(L_z\) eigenstate**, and conversely **localizing \(\phi\) requires a superposition over many \(m\)** modes.

We deliberately keep the scope bounded.
We do **not** enter the self-adjoint “angle operator” debate; instead we use the standard circle/Fourier structure and the unitary phase variable \(e^{i\phi}\).
We also do **not** make any claims about the range of forces or potentials; the point here is about **which variables can be simultaneously sharp** in stationary states.

# 2. The safe conjugate pair on the circle: \(\phi\) and \(L_z\)
In spherical coordinates the azimuthal angle is periodic, \(\phi\sim\phi+2\pi\). The generator of rotations about the \(z\)-axis is
\[
L_z=-i\hbar\,\frac{\partial}{\partial\phi}.
\]
The periodicity makes the naive commutator \([\phi,L_z]=i\hbar\) subtle if one insists on an everywhere-defined self-adjoint \(\phi\) operator. A standard way to stay on safe ground is to use the unitary “phase” variable
\[
E := e^{i\phi}.
\]
Acting on \(2\pi\)-periodic wavefunctions, \(E\) is well-defined and satisfies the canonical shift relation
\[
[L_z,E]=\hbar\,E,
\]
which already captures the operational content: sharp \(L_z\) implies maximal delocalization in the conjugate angle.

# 3. Central potentials: \(L_z\) eigenstates have uniform \(\phi\) distribution
For a central potential (or any Hamiltonian commuting with \(L_z\)), one may choose simultaneous eigenstates of \(L_z\). In the standard separation of variables, the azimuthal dependence of an angular-momentum eigenstate is the Fourier mode \(e^{im\phi}\) with integer \(m\) (for example in the spherical-harmonic factor \(Y_{\ell m}(\theta,\phi)\propto P_{\ell m}(\cos\theta)e^{im\phi}\)) [TongQMLectures].

Thus an \(L_z\) eigenstate may be written as
\[
\psi(r,\theta,\phi)=F(r,\theta)\,e^{im\phi},
\qquad m\in\mathbb Z,
\]
and therefore
\[
|\psi(r,\theta,\phi)|^2 = |F(r,\theta)|^2,
\]
independent of \(\phi\). In particular, the marginal distribution of \(\phi\) is uniform on \([0,2\pi)\). This is the minimal “angle indeterminacy” witness for central potentials.

# 4. Fourier tradeoff: localizing \(\phi\) forces a broad \(m\)-superposition
Any square-integrable \(2\pi\)-periodic function admits a Fourier series
\[
\psi(\phi)=\sum_{m\in\mathbb Z} c_m e^{im\phi},
\qquad
\sum_{m\in\mathbb Z}|c_m|^2<\infty.
\]
If only one Fourier mode is present (sharp \(m\), hence sharp \(L_z\)), then \(|\psi(\phi)|^2\) is constant; conversely, a state that is peaked in \(\phi\) necessarily uses many Fourier modes (broad \(m\)-support).

`Example 4.1 (Dirichlet-kernel packet).`
The normalized superposition of modes \(-M\le m\le M\),
\[
\psi_M(\phi)=\frac{1}{\sqrt{2\pi(2M+1)}}\sum_{m=-M}^{M} e^{im\phi},
\]
is peaked near \(\phi=0\) with an angular width that scales like \(1/M\), while its \(m\)-distribution is spread across \(\{-M,\dots,M\}\). This makes the "sharpening \(\phi\) \(\Rightarrow\) broadening \(L_z\)" tradeoff completely explicit without invoking any disputed angle-operator formalism.

The Fourier tradeoff above can be made into a sharp quantitative bound using only the self-adjoint observables \(\cos\phi\) and \(\sin\phi\):

`Proposition 4.2 (Circular uncertainty relation).`
For any state on the circle, define the circular concentration \(R=|\langle e^{i\phi}\rangle|\in[0,1]\). Adding the Robertson inequalities for the two self-adjoint pairs \((L_z,\cos\phi)\) and \((L_z,\sin\phi)\) — using \([L_z,\cos\phi]=i\hbar\sin\phi\) and \([L_z,\sin\phi]=-i\hbar\cos\phi\) — and the identity \(\mathrm{Var}(\cos\phi)+\mathrm{Var}(\sin\phi)=1-R^2\), gives
\[
\mathrm{Var}(L_z)\cdot(1-R^2)\ge\frac{\hbar^2}{4}\,R^2.
\]
When \(R=0\) (uniform distribution, as in an \(L_z\) eigenstate) the bound is trivial. As \(R\to1\) (sharply localized angle) the bound forces \(\mathrm{Var}(L_z)\to\infty\): angular localization requires spreading across many \(m\)-modes. This quantifies the Fourier tradeoff above without invoking a self-adjoint angle operator.

# 5. Foundations message: orbit pictures require packets/superpositions
This witness supports a simple interpretive guardrail for central-force intuition:
a single stationary eigenstate (even when it carries classical-sounding quantum numbers) is typically **not** a localized classical orbit with a definite phase/orientation. Variables like the azimuthal phase \(\phi\) (and, in more structured integrable cases, other angle variables on the invariant torus) become localized only in **coherent superpositions** of many stationary modes.

In other words, “classical orbit pictures” correspond to semiclassical packets and stationary-phase concentration, not to exact eigenstates that are sharp in the conserved actions.

# 6. A second witness: the harmonic oscillator

The same structure appears in the simplest one-dimensional integrable system.

`Example 6.1 (Harmonic oscillator: Fock states vs coherent states).`
For a harmonic oscillator of frequency \(\omega\), define the classical action variable \(J=E/\omega\). The quantum Fock states \(|n\rangle\) are the action eigenstates (\(J_n=(n+\tfrac12)\hbar\)), and their phase-space (Husimi) distribution is a ring centered at the origin — the orbit phase \(\theta\) is uniformly delocalized, exactly as \(\phi\) is delocalized in an \(L_z\) eigenstate. Conversely, a coherent state
\[
|\alpha\rangle
=e^{-|\alpha|^2/2}\sum_{n=0}^{\infty}\frac{\alpha^n}{\sqrt{n!}}\,|n\rangle,
\qquad \alpha=|\alpha|\,e^{i\theta_0},
\]
is the closest quantum analog of a classical orbit with definite amplitude \(|\alpha|\) and phase \(\theta_0\). Its Fock-state weights follow a Poisson distribution with mean \(\bar n=|\alpha|^2\), so localizing the phase to width \(\Delta\theta\sim 1/|\alpha|\) requires spreading the action over \(\Delta n\sim |\alpha|\) modes. The tradeoff is the same as in Section 4: sharp action implies delocalized phase, and vice versa.

# 7. Outlook (kept minimal)
Beyond the \((\phi,L_z)\) sector and the harmonic oscillator above, integrable central problems admit a fuller action–angle description (with a radial action and additional angle variables on the invariant torus). EBK/WKB quantization makes the same structural point: the more sharply the actions are specified, the less information remains in the conjugate phases. Hardening that broader story into a standalone foundations claim would require a separate study cycle to avoid conflating (i) action–angle existence/global issues with (ii) semiclassical quantization conditions.

# References

1. [TongQMLectures] David Tong, "Quantum Mechanics" (lecture notes, no DOI). OA: lecture-note PDF. (Contains \(Y_{l,m}(\theta,\phi)=P_{l,m}(\cos\theta)e^{im\phi}\) as simultaneous eigenstates of \(L^2\) and \(L_z\).)
