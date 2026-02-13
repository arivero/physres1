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

`Remark 2.1 (Number–phase pair: the oscillator counterpart).`
The same structure appears for the harmonic-oscillator number–phase pair \((N,\theta)\). The number operator \(N=\hat a^\dagger\hat a\) has non-negative integer spectrum, and the oscillation phase \(\theta\) is periodic — the same mathematical setting as \((L_z,\phi)\). The Susskind–Glogower operator \(\hat E_-=\sum_{n=0}^\infty|n\rangle\langle n+1|=\hat a\,(N+1)^{-1/2}\) (Susskind and Glogower, 1964) plays the role of \(E=e^{i\phi}\): it satisfies \([N,\hat E_-]=-\hat E_-\) (lowering \(n\) by one) and its adjoint \(\hat E_+\) satisfies \([N,\hat E_+]=+\hat E_+\). However, \(\hat E_+\hat E_-=I-|0\rangle\langle 0|\): the vacuum projection spoils exact unitarity because the spectrum of \(N\) is bounded below, and there is no state below \(|0\rangle\) to shift into. This is the Fock-space manifestation of the same obstruction that prevents a self-adjoint angle operator on the circle. The consequence: a Fock state \(|n\rangle\) has a completely uniform phase distribution (the ring of Remark 6.4), just as an \(L_z\) eigenstate has uniform \(\phi\) (Section 3), and localizing the oscillator phase requires a broad superposition over number states — exactly the coherent-state construction of Example 6.1.

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

`Remark 5.3 (Energy–time uncertainty: the Mandelstam–Tamm temporal analog).`
The action–angle tradeoff of Sections 3–4 has a temporal counterpart that avoids the well-known difficulty of defining a self-adjoint time operator (Pauli's theorem for bounded-below Hamiltonians). Mandelstam and Tamm (1945) define the "evolution time" of an observable \(A\) as \(\Delta t_A:=\Delta A/|d\langle A\rangle/dt|\) — the time for \(\langle A\rangle\) to change by one standard deviation. The Robertson inequality for \((H,A)\) then gives \(\Delta E\cdot\Delta t_A\ge\hbar/2\): sharp energy implies slow evolution of every observable, just as sharp \(L_z\) implies uniform \(\phi\) (Section 3). An energy eigenstate (\(\Delta E=0\)) has \(d\langle A\rangle/dt=0\) for all \(A\) — a completely static state, the temporal version of the azimuthally uniform \(L_z\) eigenstate. Conversely, rapid evolution requires a broad energy superposition, just as angular localization requires many \(m\)-modes (Section 4). For the coherent state of Example 6.1 below, this bound is saturated: \(\Delta E\cdot\Delta t_x=\hbar/2\), confirming the coherent state as a minimum-uncertainty state for both the spatial and temporal versions of the tradeoff.

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

`Remark 6.7 (Quantum state tomography: reconstructing the phase-space portrait).`
The Husimi and Wigner functions of Remarks 6.4–6.6 are not merely theoretical constructs: they can be reconstructed from experimental data via quantum state tomography. For an oscillator mode, measuring the rotated quadrature \(X_\theta=x\cos\theta+p\sin\theta\) at angle \(\theta\) yields a marginal distribution \(P_\theta(s)\) that is a Radon projection of the Wigner function. Collecting \(P_\theta\) for all \(\theta\in[0,\pi)\) and inverting the Radon transform (filtered back-projection) recovers the full \(W(x,p)\). This was first demonstrated by Smithey, Beck, Raymer, and Faridani (1993), who reconstructed the Wigner function of a squeezed vacuum state using optical homodyne detection, where the local oscillator phase selects the measured quadrature angle. The ring-versus-blob distinction of Remark 6.4 is thus directly observable: Fock-state tomograms show the uniform-phase ring, while coherent-state tomograms show the localized Gaussian blob — the action-angle tradeoff of Sections 3–4 made experimentally visible.

`Remark 6.8 (Spin coherent states: the angular-momentum analog of coherent-state localization).`
The harmonic-oscillator coherent states of Example 6.1 have a direct angular-momentum counterpart. The spin coherent state \(|j,\hat n\rangle = R(\hat n)|j,j\rangle\) — obtained by rotating the highest-weight state to point along \(\hat n=(\theta_0,\phi_0)\) (Radcliffe, 1971; Perelomov, 1972) — has \(m\)-coefficients that follow a binomial distribution with mean \(\bar m=j\cos\theta_0\) and variance \(\mathrm{Var}(m)=(j/2)\sin^2\theta_0\). The expectation value of the angular-momentum vector is \(\langle\mathbf J\rangle=j\hbar\,\hat n\), with angular uncertainty \(\Delta\theta\sim 1/\sqrt{2j}\) that saturates the SU(2) Robertson bound \(\Delta J_1\,\Delta J_2\ge(\hbar/2)|\langle J_3\rangle|\). As \(j\to\infty\), the spin coherent states become delta-concentrated on the classical phase space \(S^2\) (Lieb, 1973) — the angular-momentum analog of the \(|\alpha|\to\infty\) classical limit of Example 6.1. The ring-versus-blob picture of Remark 6.4 thus extends from the flat (oscillator) phase space to the sphere: \(|j,m\rangle\) eigenstates are azimuthal rings with uniform \(\phi\), while spin coherent states are directional blobs that spread over \(\sim\sqrt{j}\) magnetic sub-levels.

`Remark 6.9 (Bargmann representation: action–angle duality made algebraic).`
The Bargmann–Segal representation (Bargmann, 1961) maps the oscillator Hilbert space to the space of holomorphic functions on \(\mathbb{C}\) with Gaussian measure \(d\mu=\pi^{-1}e^{-|z|^2}d^2z\). Under this map, Fock states become monomials — \(|n\rangle\mapsto z^n/\sqrt{n!}\) — whose rotational symmetry \(|z^n|^2=|z|^{2n}\) reflects the uniform phase distribution of Remark 6.4's ring. Coherent states become reproducing kernels \(K_\alpha(z)=e^{\bar\alpha z}\), which extract the value of a holomorphic function at \(\alpha\) — the algebraic expression of "evaluation at a phase-space point," i.e., maximal localization. Creation and annihilation become multiplication and differentiation: \(\hat a^\dagger\mapsto z\), \(\hat a\mapsto d/dz\). The Husimi function of Remark 6.4 is then the squared modulus of the Bargmann representative (weighted by the Gaussian measure), so the ring-versus-blob distinction of Remarks 6.4–6.8 is literally monomials versus peaked exponentials. For spin-\(j\) systems (Schwinger's oscillator construction), the Bargmann space truncates to polynomials of degree \(\le 2j\), and spin coherent states become evaluation points on \(\mathbb{CP}^1\cong S^2\) — the finite-dimensional counterpart of the full oscillator duality.

# 7. Outlook (kept minimal)
The preceding witnesses illustrate the action–angle tradeoff in systems with one, two, and three action–angle pairs, and Remark 6.3 shows that EBK quantization makes the same structural point in general: the more sharply the actions are specified, the less information remains in the conjugate phases.

`Remark 7.1 (Boundary at integrability breaking).`
The action–angle framework of Sections 3–6 presupposes the existence of global action variables, hence applies exactly to integrable systems. For nearly integrable Hamiltonians, the KAM theorem guarantees persistence of most invariant tori (those with sufficiently irrational frequency ratios), on which the framework remains valid. In fully chaotic systems, the absence of conserved actions replaces the structured Fourier tradeoff with eigenstate thermalization — a more drastic delocalization where individual energy eigenstates appear thermal for local observables, with no residual action–angle structure to organize the uncertainty.

`Remark 7.2 (Spectral statistics: from Poisson to random-matrix universality).`
The action–angle structure of Sections 3–6 also organizes the energy spectrum. Berry and Tabor (1977) showed that for a generic integrable system (incommensurable classical frequencies), EBK quantization on independent tori produces energy levels whose nearest-neighbor spacings follow a Poisson distribution \(P(s)=e^{-s}\) — uncorrelated, with no level repulsion. Bohigas, Giannoni, and Schmit (1984) conjectured (and verified numerically for the Sinai billiard) that classically chaotic systems instead display the level repulsion characteristic of random matrix theory: GOE statistics for time-reversal invariant systems, GUE when time-reversal is broken. The spectral transition — Poisson to Wigner-Dyson — mirrors the phase-space transition of Remark 7.1: independent torus quantization gives way to the global eigenstate entanglement that produces both level repulsion and eigenstate thermalization.

`Remark 7.3 (Ehrenfest time: temporal boundary of the classical orbit picture).`
The Ehrenfest theorem — \(d\langle x\rangle/dt=\langle p\rangle/m\), \(d\langle p\rangle/dt=-\langle V'(x)\rangle\) — gives exact classical dynamics only when the potential is at most quadratic (so that \(\langle V'(x)\rangle=V'(\langle x\rangle)\)). For anharmonic systems, the wavepacket's finite width introduces corrections that grow with time, and the classical-orbit picture breaks down after the Ehrenfest time \(t_E\). For integrable systems, the characteristic quantum timescales — both the dispersal time and the revival time \(t_{\mathrm{rev}}\sim 2\pi\hbar/|d^2E/dm^2|\) of Remark 5.1 — are algebraic in \(\hbar\). For classically chaotic systems with maximal Lyapunov exponent \(\lambda\), exponential trajectory divergence compresses this to \(t_E\sim(1/\lambda)\ln(1/\hbar)\) — logarithmic in \(1/\hbar\), hence far shorter (Berman and Zaslavsky, 1978). This dramatic contrast — algebraic versus logarithmic — is the temporal counterpart of the phase-space and spectral transitions described in Remarks 7.1 and 7.2: the coherent packets of Section 5 remain classical for polynomially long times in integrable systems, but only logarithmically long in chaotic ones.

`Remark 7.4 (Gutzwiller trace formula: periodic orbits as the non-integrable spectral bridge).`
The EBK quantization of Remark 6.3 connects eigenvalues to classical tori in integrable systems. For non-integrable (chaotic) systems, invariant tori do not exist, and the Gutzwiller trace formula (1971) replaces them with isolated periodic orbits: the oscillatory part of the density of states is \(g_{\mathrm{osc}}(E)\approx\sum_\gamma A_\gamma\cos(S_\gamma(E)/\hbar-\mu_\gamma\pi/2)\), where the sum runs over all periodic orbits \(\gamma\) (primitive and repeated), \(S_\gamma=\oint_\gamma p\cdot dq\) is the classical action, \(\mu_\gamma\) is the Maslov index, and the amplitude \(A_\gamma\propto T_\gamma/|\det(M_\gamma-I)|^{1/2}\) involves the orbit period \(T_\gamma\) and the stability determinant of the monodromy matrix \(M_\gamma\) restricted to the transverse directions. For marginally stable orbits (\(M_\gamma\) has eigenvalue 1), this amplitude diverges — these are the torus orbits of integrable systems, and the trace formula degenerates to EBK quantization. This formula also underlies the spectral statistics of Remark 7.2: the Poisson statistics of integrable systems follow from the incommensurate action phases on independent tori, while the random-matrix (GOE/GUE) statistics of chaotic systems emerge from the exponentially proliferating periodic orbits (their number grows as \(\sim e^{hT}/T\) with topological entropy \(h\)) through semiclassical sum rules (Berry, 1985). The Gutzwiller formula is generically asymptotic (\(\hbar\to 0\)), but for surfaces of constant negative curvature, the Selberg trace formula provides an exact identity between the Laplacian spectrum and closed geodesics.

`Remark 7.5 (Geometric quantization: the action-angle framework made systematic).`
The action-angle structure underlying Sections 2–6 has a systematic mathematical home in geometric quantization (Kostant and Souriau, 1970). Given a symplectic manifold \((M,\omega)\), the prequantization condition requires \([\omega/(2\pi\hbar)]\) to be an integral cohomology class — precisely the EBK quantization condition of Remark 6.3, expressed as integrality of the Chern class of a line bundle \(L\to M\). A polarization — a choice of Lagrangian foliation — then reduces the prequantum Hilbert space to the physical one. For integrable systems with action-angle coordinates \((I,\theta)\), the real (action) polarization gives wave functions depending on \(I\) alone, yielding the number/Fock states of Example 6.1 — the "rings" of Remark 6.4 — while the complex (Kähler) polarization gives holomorphic wave functions, recovering the Bargmann representation of Remark 6.9 — the "blobs." The metaplectic correction (Blattner, Kostant, Sternberg) accounts for the half-density structure of the cornerstone manuscript, adding the \(\tfrac12\hbar\omega\) zero-point energy that naive geometric quantization misses. For spin-\(j\) systems, geometric quantization of \(S^2\cong\mathbb{CP}^1\) with symplectic form proportional to the area form produces the spin coherent states of Remark 6.8, with the prequantization condition forcing \(2j\in\mathbb{Z}\) — the integrality of spin as a topological constraint.

`Remark 7.6 (Coherent-state path integral: the action-angle structure as a path integral).`
The coherent states of Example 6.1 provide not only a phase-space portrait (Remarks 6.4–6.9) but also a path integral formulation that makes the action-angle structure dynamical. The resolution of identity \(1=\pi^{-1}\int|\alpha\rangle\langle\alpha|\,d^2\alpha\) allows writing the quantum propagator as a functional integral over phase-space trajectories: \(K=\int\mathcal D^2\alpha\;\exp(iS_{\mathrm{cs}}/\hbar)\), where the coherent-state action is \(S_{\mathrm{cs}}=\int dt\,[i\hbar\,\dot\alpha^*\alpha - H(\alpha^*,\alpha)]\). The kinetic term \(i\hbar\,\dot\alpha^*\alpha\) is the symplectic one-form \(p\,dq\) written in the complex coordinate \(\alpha=(q+ip)/\sqrt{2\hbar}\) — the same geometric connection whose holonomy gives the Berry phase (Remark 3.5 of the companion uncuttable note). In the semiclassical limit, stationary phase selects trajectories satisfying Hamilton's equations in complex form \(i\hbar\,\dot\alpha=\partial H/\partial\alpha^*\); fluctuations around these yield the semiclassical corrections that connect to the Gutzwiller trace formula of Remark 7.4. For spin systems, replacing oscillator coherent states by spin coherent states (Remark 6.8) gives a path integral on \(S^2\) with a Wess–Zumino topological term that encodes the spin quantum number \(j\) — the path-integral expression of the prequantization integrality condition in Remark 7.5.

# References

1. [TongQMLectures] David Tong, "Quantum Mechanics" (lecture notes, no DOI). OA: lecture-note PDF. (Contains \(Y_{l,m}(\theta,\phi)=P_{l,m}(\cos\theta)e^{im\phi}\) as simultaneous eigenstates of \(L^2\) and \(L_z\).)
2. [Sakurai2020] J. J. Sakurai and Jim Napolitano, *Modern Quantum Mechanics*, 3rd ed., Cambridge University Press, 2020. ISBN `978-1-108-47322-4`. (Standard treatment of angular momentum, spherical harmonics, and quantum measurement.)
3. [ZurekHabibPaz1993] W. H. Zurek, S. Habib, and J. P. Paz, "Coherent States via Decoherence," *Physical Review Letters* 70 (1993), 1187–1190. DOI `10.1103/PhysRevLett.70.1187`. (Shows coherent states minimize entropy production under environmental coupling, emerging as preferred pointer states.)
4. [Bargmann1961] Valentine Bargmann, "On a Hilbert space of analytic functions and an associated integral transform, Part I," *Communications on Pure and Applied Mathematics* 14 (1961), 187–214. DOI `10.1002/cpa.3160140303`. (Bargmann–Segal holomorphic representation; used in Remark 6.9.)
5. [Perelomov1972] A. M. Perelomov, "Coherent states for arbitrary Lie group," *Communications in Mathematical Physics* 26 (1972), 222–236. DOI `10.1007/BF01645091`. (Generalized coherent states including spin coherent states; used in Remark 6.8.)
6. [MandelstamTamm1945] L. I. Mandelstam and I. E. Tamm, "The uncertainty relation between energy and time in non-relativistic quantum mechanics," *Journal of Physics (USSR)* 9 (1945), 249–254. (Energy–time uncertainty relation; used in Remark 5.3.)
7. [BerryTabor1977] M. V. Berry and M. Tabor, "Level clustering in the regular spectrum," *Proceedings of the Royal Society A* 356 (1977), 375–394. DOI `10.1098/rspa.1977.0140`. (Poisson statistics for integrable systems; used in Remark 7.2.)
8. [SusskindGlogower1964] Leonard Susskind and Jonathan Glogower, "Quantum mechanical phase and time operator," *Physics* 1 (1964), 49–61. (Number–phase operators; used in Remark 2.1.)
9. [Radcliffe1971] J. M. Radcliffe, "Some properties of coherent spin states," *Journal of Physics A* 4 (1971), 313–323. DOI `10.1088/0305-4470/4/3/009`. (Spin coherent states on S²; used in Remark 6.8.)
10. [Lieb1973] Elliott H. Lieb, "The classical limit of quantum spin systems," *Communications in Mathematical Physics* 31 (1973), 327–340. DOI `10.1007/BF01646493`. (Classical limit of spin coherent states; used in Remark 6.8.)
11. [SmitheyBeckRaymerFaridani1993] D. T. Smithey, M. Beck, M. G. Raymer, and A. Faridani, "Measurement of the Wigner distribution and the density matrix of a light mode using optical homodyne tomography: Application to squeezed states and the vacuum," *Physical Review Letters* 70 (1993), 1244–1247. DOI `10.1103/PhysRevLett.70.1244`. (First optical homodyne tomography; used in Remark 6.7.)
12. [BermanZaslavsky1978] G. P. Berman and G. M. Zaslavsky, "Condition of stochasticity in quantum non-linear systems," *Physica A* 91 (1978), 76–94. DOI `10.1016/0378-4371(78)90059-5`. (Ehrenfest time logarithmic scaling; used in Remark 7.3.)
13. [Gutzwiller1971] Martin C. Gutzwiller, "Periodic orbits and classical quantization conditions," *Journal of Mathematical Physics* 12 (1971), 343–358. DOI `10.1063/1.1665596`. (Gutzwiller trace formula; used in Remark 7.4.)
14. [Berry1985] M. V. Berry, "Semiclassical theory of spectral rigidity," *Proceedings of the Royal Society A* 400 (1985), 229–251. DOI `10.1098/rspa.1985.0078`. (Periodic-orbit spectral sum rules; used in Remark 7.4.)
15. [BohigasGiannoniSchmit1984] O. Bohigas, M. J. Giannoni, and C. Schmit, "Characterization of chaotic quantum spectra and universality of level fluctuation laws," *Physical Review Letters* 52 (1984), 1–4. DOI `10.1103/PhysRevLett.52.1`. (BGS conjecture: chaotic spectra follow random-matrix statistics; used in Remark 7.2.)
16. [KostantSouriau1970] Bertram Kostant, "Quantization and unitary representations," *Lecture Notes in Mathematics* 170 (1970), 87–208, Springer; Jean-Marie Souriau, *Structure des systèmes dynamiques*, Dunod, 1970. (Geometric quantization foundations; used in Remark 7.5.)
