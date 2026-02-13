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

`Remark 3.1 (Real spherical harmonics: directional lobes from the minimal m-superposition).`
The complex spherical harmonics \(Y_{\ell,m}\) have definite \(m\) and therefore uniform \(\phi\)-dependence (the main result above). The "real" spherical harmonics used in chemistry — \(p_x\propto\sin\theta\cos\phi\), \(p_y\propto\sin\theta\sin\phi\), \(d_{xy}\propto\sin^2\theta\sin 2\phi\), etc. — are the real and imaginary parts of \(Y_{\ell,m}\), hence equal-weight superpositions of \(m\) and \(-m\). This minimal two-mode superposition already breaks azimuthal uniformity: the probability density acquires \(\cos^2(m\phi)\) or \(\sin^2(m\phi)\) angular lobes, at the cost of angular-momentum indeterminacy \(\mathrm{Var}(L_z)=m^2\hbar^2\). The directional orbital shapes of atomic and molecular physics are thus the simplest instance of the Fourier tradeoff quantified in Section 4.

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

`Example 4.3 (Verifying the bound for the Dirichlet-kernel packet).`
For the state \(\psi_M\) of Example 4.1, the circular concentration is \(R=\langle e^{i\phi}\rangle = 2M/(2M+1)\) (by orthogonality, only the \(2M\) consecutive pairs \((m,m+1)\) with both in \(\{-M,\dots,M\}\) contribute). The angular-momentum variance is \(\mathrm{Var}(L_z)=\hbar^2 M(M+1)/3\) (using \(\sum_{m=1}^M m^2 = M(M+1)(2M+1)/6\) and \(\langle L_z\rangle=0\) by symmetry). The ratio of the left-hand side to the right-hand side of the bound in Proposition 4.2 is
\[
\frac{\mathrm{Var}(L_z)\,(1-R^2)}{(\hbar^2/4)\,R^2}
=\frac{(M+1)(4M+1)}{3M},
\]
which equals \(10/3\approx 3.3\) at \(M=1\) and grows as \(4M/3\) for large \(M\). The inequality is satisfied with increasing slack: the Dirichlet kernel is far from a minimum-uncertainty state for the circular relation. Physically, narrower angular packets (\(R\to 1\)) require disproportionately more angular-momentum spread than the bound demands.

`Remark 4.4 (Near-optimal angular localization: the von Mises state).`
The rectangular Fourier profile of the Dirichlet kernel wastes angular-momentum variance on sidelobes, driving the ratio LHS/RHS to \(4M/3\). The angular analog of a Gaussian — the von Mises wavefunction \(\psi(\phi)\propto \exp(\kappa\cos\phi)\) — has Fourier coefficients \(c_m\propto I_m(\kappa)\) (modified Bessel functions) that decay smoothly. For large \(\kappa\) the coefficients are approximately Gaussian in \(m\) with width \(\sqrt{\kappa}\), giving \(\mathrm{Var}(L_z)\approx\hbar^2\kappa/2\), while the circular concentration satisfies \(1-R^2\approx 1/(2\kappa)\) (since the probability \(|\psi|^2\propto\exp(2\kappa\cos\phi)\) is a von Mises distribution with parameter \(2\kappa\)). The ratio \(\mathrm{Var}(L_z)(1-R^2)/[(\hbar^2/4)R^2]\to 1\) as \(\kappa\to\infty\): the von Mises state asymptotically saturates the bound in Proposition 4.2.

# 5. Foundations message: orbit pictures require packets/superpositions
This witness supports a simple interpretive guardrail for central-force intuition:
a single stationary eigenstate (even when it carries classical-sounding quantum numbers) is typically **not** a localized classical orbit with a definite phase/orientation. Variables like the azimuthal phase \(\phi\) (and, in more structured integrable cases, other angle variables on the invariant torus) become localized only in **coherent superpositions** of many stationary modes.

In other words, "classical orbit pictures" correspond to semiclassical packets and stationary-phase concentration, not to exact eigenstates that are sharp in the conserved actions.

`Remark 5.1 (Temporal coherence and quantum revivals).`
The superpositions that localize an angle variable also have a temporal constraint: for anharmonic spectra (\(d^2E/dm^2\neq 0\)), the packet disperses on a timescale \(t_{\mathrm{disp}}\sim\hbar/(|d^2E/dm^2|\,\Delta m)\) and reforms at the revival time \(t_{\mathrm{rev}}\sim 2\pi\hbar/|d^2E/dm^2|\). Only for a linear spectrum (\(d^2E/dm^2=0\)) does the packet rotate rigidly like a classical orbit for all time. Thus classical orbit pictures require not only spatial localization (many \(m\)-modes, Section 4) but also approximate spectral linearity for temporal coherence.

`Remark 5.2 (Decoherence selects the localized packets).`
Environment-induced decoherence provides the dynamical mechanism that selects the coherent packets of Section 4 over the sharp-action eigenstates of Section 3. For a harmonic oscillator coupled to a thermal bath through position, coherent states minimize the rate of entanglement with the environment and emerge as the preferred "pointer states" — the states most robust against decoherence [ZurekHabibPaz1993]. Fock states, by contrast, decohere rapidly: superpositions of well-separated number states lose coherence on timescales much shorter than the thermal relaxation time, because the position operator (through which the environment couples) does not commute with the number operator. Classical orbit pictures thus emerge not only from semiclassical wavepacket structure (Sections 4–5) but from the environment's dynamical selection of those packets as the robust states.

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

`Example 6.2 (Hydrogen atom: three action–angle pairs).`
In the hydrogen atom, the \(n^2\)-fold degeneracy (\(E_n\) depending only on the principal quantum number \(n\)) reflects an enhanced \(SO(4)\) symmetry [Sakurai2020]. Semiclassically, the bound orbits lie on a three-torus with action integrals quantized by \((n,\ell,m)\). A stationary eigenstate \(|n,\ell,m\rangle\) is sharp in all three actions and therefore delocalized in all three conjugate angles: the azimuthal phase \(\phi\) is uniform (Section 3), the in-plane orbit orientation has no preferred direction (the Runge–Lenz vector has vanishing expectation value, since it connects states of different \(\ell\)), and the radial probability \(|R_{n\ell}(r)|^2\) is time-independent — the sharp radial action leaves the conjugate radial phase uniformly delocalized. A classical Keplerian ellipse with definite eccentricity, orientation, and timing requires a coherent superposition over ranges of \((n,\ell,m)\), just as a coherent state in Example 6.1 requires superposing many Fock states.

`Remark 6.3 (EBK quantization on the invariant torus).`
For a classically integrable system with \(d\) degrees of freedom, the Arnold–Liouville theorem provides \(d\) action variables \(I_k=(2\pi)^{-1}\oint_{\gamma_k}p\cdot dq\), integrated around the independent cycles \(\gamma_k\) of the invariant \(d\)-torus. The EBK (Einstein–Brillouin–Keller) quantization condition requires
\[
I_k=\left(n_k+\frac{\alpha_k}{4}\right)\hbar,\qquad n_k\in\mathbb{Z}_{\ge0},
\]
where \(\alpha_k\) is the Maslov index of the \(k\)-th cycle (counting caustic/turning-point contributions). The integer quantum numbers \(n_k\) select the torus; the conjugate angle variables \(\theta_k\in[0,2\pi)\) are uniformly distributed on that torus and carry no quantum-number information. This is the semiclassical counterpart of the fully quantum statement: stationary eigenstates (sharp actions) have delocalized angles. Examples 6.1 and 6.2 are the exact quantum versions of this principle for the \(d=1\) and \(d=3\) cases.

`Remark 6.4 (Husimi function: visualizing action–angle states in phase space).`
The Husimi \(Q\)-function \(Q(\alpha)=\langle\alpha|\hat\rho|\alpha\rangle/\pi\) assigns a non-negative quasiprobability to each phase-space point \(\alpha\), using coherent states as the reference frame. For a Fock state \(|n\rangle\), \(Q(\alpha)=e^{-|\alpha|^2}|\alpha|^{2n}/(\pi\,n!)\) — a ring at radius \(|\alpha|=\sqrt{n}\), uniform in the phase angle: sharp action, fully delocalized angle. For a coherent state \(|\alpha_0\rangle\), \(Q(\alpha)=e^{-|\alpha-\alpha_0|^2}/\pi\) — a Gaussian blob centered at \(\alpha_0\), simultaneously localizing both action and angle to uncertainty-limited width. The ring-versus-blob distinction is the phase-space portrait of the Fourier tradeoff in Section 4, with the Husimi function providing a literal (non-negative) probability picture that the Wigner function's sign changes would obscure.

`Remark 6.5 (Squeezed states: continuous interpolation between ring and blob).`
The Fock ring and coherent blob are not the only options; squeezed states of the form \(D(\alpha_0)S(\xi)|0\rangle\) (displacement followed by squeezing) produce an elliptical Husimi contour at \(\alpha_0\), with the squeeze parameter \(r=|\xi|\) controlling the eccentricity. When the ellipse is aligned radially (amplitude squeezing), action uncertainty is reduced at the expense of angle uncertainty — approaching Fock-ring character. When aligned tangentially (phase squeezing), angle uncertainty is reduced at the expense of action uncertainty — giving a better approximation to a classical orbit with definite phase. The full family, parametrized by \(r\) and the squeeze angle, interpolates continuously between the extremes of Examples 6.1 and 6.4 while saturating the Heisenberg bound \(\Delta X_1\,\Delta X_2=\hbar/2\) (for the dimensionless quadratures \(X_1,X_2\) of the oscillator mode) at every point.

`Remark 6.6 (Wigner function: sub-Planck structure beneath the Husimi portrait).`
The Husimi function is the Wigner function convolved with a Gaussian of width \(\sqrt{\hbar}\): this smoothing guarantees non-negativity (Remark 6.4) but erases interference fringes. For a Fock state \(|n\rangle\), the Wigner function \(W_n(x,p)=((-1)^n/\pi\hbar)\,L_n(2H/\hbar\omega)\,e^{-2H/\hbar\omega}\) (where \(H=(p^2+\omega^2 x^2)/2\) and \(L_n\) is a Laguerre polynomial) exhibits alternating-sign rings — structure finer than the minimal uncertainty cell \(\Delta x\,\Delta p\sim\hbar\) that the non-negative Husimi ring completely hides. The Wigner portrait thus complements Remarks 6.4–6.5: Husimi shows where the state "is" in phase space, while Wigner reveals the quantum coherences that make "where" an incomplete description.

`Remark 6.7 (Spin coherent states: the angular-momentum analog of coherent-state localization).`
The harmonic-oscillator coherent states of Example 6.1 have a direct angular-momentum counterpart. The spin coherent state \(|j,\hat n\rangle = R(\hat n)|j,j\rangle\) — obtained by rotating the highest-weight state to point along \(\hat n=(\theta_0,\phi_0)\) (Radcliffe, 1971; Perelomov, 1972) — has \(m\)-coefficients that follow a binomial distribution with mean \(\bar m=j\cos\theta_0\) and variance \(\mathrm{Var}(m)=(j/2)\sin^2\theta_0\). The expectation value of the angular-momentum vector is \(\langle\mathbf J\rangle=j\hbar\,\hat n\), with angular uncertainty \(\Delta\theta\sim 1/\sqrt{2j}\) that saturates the SU(2) Robertson bound \(\Delta J_1\,\Delta J_2\ge(\hbar/2)|\langle J_3\rangle|\). As \(j\to\infty\), the spin coherent states become delta-concentrated on the classical phase space \(S^2\) (Lieb, 1973) — the angular-momentum analog of the \(|\alpha|\to\infty\) classical limit of Example 6.1. The ring-versus-blob picture of Remark 6.4 thus extends from the flat (oscillator) phase space to the sphere: \(|j,m\rangle\) eigenstates are azimuthal rings with uniform \(\phi\), while spin coherent states are directional blobs that spread over \(\sim\sqrt{j}\) magnetic sub-levels.

# 7. Outlook (kept minimal)
The preceding witnesses illustrate the action–angle tradeoff in systems with one, two, and three action–angle pairs, and Remark 6.3 shows that EBK quantization makes the same structural point in general: the more sharply the actions are specified, the less information remains in the conjugate phases.

`Remark 7.1 (Boundary at integrability breaking).`
The action–angle framework of Sections 3–6 presupposes the existence of global action variables, hence applies exactly to integrable systems. For nearly integrable Hamiltonians, the KAM theorem guarantees persistence of most invariant tori (those with sufficiently irrational frequency ratios), on which the framework remains valid. In fully chaotic systems, the absence of conserved actions replaces the structured Fourier tradeoff with eigenstate thermalization — a more drastic delocalization where individual energy eigenstates appear thermal for local observables, with no residual action–angle structure to organize the uncertainty.

`Remark 7.2 (Spectral statistics: from Poisson to random-matrix universality).`
The action–angle structure of Sections 3–6 also organizes the energy spectrum. Berry and Tabor (1977) showed that for a generic integrable system (incommensurable classical frequencies), EBK quantization on independent tori produces energy levels whose nearest-neighbor spacings follow a Poisson distribution \(P(s)=e^{-s}\) — uncorrelated, with no level repulsion. Bohigas, Giannoni, and Schmit (1984) conjectured (and verified numerically for the Sinai billiard) that classically chaotic systems instead display the level repulsion characteristic of random matrix theory: GOE statistics for time-reversal invariant systems, GUE when time-reversal is broken. The spectral transition — Poisson to Wigner-Dyson — mirrors the phase-space transition of Remark 7.1: independent torus quantization gives way to the global eigenstate entanglement that produces both level repulsion and eigenstate thermalization.

# References

1. [TongQMLectures] David Tong, "Quantum Mechanics" (lecture notes, no DOI). OA: lecture-note PDF. (Contains \(Y_{l,m}(\theta,\phi)=P_{l,m}(\cos\theta)e^{im\phi}\) as simultaneous eigenstates of \(L^2\) and \(L_z\).)
2. [Sakurai2020] J. J. Sakurai and Jim Napolitano, *Modern Quantum Mechanics*, 3rd ed., Cambridge University Press, 2020. ISBN `978-1-108-47322-4`. (Standard treatment of angular momentum, spherical harmonics, and quantum measurement.)
3. [ZurekHabibPaz1993] W. H. Zurek, S. Habib, and J. P. Paz, "Coherent States via Decoherence," *Physical Review Letters* 70 (1993), 1187–1190. DOI `10.1103/PhysRevLett.70.1187`. (Shows coherent states minimize entropy production under environmental coupling, emerging as preferred pointer states.)
