---
title: "From Newton to the Path Integral"
author: "A. Rivero and A.I.Scaffold"
date: "2026"
abstract: |
  This paper develops a single structural thesis across classical and quantum theory: physically meaningful laws arise as controlled limits of composable local refinements. We begin with Newton’s polygonal approximation of central-force motion and its limit to continuous dynamics, then re-express the same logic in modern variational form through additive action functionals. We treat the path integral as a composition law over refined time slices, not as an isolated quantum postulate, and we frame deformation quantization and renormalization as two mathematically distinct control mechanisms for limit consistency. The narrative is constructive: each stage retains the previous one as a limiting or compatibility condition rather than replacing it. Within this architecture we reserve a dedicated role for point-like (Dirac-supported) probes in weak formulations of the action principle, emphasizing where they are mathematically valid and where regularization is mandatory. The result is a staged program from Newtonian limit methods to quantum amplitudes in which the classical equations are recovered as stationary limits of a broader compositional framework.
---

# 1. Introduction
The historical and technical problem addressed here is not merely "how to quantize," but "how to define a stable continuum theory from iterative refinement." The paper therefore treats Newtonian mechanics, action principles, path integration, deformation quantization, and renormalization as parts of one continuity problem.

The first anchor is Newton’s geometric method in central-force motion: replace a curve by a sequence of short segments, impose a local update rule, and pass to a limit while controlling what is meant by "vanishing" quantities. In modern language, the key object is not a smallest geometric piece but a refinement procedure with invariant content [Newton1687]. (A companion note, "Uncuttable as Controlled Refinement," develops this distinction: "uncuttable" means defined only via a refinement limit, not indivisible in the ontological sense.)

The second anchor is the action formulation. Action is additive under temporal partitioning, and that additivity is exactly the algebraic structure needed to compare coarse and fine descriptions. This creates the bridge to quantum composition: if local contributions compose multiplicatively while the underlying functional is additive, exponential weighting is structurally natural [Dirac1933] [Feynman1948].^[The additivity of the action under temporal partition forces the Lagrangian to be local, up to boundary terms: cross-temporal correlations would break \(S[\gamma_{if}]=S[\gamma_{im}]+S[\gamma_{mf}]\) for generic paths, so no cross-time kernel survives. Locality of \(L\) is a Stage 1 forcing result (analogous to P4.2's structural forcing at Stage 2), though weaker — it constrains form, not content. With Ostrogradsky stability, \(L=L(t,q,\dot{q})\) follows.]

The long-standing foundational tension can be phrased as a Zeno-style refinement paradox: a refinement description is an *infinite-limit* construction, and the limit is not automatically unique or even defined once the refined objects become singular (Dirac-supported probes, distributional derivatives) or once intermediate quantities diverge. Berkeley's critique of Newton's fluxions — the "ghosts of departed quantities" objection [Berkeley1734Analyst] — is an early articulation of this tension. Classical mechanics often hides it by treating "send the refinement parameter to zero" as an axiomatically legitimate operation. The program pursued here is instead: keep refinement explicit, isolate where limit-taking needs extra control, and treat **quantization** and **renormalization** as two distinct mechanisms for making refined composition stable when the naive Newtonian limit is not rigorous as written.

`Heuristic H0.2 (Concrete failure modes of naive refinement-to-zero).`
Three recurring obstructions that make "refine \(\to 0\)" nontrivial in practice are:
1. **Singular probes:** point-supported variations and corners/impulses force distributional weak forms (mollifiers and contact terms).
2. **Non-uniqueness:** refinement/composition can admit multiple classically equivalent but quantum-distinct schemes (ordering/discretization choices), requiring an explicit equivalence or control map. (Minimal witness: time-slicing \(H=pq\) can yield \(-\hat p\hat q\) vs \(-\hat q\hat p\), differing by \(O(\hbar)\) as operators; requiring symmetry of the generator — the minimal condition for self-adjointness, itself needed for unitarity — selects the midpoint (half-density) convention; see Remark D4.1c.)
3. **Divergence:** some refinement limits do not converge without subtraction/parameter flow (renormalization). (Toy witness: the derivative exists only after subtracting a \(1/\varepsilon\) divergence in the difference quotient.)
This manuscript treats these as limit-control problems rather than as postulates about "nature at the smallest scale."

`Heuristic H0.2a (No Lebesgue measure on path space).`
In infinite-dimensional spaces there is no nontrivial translation-invariant \(\sigma\)-finite Borel measure (no Lebesgue/Haar measure) [Velhinho2017InfDimMeasure], so the formal symbol \(Dq\) in a path integral cannot be interpreted as an ordinary "Lebesgue measure on trajectories." Therefore the slogan "refine the time slicing, integrate over paths, and send \(\Delta t\to0\)" is not a raw Newtonian limit statement but a definition-by-refinement that must specify normalization and, when singularities are present, regulator/subtraction rules.

`Heuristic H0.3 (Constants as control parameters for compatibility limits).`
In this program, \(\hbar\), \(c\), and \(G\) can be read as control parameters for three distinct compatibilities: \(\hbar\to0\) recovers classical stationarity from oscillatory composition, \(c\to\infty\) recovers Galilean/Newtonian kinematics from Lorentz-compatible refinement, and \(G\to0\) switches off geometric backreaction (with \(\hbar,c,G\) together defining the Planck scale where quantum and gravitational refinement controls meet).
`Derivation D0.2` below gives a concrete example of a \(c\to\infty\) passage requiring an explicit subtraction convention.

The third anchor is methodological. In this manuscript, deformation quantization and renormalization are not presented as detached specialist topics. They are two ways to control limits:
1. Deformation quantization controls the classical-to-quantum passage through algebraic deformation and recovery of Poisson structure in the small-parameter limit [Landsman1998] [Connes1994].
2. Renormalization controls divergent refinement procedures by regulator-dependent intermediate steps and regulator-independent observables [ConnesKreimer2000].

Section 2 fixes the formal vocabulary and claim taxonomy used in later sections. It also narrows one foundational ambiguity:
the paper does not assume that continuum limits are ontological statements about nature. It assumes only that they are operational definitions of stable predictive objects. This narrowed statement will be stress-tested in later sections.

**Contributions (what is new here).**
1. A refinement/composition reading of the Newton \(\to\) action \(\to\) kernel chain in which each stage is retained as a compatibility condition, not replaced.
2. An intrinsic half-density formulation of the composition law for propagators, separating coordinate-free kernel composition from scalarization conventions.
3. A semigroup-closure derivation showing the short-time normalization exponent \(t^{-d/2}\) is forced by composition (the "square-root Jacobian").
4. A necessity theorem (Proposition P4.2) showing that an action-dimensional scale \(\kappa=\hbar\) is forced by composition (the single master axiom), with the identity limit and dimensional homogeneity derivable from composition combined with the physical setup (action-based dynamics on \(\mathbb{R}^d\) with mass \(m\)). The exponential weight form is derived rather than assumed; extensions to curved, interacting, and Lorentzian settings are discussed.
5. A refinement-compatibility framing of renormalization in which RG invariance is the consistency condition demanded by divergent refinement limits.
6. A fully explicit "RG appears before QFT" computation (2D delta/contact interaction) included as an appendix-level witness.

# 2. Notation and Claim Taxonomy
**Dimension bookkeeping.**
Throughout Sections 2–7, \(d\) denotes the dimension of the manifold being integrated over in the composition law (typically configuration-space/spatial dimension in nonrelativistic kernels). When we write field-theory-style spacetime integrals, we will denote spacetime dimension by \(D\) to avoid conflating it with the composition-variable dimension.

## 2.1 Core Objects
Let \(q:[t_i,t_f]\to \mathbb{R}^d\) be a configuration-space trajectory and \(\mathcal{L}(q,\dot q,t)\) a Lagrangian density. Define the action:

$$
S[q] = \int_{t_i}^{t_f} \mathcal{L}(q,\dot q,t)\,dt.
$$

For a partition \(t_i=t_0< t_1<\cdots<t_N=t_f\) with \(\Delta t_k=t_{k+1}-t_k\), define the discrete action functional:

$$
S_N[q] = \sum_{k=0}^{N-1} \mathcal{L}\!\left(q_k,\frac{q_{k+1}-q_k}{\Delta t_k},t_k\right)\Delta t_k.
$$

For planar central motion \(q=(r,\theta)\), define areal velocity and angular momentum:

$$
\dot A = \frac{1}{2}r^2\dot\theta,\qquad
L_{\mathrm{ang}} = m r^2\dot\theta = 2m\dot A.
$$

These definitions are used as the Newtonian-to-variational bridge in Section 3 and Section 4.

## 2.2 Weak-Form Preliminaries for Point-Like Probes
Let \(\eta\in C_c^\infty((t_i,t_f);\mathbb{R}^d)\) be a smooth compactly supported test variation. The first variation is written
\(\delta S[q;\eta]\), and stationarity means \(\delta S[q;\eta]=0\) for all admissible \(\eta\).

To model point-supported probes later, introduce a mollifier family \(\rho_\varepsilon\) with
\(\rho_\varepsilon \rightharpoonup \delta\) in distributions as \(\varepsilon\to 0^+\). Any use of Dirac-supported variations in this manuscript is understood as a mollified limit unless explicitly labeled heuristic.

## 2.3 Claim Taxonomy
Every substantive claim is marked by one of:
1. `Proposition`: statement intended as mathematically valid under explicit assumptions.
2. `Derivation`: explicit calculation from stated premises.
3. `Heuristic`: physically motivated bridge that is not presented as full proof.

## 2.4 Seed Claims for the Program
`Proposition P0.1 (Additive refinement structure).`
Given a partition of \([t_i,t_f]\), the discrete action \(S_N\) is additive over concatenated subintervals by construction. Therefore action is a natural candidate for refinement comparison.

`Derivation D0.1 (Composition-compatible exponential form).`
Suppose a weight map \(W\) on time-sliced paths satisfies:
1. \(W[\gamma_1\!\circ\!\gamma_2]=W[\gamma_1]W[\gamma_2]\) for composable segments.
2. \(\log W\) is local in the slice contributions.
3. The corresponding additive functional is proportional to \(S_N\) in the refinement limit.

Then there exists a scale \(\kappa\) and constant \(c_0\) such that, up to normalization,
\(W[\gamma]\propto \exp(c_0 S[\gamma]/\kappa)\).
Choosing \(c_0=i\) and \(\kappa=\hbar\) recovers the standard oscillatory quantum weighting form.

`Heuristic H0.1 (Classical recovery as concentration).`
When the phase scale is small relative to action variation, dominant contributions concentrate near stationary-action trajectories. This is the structural claim later made precise through stationary-phase analysis.

`Derivation D0.2 (Nonrelativistic limit as a controlled \(c\to\infty\) subtraction).`
Consider the relativistic free-particle action written with an explicit speed-of-light parameter:
\[
S_{\mathrm{rel}}[q]
=-mc^2\int_{t_i}^{t_f} dt\;\sqrt{1-\frac{\|\dot q(t)\|^2}{c^2}}.
\]
For \(\|\dot q\|\ll c\), expand the square root:
\[
S_{\mathrm{rel}}[q]
=\int_{t_i}^{t_f} dt\left(-mc^2+\frac12 m\|\dot q(t)\|^2+O(c^{-2})\right).
\]
The term \(-mc^2(t_f-t_i)\) diverges as \(c\to\infty\). Classically it is inert (adding a constant to \(\mathcal L\) does not change the Euler-Lagrange equations), so one may subtract it as an allowed additive counterterm to obtain a finite \(c\to\infty\) limit:
the Newtonian kinetic action \(\int \frac12 m\|\dot q\|^2 dt\) plus higher-order relativistic corrections.
In quantum amplitudes, the same subtraction corresponds to an overall phase \(e^{-imc^2(t_f-t_i)/\hbar}\).
This remark is at the particle-mechanics level; field-theory and gravity effects of constant terms (vacuum energy) are a separate issue not addressed here.

## 2.5 Scope Boundary Established
This section fixes notation and methodological boundaries:
1. Historical statements are used only as source-anchored motivation.
2. Mathematical validity requires explicit assumptions and, for singular objects, explicit regularization.
3. Quantum and QFT-level statements are introduced only after the composition law and refinement language are fixed.

> **Reader map (compatibilities; where to look).**
> - **Partition compatibility** (\(\mathcal C_t\)): temporal refinement/composition (time slicing). See Sections 3--4.
> - **Representation compatibility** (\(\mathcal Q_\hbar\)): ordering/discretization choices with the same \(\hbar\to0\) limit. See Sections 6--7.
> - **Scale compatibility** (\(\mathcal R_\Lambda\)): coarse/fine scale comparison after parameter running (RG). See Section 8 (and Appendix 10.5 for an explicit witness).
>
> Symbol definitions and formal summary: Appendix 10.3.

Transition to Section 3:
with notation fixed, the next section derives the Newtonian area-law refinement argument in modern symbols and links it to \(L_{\mathrm{ang}}\) conservation.

# 3. Newtonian Refinement and Area Law
## 3.1 Source-Critical Framing
In Book I, Proposition I of the *Principia*, Newton proves that a centripetal forcing rule implies equal areas swept in equal times by the radius vector. The historical proof is polygonal and limit-based: one constructs a piecewise-linear trajectory with impulses directed to a fixed center, then passes to a continuous curve by refinement [Newton1687].

This section uses that structure directly and only then translates to modern vector notation. Source-critically, the statements below distinguish:
1. Newton’s geometric argument about polygons and limits.
2. A modern reformulation via torque and angular momentum.

The reformulation is mathematically equivalent under the same assumptions, but it is an interpretive translation, not a verbatim historical rendering.

## 3.2 Discrete Refinement Model
Fix equal time steps \(\Delta t>0\), times \(t_k=t_0+k\Delta t\), and a fixed center \(O\). Let \(\mathbf r_k\) be the position vector at \(t_k\). The stepwise model is:
1. Free inertial drift between \(t_k\) and \(t_{k+1}\).
2. Instantaneous impulse at each vertex \(t_k\), directed along \(\mathbf r_k\) (centripetal/central).

Let \(\mathbf v_k^{-}\) be velocity just before the impulse at \(t_k\), and \(\mathbf v_k^{+}\) just after. The impulse condition is

$$
m\big(\mathbf v_k^{+}-\mathbf v_k^{-}\big)=J_k\,\hat{\mathbf r}_k,
\qquad \hat{\mathbf r}_k=\frac{\mathbf r_k}{\|\mathbf r_k\|}.
$$

Drift then gives

$$
\mathbf r_{k+1}=\mathbf r_k+\mathbf v_k^{+}\Delta t,
\qquad
\mathbf v_{k+1}^{-}=\mathbf v_k^{+}.
$$

`Derivation D1.1 (Finite-step angular momentum invariance).`
Define \( \mathbf L_k^{-}=m\,\mathbf r_k\times \mathbf v_k^{-}\), \( \mathbf L_k^{+}=m\,\mathbf r_k\times \mathbf v_k^{+}\).

At impulse:

$$
\mathbf L_k^{+}-\mathbf L_k^{-}
=m\,\mathbf r_k\times(\mathbf v_k^{+}-\mathbf v_k^{-})
=\mathbf r_k\times (J_k\hat{\mathbf r}_k)=\mathbf 0.
$$

During drift:

$$
\mathbf L_{k+1}^{-}
=m\,\mathbf r_{k+1}\times \mathbf v_{k+1}^{-}
=m(\mathbf r_k+\mathbf v_k^{+}\Delta t)\times \mathbf v_k^{+}
=m\,\mathbf r_k\times \mathbf v_k^{+}
=\mathbf L_k^{+}.
$$

Hence \( \mathbf L_{k+1}^{-}=\mathbf L_k^{-}\): angular momentum is exactly conserved at every finite step in this refinement model.

`Derivation D1.2 (Equal areas in equal times, discrete form).`
The swept area in step \(k\) is the triangle area

$$
\Delta A_k
=\frac12\left\|\mathbf r_k\times(\mathbf r_{k+1}-\mathbf r_k)\right\|
=\frac12\left\|\mathbf r_k\times \mathbf v_k^{+}\right\|\Delta t
=\frac{\|\mathbf L\|}{2m}\Delta t.
$$

Therefore for fixed \(\Delta t\), \(\Delta A_k\) is independent of \(k\). This is the equal-areas statement at finite polygonal level.

`Derivation D1.2a (Numerical witness for the finite-step area law).`
Consider an inverse-square force with \(GM=m=1\). Place a body at \(\mathbf r_0=(1,0)\) with velocity \(\mathbf v_0=(0,0.8)\) — this is apoapsis of an ellipse with eccentricity \(e=9/25=0.36\) and semi-major axis \(a\approx 0.735\). The angular momentum is \(L=0.8\).

Running the kick-drift scheme of Section 3.2 with \(N=12\) equal steps over one period (\(T\approx 3.96\)): every triangular area \(\Delta A_k\) equals \(L\,\Delta t/(2m)\approx 0.132\) exactly in the algebraic sense of D1.1–D1.2, despite the radial distance varying by a factor \(r_{\mathrm{apo}}/r_{\mathrm{peri}}=(1+e)/(1-e)=17/8\approx 2.1\) between apoapsis and periapsis. The equality is not a numerical coincidence or a continuum approximation — it is an algebraic identity at each finite step, holding for any central force. Only the trajectory shape converges under refinement; the swept-area invariant is exact at every \(N\).

## 3.3 Continuum Passage and Central-Force Generality
`Proposition P1.1 (Refinement limit of areal velocity).`
If \(\max_k \Delta t_k\to 0\) under consistent refinement, the finite-step law above yields

$$
\frac{dA}{dt}=\frac{\|\mathbf L\|}{2m},
$$

for the limiting trajectory whenever the limit exists in the standard differentiable sense.

For a smooth central force \(\mathbf F(\mathbf r)=f(r)\hat{\mathbf r}\), this same invariant follows from torque:

$$
\frac{d\mathbf L}{dt}=\mathbf r\times \mathbf F=\mathbf 0.
$$

So the areal law is independent of the inverse-power index \(n\) in \(\mathbf F=-(K/r^n)\hat{\mathbf r}\): \(n\) changes radial dynamics and orbit families, but not the areal-velocity conservation mechanism itself. A companion note on relativistic central orbits analyzes Lorentz-compatible kinematics in detail.

`Remark P1.1a (Asymptotic threshold bridge: Newton \(3\) vs SR \(2\)).`
For attractive power-law \(F(r)=K/r^q\), fixed angular momentum \(L\), and high-momentum kinetic asymptotic \(E_{\mathrm{kin}}(p)\sim a p^\nu\), one has \(p\sim L/r\) as \(r\to0\). Hence the centrifugal barrier scales as \(r^{-\nu}\) while the attraction scales as \(r^{-(q-1)}\), giving threshold \(q_{\mathrm{crit}}=\nu+1\). This recovers the Newtonian/SR shift (\(\nu=2\Rightarrow q_{\mathrm{crit}}=3\), \(\nu=1\Rightarrow q_{\mathrm{crit}}=2\)) in one line. The criterion is a fixed-\(L\), small-\(r\) asymptotic statement and is distinct from the separate inverse-square dimensional identity mechanism (where \(K/L\) has velocity units and yields \(v=K/L\) in SR circular analysis).

`Heuristic H1.1 (Impulse-to-continuous interpretation).`
The impulse model is a refinement scaffold for continuous forcing, not a literal claim that nature acts by discrete kicks. Its value is structural: invariants proven exactly at finite step survive controlled refinement.

`Remark H1.1a (Convergence of the polygonal construction).`
The passage from discrete polygonal orbits to a continuous trajectory is non-trivial: it depends on Newton's Lemma 3 (Book I, Section 1 of the *Principia*) and has been the subject of a scholarly debate. Nauenberg [Nauenberg2003KeplerArea] gives a modern reconstruction showing the polygonal construction has a well-defined continuum limit parameterizing a continuous planar curve; Pourciau [Pourciau2003] critically analyses the same limit and identifies conditions under which the impulse assumption requires additional care. For the purposes of this paper, the hedging in P1.1 ("whenever the limit exists in the standard differentiable sense") is sufficient: the structural content of the equal-area invariant at finite step is independent of the convergence subtleties.

`Heuristic H1.2 (Newton's scheme as a symplectic integrator).`
The kick-drift structure of Section 3.2 — update velocity by an impulse at the current position, then drift — is precisely the symplectic Euler integrator applied to the separable Hamiltonian \(H(\mathbf r,\mathbf p)=|\mathbf p|^2/(2m)+V(r)\) [Nauenberg1994SymplecticNewton] [Nauenberg2018GraphicalMethod]. The exact angular-momentum conservation (D1.1) is a consequence of two properties: the force is central (so each kick preserves \(\mathbf L\)), and the free drift is linear (so it also preserves \(\mathbf L\)). More broadly, the symplectic character of the map means it preserves the canonical 2-form \(\omega=d\mathbf p\wedge d\mathbf r\) at each finite step. While the method has the same first-order convergence rate as the explicit Euler scheme analyzed in Section 8.4, its step-doubling corrections are constrained to preserve the symplectic form — a finite-step analogue of the principle that renormalization counterterms must respect the symmetries of the theory.

`Remark H1.2a (Convergence theorem and failure mode).`
Standard convergence theory for one-step numerical integrators guarantees that the polygonal orbit converges to the true continuous orbit with global error \(O(h)\) on any finite time interval where the force \(\nabla V\) is Lipschitz — i.e. away from the \(r=0\) collision singularity of central potentials. At the collision point the Lipschitz constant diverges, the fixed-step scheme breaks down, and regularization (Kustaanheimo-Stiefel / Levi-Civita coordinate transformations) or adaptive stepping is required. The structural invariants (angular momentum, equal areas) are exact at each finite step regardless and do not depend on the convergence of the interpolation limit. This makes precise the hedge in H1.1a: the limit exists in the standard differentiable sense exactly where the force is Lipschitz, and fails at the singularities where central-force models cease to be smooth.

## 3.4 Closed Question from the Section 2 Setup
Section 2 left one key ambiguity open: is Newton’s area law a small-step approximation or a genuine invariant statement? The derivations above close that point:
within the polygonal central-impulse model, the equal-area law is exact at each finite step and only the curve interpolation is a limiting passage.

Transition to Section 4:
with the Newtonian invariant fixed in modern notation, the next section derives Euler-Lagrange equations and Noether charge conservation to show the same structure directly in action language.

# 4. Action as Additive Invariant
## 4.1 Stationarity Setup
The Section 3 invariant was derived from a refinement model in configuration geometry. We now restate the same physics through stationarity of action.

Assume:
1. \(q:[t_i,t_f]\to\mathbb R^d\) is at least \(C^2\), and variations \(\eta\) are \(C^1\) (or smooth with compact support).
2. \(\mathcal L(q,\dot q,t)\) is \(C^1\) in \(t\) and \(C^2\) in \((q,\dot q)\) on the region reached by \((q(t),\dot q(t))\).

Let the action be

$$
S[q]=\int_{t_i}^{t_f}\mathcal L\big(q(t),\dot q(t),t\big)\,dt,
$$

and define \(q_\varepsilon=q+\varepsilon\eta\) for an admissible variation \(\eta\), with either:
1. fixed endpoints \(\eta(t_i)=\eta(t_f)=0\), or
2. compact support in \((t_i,t_f)\).

Stationarity means

$$
\delta S[q;\eta]
=\left.\frac{d}{d\varepsilon}\right|_{\varepsilon=0} S[q_\varepsilon]
=0
\quad\text{for all admissible }\eta.
$$

`Proposition P2.0 (Fundamental lemma, vector form).`
If \(F:[t_i,t_f]\to\mathbb R^d\) is continuous and \(\int_{t_i}^{t_f} F(t)\cdot\eta(t)\,dt=0\) for all \(\eta\in C_c^\infty((t_i,t_f);\mathbb R^d)\), then \(F(t)=0\) for all \(t\in(t_i,t_f)\).

## 4.2 Euler-Lagrange Derivation
`Derivation D2.1 (Euler-Lagrange equation).`
Differentiate under the integral sign (justified by the smoothness assumptions). By the chain rule,
\(\left.\frac{d}{d\varepsilon}\right|_{0}\mathcal L(q+\varepsilon\eta,\dot q+\varepsilon\dot\eta,t)
=\frac{\partial\mathcal L}{\partial q}\cdot\eta+\frac{\partial\mathcal L}{\partial\dot q}\cdot\dot\eta\).
Therefore:

$$
\delta S[q;\eta]
=\int_{t_i}^{t_f}
\left(
\frac{\partial\mathcal L}{\partial q}\cdot\eta
+
\frac{\partial\mathcal L}{\partial \dot q}\cdot\dot\eta
\right)dt.
$$

Integrating the second term by parts:

$$
\delta S[q;\eta]
=
\left[
\frac{\partial\mathcal L}{\partial\dot q}\cdot\eta
\right]_{t_i}^{t_f}
+
\int_{t_i}^{t_f}
\left(
\frac{\partial\mathcal L}{\partial q}
-\frac{d}{dt}\frac{\partial\mathcal L}{\partial\dot q}
\right)\cdot\eta\,dt.
$$

Endpoint or compact-support conditions remove the boundary term. By `Proposition P2.0`, stationarity for all admissible \(\eta\) implies:

$$
\frac{d}{dt}\frac{\partial\mathcal L}{\partial\dot q}
-\frac{\partial\mathcal L}{\partial q}
=0.
$$

This is the Euler-Lagrange equation.

## 4.3 Rotational Symmetry and Angular Momentum
For planar central motion with

$$
\mathcal L(r,\theta,\dot r,\dot\theta)=
\frac{m}{2}\big(\dot r^2+r^2\dot\theta^2\big)-V(r),
$$

\(\theta\) is cyclic (\(\partial\mathcal L/\partial\theta=0\)). Applying Euler-Lagrange to \(\theta\) gives:

$$
p_\theta=\frac{\partial\mathcal L}{\partial\dot\theta}=m r^2\dot\theta
=L_{\mathrm{ang}}
\quad\Rightarrow\quad
\frac{dL_{\mathrm{ang}}}{dt}=0,
$$

which is the rotational Noether conservation law [Noether1918].

In full vector form for \(\mathcal L(\mathbf r,\dot{\mathbf r})=\frac{m}{2}\|\dot{\mathbf r}\|^2-V(\|\mathbf r\|)\), the canonical momentum is \(\mathbf p=\partial\mathcal L/\partial\dot{\mathbf r}=m\dot{\mathbf r}\) and rotational invariance yields the conserved angular momentum vector

$$
\mathbf L=\mathbf r\times\mathbf p.
$$

`Proposition P2.1 (Geometric-variational invariant equivalence).`
Under the regularity assumptions above, the Section 3 area-law invariant and the Noether charge are the same quantity in different language:

$$
\dot A=\frac12 r^2\dot\theta=\frac{L_{\mathrm{ang}}}{2m}.
$$

Thus Section 3 and Section 4 do not provide competing derivations; they provide geometric and variational presentations of one conserved structure.
Newton’s polygonal proof is also strictly stronger in scope: the equal-area statement is exact at each finite impulse step without assuming smoothness or even a Lagrangian, whereas Noether’s charge conservation requires a smooth trajectory and rotational symmetry of \(\mathcal L\) to reproduce the same invariant.

`Proposition P2.2 (Energy for autonomous central motion).`
If \(\mathcal L\) has no explicit time dependence, then the energy function

$$
E=\dot q\cdot\frac{\partial\mathcal L}{\partial\dot q}-\mathcal L
$$

is conserved (time-translation symmetry, another Noether law) [Noether1918]. For the central-motion Lagrangian above,

$$
E=\frac{m}{2}\dot r^2+\frac{L_{\mathrm{ang}}^2}{2mr^2}+V(r),
$$

showing the standard reduction to one-dimensional radial motion with effective potential \(V_{\mathrm{eff}}(r)=V(r)+L_{\mathrm{ang}}^2/(2mr^2)\).

## 4.4 Additivity and Composition Pre-Bridge
Recall the discrete action functional from the refinement viewpoint:

$$
S_N[q]=\sum_{k=0}^{N-1}
\mathcal L\!\left(q_k,\frac{q_{k+1}-q_k}{\Delta t_k},t_k\right)\Delta t_k.
$$

It is additive under interval concatenation by construction. This additivity is the structural input used later for composition-based quantum weighting in Section 6.

`Heuristic H2.1 (Toward distributional probes).`
Point-like probes of extrema can be expressed in distributional language. In this manuscript, technical use of such probes is deferred to Section 5, where mollifier limits and admissibility are stated explicitly.

Transition to Section 5:
with Euler-Lagrange and Noether structure fixed, we next extend stationarity analysis to weak/distributional settings and clarify where Dirac-supported constructions are valid.

# 5. Dirac Distributions and Extremal Action
## 5.1 Why Weak Formulations Appear Here
The story so far treated trajectories as classically smooth. Two themes force a more careful formulation:
1. Refinement limits often produce objects that are only piecewise smooth (corners) or are best handled by weak limits.
2. The “point-like probe” idea (Dirac-supported localization) is naturally stated in distribution theory.

We keep the role of distributions narrow and explicit:
distributions are used as linear functionals on test functions and as limits of smooth approximations. Nonlinear operations on distributions are not assumed unless regularized.

## 5.2 Weak Euler-Lagrange Equation
Let \(q\in C^1([t_i,t_f];\mathbb R^d)\) be a candidate trajectory and assume \(\mathcal L(q,\dot q,t)\) is smooth enough that \(\partial_q\mathcal L\) and \(\partial_{\dot q}\mathcal L\) are well-defined along \(q\).

`Proposition P3.1 (Weak stationarity statement).`
If \(\delta S[q;\eta]=0\) for all \(\eta\in C_c^\infty((t_i,t_f);\mathbb R^d)\), then the Euler-Lagrange operator

$$
F[q](t)\equiv \frac{\partial\mathcal L}{\partial q}(q,\dot q,t)
-\frac{d}{dt}\frac{\partial\mathcal L}{\partial\dot q}(q,\dot q,t)
$$

vanishes as a distribution on \((t_i,t_f)\): for all test \(\eta\),

$$
\int_{t_i}^{t_f} F[q](t)\cdot\eta(t)\,dt=0.
$$

Equivalently, \(F[q]=0\) in \(\mathcal D'((t_i,t_f);\mathbb R^d)\), where \(\mathcal D'\) is the dual of \(C_c^\infty\).

`Derivation D3.1 (Weak form from first variation).`
Start from the first-variation identity (as in Section 4):

$$
\delta S[q;\eta]
=\int_{t_i}^{t_f}\left(
\frac{\partial\mathcal L}{\partial q}\cdot\eta
+
\frac{\partial\mathcal L}{\partial\dot q}\cdot\dot\eta
\right)dt.
$$

Integrate the second term by parts. Compact support eliminates the boundary term and yields the stated distributional identity.

## 5.3 Point-Like Probes via Mollifiers (Not Raw Deltas)
Pick a nonnegative mollifier \(\rho\in C_c^\infty(\mathbb R)\) with \(\int\rho=1\), and define \(\rho_\varepsilon(t)=\varepsilon^{-1}\rho(t/\varepsilon)\).

`Proposition P3.2 (Localized probing under continuity).`
Assume \(F[q](t)\) is continuous at a time \(t_0\in(t_i,t_f)\). Then weak stationarity implies the pointwise condition \(F[q](t_0)=0\).

`Derivation D3.2.`
For any fixed vector \(u\in\mathbb R^d\), choose a localized test function
\(\eta_\varepsilon(t)=\rho_\varepsilon(t-t_0)\,u\). Then the weak identity gives

$$
0=\int_{t_i}^{t_f} F[q](t)\cdot \rho_\varepsilon(t-t_0)\,u\,dt
=u\cdot\int_{t_i}^{t_f} \rho_\varepsilon(t-t_0)\,F[q](t)\,dt.
$$

As \(\varepsilon\to 0^+\), the convolution integral tends to \(F[q](t_0)\) by continuity. Since \(u\) was arbitrary, \(F[q](t_0)=0\).

This is the precise sense in which "Dirac-supported probes" recover pointwise Euler-Lagrange equations: they do so through mollifier limits, not by inserting nonlinear expressions involving \(\delta(t-t_0)\).
(For an expanded treatment with explicit functional-analytic hypotheses, a fully worked delta-kick model, and the connection from \(N\)-impulse matching to the time-sliced path integral, cf.\ Theorem 2.1 and Section 4 in the Dirac Probes companion note.)

## 5.4 Corners and Impulses: Jump Conditions
There are two distinct phenomena that look “singular” in time:
1. **Corners**: \(q\) is continuous but \(\dot q\) has a jump at \(t_0\), with no delta forcing.
2. **Impulses**: the dynamics includes a delta force at \(t_0\), producing a momentum jump.

We record both conditions explicitly.

`Proposition P3.3 (Corner condition without impulse).`
Assume \(q\) is piecewise \(C^2\) with a velocity discontinuity at \(t_0\), and satisfies the unforced Euler-Lagrange equation on each side of \(t_0\). Then:

$$
\left[\frac{\partial\mathcal L}{\partial\dot q}\right]_{t_0^-}^{t_0^+}=0.
$$

`Derivation D3.3 (Corner condition).`
Integrate the unforced Euler-Lagrange equation on \([t_0-\varepsilon,t_0+\varepsilon]\):

$$
\left[\frac{\partial\mathcal L}{\partial\dot q}\right]_{t_0-\varepsilon}^{t_0+\varepsilon}
=\int_{t_0-\varepsilon}^{t_0+\varepsilon}\frac{\partial\mathcal L}{\partial q}\,dt.
$$

Let \(\varepsilon\to0^+\). Under local boundedness of \(\partial_q\mathcal L\), the right-hand side vanishes, yielding the jump condition above. This is the local corner continuity of canonical momentum (Weierstrass-Erdmann form in this one-corner setting).

`Proposition P3.4 (Impulse force implies momentum jump).`
Consider the forced Euler-Lagrange equation in distribution form

$$
\frac{d}{dt}\frac{\partial\mathcal L}{\partial\dot q}
-\frac{\partial\mathcal L}{\partial q}
=J\,\delta(t-t_0),
$$

for a fixed impulse vector \(J\in\mathbb R^d\). If \(\partial_{\dot q}\mathcal L\) has one-sided limits at \(t_0\), then

$$
\left[\frac{\partial\mathcal L}{\partial\dot q}\right]_{t_0^-}^{t_0^+}
\equiv
\frac{\partial\mathcal L}{\partial\dot q}(t_0^+)-\frac{\partial\mathcal L}{\partial\dot q}(t_0^-)
=J.
$$

`Derivation D3.4.`
Integrate the equation on \([t_0-\varepsilon,t_0+\varepsilon]\). The integral of the smooth term \(\partial_q\mathcal L\) tends to 0 as \(\varepsilon\to 0\). The derivative term integrates to the jump in \(\partial_{\dot q}\mathcal L\). The right-hand side integrates to \(J\).

For the standard mechanical Lagrangian \(\mathcal L=\frac{m}{2}\|\dot q\|^2-V(q)\), this reduces to the familiar momentum jump:

$$
m\big(\dot q(t_0^+)-\dot q(t_0^-)\big)=J.
$$

This connects directly to the Section 3 impulse scaffold: central impulses preserve angular momentum because they change momentum only in the radial direction.

## 5.5 Extremal Measures: Finite-Dimensional Analogy and Limits
The phrase “Dirac distributions to calculate extrema” is unambiguous in finite dimensions. For a smooth \(f:\mathbb R\to\mathbb R\), the distribution \(\delta(f'(x))\) is supported on the critical points of \(f\). In higher dimensions one analogously uses \(\delta(\nabla f)\).

`Derivation D3.5 (Square-root delta normalization and Born-rule form).`
Let \(f:\mathbb R^N\to\mathbb R\) be smooth and define, for \(\varepsilon>0\),
\(A_\varepsilon(O):=\varepsilon^{-N/2}\int e^{\frac{i}{\varepsilon}f(x)}O(x)\,dx\).
Then
\(|A_\varepsilon(O)|^2=\varepsilon^{-N}\iint e^{\frac{i}{\varepsilon}(f(x)-f(y))}O(x)\overline{O(y)}\,dx\,dy\).
Under the near-diagonal scaling \(y=x+\varepsilon z\) (so \(dy=\varepsilon^Ndz\)), one formally obtains
\(|A_\varepsilon(O)|^2\to (2\pi)^N\int \delta(\nabla f(x))\,|O(x)|^2\,dx\).
This exhibits the pattern “density = \(|\text{amplitude}|^2\)”, with the exponent \(N/2\) matching the half-density scaling needed to cancel Jacobians under refinement.

`Derivation D3.5a (Nondegenerate critical points: why the weights are square roots).`
In one dimension, if \(f\) has finitely many nondegenerate critical points \(x_i\) (so \(f'(x_i)=0\) and \(f''(x_i)\neq 0\)), then the distributional identity
\[
\delta(f'(x))=\sum_i \frac{\delta(x-x_i)}{|f''(x_i)|}
\]
makes explicit that \(\delta(f')\,dx\) is a density supported on stationary points with weights \(1/|f''|\). Stationary phase, by contrast, gives amplitude contributions weighted by \(1/\sqrt{|f''(x_i)|}\). This is the clean finite-dimensional reason the “half-density first” viewpoint is natural: amplitude weights are square roots of density weights.

Section 6 recovers the same "square-root Jacobian" in the dynamical setting: semigroup composition of short-time kernels forces the characteristic \(t^{-d/2}\) normalization (Derivation D4.1a). (A comprehensive treatment showing this exponent is forced across four distinct settings — temporal composition, Van Vleck determinant in curved space, heat-kernel diffusion, and renormalization thresholds — is given in the companion satellite [PathIntegralNormalization].)

In infinite-dimensional settings (paths), one is tempted to write "formal measures" supported on stationary-action trajectories. In this manuscript we treat such expressions as roadmap heuristics until they are regularized and made compatible with composition (Section 6); see also `Heuristic H0.2a`.
(A companion note on delta objects collects the finite-dimensional scaling computations — identity kernel, stationary-set concentration, point interactions as rank-one kernels — and traces the Van Vleck determinant as the propagator instance of the square-root Hessian.)

`Remark D3.5b (Delta-object dictionary and safe/unsafe criterion).`
Five delta-adjacent constructions appear in this work: (i) the stationary-set delta \(\delta(\nabla f)\), which localizes on critical points of a smooth function with Hessian-determinant weights (the distributional change-of-variables formula); (ii) the distributional derivative \(\delta'\), defined by duality and realizable as a point-splitting limit; (iii) the diagonal delta kernel \(\delta(x-y)|dx|^{1/2}|dy|^{1/2}\), the Schwartz kernel of the identity on half-densities; (iv) the delta potential \(g\,\delta(x)\), a rank-one perturbation that defines a self-adjoint extension in \(d\le3\) but requires renormalization for \(d\ge2\); and (v) the heuristic "\(\delta(\delta S)\)" for extremal support on path space. The first four are rigorous (with renormalization where noted); the fifth is meaningful only as a shorthand for the finite-dimensional stationary-phase identity combined with the composition-compatible \(N\to\infty\) limit of Section 6. The safe/unsafe boundary is mollifier universality: a delta construction is scheme-independent precisely when it probes a continuous object, so that the mollifier-sequence limit is unique; products of singular distributions or coincident-point evaluations of singular kernels are scheme-dependent and require explicit regularization.

## 5.6 Caveats (Nonlinear Distribution Pitfalls)
1. Products like \(\delta(t)^2\) are not defined in standard distribution theory; any appearance requires a regularization scheme and a proof of scheme-independence for claimed observables.
2. “Evaluate at a point” is only legitimate for quantities known to be continuous (or otherwise well-defined) at that point; mollifier probing must state this assumption explicitly.
3. Stationarity (\(\delta S=0\)) is not the same as minimality; second variation and convexity conditions are separate and are not assumed here.

Transition to Section 6:
we now have a controlled notion of “extremal classical dynamics” (including impulses and corners) and a precise language for refinement-local probes. The next section uses composition under time slicing to motivate amplitude weights and the path integral.

# 6. Composition and Path Integral
## 6.1 Composition Postulate for Amplitudes
Let \(K(q_f,t_f;q_i,t_i)\) denote the transition amplitude. The structural postulate is composition on intermediate time slices:

$$
K(q_f,t_f;q_i,t_i)
=\int dq\,K(q_f,t_f;q,t)\,K(q,t;q_i,t_i),
\qquad t_i<t<t_f.
$$

`Heuristic H4.0 (Half-density kernels make composition measure-free).`
On a configuration manifold \(M\), the coordinate-free object underlying the displayed formula is a **bi-half-density kernel**:
\(K_t(q',q)\in|\Lambda^dT^\ast_{q'}M|^{1/2}\otimes|\Lambda^dT^\ast_qM|^{1/2}\).
Then composition is the canonical pairing in the intermediate variable \(q\), and it does not require choosing a background measure. Writing \(\int dq\) is what one gets after choosing a reference density to identify half-densities with scalar functions.

`Derivation D4.0 (Coordinate invariance of composition via half-densities).`
In local coordinates \(q\), write
\(K_t(q',q)=k_t(q',q)\,|dq'|^{1/2}|dq|^{1/2}\).
Then
\(
K_{t_f-t}(q_f,q)\,K_{t-t_i}(q,q_i)
=k_1k_2\,|dq_f|^{1/2}|dq|\,|dq_i|^{1/2}
\)
is a density in \(q\), so \(\int_M K_{t_f-t}(q_f,q)K_{t-t_i}(q,q_i)\) is coordinate invariant. This is the intrinsic meaning of the composition postulate.

`Heuristic H4.0a (Scalarization gauge and scale).`
Writing a half-density kernel as an ordinary scalar function with an explicit “\(dq\)” implicitly chooses a reference density \(\rho_\ast\) on \(M\) (equivalently a reference half-density \(\sigma_\ast=\rho_\ast^{1/2}\)). Different choices are related by pointwise multiplication and give unitarily equivalent scalar representations. If one additionally demands scalar amplitudes be dimensionless, then \(\sigma_\ast\) must carry the full \(\text{length}^{d/2}\) weight, so a universal choice of \(\sigma_\ast\) is equivalent to choosing a universal \(\text{length}^{d/2}\) scale.
In a spacetime QFT setting where the scalarization problem is formulated over an integration variable of dimension \(D\), this is a \(\text{length}^{D/2}\) scale; in \(D=4\) it is an area, with the Planck area \(\ell_P^2=\hbar G/c^3\) a natural universal candidate. A companion note explores further (optional) hypotheses about such scale suppliers; no such identification is required for the present paper’s structural chain.

`Heuristic H4.0b (Independent \(D=4\) filter: operator simplicity under conformal scalarization changes).`
The “scale supplier” question above is distinct from a different way \(D=4\) can appear once one insists on scalar representatives: simplicity of how *kinetic operators* depend on scalarization choices. In a covariant/QFT setting (spacetime dimension \(D\)), the scalar Laplacian \(\Delta_g\) induces an operator on half-densities by conjugation,
\[
\widetilde\Delta_g := |g|^{1/4}\Delta_g|g|^{-1/4}.
\]
Under a conformal rescaling \(g=e^{2\sigma}\bar g\), the half-density conjugation produces a quadratic-gradient term \(\propto |\nabla\sigma|^2\) with universal coefficient \(D(4-D)/4\), hence it cancels at \(D=4\) (within the conformal class). This is an operator-simplicity filter (scale-neutral) and is independent of the coupling-dimension sieve discussed above. (A companion satellite on half-densities in QFT develops the full bi-half-density calculus for spacetime propagators and Green functions, including the conformal-class expansion, the normal-coordinate computation showing the universal conjugation potential \(V=(1/6)R\) matches conformal coupling only at \(D=4\), and the heat-kernel trace formula without extraneous \(\sqrt{|g|}\) factors.)

`Heuristic H4.0c (RG-side echo: gauge-coupling marginality at \(D=4\)).`
On the renormalization side, \(D=4\) is the unique dimension in which 1-form gauge couplings are marginal by power counting (\([g^2]=\text{length}^{D-4}\)), and in which the classical Yang--Mills action is conformally invariant (the action-density weight factor \(e^{(D-4)\sigma}\) equals unity). Both this statement and the half-density cancellation in H4.0b share the algebraic root \((D-4)=0\), but they apply to different objects: the half-density version is universal (independent of matter content), while the RG version is coupling-specific (tied to the form degree of the gauge connection via \(D=2(p+1)\) for a \(p\)-form field; \(p=1\) gives \(D=4\)). The consistency of these two logically independent filters at \(D=4\) is a nontrivial structural check: the half-density filter selects the kinematic arena, and the RG filter constrains the dynamics within it.

`Derivation D4.1 (Time slicing from repeated composition).`
Iterating the composition law over a partition \(t_i=t_0<\cdots<t_N=t_f\) gives

$$
K(q_f,t_f;q_i,t_i)=
\int \prod_{k=1}^{N-1} dq_k
\prod_{k=0}^{N-1}
K_\Delta(q_{k+1},q_k;t_k),
$$

with \(q_0=q_i,\;q_N=q_f,\;\Delta t_k=t_{k+1}-t_k\), and \(K_\Delta\) the short-time kernel.

`Derivation D4.1a (Semigroup fixes the \(t^{-d/2}\) normalization).`
On \(M=\mathbb R^d\), translation invariance suggests a bi-half-density kernel of the form
\(K_t(x,y)=k_t(x-y)\,|dx|^{1/2}|dy|^{1/2}\), so the semigroup law becomes a scalar convolution:
\(k_{t+s}=k_t*k_s\).
Assume a quadratic short-time phase and write
\[
k_t(u)=A(t)\,\exp\!\left(\frac{i m}{2\hbar}\frac{\|u\|^2}{t}\right),
\]
interpreting the Gaussian integral in Euclidean time (heat kernel) and then analytically continuing, or with the usual \(i0\) prescription.
Then
\[
(k_t*k_s)(u)=A(t)A(s)\int_{\mathbb R^d}
\exp\!\left(\frac{i m}{2\hbar}\left(\frac{\|u-v\|^2}{t}+\frac{\|v\|^2}{s}\right)\right)\,dv.
\]
Completing the square yields
\[
\frac{\|u-v\|^2}{t}+\frac{\|v\|^2}{s}
=\frac{\|u\|^2}{t+s}+\frac{t+s}{ts}\left\|v-\frac{s}{t+s}u\right\|^2,
\]
so the convolution closes on the same family with
\[
A(t+s)=A(t)A(s)\left(\frac{ts}{t+s}\right)^{d/2}\times(\text{phase}).
\]
The unique solution (up to an overall constant phase) is \(A(t)\propto t^{-d/2}\). Thus the exponent \(d/2\) is forced by semigroup composition: it is the half-density "square-root Jacobian" needed for refinement-stable kernel composition.
Imposing the delta initial condition as \(t\to0^+\) fixes the remaining normalization constant and forces \(\hbar\) into the prefactor (in standard flat-space scalar conventions, \(A(t)=(m/2\pi i\hbar t)^{d/2}\) up to phase).

`Proposition P4.2 (Necessity of an action-dimensional scale for composition-compatible refinement).`
Let \(M=\mathbb R^d\) with Lagrangian \(\mathcal L(q,\dot q,t)\) and action \(S[q]=\int\mathcal L\,dt\) of dimension \([S]=\mathrm{mass}\cdot\mathrm{length}^2\cdot\mathrm{time}^{-1}\). Assume a family of transition kernels \(\{K(q_f,t_f;q_i,t_i)\}_{t_f>t_i}\) satisfying: **(C)** Composition (semigroup): \(K(q_f,t_f;q_i,t_i)=\int_M dq\,K(q_f,t_f;q,t)K(q,t;q_i,t_i)\) for all \(t_i<t<t_f\); **(L)** Local exponential weight: \(K_{\Delta t}(q_f,q_i)=\mathcal N(\Delta t)\exp(c_0 S_{\mathrm{slice}})\) for short times; **(I)** Identity: \(K(q_f,t_f;q_i,t_i)\to\delta^{(d)}(q_f-q_i)\) as \(t_f\to t_i^+\); **(D)** Dimensional homogeneity: \([K]=\mathrm{length}^{-d}\). Then: (i) the normalization exponent is \(\mathcal N(\Delta t)\propto(\Delta t)^{-d/2}\), uniquely determined by composition closure (Derivation D4.1a); (ii) there exists a constant \(\kappa\) with \([\kappa]=[\mathrm{action}]\) such that \(\mathcal N(\Delta t)=(m/2\pi\kappa\Delta t)^{d/2}\) and \(c_0=i/\kappa\) (or \(-1/\kappa\) in Euclidean signature), fixed by the identity limit and dimensional analysis; (iii) \(\kappa\) cannot be eliminated: setting \(\kappa\to0\) collapses composition to Hamilton--Jacobi extremization, which has no distributional identity limit (the composed kernel approaches \(\delta(q_f-q_{\mathrm{cl}}(q_i))\), generically not \(\delta(q_f-q_i)\) for \(t>0\)); setting \(\kappa\to\infty\) makes the weight trivial and loses dynamical content. The scale \(\kappa\) is therefore a necessary structural constant of any composition-compatible refinement of action-based dynamics. (iv) Identifying \(\kappa=\hbar\) recovers the standard quantum propagator with Feynman phase \(e^{iS/\hbar}\) and Van Vleck normalization.

`Remark P4.2a (Consolidation of existing derivations).`
The proposition consolidates Derivation D4.1a (composition forces \(t^{-d/2}\)), Derivation D4.2a (soft extremum requires \(\hbar>0\)), Derivation PA-D1.2a/b (half-density identity kernel scaling in the planck-area note), and the heat-kernel witness (five manifestations of \(d/2\): identity kernel, heat trace, propagator Schwinger parametrization, UV divergence degree, dimensional regularization poles). It reorganizes existing results into a necessity statement rather than introducing new mathematics.

`Remark P4.2b (Connection to RCP).`
The proposition is the primary constructive witness of Proposition P10.1 (Refinement Compatibility Principle): partition compatibility demands a parameter update for composition to close. The fact that this parameter has dimension of action is forced by the dimensional content of the classical Lagrangian, making RCP not merely structural but constructive—it tells you what the control parameter must be.

`Remark P4.2c (Hypothesis reduction: exponential weight is a theorem).`
Hypothesis **(L)** (local exponential weight) decomposes into two parts: **(L\(_{\mathrm{loc}}\))** kernel dependence on classical action only, and **(L\(_{\mathrm{exp}}\))** exponential form \(W=\exp(c_0 S/\kappa)\). The exponential form is not an independent assumption: for a translation-invariant free kernel \(K_t(u)=N(t)W(mu^2/(2\kappa t))\), composition **(C)** in Fourier space reduces to the multiplicative equation \(\hat K_T(p)=\hat K_{t_1}(p)\hat K_{t_2}(p)\). Under continuity, the unique solution is \(\log\hat K_t(p)=t\,\phi(p)\), which forces \(\log\hat W_0(q)=\alpha q^2+\beta\) (quadratic), i.e., \(W=\exp(\text{quadratic})\). The functional equation admits no continuous non-Gaussian solution. Thus **(L\(_{\mathrm{exp}}\))** is a theorem of composition, not an axiom.

`Remark P4.2d (Hypothesis reduction: L\'evy--Khintchine obstruction closes the loophole).`
The remaining escape from Gaussian kernels is L\'evy-stable processes with characteristic exponent \(\Psi(p)=-c|p|^\alpha\), \(\alpha\in(0,2]\). For these, dimensional homogeneity **(D)** requires \([c]=[m]^a[\hbar]^b\). Matching length, mass, and time exponents yields the consistency condition \(-\alpha/2=1-\alpha\), which forces \(\alpha=2\) (Gaussian). For \(\alpha\neq 2\), no combination of \(m\) and \(\hbar\) can build the required coefficient \(c\). While all L\'evy processes satisfy the identity limit **(I)**, the discriminating hypothesis is **(D)**: any kernel satisfying **(C)**+**(I)**+**(D)** with dimensional constants \(\{m,\hbar\}\) must be Gaussian. The effective hypothesis count for Proposition P4.2 is therefore reduced from four to three: composition **(C)**, identity limit **(I)**, and dimensional homogeneity **(D)**.

`Remark P4.2e (Extensions: curved, interacting, and Lorentzian settings).`
The conclusions of Proposition P4.2 are not limited to free particles in flat Euclidean space. Three independent extensions confirm robustness:
(1) **Curved configuration spaces.** On a Riemannian manifold \((M,g)\), the short-time kernel involves the Van Vleck--Morette determinant \(\Delta^{1/2}(x,y)\), which composes via the DeWitt--Morette semigroup law. The \(d/2\) normalization exponent is forced by the same functional equation; \(\Delta\) and \(\sqrt{|g|}\) are geometric (metric-dependent) but \(\kappa\)-independent. The metric provides no escape route from \(\kappa\)-necessity.
(2) **Interacting systems.** The Mehler kernel for the harmonic oscillator \(V=\tfrac{1}{2}m\omega^2 q^2\) satisfies composition with \(\sin\omega t\) replacing \(t\) as "time function." The \(d/2\) forcing is purely algebraic (dimension-counting), and the Seeley--DeWitt coefficients \(a_n\) are composition-compatibility conditions, not escape routes. Short-time extraction of \(a_1=-iV/\hbar\) confirms this.
(3) **Lorentzian signature.** Replacing Gaussian damping by oscillatory Fresnel phase, the algebraic parts of the argument (\(d/2\) exponent, \(\kappa=\hbar\) necessity, semigroup closure) are signature-independent. The \(i\varepsilon\) prescription is itself a theorem of composition: among regulators \(\exp(-\varepsilon f((x-y)^2/t))\), only \(f(x)=x\) (linear) preserves semigroup closure, and this uniqueness follows from degree-counting (non-linear \(f\) produces non-Gaussian integrands). Composition alone—without invoking the identity limit—forces the \(i\varepsilon\) form.

`Remark P4.2f (Universality of \(\kappa\) across interacting sectors).`
Proposition P4.2 forces a scale \(\kappa\) with \([\kappa]=[\text{action}]\) for each sector individually. If two sectors (say particles \(A\) and \(B\)) interact, their joint kernel must compose as a single semigroup. Under the single-exponential-weight assumption, the joint kernel inherits a single \(\kappa\): factorization into sector-specific \(\kappa_A\neq\kappa_B\) is incompatible with joint composition when \(A\) and \(B\) are coupled. Decoupled (non-interacting) sectors may in principle carry independent scales, but transitivity of interaction in any connected physics makes \(\kappa=\hbar\) universal across all interacting degrees of freedom. This universality is not postulated but forced by composition.

`Remark P4.2g (Continuum time forced by dimensional homogeneity).`
Dimensional homogeneity **(D)** not only forbids jump processes (Remark P4.2d) but also forces continuous time parametrization. A discrete-time formulation with lattice spacing \(\varepsilon\) would require \([\varepsilon]=T\), but in non-relativistic quantum mechanics the dimensional basis is \(\{m,\hbar\}\). Seeking \(\varepsilon=[m]^a[\hbar]^b\) yields \(M^{a+b}L^{2b}T^{-b}=T\); matching exponents gives \(2b=0\) (length) and \(-b=1\) (time), hence \(b=0\) and \(b=-1\) simultaneously—a contradiction. The root cause is that \(\{m,\hbar\}\) span only a two-dimensional subspace of the three-dimensional MLT dimension space, and the reachable dimensions satisfy \([L]=[T^{-1/2}]\) (up to mass factors). Thus **(D)** forbids external time scales, forcing the continuum limit \(\varepsilon\to 0\). Proposition P4.2 therefore establishes not only the necessity of a finite action scale \(\kappa=\hbar\), but also the necessity of continuous time as the composition parameter. (Lattice formulations in QFT introduce \(\varepsilon\) as an external UV regulator; their validity depends on controlled \(\varepsilon\to 0\) limits, consistent with this obstruction.)

`Remark P4.2h (Composition as single master axiom).`
The axiom reduction of Remarks P4.2c-g can be pushed further. Hypothesis **(D)** (dimensional homogeneity) is itself a theorem of **(C)** (composition) on \(\mathbb{R}^d\): the composition integral \(\int K(x,z;t_1)\,K(z,y;t_2)\,d^d z = K(x,y;t_1+t_2)\) forces \([K]=L^{-d}\) by dimensional consistency, and the remaining content of **(D)** is either trivially true for Lagrangian theories or a property of the physical setup. Similarly, hypothesis **(I)** (identity limit) is derivable: the explicit Gaussian kernel forced by **(C)** is a nascent delta family, so \(K(x,y;t) \to \delta(x-y)\) as \(t \to 0\) is a theorem. For general potentials, Stone's theorem yields the same conclusion given a self-adjoint generator. **The effective hypothesis count for Proposition P4.2 is therefore one mathematical axiom (composition) plus the physical setup** (action-based dynamics on \(\mathbb{R}^d\) with mass \(m\) and self-adjoint Hamiltonian). Composition is the single master axiom for the partition channel. See [RCPFoundations] Section 6 for the full axiom-reduced formulation.

`Remark P4.2i (Parallel reconstruction: information-theoretic route).`
Luiz and de Oliveira [LuizOliveira2026] independently arrive at overlapping conclusions via a different starting point: a density of action states \(g(A;b,T|a)\) satisfying a composition law in action space, finite variance, and locality. Their Proposition 1 derives the Gaussian form via the same Lévy--Khintchine exclusion, and their \(d/2\) exponent matches ours. Their route additionally derives complex amplitudes from Cramér--Rao indistinguishability—a step we assume (the exponential weight is here forced by the Cauchy functional equation, Section 6.2). Conversely, our approach yields the groupoid reading (Section 8), the RCP three-channel framework (Section 9), and the deformation-quantization bridge [TangentGroupoidBridge], none of which appear in [LuizOliveira2026]. The shared core—convolution semigroup structure forces an action-dimensional scale—is standard mathematics (the Lévy--Khintchine theorem applied to propagator kernels); the convergence of two independent lines of argument strengthens the case that composition is the operative principle. A complementary *kinematic* derivation by Goyal, Knuth, and Skilling [GoyalKnuthSkilling2010] shows that composition of sequential measurement amplitudes, together with continuity, forces complex arithmetic and the Born rule—recovering Feynman's sum and product rules without postulating complex amplitudes. Where [LuizOliveira2026] and the present work derive *dynamical* structure (\(\hbar\), Gaussian kernels), [GoyalKnuthSkilling2010] derives *algebraic* structure (the complex field); the three results are complementary instances of the composition-forcing programme.

## 6.2 From Additive Action to Multiplicative Weights
The Section 4/Section 5 structure gives an additive discrete action:

$$
S_N[q]=\sum_{k=0}^{N-1}\mathcal L\!\left(q_k,\frac{q_{k+1}-q_k}{\Delta t_k},t_k\right)\Delta t_k.
$$

Assume short-time locality: each slice contributes a factor depending only on local step data. Write

$$
K_\Delta(q_{k+1},q_k;t_k)=\mathcal N_k\,W_k.
$$

`Proposition P4.1 (Exponential form under locality + composition).`
If
1. total path weight is multiplicative across concatenated slices, and
2. \(\log W_k\) is additive in \(\Delta t_k\) to first order (equivalently, \(W_k = \exp(c_0 \mathcal{L}_k \Delta t_k + O(\Delta t^2))\); the derivation that composition *forces* this form via the Cauchy functional equation is in Remark P4.2c below),

then, up to normalization and higher-order slicing corrections,

$$
\prod_{k=0}^{N-1}W_k
\propto
\exp\!\big(c_0\,S_N[q]\big),
$$

for a constant \(c_0\) with dimensions \([\text{action}]^{-1}\).

Choosing oscillatory quantum time evolution gives \(c_0=i/\hbar\) (the necessity of this scale — dimensional homogeneity forces \([c_0]=[\text{action}]^{-1}\) and the identity limit pins the coefficient — is derived in Proposition P4.2(ii) below), hence the standard phase factor \(\exp(iS_N/\hbar)\) [Dirac1933] [Feynman1948].

## 6.3 Ordering, Discretization, and Quantum Ambiguity
Different short-time discretizations (left/right/midpoint or more general \(\alpha\)-schemes) typically correspond to different operator orderings. In deformation language, this is the same ambiguity as choosing a star-product representative; these constructions agree in the classical limit but can differ at subleading quantum order [Landsman1998] [deGosson2018ShortTimePropagators].

`Heuristic H4.1 (Same classical limit, different quantum corrections).`
Two discretizations that differ by \(O(\Delta t)\) in each slice can produce equivalent classical equations while shifting \(O(\hbar)\) terms in quantum generators. Thus ordering is a controlled modeling choice, not a contradiction.

`Derivation D4.1b (Ordering witness: \(H=qp\) under \(\alpha\)-discretization).`
For the classical Hamiltonian \(H(q,p)=qp\), the phase-space path integral with \(\alpha\)-prescription (evaluating position at \(q_\alpha=(1-\alpha)q_k+\alpha q_{k+1}\) in each slice) produces the operator
\[\hat H_\alpha=\alpha\hat q\hat p + (1-\alpha)\hat p\hat q = \hat p\hat q + \alpha\,i\hbar.\]
To verify: the matrix element \(\langle q'|\hat H_\alpha|q\rangle = [\alpha q'+(1-\alpha)q](-i\hbar)\delta'(q'-q) = q_\alpha(-i\hbar)\delta'(q'-q)\), which matches the kernel's \(\alpha\)-interpolated integrand order by order in \(\Delta t\). At \(\alpha=0\) (prepoint) this is anti-standard ordering \(\hat p\hat q\); at \(\alpha=1/2\) (midpoint) it is the Weyl-symmetric form \(\tfrac12(\hat q\hat p+\hat p\hat q)\) connected to the Moyal product of Section 7; at \(\alpha=1\) (postpoint) it is standard ordering \(\hat q\hat p=\hat p\hat q+i\hbar\). All three share the classical limit \(H=qp\); the \(O(\hbar)\) corrections are discretization artifacts controlled by \(\alpha\). This is the simplest instance of the general \(f(q)p\) family treated in Section 10.2.

`Remark D4.1c (Symmetry selects the midpoint).`
In the position representation \(\hat H_\alpha=-i\hbar(q\tfrac{d}{dq}+(1-\alpha))\) on \(L^2(\mathbb R,dq)\), the formal symmetry defect is \(\langle u,\hat H_\alpha v\rangle - \langle\hat H_\alpha u,v\rangle = i\hbar(2\alpha-1)\langle u,v\rangle\) for test functions with compact support away from \(q=0\). This vanishes if and only if \(\alpha=1/2\). The logical chain is: unitarity of the generated group requires self-adjointness of the generator, self-adjointness requires symmetry, and symmetry selects \(\alpha=1/2\). Essential self-adjointness (closure to a unique self-adjoint extension) additionally depends on the configuration space: it holds automatically on \(\mathbb R_+\) via the dilation group but requires choosing a self-adjoint extension on \(\mathbb R\) where the singularity at \(q=0\) creates deficiency indices \((1,1)\). The \(\alpha=1/2\) selection itself is a purely algebraic consequence of the \(L^2\) inner product and is independent of these domain subtleties.

`Remark D4.1d (Discretization-stochastic dictionary: Itô vs Stratonovich).`
The \(\alpha\)-discretization maps directly to stochastic calculus conventions. For an \(N\)-impulse model with position-dependent random impulses \(J_k=\sigma(q_k^\ast)\sqrt{\Delta t}\,\xi_k\) (where \(\xi_k\) are i.i.d. standard normals and \(q_k^\ast\) is the evaluation point), the three standard discretizations correspond to: \(\alpha=0\) (prepoint \(q_k^\ast=q_k\)) yields the Itô integral; \(\alpha=1/2\) (midpoint \(q_k^\ast=(q_k+q_{k+1})/2\)) yields the Stratonovich integral; \(\alpha=1\) (postpoint \(q_k^\ast=q_{k+1}\)) yields the anti-Itô or backward integral. The Stratonovich-to-Itô conversion formula adds a correction term \(\tfrac12\sigma(q)\sigma'(q)\,dt\) to the drift, which has the same structural origin as the \(\alpha\)-dependent \(O(\hbar)\) shift in the quantum Hamiltonian: both are "chain-rule corrections" arising from moving the evaluation point in a context where increments have \(O(\sqrt{\Delta t})\) fluctuations. The Stratonovich convention preserves the classical chain rule and the variational impulse-work formula; the Itô convention has better martingale properties but breaks manifest symmetry. This is not a claim that path integrals "are" stochastic processes, but rather that discretization conventions and their \(O(\hbar)\) or \(O(\Delta t)\) corrections map across both formalisms.

## 6.4 Formal Continuum Limit and Stationary Phase
Formally, as mesh size \(\max_k\Delta t_k\to0\):

$$
K(q_f,t_f;q_i,t_i)\sim
\int_{q_i}^{q_f}\mathcal Dq\;
\exp\!\left(\frac{i}{\hbar}S[q]\right).
$$

This expression is formal at this stage: we do not claim a countably additive measure construction on full path space.

`Derivation D4.2 (Classical recovery mechanism).`
Let \(q=q_{\mathrm{cl}}+\xi\), where \(q_{\mathrm{cl}}\) is stationary:
\(\delta S[q_{\mathrm{cl}};\eta]=0\).
Expand:

$$
S[q_{\mathrm{cl}}+\xi]
=S[q_{\mathrm{cl}}]
+\frac12\langle \xi,\mathcal H_{q_{\mathrm{cl}}}\xi\rangle
+O(\xi^3).
$$

Fast phase oscillations cancel nonstationary contributions, while neighborhoods of stationary paths contribute coherently. This is the precise sense in which the classical equations reappear as \(\hbar\to0\) asymptotics.

`Derivation D4.2a (Soft extremum and why a finite \(\hbar\) stabilizes refinement).`
Even before any infinite-dimensional measure issues, the refinement-composition pattern forces a "softened" version of extremization.
Consider a finite-dimensional two-slice action
\(S(q_2,q_1)+S(q_1,q_0)\) and form the Euclideanized composed weight
\[
W_\hbar(q_2,q_0):=\int dq_1\;\exp\!\left(-\frac{1}{\hbar}\big(S(q_2,q_1)+S(q_1,q_0)\big)\right).
\]
Define the associated coarse effective action (a log-partition functional)
\[
S_{\mathrm{eff}}^{(\hbar)}(q_2,q_0):=-\hbar\ln W_\hbar(q_2,q_0).
\]
Then refinement-composition is exact at the level of weights (add actions in the exponent, integrate the intermediate variable),
and the hard elimination/extremization rule appears only as the sharpening limit:
under standard nondegeneracy assumptions, Laplace's method gives
\[
S_{\mathrm{eff}}^{(\hbar)}(q_2,q_0)
\xrightarrow{\hbar\to0}
\inf_{q_1}\big(S(q_2,q_1)+S(q_1,q_0)\big),
\]
with \(O(\hbar)\) corrections determined by local quadratic data near the minimizer(s).
So \(\hbar\) plays the role of a universal control parameter that makes "refine then compare" stable, with classical extremals recovered as a limit.
In real time, the same pattern appears with \(e^{iS/\hbar}\) and stationary phase in place of positivity and Laplace concentration.

`Example D4.2b (Free-particle two-slice integral: explicit classical recovery).`
For a free particle of mass \(m\), the two-slice action is \(S=\frac{m}{2\Delta t}\bigl[(q_2-q_1)^2+(q_1-q_0)^2\bigr]\). Completing the square gives \(S=\frac{m}{4\Delta t}(q_2-q_0)^2+\frac{m}{\Delta t}(q_1-\bar q)^2\) with \(\bar q=(q_0+q_2)/2\). The Euclideanized weight integral is Gaussian:
\[
W_\hbar(q_2,q_0)=\sqrt{\frac{\pi\hbar\Delta t}{m}}\;\exp\!\left(-\frac{m(q_2-q_0)^2}{4\hbar\Delta t}\right),
\]
giving the coarse effective action
\[
S_{\mathrm{eff}}^{(\hbar)}(q_2,q_0)=\frac{m(q_2-q_0)^2}{4\Delta t}+\frac\hbar2\ln\!\frac{m}{\pi\hbar\Delta t}.
\]
As \(\hbar\to0\), \(S_{\mathrm{eff}}^{(\hbar)}\to\inf_{q_1}S=\frac{m(q_2-q_0)^2}{4\Delta t}\) with a subleading \(O(\hbar\ln\hbar)\) correction from the Gaussian width. This makes the classical-recovery mechanism of D4.2a fully explicit: the extremal path (\(q_1=\bar q\), uniform velocity) is selected by sharpening, with no additional hypotheses.

`Remark D4.2c (Delocalized angles in angular-momentum eigenstates).`
The stationary-phase mechanism explains how classical trajectories reappear in semiclassical packets. It does not imply that a single stationary eigenstate is a localized classical orbit. A simple witness occurs already in central potentials: in polar coordinates the azimuthal angle \(\phi\) is conjugate to \(L_z\), and separation of variables yields [TongQMLectures]
\[
\psi(r,\phi)=R(r)\,e^{im\phi}.
\]
Therefore
\[
|\psi(r,\phi)|^2=|R(r)|^2
\]
is independent of \(\phi\), i.e. the azimuthal angle is uniformly distributed in an \(L_z\) eigenstate. Localized "orbit phase" pictures correspond to coherent superpositions/wavepackets, consistent with the manuscript's use of stationary-phase concentration rather than "eigenstate \(=\) orbit" identification.
(A companion note on action-angle indeterminacy expands this observation to a second witness — the harmonic oscillator, where Fock states delocalize the orbit phase while coherent states — superpositions spread across many Fock modes — localize it, with decoherence dynamically selecting the localized packets — and formulates the general structure as an uncertainty relation between action and angle variables.)

`Derivation D4.3 (Van Vleck prefactor is a bi-half-density).`
In the semiclassical approximation, the endpoint kernel has the standard form
\[
K(q_f,t_f;q_i,t_i)\approx
\frac{1}{(2\pi i\hbar)^{d/2}}
\left|\det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial q_f\,\partial q_i}\right)\right|^{1/2}
\exp\!\left(\frac{i}{\hbar}S_{\mathrm{cl}}(q_f,t_f;q_i,t_i)\right),
\]
where \(S_{\mathrm{cl}}\) is the classical action evaluated on the stationary path with those endpoints.
Under changes of coordinates \(q_f=q_f(q_f')\), \(q_i=q_i(q_i')\), the mixed Hessian transforms by the chain rule, and
\[
\det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial q_f'\,\partial q_i'}\right)
=
\det\!\left(\frac{\partial q_f}{\partial q_f'}\right)
\det\!\left(\frac{\partial q_i}{\partial q_i'}\right)
\det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial q_f\,\partial q_i}\right).
\]
Taking square roots yields a factor
\(|\det(\partial q_f/\partial q_f')|^{1/2}|\det(\partial q_i/\partial q_i')|^{1/2}\),
so the prefactor transforms as a half-density in each endpoint variable. This is the concrete semiclassical origin of the half-density viewpoint in `Heuristic H4.0`.
For an early semiclassical/correspondence-principle anchor in the "Van Vleck" tradition, see [VanVleck1928Correspondence]. For a modern OA statement of the Van Vleck propagator/prefactor and the associated "Van Vleck density", see [deGosson2018ShortTimePropagators].
An explicit finite-dimensional quadratic-elimination template (Schur complement) shows how mixed endpoint Hessians arise in time slicing; we omit it here.

`Remark D4.3a (Caustics and the Maslov index).`
At caustics (conjugate points where the Van Vleck determinant \(D\to\infty\)), the semiclassical approximation appears to break down: the amplitude \(|D|^{1/2}\) diverges and \(\sqrt{D}\) changes sign. In the half-density framework the singularity is a projection artifact: the semiclassical state is a smooth half-density on the Lagrangian submanifold \(L\subset T^\ast M\), and the caustic occurs because the projection \(\pi:L\to M\) develops a fold [BatesWeinstein1997]. The sign ambiguity of \(\sqrt{D}\) is resolved by the metaplectic structure: half-densities transform under the double cover \(\mathrm{Mp}(2n)\) of \(\mathrm{Sp}(2n)\), and the Maslov index \(\mu\) — counting conjugate points along the classical path — records the accumulated phase correction \(e^{-i\pi\mu/2}\). This makes the "amplitudes are half-densities" pattern of Section 3.3 precise: the Van Vleck prefactor is not a scalar but a section of a metalinear bundle, globally well-defined even through caustics.

## 6.5 Link Back to Section 5 Singular Dynamics
The composition picture naturally includes piecewise-smooth trajectories. At impulses, the dominant classical skeleton must satisfy the jump laws from Section 5:

$$
\left[\frac{\partial\mathcal L}{\partial\dot q}\right]_{t_0^-}^{t_0^+}=J
\quad\text{(impulse)}
\qquad
\left[\frac{\partial\mathcal L}{\partial\dot q}\right]_{t_0^-}^{t_0^+}=0
\quad\text{(corner, unforced)}.
$$

So the “extremal set” entering semiclassical evaluation is broader than globally smooth trajectories; it includes admissible broken trajectories obeying the correct matching conditions.

Transition to Section 7:
with composition, weighting, and classical-recovery logic in place, we can now present quantization as deformation of algebraic products, linking path-integral discretization choices to tangent/cotangent groupoid deformation structure.

# 7. Deformation Quantization Bridge
## 7.1 From Path Weights to Product Deformation
Section 6 established that discretized composition introduces nonunique short-time prescriptions (left/right/midpoint and related schemes). The algebraic restatement is: quantization should deform the classical product of observables rather than replace classical mechanics by unrelated objects [Landsman1998] [Connes1994].

Let \(M\) be phase space with Poisson bracket \(\{\cdot,\cdot\}\), and let \(\mathcal A_0\) be a commutative algebra of classical observables (e.g., smooth functions with suitable decay/domain conditions). A deformation quantization is a family of associative products \(\star_\hbar\) on \(\mathcal A_0\) such that:

$$
f\star_\hbar g
=
fg+\sum_{n\ge 1}\hbar^n B_n(f,g),
$$

where \(B_n\) are bilinear operators, with \(f\star_0 g=fg\).

`Proposition P5.1 (Classical compatibility conditions).`
If \(\star_\hbar\) is associative for each \(\hbar\) and depends smoothly/formally on \(\hbar\), then the antisymmetric part of \(B_1\) controls the leading noncommutativity:

$$
[f,g]_{\star_\hbar}
\equiv
f\star_\hbar g-g\star_\hbar f
=
\hbar\big(B_1(f,g)-B_1(g,f)\big)+O(\hbar^2).
$$

So first-order noncommutativity is fully determined by \(B_1^{\mathrm{anti}}\).

## 7.2 Commutator-to-Poisson Recovery
`Derivation D5.1 (Correspondence limit).`
Impose the correspondence requirement that first-order antisymmetry matches the Poisson bracket:

$$
B_1(f,g)-B_1(g,f)=i\,\{f,g\}.
$$

Then

$$
[f,g]_{\star_\hbar}
=
i\hbar\,\{f,g\}+O(\hbar^2),
$$

and therefore

$$
\lim_{\hbar\to0}
\frac{1}{i\hbar}[f,g]_{\star_\hbar}
=
\{f,g\}.
$$

Dimensional closure: \([\hbar]=[\text{action}]\), while \(\{f,g\}\) carries one inverse action factor relative to \(fg\) in canonical coordinates, so \(i\hbar\{f,g\}\) has the same physical dimension as \(fg\). This is the same unit-consistency condition already used in Section 6 for \(\exp(iS/\hbar)\).

## 7.3 Concrete Model and Ordering Content
For flat phase space, the Moyal product provides an explicit representative:

$$
(f\star_M g)(q,p)
=
f(q,p)\exp\!\left[
\frac{i\hbar}{2}
\left(
\overleftarrow{\partial_q}\overrightarrow{\partial_p}
-\overleftarrow{\partial_p}\overrightarrow{\partial_q}
\right)\right]g(q,p),
$$

which reproduces the Poisson bracket at leading order and higher quantum corrections at higher orders [Landsman1998].

`Derivation D5.1a (Moyal product for linear and quadratic observables).`
For the canonical pair \(f=q\), \(g=p\), the exponential terminates at first order (all higher derivatives vanish):
\[
(q\star_M p)(q,p)
=qp+\frac{i\hbar}{2}(\partial_q q)(\partial_p p)
=qp+\frac{i\hbar}{2}.
\]
By symmetry, \((p\star_M q)=pq-\frac{i\hbar}{2}\), so \([q,p]_{\star_M}=i\hbar\), exactly reproducing the canonical commutation relation with no higher-order corrections (as expected for linear functions).

For \(f=q^2\), \(g=p\), the second-order derivative \(\partial_q^2(q^2)=2\) is constant, but it multiplies \(\partial_p^2 p=0\), so the expansion again terminates at first order:
\[
(q^2\star_M p)=q^2p+\frac{i\hbar}{2}(2q)(1)=q^2p+i\hbar\,q.
\]
Thus \([q^2,p]_{\star_M}=2i\hbar\,q\), matching \([\hat q^2,\hat p]=2i\hbar\,\hat q\) in Weyl ordering. More generally, \([q^n,p]_{\star_M}=ni\hbar\,q^{n-1}\), recovering the Leibniz rule for the Poisson bracket \(\{q^n,p\}=nq^{n-1}\) at leading order with no further corrections.

`Derivation D5.1b (Cubic witness: genuine \(O(\hbar^3)\) correction in the Moyal bracket).`
For pure monomials \(f=q^m\), \(g=p^n\), all cross-derivatives vanish (\(\partial_p q^m=\partial_q p^n=0\)), so the Moyal product terminates at order \(\min(m,n)\) in \(\hbar\):
\[[q^m,p^n]_{\star_M}=\sum_{\substack{k=1\\k\;\mathrm{odd}}}^{\min(m,n)}\frac{2(i\hbar/2)^k}{k!}\,\frac{m!\,n!}{(m\!-\!k)!\,(n\!-\!k)!}\,q^{m-k}p^{n-k}.\]
When \(\min(m,n)\le 2\) only the \(k=1\) term contributes, giving \(i\hbar\{q^m,p^n\}\) exactly — the Poisson bracket suffices, as verified in D5.1a. The first case requiring a higher term is \(m=n=3\): the \(k=1\) term gives \(9i\hbar\,q^2p^2=i\hbar\{q^3,p^3\}\), and the \(k=3\) term gives \(2(i\hbar/2)^3/3!\cdot(3!)^2=-\tfrac32\,i\hbar^3\), so
\[[q^3,p^3]_{\star_M}=i\hbar\{q^3,p^3\}-\tfrac32\,i\hbar^3.\]
The constant \(-\tfrac32 i\hbar^3\) is a genuine quantum correction that cannot be recovered from the Poisson bracket. This makes the cubic pair the simplest witness that deformation quantization goes beyond a re-encoding of the Poisson algebra.

`Heuristic H5.1 (Ordering as deformation gauge choice).`
The Section 6 discretization ambiguity is naturally interpreted as choosing different but deformation-equivalent star products; they share the same classical bracket data but differ in \(O(\hbar)\) and higher corrections [Landsman1998].

## 7.4 Equivalence Classes and Groupoid Viewpoint
`Proposition P5.2 (Equivalent star products, same classical limit).`
If two products \(\star_\hbar\) and \(\star'_\hbar\) are related by a formal automorphism

$$
T_\hbar=\mathrm{id}+\hbar T_1+O(\hbar^2),
\qquad
f\star'_\hbar g
=
T_\hbar^{-1}\!\big((T_\hbar f)\star_\hbar(T_\hbar g)\big),
$$

then they define the same Poisson bracket in the \(\hbar\to0\) limit, while generally differing in subleading quantum terms.

This is the algebraic side of the same continuity narrative: quantization data are organized into equivalence classes compatible with one classical limit. Geometric deformation programs (including tangent-groupoid viewpoints) encode the same bridge from commutative classical data to noncommutative quantum products [Connes1994]. (A companion satellite develops the tangent-groupoid bridge explicitly: the pair groupoid encodes the sewing law, Connes' tangent groupoid interpolates between classical and quantum composition, and the resulting $\hbar$-deformation recovers the path-integral kernel as a groupoid convolution [TangentGroupoidBridge].)

`Remark P5.2a (Deformation equivalence is physical, not merely formal).`
The formal-automorphism statement of Proposition P5.2 is not purely asymptotic: explicit calculations for a position-dependent mass \(f(q)=1+\alpha q^2\) in a harmonic trap show that different prescriptions (Weyl, half-density conjugation) agree exactly on the principal symbol (Layer 1) and the first-derivative connection term (Layer 2), differing only in an \(O(\hbar^2)\) scalar potential (Layer 3). The resulting ground-state energy shift between prescriptions is \(|\Delta E_0|=\hbar\omega\alpha_0^2/16\), where \(\alpha_0\) is dimensionless mass variation at the oscillator scale. For realistic semiconductor heterostructures (GaAs quantum wells, \(\hbar\omega\sim 10\) meV, \(\alpha_0\lesssim 0.3\)), this gives \(|\Delta E_0|\lesssim 0.06\) meV, well below current spectroscopic resolution (\(\sim 0.1\) meV). The four-layer stratification and the explicit energy estimate are detailed in Appendix \S\,10.2 (`Remark D9.1a`). The physical content of deformation equivalence is thus that ordering prescriptions are observationally indistinguishable at accessible scales, while the half-density prescription provides a geometrically distinguished representative within the equivalence class (analogous to Lorenz gauge).

(A companion satellite on ordering equivalence develops the four-layer classification (principal symbol, connection, scalar potential, domain) systematically, with additional worked examples — position-dependent mass in a harmonic trap, curved-manifold Laplace-Beltrami operator — and connects the ordering/discretization freedom to star-product automorphisms and the Itô/Stratonovich correspondence in path-integral time-slicing.)

## 7.5 Formal Deformation Boundary
In this section we use formal/asymptotic deformation language for local bridge statements. We do not require the full \(C^\ast\)-algebraic deformation-quantization program for the manuscript's main argument; the needed ingredient is compatibility of the classical limit and quantum corrections under the stated assumptions [Landsman1998].

Transition to Section 8:
with the deformation bridge in place, the remaining problem is not how to define first-order quantum corrections, but how to keep refined predictions finite and scale-consistent when naive limits diverge. That control problem is precisely the renormalization step.

# 8. Renormalization as Controlled Refinement
## 8.1 Why Renormalization Appears in Refinement Limits
The previous sections treated refinement as benign: polygonal refinement in Section 3, time-slicing in Section 6, and deformation parameter limits in Section 7. In quantum field theory and in several singular quantum-mechanical models (e.g. contact interactions), the same refinement step can instead *diverge* [ManuelTarrach1994PertRenQM] [BoyaRivero1994Contact]:
as the cutoff scale is removed, intermediate quantities blow up even when low-energy physics is expected to remain finite. (A companion note on fermionic mediators traces how contact-interaction limits arise as the natural effective-theory residue when quantum loops replace classical sources.)

Renormalization is the mechanism that restores the program's central thesis in the divergent case:
it provides a controlled rule for taking refinement limits so that observables remain stable.
Operationally, it accepts that intermediate expressions depend on a regulator (cutoff), but requires that properly defined observables do not.

To keep the discussion aligned with the paper's composition language, we treat renormalization as an invariance/consistency condition across composed refinement steps.

`Heuristic H6.1 (Renormalization as part of “what a theory is”).`
In benign refinement problems, one can often send the refinement parameter to zero without further choices. In divergent refinement problems, the renormalization prescription (what is regulated, what is held fixed, and how parameters are re-expressed as the cutoff moves) is not optional bookkeeping: it is part of the definition of the continuum theory, because it specifies which composed/refined predictions are declared physically stable.

## 8.2 Regulator, Bare Data, and Renormalized Observables
Let \(\Lambda\) denote a refinement cutoff (e.g., momentum cutoff \(|k|<\Lambda\) or lattice spacing \(a\) with \(\Lambda\sim 1/a\)). Let \(g_B(\Lambda)\) denote the cutoff-dependent *bare* parameters of the regulated theory (couplings, masses, field normalizations), and let \(O_\Lambda\) be a regulated prediction for some observable \(O\).

`Proposition P6.1 (Renormalized observable as cutoff-stable limit).`
If there exists a choice of cutoff-dependent bare parameters \(g_B(\Lambda)\) such that the limit

$$
O_{\mathrm{phys}}
\equiv
\lim_{\Lambda\to\infty} O_\Lambda\big(g_B(\Lambda)\big)
$$

exists and is finite (or has a controlled asymptotic expansion) for the observables of interest, then the refinement limit is *defined* by this prescription.

This statement is intentionally operational: it does not assume that the cutoff-free object exists without tuning. It states that "physical theory" means a stable target under refinement.

It is often convenient to introduce a renormalization scale \(\mu\) (a reference resolution) and a renormalization map \(R_{\Lambda\to\mu}\) from bare to renormalized parameters:

$$
g_R(\mu) = R_{\Lambda\to\mu}\big(g_B(\Lambda)\big).
$$

The composition viewpoint suggests a compatibility condition:
renormalizing from \(\Lambda\) down to \(\mu\) should be the same as renormalizing from \(\Lambda\) to an intermediate scale \(\kappa\) and then from \(\kappa\) to \(\mu\):

$$
R_{\Lambda\to\mu} = R_{\kappa\to\mu}\circ R_{\Lambda\to\kappa}.
$$

This is the renormalization-group (RG) semigroup property in refinement language; for a standard Wilsonian/ERG discussion of coarse-graining flows and fixed points, see [Rosten2012ERG].

`Derivation D6.0 (Control map \(\tau\): comparing refinements at fixed ruler).`
The same compatibility condition can be stated without committing to a particular regulator. Fix a reference ruler \(h>0\) (the resolution at which we compare predictions), and let \(A_{h,\theta}\) denote a family of amplitudes/prediction functionals indexed by parameters \(\theta\) (couplings, normalizations, and any fixed conventions such as scalarization gauge). For a refinement factor \(b>1\), choose a "compare at ruler \(h\)" operation \(\mathcal C_{b,h}\): take a prediction written at finer ruler \(h/b\) and express it back at ruler \(h\) (e.g. by composing fine steps or integrating intermediate variables when such a representation exists). Scale compatibility is the closure requirement that refinement-comparison lands back in the same family after a parameter update:

$$
\mathcal C_{b,h}\!\big(A_{h/b,\theta}\big)=A_{h,\tau_b(\theta)}.
$$

Here \(\tau_b\) is the control/flow map induced by the compare-at-fixed-ruler operation. When no such \(\tau_b\) exists within the chosen parameter family, refinement generates new operators and the family must be enlarged (counterterms/effective operators). A concrete micro-witness is `Derivation D6.2a`, where step-halving induces \(\tau_2(a)=a/2+1/4\) with fixed point \(a_\ast=1/2\). In the cutoff notation above, one may view \(R_{\Lambda\to\mu}\) as a special case of \(\tau\) written with explicit reference scales.

## 8.3 RG Equation from Cutoff Independence
`Derivation D6.1 (RG equation as consistency under refinement).`
Assume a regulated observable depends on the cutoff \(\Lambda\) both explicitly and through the bare parameters \(g_B(\Lambda)\):

$$
O_{\mathrm{phys}} = O_\Lambda\big(g_B(\Lambda)\big),
$$

and impose cutoff-independence of the physical prediction:

$$
\frac{d}{d\ln\Lambda} O_\Lambda\big(g_B(\Lambda)\big)=0.
$$

By the chain rule,

$$
0
=
\frac{\partial O_\Lambda}{\partial \ln\Lambda}
+
\sum_a \frac{d g_B^a}{d\ln\Lambda}\frac{\partial O_\Lambda}{\partial g_B^a}
,
$$

where \(a\) ranges over the components of the parameter vector. Defining the beta functions
\(\beta_B^a(g_B)\equiv \frac{d g_B^a}{d\ln\Lambda}\), we obtain the RG equation:

$$
\left(\frac{\partial}{\partial \ln\Lambda}
+\sum_a \beta_B^a(g_B)\frac{\partial}{\partial g_B^a}\right)O_\Lambda(g_B)=0.
$$

In the \(\mu\)-parametrized form with renormalized parameters \(g_R(\mu)\), the same reasoning yields a flow equation
\(\mu \frac{d}{d\mu}g_R(\mu)=\beta(g_R)\) plus corresponding RG invariance equations for renormalized observables. The key point for this manuscript is structural:
RG is not extra physics added after quantization; it is the *consistency condition* that makes composed refinement meaningful when naive limits diverge.

`Proposition P6.2 (Flow generator from refinement semigroup).`
Let \(W_{\Lambda\to\kappa}\) be the map sending effective parameters at scale \(\Lambda\) to effective parameters at scale \(\kappa<\Lambda\), and assume:
1. \(W_{\Lambda\to\Lambda}=\mathrm{id}\),
2. \(W_{\kappa\to\mu}\circ W_{\Lambda\to\kappa}=W_{\Lambda\to\mu}\),
3. differentiability with respect to \(\ln\Lambda\).

Then the infinitesimal generator defines beta functions:

$$
\beta^a(g)
=
\left.\frac{d}{dt}\,W^a_{e^t\mu\to\mu}(g)\right|_{t=0},
$$

and finite scale changes are recovered by integrating this vector field on parameter space. So RG flow is the differential form of composed refinement.

`Derivation D6.2 (Toy logarithmic divergence and subtraction).`
Consider a single-coupling situation with a logarithmic cutoff dependence in a regulated prediction:

$$
O_\Lambda(g_B;\mu)=g_B+c\,g_B^2\ln\!\left(\frac{\Lambda}{\mu}\right)+O(g_B^3),
$$

where \(c\) is a dimensionless constant determined by the model and by the chosen renormalization convention. Define the renormalized coupling at scale \(\mu\) by a renormalization condition \(g_R(\mu)\equiv O_\Lambda(g_B(\Lambda);\mu)\) which is held fixed as \(\Lambda\to\infty\). Cutoff-independence then enforces:

$$
0=\frac{d}{d\ln\Lambda}g_R(\mu)
=\frac{d g_B}{d\ln\Lambda}+c\,g_B^2+O(g_B^3),
$$

so \( \beta_B(g_B)\equiv \frac{d g_B}{d\ln\Lambda}=-c\,g_B^2+O(g_B^3)\). Equivalently, at fixed bare coupling one finds the running with \(\mu\):

$$
\beta(g_R)\equiv \mu\frac{d g_R}{d\mu}=-c\,g_R^2+O(g_R^3),
$$

illustrating how renormalization turns the divergent \(\ln\Lambda\) refinement effect into a scale-dependent coupling consistent with stable observables.

## 8.4 Refinement Control Before QFT: Scale-Halving as a Model
One can see the same logic in purely classical numerical refinement. Consider an evolution operator \(\Phi_\varepsilon\) representing "one step" at resolution \(\varepsilon\). Composition gives \(\Phi_{2\varepsilon}\approx \Phi_\varepsilon\circ\Phi_\varepsilon\). A refinement-control question is then:
what correction to \(\Phi_\varepsilon\) makes the two-step composition agree with a one-step method after rescaling back to the same reference resolution?

`Derivation D6.2a (Step-halving induces a control map \(\tau\) in a toy ODE).`
Consider the autonomous ODE \(y'=f(y)\) on \(\mathbb R^n\) and a one-parameter family of one-step maps at step size \(h\),
\[
\Phi_h^{(a)}(y)=y+h f(y)+a\,h^2 f'(y)[f(y)]+O(h^3).
\]
Here \(f'(y)\) is the Jacobian (derivative), and \(f'(y)[v]\) denotes its action on an increment \(v\).
Define the step-halving comparison \(H(\Phi_h):=\Phi_{h/2}\circ \Phi_{h/2}\). A direct expansion to order \(h^2\) gives
\[
H(\Phi_h^{(a)})(y)=y+h f(y)+\left(\frac14+\frac{a}{2}\right)h^2 f'(y)[f(y)]+O(h^3).
\]
Thus, within this ansatz family, refinement comparison closes by a parameter update
\[
H(\Phi_h^{(a)})=\Phi_h^{(\tau_2(a))}+O(h^3),\qquad \tau_2(a)=\frac{a}{2}+\frac14,
\]
with fixed point \(a_\ast=1/2\) (the second-order Taylor coefficient of the exact flow). This is a clean micro-model for `Derivation D6.0`: \(\tau_b\) is the control map required so that "refine and compare" lands back in the chosen family; failure of closure forces enlarging the family (counterterms).

`Derivation D6.2a-HO (Harmonic-oscillator witness for step-halving).`
Apply the control-map construction to \(y'' + y = 0\) written as a system with \(f(y,v) = (v,-y)\). The Jacobian is constant: \(f'= \bigl(\begin{smallmatrix}0&1\\-1&0\end{smallmatrix}\bigr)\), so \(f'(y,v)[f(y,v)] = (-y,-v)\) (the harmonic oscillator has \(f''=0\), making the \(O(h^3)\) analysis trivially clean).

The explicit Euler discrepancy is \(E_{h/2}\circ E_{h/2} - E_h = (h^2/4)\,f'[f]\), confirming D6.2a. At the fixed point \(a_\ast = 1/2\), the parametric map becomes \((y + hv - h^2 y/2,\; v - hy - h^2 v/2)\), which matches the exact flow \((y\cos h + v\sin h,\; v\cos h - y\sin h)\) to order \(h^2\). The control map \(\tau_2(a) = a/2 + 1/4\) drives any initial discretization toward this second-order-accurate scheme under repeated halving — exponential relaxation to the universal attractor, with rate \(1/2\) per doubling.

`Remark D6.2a-sg (Semigroup law and beta function for general refinement).`
Replacing step-halving by a general \(b\)-fold refinement (composing \(b\) copies of \(\Phi_{h/b}^{(a)}\) and reading off the \(O(h^2)\) coefficient) gives
\[
\tau_b(a)=\frac{a}{b}+\frac{b-1}{2b},\qquad a_\ast=\tfrac12\;\;\text{for all }b>0.
\]
These maps satisfy the semigroup law \(\tau_b\circ\tau_c=\tau_{bc}\). Setting \(b=1+\varepsilon\) and expanding yields the infinitesimal generator \(\beta(a)=\tfrac12-a\), a linear flow with universal attractor \(a_\ast=1/2\). Thus the "RG semigroup" language invoked in `Heuristic H6.2` is not merely an analogy: the step-refinement control maps form a one-parameter semigroup whose beta function, fixed point, and exponential relaxation to universality are all explicit.

`Remark D6.2a1 (Next discrepancy term and the next rooted tree in Euler step-doubling).`
For the explicit Euler map \(E_h(y):=y+h f(y)\) with \(f\in C^2\), expanding one order further gives
\[
E_{h/2}\!\circ E_{h/2}(y)-E_h(y)
=\frac{h^2}{4}\,f'(y)[f(y)]+\frac{h^3}{16}\,f''(y)[f(y),f(y)]+O(h^4),
\]
where \(f'(y)[v]\) denotes the Jacobian acting on a vector and \(f''(y)[v,w]\) is the bilinear second derivative. In rooted-tree language, each monomial in the Taylor expansion is an *elementary differential* labelled by a rooted tree: the leading \(O(h^2)\) term is the chain tree \(F([\bullet]):=f'(y)[f(y)]\), and the new \(O(h^3)\) term is the branch tree \(F([\bullet,\bullet]):=f''(y)[f(y),f(y)]\). (The \(O(h^3)\) contribution requires \(f\in C^2\); the \(O(h^2)\) term only needs \(f\in C^1\).)

`Heuristic H6.2 (Rooted trees as refinement bookkeeping).`
In Runge--Kutta and related integrators, the comparison between composed steps and a single step organizes into rooted-tree expansions; the corresponding composition law forms a group (the Butcher group). Interpreting “step-halving then rescaling back” as a scale-update operation makes the analogy with RG bookkeeping explicit, and rooted-tree/Hopf-algebra combinatorics also appears in perturbative renormalization [Brouder1999] [McLachlan2017] [ConnesKreimer2000].

This example is included not to replace QFT renormalization, but to reinforce the paper's thesis with a clean model: renormalization is what you do when "refine and compare" is not automatically stable. The Butcher *group* concerns formal method composition, whereas Wilsonian coarse-graining is generally a *semigroup* because information is discarded at each coarse-graining step. (A companion satellite on rooted-tree bookkeeping develops the Butcher/RG dictionary in full: explicit Hopf coproduct formulas for trees up to order 3, a 7-entry correspondence table, a worked 2D delta RG example parallel to the midpoint RK2 composition test, and a precise characterization of the group-vs-semigroup structural distinction.)
A structural gap remains between the toy model and full RG: the beta function \(\beta(a)=\tfrac12 - a\) of `Remark D6.2a-sg` is *linear*, so the RG invariant is algebraic in the coupling and no new scale is generated. Dimensional transmutation (`Derivation D6.2`, Section 8.3) requires a beta function of order \(\ge 2\) at the fixed point, producing an essential singularity \(\Lambda_\ast\sim\mu\,e^{-1/(cg)}\) that is non-analytic in the coupling. The semigroup axioms (`Proposition P6.2`) are shared by both regimes; what separates them is the order of vanishing of \(\beta\) at the fixed point. (For an exactly solvable coarse-graining model — Gaussian integration as Schur complement — that makes the semigroup property and non-invertibility of coarse-graining concretely visible, cf.\ Derivation RG-D1.7 in the RG companion note.)

## 8.5 Counterterms as Refinement Corrections
In field theory language, refinement is implemented by a regulated action \(S_\Lambda\) with cutoff-dependent parameters. Schematically,

$$
S_\Lambda[\phi]
=
\int d^D x\left(
\frac{Z(\Lambda)}{2}(\partial\phi)^2
+\frac{m^2(\Lambda)}{2}\phi^2
+\frac{\lambda(\Lambda)}{4!}\phi^4
+\cdots
\right),
$$

where \(D\) is the spacetime dimension and the "\(\cdots\)" stands for additional operators allowed by symmetries and by the desired accuracy. The counterterm viewpoint is simply the statement that \(Z,m^2,\lambda,\ldots\) must be chosen as functions of \(\Lambda\) so that the cutoff-stable limits of observables exist. In this compositional narrative, counterterms are refinement corrections required to keep the "same theory" after integrating out short scales.

`Derivation D6.3 (Difference quotient as counterterm subtraction).`
Let \(f\in C^1\) and \(\varepsilon\to 0^+\). The two regulated quantities \(f(x+\varepsilon)/\varepsilon\) and \(f(x)/\varepsilon\) each diverge like \(1/\varepsilon\). Subtracting the local counterterm \(f(x)/\varepsilon\) produces a finite limit:

$$
\frac{f(x+\varepsilon)}{\varepsilon}-\frac{f(x)}{\varepsilon}
=\frac{f(x+\varepsilon)-f(x)}{\varepsilon}
\xrightarrow{\varepsilon\to0} f'(x).
$$

This is a minimal model of renormalization: divergent regulated expressions become finite after subtracting a divergence that depends only on local data, and the renormalized quantity is the cutoff-stable remainder.

The Connes-Kreimer framework makes this consistency structural by encoding perturbative renormalization as a factorization problem with a Hopf-algebra organization of divergences [ConnesKreimer2000]. For this manuscript, the take-away is not the full machinery but the alignment:
renormalization is a principled method for producing regulator-independent predictions from composable local pieces when refinement alone does not converge.

## 8.6 Assumptions and Boundaries Audit
`Proposition P6.3 (Closure assumption for finite-parameter flow).`
Finite-dimensional beta-function systems are closed only after choosing a truncation/ansatz for allowed operators (or a complete effective basis). If new operators are generated by refinement and omitted from the parameter vector, the reduced flow is only approximate.

This caveat is essential for interpreting section 8 correctly: the RG equations written here are exact at the level of the chosen variable set, but practical truncations can make them approximate. The main thesis is unaffected: renormalization remains the rule that restores cross-scale consistency under composed refinement.

`Derivation D6.4 (Two-level truncation audit and a quantitative stability window).`
Take a one-coupling flow with two truncation levels:
\[
\beta_{(2)}(g)=-b_0 g^2,\qquad
\beta_{(3)}(g)=-b_0 g^2-b_1 g^3,\qquad b_0>0.
\]
At fixed \(g\), define the local truncation defect
\[
\delta_\beta(g):=\frac{|\beta_{(3)}(g)-\beta_{(2)}(g)|}{|\beta_{(2)}(g)|}
=\left|\frac{b_1}{b_0}\right|\,|g|.
\]
For a tolerance \(\eta\in(0,1)\), requiring \(\delta_\beta(g)\le \eta\) yields an explicit stability window
\[
|g|\le g_{\max}(\eta):=\eta\,\frac{b_0}{|b_1|}.
\]
Thus the truncation is quantitatively controlled only in the weak-coupling region \( |g|\ll b_0/|b_1| \); when \( |g|\sim b_0/|b_1| \), the neglected term is order-one and truncation closure fails. This turns the qualitative caveat of `Proposition P6.3` into a concrete pass/fail criterion.

`Remark H6.3 (Non-perturbative content recovery from the contact expansion).`
The contact expansion \(C_0+C_2 q^2+C_4 q^4+\cdots\) of Section 4 in the fermionic companion note is a Taylor series in \(q^2/M^2\), where \(M\) is the mass of the integrated-out mediator. Its Taylor coefficients are infrared data—measurable at low momentum transfer. The non-perturbative content (poles, branch cuts, instanton-type singularities) lies outside the convergence disk \(|q^2|<M^2\) and is invisible to any finite truncation. Yet this content can be recovered by controlled extrapolation methods matched to the singularity type: **(1) Poles (tree-level exchange):** For a Yukawa amplitude \(\mathcal A(q^2)=g^2/(q^2+M^2)\), the \([0/1]\) Padé approximant of just the first two contact coefficients \(C_0=g^2/M^2\), \(C_2=-g^2/M^4\) yields \(P_{[0/1]}(q^2)=C_0/(1-(C_2/C_0)q^2)=g^2/(q^2+M^2)=\mathcal A(q^2)\), recovering the full amplitude exactly—including the pole at \(q^2=-M^2\), which sits outside the Taylor convergence disk. Two low-energy observables (the scattering length \(C_0\) and the effective-range ratio \(C_2/C_0=-1/M^2\)) determine the UV mass scale. **(2) Branch cuts (loop-level):** The vacuum polarization \(\Pi(q^2)\) has a branch cut at \(q^2=4m^2\) (pair-production threshold). The Taylor coefficients below threshold determine the moments of the spectral function \(\mathrm{Im}\,\Pi(s)\) via dispersion relations (fermionic companion, Remark 3.5), and \([N/N]\) Padé approximants place poles that accumulate on the cut as \(N\to\infty\) (Montessus de Ballore). **(3) Divergent series (non-perturbative sectors):** When Taylor coefficients grow as \(|a_n|\sim n!\), the Borel transform \(B(t)=\sum(a_n/n!)t^n\) has finite radius of convergence, and Borel–Padé resummation (uncuttable companion, Remark 2.5) recovers the full function including exponentially suppressed contributions \(\sim e^{-A/g}\) from instanton saddle points. In each case, the Taylor coefficients are the "local data" of the refinement-compatibility framework (Section 10.3, Proposition P10.1), and the reconstruction method is the "control map" \(\tau\) that accesses global structure from local input. The hierarchy of methods—algebraic rational approximation for poles, integral reconstruction for cuts, Borel resummation for essential singularities—mirrors the hierarchy of singularity types in the analytic continuation, and each method requires its own control hypotheses (meromorphy, dispersion-relation analyticity, Borel summability). The contact expansion thus determines the non-perturbative content, not despite being perturbative, but because analyticity and crossing symmetry (the consistency conditions behind RCP) constrain the global structure once the local data is given. This is the inverse of the decoupling process of the fermionic companion (Remark 4.6): there, UV physics collapses into contact coefficients as \(M\to\infty\); here, the contact coefficients are used to reconstruct the UV physics by controlled extrapolation.

Transition to Section 9:
we now have the full chain Newtonian refinement \(\to\) action additivity \(\to\) path-integral composition \(\to\) deformation compatibility \(\to\) renormalized refinement control. The final synthesis section stress-tests the transitions, labels what remains heuristic, and consolidates the manuscript into a single coherent argument.

# 9. Unified Perspective and Open Problems
## 9.1 End-to-End Claim Graph
The manuscript has built one chain across seven technical steps:
1. Section 3: refinement geometry in central-force motion yields an exact finite-step invariant (equal areas / angular momentum preservation).
2. Section 4: action stationarity and Noether symmetry express the same invariant in variational language.
3. Section 5: weak/distributional formulation extends stationarity to singular limits (mollifiers, corners, impulses) with explicit admissibility boundaries.
4. Section 6: composition under slicing plus additive action yields exponential weighting and stationary-phase classical recovery.
5. Section 7: ordering ambiguity is recast as deformation-equivalence data with a shared Poisson classical limit.
6. Section 8: divergent refinement is controlled by renormalization maps and RG semigroup consistency (`Remark D6.2a-sg` gives the explicit semigroup law and beta function in a toy model).

`Remark P7.1a (Compact compatibility map for navigation).`
The same chain can be read as three linked tracks, each with explicit witnesses:
1. **Partition track**: D1.1-D1.2 \(\to\) D2.1 \(\to\) D3.1 \(\to\) D4.1/D4.1a \(\to\) P4.2.
2. **Representation track**: D4.1b \(\to\) D5.1 \(\to\) D9.1/D9.1a/D9.1b/D9.1d/D9.1e.
3. **Scale track**: D6.0-D6.2 \(\to\) D6.2a-sg/D6.4 \(\to\) D8.1-D8.2 \(\to\) D11.2-D11.3.
Each arrow is a compatibility bridge, not a change of subject. This compact map is the textual counterpart of the diagram requested in Section 9.5.

The unifying thesis is therefore not "classical then quantum then QFT" as disconnected layers, but "one refinement/composition problem under progressively stricter consistency requirements."

`Proposition P7.1 (Compatibility chain of limits).`
Under the regularity and admissibility assumptions stated in sections 3--8, the following compatibility conditions can be imposed simultaneously:

$$
\delta S[q;\eta]=0
\;\Longleftrightarrow\;
\text{Euler-Lagrange in weak form},
$$

$$
K \sim \int \mathcal Dq\,e^{iS[q]/\hbar}
\;\Longrightarrow\;
\hbar\to 0 \text{ concentrates on } \delta S=0,
$$

$$
\lim_{\hbar\to 0}\frac{1}{i\hbar}[f,g]_{\star_\hbar}=\{f,g\},
\qquad
\left(\partial_{\ln\Lambda}+\beta\cdot\partial_g\right)O_\Lambda=0.
$$

These equations are not identical statements; they are compatibility constraints on one staged construction: classical extremals, quantum composition, algebraic deformation, and scale consistency must match in their overlap domains.

## 9.2 Transition Stress Test
`Derivation D7.1 (No hidden leap audit across transitions).`
The manuscript can be stress-tested by checking each transition against one explicit closure condition:

1. `Section 3 -> Section 4` closure:
finite-step angular momentum invariance and variational Noether charge agree through
\(\dot A=\frac{L_{\mathrm{ang}}}{2m}\). This closes the geometry-to-variational bridge.

2. `Section 4 -> Section 5` closure:
Euler-Lagrange equations in classical smooth form imply weak distributional form when tested against \(C_c^\infty\), and mollifier localization recovers pointwise equations under continuity assumptions. This closes smooth-to-weak extension.

3. `Section 5 -> Section 6` closure:
the admissible classical set in semiclassics includes smooth and piecewise-smooth trajectories satisfying matching laws
\([\partial_{\dot q}\mathcal L]^+_- =0\) (corner) or \(=J\) (impulse). The composition integral \(\int dq\,K(q_f,t_f;q,t_{\mathrm{mid}})K(q,t_{\mathrm{mid}};q_i,t_i)\) sums over *all* intermediate configurations \(q\), and for short-time kernels with saddle-point evaluation, the stationary-phase condition at the junction recovers exactly the Weierstrass–Erdmann corner law \([\partial_{\dot q}\mathcal L]^+_-=0\). A concrete witness: a free particle receiving an instantaneous kick \(J\) at \(t_{\mathrm{mid}}\) satisfies the impulse law and contributes correctly to \(K(q_f,t_f;q_i,t_i)\) via the intermediate integral (the saddle point shifts by the momentum transfer). The bridge is thus closed at the variational level; kernel-level closure for general piecewise-smooth paths in the full (non-saddle-point) measure remains a formal identification.

4. `Section 6 -> Section 7` closure:
discretization/ordering freedom in short-time kernels maps to star-product representatives that share the same Poisson boundary at \(\hbar\to0\). This closes path-integral ambiguity into deformation language.

5. `Section 7 -> Section 8` closure:
deformation handles classical/quantum compatibility at fixed scale; renormalization handles cross-scale consistency when refinement diverges. This closes fixed-scale quantization into multiscale consistency.

The audit criterion is simple: every bridge states its assumptions and carries an explicit invariant or equation through the transition. Where this fails, the claim is downgraded to heuristic.

## 9.3 What Is Proven vs Heuristic
For navigation, Sections 3–8 contain the following mix of results and bridges:

1. **Section 3:** polygonal central-impulse refinement preserves angular momentum and equal areas at finite step. (`Proposition`, `Derivation`) Boundary: central impulses and consistent refinement limit.

2. **Section 4:** Euler–Lagrange plus Noether recover angular-momentum and energy invariants. (`Derivation`, `Proposition`) Boundary: \(C^2\) trajectory regularity and standard variational hypotheses.

3. **Section 5:** weak Euler–Lagrange, mollifier probes, and jump laws for corners/impulses. (`Proposition`, `Derivation`) Boundary: distribution linearity and no undefined nonlinear products.

4. **Section 6:** composition plus additivity imply exponential weighting; stationary phase yields classical recovery. (mixed: `Proposition`, `Derivation`, `Heuristic`) Boundary: formal path-integral usage and local stationary-phase assumptions.

5. **Section 7:** deformation products recover the Poisson bracket; ordering appears as deformation-equivalence choice. A complementary geometric resolution exists: half-density conjugation provides a canonical representative within the deformation-equivalence class, agreeing with Weyl ordering on the principal symbol and connection (first-derivative) terms, differing only in an \(O(\hbar^2)\) scalar potential (`Remark D9.1a`, `Remark P5.2a`, Appendix \S\,10.2). (mixed: `Proposition`, `Derivation`, `Heuristic`) Boundary: formal/asymptotic deformation setting and scope of equivalence.

6. **Section 8:** RG appears as semigroup consistency under composed refinement; counterterms appear as refinement corrections. (mixed: `Proposition`, `Derivation`, `Heuristic`) Boundary: closure/truncation assumptions and regulator-scheme choice.

`Heuristic H7.1 (Programmatic interpretation).`
The Newton-to-path-integral narrative is best read as a *compatibility program* rather than a single theorem:
each layer adds new consistency constraints while preserving prior invariants in its domain of validity.

## 9.4 Residual Vulnerabilities
1. The path integral remains formal at full measure-theoretic level; constructive control is not provided here.
   Minimal closure target: exhibit one explicit regulated kernel family \(K_\varepsilon\) with a proved composition law and a controlled \(\varepsilon\to0\) statement in a nontrivial model.
   Status: **SUBSTANTIALLY CLOSED.** Appendix 10.6 provides the regulated Gaussian family (D12.1: exact composition with additive regulator; P12.1: controlled \(\varepsilon\to0\) limit recovering the heat-kernel semigroup), a first-order bounded-potential extension (D12.2: \(O(V)\) composition closure), quantitative operator-norm bounds (P12.2), and an explicit failure mode for singular potentials (D12.2a). Full constructive path-space control (e.g., Wiener-measure-level estimates) remains open.
2. Deformation equivalence is stated at the structural level; explicit model-by-model operator-domain analysis is partially addressed.
   Current status: one position-dependent-mass model (\(f(q)=1+\alpha q^2\) in a harmonic trap) has been carried through Weyl and half-density quantizations with explicit \(O(\hbar^2)\) mismatch term and quantitative energy-shift estimate (`Remark D9.1a`, `Remark P5.2a`). Full extension to curved-manifold kinetic symbols with domain analysis remains open.
3. RG flow is derived structurally; explicit computations are now provided at both the quantum-mechanical level (2D contact interaction, Appendix 10.5: D11.1–D11.3) and the field-theory level (\(\lambda\phi^4\) one-loop beta function in \(D=4-2\varepsilon\), Appendix 10.1: D8.2a).
   Status: **CLOSED.** The minimal closure target (one fixed-scheme one-loop QFT computation with subtraction, beta function, and scheme change in manuscript conventions) is met by D8.2a.
4. Truncation closure in section 8 is identified but not benchmarked by an explicit truncation-error study.
   Minimal closure target: compare at least two truncation levels on the same model and report an observable-level stability window.

Vulnerabilities 1 and 3 are now substantially closed by Appendices 10.6 and 10.1 respectively. Vulnerabilities 2 and 4 remain open scope boundaries with explicit closure targets. All four are honest scope boundaries, not hidden defects: each is paired with a concrete witness (existing or prospective) that would close it.

## 9.5 Future Work (Task-Driven Revision Queue; Editorial Package Labels)
To keep the manuscript evolving by derivation rather than by incremental wording changes, future edits should be organized as concrete work packages:

1. **Package A (Path-space control witness).**
   Deliverable: one subsection with a regulated family \(K_\varepsilon\), its composition identity, and a limit statement.
   Pass criterion: at least one numbered statement with assumptions and one explicit failure mode when assumptions are dropped.
   Current status: Appendix 10.6 now contains free-kernel exact composition, first-order bounded-potential witness, quantitative `L^\infty` control, and an exact nontrivial solvable kernel benchmark (`D12.1`, `P12.1`, `D12.2`, `P12.2`, `D12.3`); full constructive path-space control remains open.
2. **Package B (Ordering/domain benchmark).**
   Deliverable: one appendix-level model comparing two orderings plus half-density conjugation.
   Pass criterion: explicit operator difference through \(O(\hbar)\) and a clear statement of domain/equivalence boundaries.
   Current status: Appendix 10.2 now includes periodic/curved symmetry benchmarks, one explicit self-adjoint extension witness (`D9.1b`, `D9.1d`, `D9.1e`, `D9.1f`), and a four-layer stratification of ordering differences with quantitative observability estimates (`Remark D9.1a`); full extension classification remains open.
3. **Package C (QFT-level RG witness).**
   Deliverable: one-loop running in a fixed subtraction scheme using manuscript conventions.
   Pass criterion: explicit \(\beta(g)\), one scheme-change computation, and direct mapping to scale compatibility in Section 8.
   Current status: **SUBSTANTIALLY COMPLETE.** Appendix 10.1 contains the generic single-coupling template (D8.1, D8.2, P8.1) plus an explicit QFT-level witness (D8.2a: \(\lambda\phi^4\) one-loop beta function in \(D=4-2\varepsilon\)). Appendix 10.5 provides the full 2D contact-interaction computation (D11.1–D11.3: cutoff loop, renormalized coupling, beta function, dimensional transmutation, scheme dependence). The Wilsonian shell-integration route making semigroup composition directly visible is available in the RG-fundamental companion note (Derivation RG-D1.2a); a forward reference appears in Appendix 10.5 (line after D11.2).
4. **Package D (Truncation error audit).**
   Deliverable: side-by-side flows for two truncation levels with at least one observable comparison.
   Pass criterion: a quantitative stability region and one explicit breakdown regime.
5. **Package E (Reader-map consolidation).**
   Deliverable: one compact compatibility diagram linking Sections 3--8 and Appendices 10.1--10.6.
   Pass criterion: every arrow references at least one numbered proposition/derivation in the text.

A practical rule follows: additions that do not advance at least one package should be deferred, so revision effort remains concentrated on technical closure rather than bookkeeping edits. These package labels are editorial planning tags only, not theorem/claim labels.
Quick navigation pointer: Appendix 10.1 primarily advances Package C/D; Appendix 10.2 primarily advances Package B; Appendix 10.6 primarily advances Package A; Section 9.1 + Appendix 10.3 support Package E.

## 9.6 Conclusion
The paper’s central thesis is that “continuum laws” are most cleanly understood as *stable targets of controlled refinement*: finite-step invariants (Newton’s polygonal dynamics) persist through the action formulation, and action additivity is the algebraic structure that forces a consistent composition law. In the quantum setting, multiplicative composition together with local additivity makes exponential weighting structurally natural, and classical dynamics are recovered by stationary-phase concentration. Two further control mechanisms enter when naive refinement is not uniquely defined: deformation quantization organizes ordering/discretization choices into equivalence classes compatible with a common classical limit, and renormalization supplies the compatibility condition required when refinement limits diverge.

Throughout, the manuscript keeps refinement explicit, separates derivations from heuristics, and highlights the additional hypotheses needed for each continuum passage. (A companion satellite on the Refinement Compatibility Principle formalizes this unifying idea as an explicit axiom system — five axioms (composition, identity, representation equivalence, scale invariance, dimensional homogeneity) organized into three channels (partition, representation, scale) — with worked witnesses at each channel and a multi-channel synthesis showing how the path integral realizes all three simultaneously.)

`Remark P9.1 (Forced-completion chain and structure vs content).`
The narrative admits a sharper reading as a chain of *forced completions*: each stage is the minimum enrichment of the composition law needed for consistency at the next level of complexity. Stage 0→1: limits of finite differences yield derivatives (calculus). Stage 1→2: temporal composition of propagators forces Gaussian kernels, \(d/2\) normalization, and \(\kappa=\hbar\) (Proposition P4.2; composition alone suffices as the single master axiom, Remark P4.2h). Stage 2→3: per-mode quantization plus infinite-mode assembly via renormalization yield field theory (Sections 6 and 8). Each transition is a derivation (or, for stage 2→3, a structural argument) from the previous stage's composition requirement, not a postulate. A clean separation emerges: composition constrains *structure* (kernel form, normalization exponent, exponential weight) but not *content* (which interaction Lagrangian); content selection enters only at the renormalization level, where the assembly condition filters admissible theories.

Conversely, every known departure from the compositional framework has a structural explanation: open systems (incomplete boundary data), measurement (subsystem tracing violates global composition), anomalies (symmetry–composition conflict), and UV divergence (infinite-mode assembly failure). Three of these four categories correspond to the limit obstructions of Heuristic H0.2 — anomalies to non-uniqueness, UV divergence to divergence, and measurement to singular-probe incompleteness — reappearing at progressively higher levels of the compositional hierarchy. Open systems constitute an additional category not contained in H0.2, reflecting incomplete specification of boundary data rather than a limit-control problem per se.

`Remark P9.1a (Stage 4: composition over dynamical geometry).`
The forced-completion chain 0→1→2→3 does not obviously terminate at QFT. When gravity is dynamical, the composition integral must sum over spatial-slice geometries themselves, and the notion "t = t₁ + t₂" that composition (hypothesis (C) of Proposition P4.2; axiom A1 of [RCPFoundations]) presupposes becomes gauge-dependent under general covariance. This is qualitatively different from stages 1–3, which fix divergences of an existing composition integral: stage 4 challenges the *domain* of the integral (what is "the spatial slice"?), not just the integrand. A completion would require defining composition at the cobordism level — without a preferred temporal foliation — and current candidates (asymptotic safety, holographic boundary composition, worldsheet methods) each propose different resolutions, none yet derived from a single composition principle. At the categorical level, stages 1–3 are realised in a 1-groupoid (the pair groupoid \(G = M \times M\), where intermediate points are uniquely determined), whereas stage 4 requires at minimum an \((\infty,1)\)-category (the cobordism category \(\mathrm{Cob}\), where intermediate 3-geometries are not unique — each foliation of a 4-cobordism gives a different factorization, and these foliations form the 2-morphisms). The forced-completion principle at the cobordism level is precisely the requirement that \(Z\colon \mathrm{Cob} \to \mathrm{Hilb}\) be a symmetric monoidal functor — Atiyah's axiom system for TQFT. In topological theories (\(d=2{+}1\) gravity, BF theory), this completion is achievable; in physical \(3{+}1\) gravity with local degrees of freedom, it is not — which is why the chain branches rather than extending linearly. Conversely, the classical limit \(\kappa\to 0\) is singular (Proposition P4.2(iii)), consistent with the interpretation that it attempts to undo a forced completion: composition requires finite \(\kappa\), and removing it collapses the semigroup to Hamilton–Jacobi extremization, which generically lacks an identity limit.

`Remark P9.1a-Cob (Cobordism hypothesis as Stage 4 uniqueness).` The Baez–Dolan–Lurie cobordism hypothesis (Lurie 2009, arXiv:0905.0465) makes Stage 4 uniqueness precise for topological theories: a symmetric monoidal functor \(Z\colon \mathrm{Bord}_n^{\mathrm{fr}} \to \mathcal{C}\) is uniquely determined (up to equivalence) by \(Z(\mathrm{point}) \in \mathcal{C}^{\mathrm{fd}}\), the fully dualizable objects of \(\mathcal{C}\). This is the Stage 4 analog of P4.2's uniqueness at Stages 1–2: just as (C)+(D)+(I) uniquely determine \(\kappa = \hbar\) in the partition channel, monoidal functoriality on bordisms uniquely determines the TQFT from its value at a point. The topological restriction is essential: non-topological QFTs with running couplings require additional structure beyond the cobordism hypothesis.

`Remark P9.1b (Stage 3 analog: CFT sewing forces c/24).`
An explicit Stage 3 instance of the composition-forcing pattern exists in conformal field theory. Segal's sewing axiom requires \(K_\lambda(\tau_1 + \tau_2) = K_\lambda(\tau_1) \cdot K_\lambda(\tau_2)\) for conformal-block amplitudes indexed by primary operators \(\lambda\), where \(\tau\) is the modular parameter. The Cauchy functional equation forces \(K_\lambda(q) = q^{\alpha_\lambda}\) with \(q = e^{2\pi i \tau}\). The Weyl anomaly of the path-integral measure under conformal rescaling then fixes \(\alpha_\lambda = \Delta_\lambda - c/24\), where \(\Delta_\lambda\) is the scaling dimension and \(c\) the central charge. The normalization exponent \(c/24\) is forced by composition plus the Virasoro algebra structure, just as \(d/2\) is forced by composition plus dimensional homogeneity at stages 1–2. The central charge \(c\) itself is *not* forced (it specifies the theory, i.e.\ content); but given any \(c\), the vacuum energy \(-c/24\) is a structural output. Modular invariance \(Z(\tau) = Z(-1/\tau)\) is an additional constraint on the operator spectrum (content), not on the form of \(K_\lambda\). This makes the \(d/2 \to c/24\) correspondence a genuine inter-stage pattern: normalization exponents are forced by composition at every categorical level. The Zamolodchikov \(c\)-theorem (\(c\) monotone decreasing under 2D RG flow, 1986) is an independent physical constraint orthogonal to the composition-forcing structure: composition determines \(c/24\) given \(c\) within a fixed CFT, while the \(c\)-theorem constrains how \(c\) varies between CFTs at different energy scales.

`Remark P9.1b-Q1d (Stage 3.5: Verlinde fusion forces level quantization).`
The Verlinde formula provides an intermediate forcing step between Stages 3 and 4.
Segal sewing (Stage 3 composition) combined with modular covariance of characters
\(\chi_\lambda(\tau)\) under \(\mathrm{SL}(2,\mathbb{Z})\) forces conformal dimensions
to be rational. Imposing additionally that fusion multiplicities \(N^{ij}_k \in \mathbb{Z}_{\geq 0}\)
(non-negativity, which requires the vacuum normalization convention \(\lVert\lvert 0\rangle\rVert = 1\),
a choice parallel to the identity limit (I) of P4.2) forces the Chern-Simons level \(k \in \mathbb{Z}_{\geq 0}\).
The mechanism: quantum dimension \(\dim_q(j) = \sin((j+1)\pi/(k+2))/\sin(\pi/(k+2))\) vanishes
at \(j = k+1\) (null representation, Kac-Walton truncation), forcing the primary-field spectrum
to the finite set \(j = 0, \tfrac{1}{2}, \ldots, \tfrac{k}{2}\), which is equivalent to \(k \in \mathbb{Z}_{\geq 0}\).
Two independent derivations confirm this: (a) algebraic, via modular-S-matrix positivity
in the Verlinde formula [Verlinde1988]; (b) topological, via the \(2\pi\)-periodicity of
the Wess-Zumino term under gauge transformations (\(\pi_3(G) = \mathbb{Z}\) for simple \(G\))
[Witten1989], forcing \(k \in \mathbb{Z}\).
The full deformation parameter \(q_{\mathrm{QG}} = e^{2\pi i/(k+g^\vee)}\) is not forced at
Stage 3.5: the dual Coxeter number \(g^\vee\) arises from the conformal dimension of the adjoint
representation \(h_{\mathrm{adj}} = g^\vee / 2(k+g^\vee)\), which is group-theoretic dynamical content.
The forcing chain thus has a precise intermediate step: Stage 3.5 forces the level \(k \in \mathbb{Z}\)
from Verlinde fusion-algebra consistency; Stage 4 forces the quantum group parameter \(q_{\mathrm{QG}}\)
from cobordism unitarity and semisimplicity (Remark P9.2 below, [ReshetikhinTuraev1991]).

`Remark P9.2 (q-Deformed forcing at Stage 4).`
The forcing pattern of P4.2 has a Stage 4 analog in Chern-Simons theory. For a 3D topological field theory with gauge group \(G\), the requirement that the sewing law (Atiyah composition on 3-manifolds) extend to a unitary, normalized symmetric monoidal functor \(Z\colon \mathrm{Bord}_3 \to \mathrm{Vect}\) forces the deformation parameter to \(q = e^{2\pi i/(k+g^\vee)}\), where \(k \in \mathbb{Z}_{\geq 0}\) is the level and \(g^\vee\) is the dual Coxeter number of \(G\) [ReshetikhinTuraev1991]. The parallel with P4.2 is structural: at Stage 2, (C)+(D)+(I) forces \(\hbar\) in the partition channel; at Stage 4, cobordism composition + unitarity + normalization forces \(q\) in the representation channel. In both cases, composition alone is insufficient — the additional constraint (dimensional homogeneity at Stage 2; unitarity and semisimplicity at Stage 4) is required. The deformation parameter \(q\) is *not* forced at the path-integral level (Stage 2) by any \(q\)-deformed analog of (C): the coassociativity of \(U_q(\mathfrak{g})\) holds for all \(q \in \mathbb{C}^*\), with no selection mechanism.

`Remark P9.3 (Arithmetic rigidity progression of the forcing chain).`
The four forcing stages, traced along the Segal-sewing/cobordism channel, exhibit a progression toward greater arithmetic rigidity in their forced constants.
Stage 2 (P4.2) forces \(\kappa = \hbar \in \mathbb{R}_+\) (positive real, via dimensional homogeneity (D)):
the forced constant has no torsion. Stage 3 (P9.1b) forces \(c/24 \in \mathbb{Q}\) (rational, given \(c \in \mathbb{Z}\),
via modular closure of \(\mathrm{SL}(2,\mathbb{Z})\)): the forced constant has denominators bounded by \(24 = \mathrm{lcm}(1,\ldots,6)\).
Stage 3.5 (Remark P9.1b-Q1d) forces \(k \in \mathbb{Z}_{\geq 0}\) (non-negative integer, via Verlinde
fusion non-negativity and \(\pi_3(G) = \mathbb{Z}\)): the forced constant is integral.
Stage 4 (P9.2, [ReshetikhinTuraev1991]) forces \(q = e^{2\pi i/(k+g^\vee)} \in \mu_{k+g^\vee}\)
(primitive root of unity, via surgery finiteness of the modular tensor category):
the forced constant is torsion in \(\mathbb{C}^\times\).
Each stage adds a finiteness axiom driving the forced constant toward the torsion subgroup
of \(\mathbb{C}^\times\): the chain \(\mathbb{R}_+ \to \mathbb{Q} \to \mathbb{Z} \to \mu_N\) mirrors the
filtration of \(\mathbb{C}^\times = \mathbb{R}_+ \times S^1\) by arithmetic complexity.
The progression is specific to composition in the sewing channel; other composition-forcing mechanisms at Stage 3, such as conformal-bootstrap associativity, produce generically irrational forced constants (anomalous dimensions), so the arithmetic rigidity pattern is not universal across all forcing channels.
Stages 2 and 4 together determine both components of the quantum group deformation parameter:
P4.2 fixes the norm \(\lvert\kappa\rvert = \hbar \in \mathbb{R}_+\); the RT theorem fixes the phase
\(\arg(q) = 2\pi/(k+g^\vee)\) to a torsion element.
The partition functions of the associated TQFTs satisfy \(Z(M^3) \in \mathbb{Z}[\zeta_N, N^{-1}]\),
\(N = k + g^\vee\), reflecting the cyclotomic integrality of Stage 4 [Murakami1995; Habiro2008].

# 10. Technical Appendices
This section provides the appendices announced at the end of Section 9. Each subsection is a compact worked extension tied to one residual vulnerability.

## 10.1 Worked Renormalization Template (Single Coupling)
The objective is to replace purely structural RG language with one explicit subtraction-and-running calculation.

Assume a regulated quantity has the perturbative form

$$
F_\Lambda(g_B;\mu)
=
g_B
+c\,g_B^2\ln\!\left(\frac{\Lambda}{\mu}\right)
+d\,g_B^2
+O(g_B^3),
$$

with dimensionless constants \(c,d\). Define a renormalized coupling by a subtraction condition at scale \(\mu\):

$$
g_R(\mu)\equiv g_B+c\,g_B^2\ln\!\left(\frac{\Lambda}{\mu}\right).
$$

`Derivation D8.1 (Finite renormalized prediction at fixed subtraction scale).`
Invert the definition to second order:

$$
g_B
=
g_R-c\,g_R^2\ln\!\left(\frac{\Lambda}{\mu}\right)+O(g_R^3).
$$

Substitute into \(F_\Lambda\):

$$
F_\Lambda
=
g_R
+d\,g_R^2
+O(g_R^3),
$$

so the explicit logarithmic cutoff dependence cancels at this order. This is the concrete implementation of the Section 8 rule: tune bare data so predictions at reference scale remain stable.

`Derivation D8.2 (Running from cutoff-independence).`
At fixed bare coupling \(g_B\), differentiating the renormalization condition gives

$$
\mu\frac{d g_R}{d\mu}
=
-c\,g_R^2+O(g_R^3)
\equiv
\beta(g_R).
$$

This turns divergent cutoff dependence into controlled scale dependence.

`Proposition P8.1 (Leading beta coefficient under analytic scheme change).`
For a reparametrization
\(g_R' = g_R + a\,g_R^2 + O(g_R^3)\),
the leading coefficient of \(\beta\) is unchanged:

$$
\beta'(g_R')=-c\,{g_R'}^2+O({g_R'}^3).
$$

So scheme changes shift higher-order terms while preserving the first nontrivial flow coefficient in this template.

`Derivation D8.2a (One-loop QFT witness in fixed scheme: \(\lambda\phi^4\) near four dimensions).`
To make Section 8's structural RG statements explicit at QFT level, consider scalar \(\lambda\phi^4\) theory in \(D=4-2\varepsilon\), with minimal-subtraction-style parametrization
\[
\lambda_B
=
\mu^{2\varepsilon}\!\left(
\lambda_R
+\frac{3}{16\pi^2}\frac{\lambda_R^2}{\varepsilon}
+O(\lambda_R^3)
\right).
\]
Here the interaction convention is \(\mathcal L_{\mathrm{int}}=\lambda_R\phi^4/4!\), which fixes the one-loop coefficient \(3/(16\pi^2)\).
Holding \(\lambda_B\) fixed and differentiating with respect to \(\ln\mu\) gives
\[
\beta(\lambda_R)\equiv \mu\frac{d\lambda_R}{d\mu}
=
-2\varepsilon\,\lambda_R
+\frac{3}{16\pi^2}\lambda_R^2
+O(\lambda_R^3).
\]
At \(D=4\) (\(\varepsilon\to0\)):
\[
\beta(\lambda_R)=\frac{3}{16\pi^2}\lambda_R^2+O(\lambda_R^3),
\qquad
\frac{1}{\lambda_R(\mu)}
=
\frac{1}{\lambda_R(\mu_0)}
-\frac{3}{16\pi^2}\ln\!\frac{\mu}{\mu_0}
+O(\lambda_R).
\]
This is the field-theory analogue of `Derivation D6.2`: logarithmic refinement dependence is traded for controlled scale running in a fixed subtraction convention. Under an analytic scheme change \(\lambda_R'=\lambda_R+a\lambda_R^2+O(\lambda_R^3)\), the coefficient \(3/(16\pi^2)\) is unchanged at this order, matching `Proposition P8.1`.

## 10.2 Ordering/Discretization Pair with Same Classical Limit
This appendix gives an explicit example of the Section 6/Section 7 claim that discretization choice changes \(O(\hbar)\) terms while preserving classical dynamics.

Take the classical symbol \(A(q,p)=f(q)p\), with smooth \(f\). Consider two quantizations:
1. Left ordering:
\(Q_L(A)=f(\hat q)\hat p\).
2. Weyl (symmetric) ordering:
\(Q_W(A)=\frac12\left(f(\hat q)\hat p+\hat p f(\hat q)\right)\).

Using \([\hat p,f(\hat q)]=-i\hbar f'(\hat q)\):

$$
Q_W(A)
=
f(\hat q)\hat p
-\frac{i\hbar}{2}f'(\hat q)
=
Q_L(A)-\frac{i\hbar}{2}f'(\hat q).
$$

`Derivation D9.1 (Classical agreement, quantum shift).`
The difference operator is \(O(\hbar)\):

$$
Q_W(A)-Q_L(A)=-\frac{i\hbar}{2}f'(\hat q).
$$

Therefore

$$
\lim_{\hbar\to0}\big(Q_W(A)-Q_L(A)\big)=0
$$

in the formal classical limit, while quantum generators differ at subleading order.

`Remark D9.1a (Quadratic symbols and half-density resolution).`
For the quadratic symbol \(A(q,p)=f(q)p^2\) (e.g.\ kinetic energy with position-dependent mass \(f=1/m\)), the same comparison yields
\[
Q_W(fp^2)-Q_L(fp^2)=-i\hbar f'(\hat q)\hat p-\tfrac{1}{4}\hbar^2 f''(\hat q).
\]
The correction now has two layers: an \(O(\hbar)\) first-order differential operator and an \(O(\hbar^2)\) potential. In particular, different orderings of \(p^2/m(q)\) disagree in the coefficient of the first-derivative term \(i\hbar(m'/m^2)\hat p\).
The half-density conjugation \(|g|^{1/4}\Delta_g|g|^{-1/4}\) does not eliminate the first-derivative (connection) term: both the Weyl prescription and the half-density prescription share the same connection term \(f'\partial_q\) (as required by formal self-adjointness on \(L^2(\mathbb R,dq)\)). They differ only at the next layer: the \(O(\hbar^2)\) scalar potential, with \(\hat H_W-\hat H_{\mathrm{HD}}=-\hbar^2 f'^2/(32mf)\) (a purely multiplicative operator, no derivatives). This supports a four-layer stratification of ordering differences: (1) principal symbol — all prescriptions agree; (2) connection (first-derivative) — fixed by self-adjointness, independent of ordering; (3) scalar \(O(\hbar^2)\) — genuine deformation freedom persists; (4) operator domain — independent. The half-density prescription is a canonical representative within the deformation equivalence class (like Lorenz gauge), not a different physics. Explicit energy-shift estimates for position-dependent mass \(f(q)=1+\alpha q^2\) in a harmonic trap show \(|\Delta E_0|\sim O(\alpha^2)\), with the first-order shift vanishing identically and the leading correction unmeasurably small (\(\sim 0.01\)--\(0.06\) meV for GaAs quantum wells, below current resolution thresholds). This confirms that deformation equivalence (Proposition P5.2) is physical, not merely formal (cf.\ Derivation HD-D1.3 in the half-density companion note).

`Derivation D9.1b (Periodic-domain symmetry witness for \(Q_L\) vs \(Q_W\)).`
Take configuration space \(S^1\) with coordinate \(q\in[0,2\pi)\), Hilbert space \(L^2(S^1,dq)\), and periodic Sobolev domain \(H^1_{\mathrm{per}}(S^1)\). Let \(f\in C^1(S^1,\mathbb R)\). Define
\[
Q_L=-i\hbar\,f(q)\partial_q,\qquad
Q_W=-i\hbar\!\left(f(q)\partial_q+\frac12 f'(q)\right).
\]
For \(u,v\in H^1_{\mathrm{per}}(S^1)\), integration by parts with periodic boundary cancellation gives
\[
\langle u,Q_L v\rangle-\langle Q_L u,v\rangle
=
i\hbar\int_0^{2\pi}\overline{u(q)}\,f'(q)\,v(q)\,dq,
\]
while for the Weyl representative the extra \(\frac12 f'\) terms cancel:
\[
\langle u,Q_W v\rangle-\langle Q_W u,v\rangle=0.
\]
Hence \(Q_W\) is symmetric on \(H^1_{\mathrm{per}}(S^1)\) for real \(f\), whereas \(Q_L\) is symmetric only for \(f' = 0\). This is an explicit operator-domain boundary behind the \(O(\hbar)\) ordering difference of `Derivation D9.1`.

`Remark D9.1c (Scope boundary for domain claims).`
The witness above establishes symmetry on the stated periodic domain; it does not claim essential self-adjointness or classify self-adjoint extensions in singular/degenerate-coefficient cases.

`Derivation D9.1d (Curved-manifold kinetic benchmark via half-density conjugation).`
Let \((M,g)\) be a compact Riemannian manifold without boundary. Write \(d\mathrm{vol}_g=|g|^{1/2}dx\) in a local chart \(x\), and define
\[
U: L^2(M,d\mathrm{vol}_g)\to L^2(M,dx),\qquad (U\psi)(x)=|g(x)|^{1/4}\psi(x).
\]
The Laplace-Beltrami kinetic operator
\[
H_g:=-\frac{\hbar^2}{2}\Delta_g,\qquad \Delta_g=|g|^{-1/2}\partial_i\!\left(|g|^{1/2}g^{ij}\partial_j\right),
\]
is symmetric on \(H^2(M,d\mathrm{vol}_g)\). Conjugating by \(U\) gives
\[
\widetilde H_g:=U H_g U^{-1}
=-\frac{\hbar^2}{2}\,|g|^{1/4}\Delta_g|g|^{-1/4}
\]
on domain \(U(H^2(M,d\mathrm{vol}_g))\subset L^2(M,dx)\), and symmetry is preserved by unitarity:
\[
\langle u,\widetilde H_g v\rangle_{dx}
=\langle U^{-1}u,H_g U^{-1}v\rangle_{d\mathrm{vol}_g}
=\langle \widetilde H_g u,v\rangle_{dx}.
\]
This gives a curved-manifold, operator-domain witness that the half-density prescription is not a cosmetic rewrite: it is the symmetry-preserving transport of the geometric kinetic operator.

`Derivation D9.1e (Naive left kinetic operator fails symmetry in generic charts).`
On the same chart domain (with boundary terms suppressed by compactness/periodicity), define the left-ordered principal-symbol operator
\[
H_L:=-\frac{\hbar^2}{2}\,g^{ij}(x)\partial_i\partial_j.
\]
For smooth \(u,v\), repeated integration by parts yields
\[
\langle u,H_L v\rangle_{dx}-\langle H_L u,v\rangle_{dx}
=\frac{\hbar^2}{2}\int dx\;(\partial_i g^{ij})\big(\overline{u}\,\partial_j v-(\partial_j\overline{u})\,v\big).
\]
Hence \(H_L\) is symmetric only under extra coordinate/coefficient constraints (e.g. \(\partial_i g^{ij}=0\) in the chosen chart). In general curved coordinates, left ordering breaks symmetry while the half-density-conjugated Laplace-Beltrami form remains symmetric by construction (`Derivation D9.1d`).

`Derivation D9.1f (Domain-parameter witness: same symbol, inequivalent self-adjoint realizations).`
Consider the formal 1D kinetic operator
\[
\widehat H_{\mathrm{form}}=-\frac{\hbar^2}{2m}\frac{d^2}{dx^2}
\]
on \(C_c^\infty(\mathbb R\setminus\{0\})\). It is symmetric but not self-adjoint; self-adjoint realizations are fixed by boundary data at \(x=0\). A standard one-parameter family is the delta-contact extension
\[
\mathcal D(H_g)=\Bigl\{\psi\in H^2(\mathbb R\setminus\{0\})\cap H^1(\mathbb R):
\psi'(0^+)-\psi'(0^-)=\frac{2mg}{\hbar^2}\psi(0)\Bigr\},
\]
with \(H_g\psi=\widehat H_{\mathrm{form}}\psi\) for \(x\neq0\). Different \(g\) define inequivalent quantum theories while sharing the same principal symbol \(p^2/(2m)\): for \(g<0\) there is one bound state
\[
E_B=-\frac{m g^2}{2\hbar^2},
\]
whereas for \(g\ge0\) no bound state appears. So representation compatibility in Package B requires explicit domain data in addition to ordering data.

`Remark D9.1g (Scope boundary for extension witness).`
This is a witness-level extension family, not a full classification of all self-adjoint extensions (e.g. full \(U(2)\)-parameter boundary conditions at a point).

`Proposition P10.2a (Discretization-ordering equivalence class statement).`
If two short-time kernel prescriptions map to \(Q_L\)-type and \(Q_W\)-type representatives of the same classical symbol algebra, then they define the same classical equations and differ only by controlled \(O(\hbar)\) corrections. This is the worked version of the Section 6 to Section 7 transition claim [Landsman1998].

## 10.3 Foundational Compatibility Principle
This appendix states a foundational compatibility principle aimed at the manuscript's core objective.

`Proposition P10.1 (Refinement Compatibility Principle, RCP).`
A dynamical framework is admissible when three compatibility conditions hold simultaneously:
1. **Partition compatibility**: composition across temporal subdivisions preserves the same action-based extremal equations in the refinement limit.
2. **Representation compatibility**: alternative quantum representations (ordering/discretization choices) agree in the classical limit and differ only by controlled subleading corrections.
3. **Scale compatibility**: observable predictions remain stable under composed coarse/fine scale changes after parameter flow adjustment.

In compact form, for any prediction map \(\mathcal O\),

$$
\mathcal O
=
\mathcal O\circ\mathcal C_t
=
\mathcal O\circ\mathcal Q_\hbar
=
\mathcal O\circ\mathcal R_\Lambda,
$$

where \(\mathcal C_t\) is temporal composition/refinement, \(\mathcal Q_\hbar\) is representation change within a fixed classical-limit class, and \(\mathcal R_\Lambda\) is scale-refinement/renormalization flow.

`Derivation D10.1a (Operational closure form: compatibility as “there exists \(\theta'\)”).`
The schematic equalities above suppress the crucial fact that each operation generally requires a **parameter update** (coupling flow, normalization change, or a controlled representation change) to land back in the same admissible family. Concretely, the operators \(\mathcal C_t,\mathcal Q_\hbar,\mathcal R_\Lambda\) can be instantiated by indexed families: \(\mathcal C_t\) by a “compose \(b\) fine steps into one coarse step” map \(\mathcal C_{b,h}\), \(\mathcal Q_\hbar\) by a family \(\mathcal Q_\alpha\) of representation/ordering changes at fixed \(\hbar\), and \(\mathcal R_\Lambda\) by scale-compare/coarse-grain maps \(\mathcal R_b\) (with \(\Lambda\) standing for whatever cutoff/subtraction convention parametrizes the family being compared).
Here \(h\) is the ruler at which we compare predictions, \(b\) is a refinement/coarse-graining factor, and \(\alpha\) labels a choice of representation within a fixed classical-limit class.
An operational way to state RCP is to write predictions as a family \(\{\mathcal O_{h,\theta}\}\) indexed by \(h>0\) and parameters \(\theta\), and require that for each operation there exists an update map \(\tau\) such that the post-operation object is again representable inside the same family:
\[
\mathcal O_{h,\theta}
=
\mathcal O_{h,\tau_C(b,h;\theta)}\circ \mathcal C_{b,h}
=
\mathcal O_{h,\tau_Q(\alpha;\theta)}\circ \mathcal Q_\alpha
=
\mathcal O_{h,\tau_R(b;\theta)}\circ \mathcal R_b.
\]
Written this way, compatibility is falsifiable: closure can fail when no admissible \(\theta'\) exists. The manuscript's strongest constructive witness is Proposition P4.2: under hypotheses (C), (L), (I), (D), composition-compatible refinement of action-based dynamics forces a structural constant \(\kappa\) with \([\kappa]=[\mathrm{action}]\), and both \(\kappa\to0\) and \(\kappa\to\infty\) limits fail—the former collapses composition to Hamilton–Jacobi extremization with no distributional identity limit, the latter trivializes weights. The simplest sub-case is the normalization exponent: semigroup closure fixes \(A(t)\propto t^{-d/2}\) (Derivation D4.1a); choosing any other power breaks closure.

`Remark D10.1b (What belongs to \(\theta\): ordering data and domain data).`
The parameter bundle \(\theta\) in `Derivation D10.1a` includes more than couplings: it also contains representation data such as ordering choices and admissible operator domains/boundary conditions. `Derivation D9.1f` gives a concrete witness: the same principal symbol \(p^2/(2m)\) admits inequivalent self-adjoint realizations indexed by contact parameter \(g\), with different spectra. So the \(\mathcal Q_\hbar\)-channel is not "ordering only"; closure may fail unless domain data is transported as part of \(\theta\).

`Derivation D10.1 (Bridge to sections 3--8).`
1. **Partition compatibility** (\(\mathcal C_t\)): Sections 3--4 (area-law refinement; action/Noether bridge).
2. **Representation compatibility** (\(\mathcal Q_\hbar\)): Sections 6--7 (ordering/discretization choices with identical \(\hbar\to0\) limit).
3. **Scale compatibility** (\(\mathcal R_\Lambda\)): Section 8 (RG semigroup consistency).

Therefore the Newton-to-path-integral narrative is an implementation of RCP rather than a sequence of disconnected formalisms.

`Remark D10.1c (Crown witnesses for each RCP channel).`
Each compatibility channel now has a constructive witness beyond the structural bridge: **(1) Partition channel** (\(\mathcal C_t\)): Proposition P4.2 proves \(\hbar\) is necessary (not merely convenient) for composition closure—the partition-compatibility update map is forced and its absence is catastrophic. **(2) Representation channel** (\(\mathcal Q_\hbar\)): Derivation D9.1f shows domain data (self-adjoint extension parameter) must be transported as part of \(\theta\); inequivalent realizations share classical symbols but have different spectra. **(3) Scale channel** (\(\mathcal R_\Lambda\)): Remark H6.3 demonstrates that local contact-expansion data, combined with analyticity (Padé, dispersion, Borel), reconstructs non-perturbative global structure—the control map \(\tau\) accesses poles, cuts, and instanton sectors from Taylor coefficients. The first two witnesses make RCP constructive rather than axiomatic: they show not just that compatibility can be required, but that it determines specific structural constants and domain data. The third witness (scale channel) is now partially constructive at the heuristic level: the partition composition law (C), when applied to models with Borel-summable perturbative sectors (2D delta model, CP(1) sigma model), forces the positions of multi-instanton Borel singularities \(\{n\zeta_*\}\) to form an additive semigroup from the leading singularity \(\zeta_1\), given simple-pole Borel singularity type. The uniqueness is conditional—it determines the semigroup structure of singularity positions given the leading instanton scale, but not the leading scale itself (which requires the physical coupling \(g_R(\mu)\)). The Stokes constants (residues at \(n\zeta_*\)) are partially constrained: for rank-2 models with two independent instanton types (actions \(A_1, A_2\)), composition forces the mixed-sector Stokes constants to satisfy \(C_{n,m} = C_{1,0}^n \cdot C_{0,1}^m\) at leading order (non-resonant scope — resonant bion sectors require additional non-perturbative input). H6.3 remains a heuristic for unconditional reconstruction; the instanton-lattice and Stokes-constant claims above are programmatic extensions of the scale-channel framework under Borel/instanton-type assumptions (Écalle 1981 alien calculus applied to the RCP scale channel), not formal propositions of this paper.

`Heuristic H10.1 (Foundational reading).`
RCP can be interpreted as a candidate foundational postulate: physical laws are those statements that survive controlled changes of partition, representation, and scale.

## 10.4 Appendix Summary
Appendix sections 10.1--10.3 close three technical gaps identified in Section 9:
1. explicit renormalization subtraction/running, now including a fixed-scheme one-loop QFT witness (10.1),
2. explicit ordering/discretization \(O(\hbar)\) shift with fixed classical limit (10.2),
3. explicit foundational compatibility principle unifying the full chain (10.3).

Appendix 10.5 supplies a fully worked quantum-mechanical RG computation (2D contact interaction) demonstrating divergence, subtraction, running coupling, dimensional transmutation, and scheme dependence in a concrete model.
Appendix 10.6 adds an explicit regulated-kernel composition witness with controlled regulator removal and a concrete failure mode when admissibility assumptions are violated.

These additions do not alter the thesis; they increase computational accountability of the existing chain.

`Remark D10.4a (Package-to-appendix map for fast navigation).`
For reader navigation:
1. **Package C/D (RG witness + truncation control):** Appendix 10.1 with `D8.1`, `D8.2`, `D8.2a`, `P8.1`, and Section 8.6 `D6.4`.
2. **Package B (ordering/domain/extension):** Appendix 10.2 with `D9.1`, `D9.1a`, `D9.1b`, `D9.1d`, `D9.1e`, `D9.1f`.
3. **Package A (path-space/kernel closure ladder):** Appendix 10.6 with `D12.1`, `P12.1`, `D12.2`, `P12.2`, `D12.3`.
4. **Package E (global compatibility map):** Section 9.1 `P7.1a` plus Appendix 10.3 `P10.1`, `D10.1a`, `D10.1b`.

## 10.5 Singular Contact Interaction as an Explicit RG Computation (2D Delta)
Section 8 argues that RG is the scale-compatibility condition required when refinement limits diverge. This appendix supplies a fully explicit example in a singular quantum-mechanical model where the continuum theory is defined only after a renormalization prescription is chosen. The derivations below (D11.1–D11.3) are concrete instances of the abstract renormalization template (D8.1–D8.2, Appendix 10.1) applied to the 2D contact interaction: D11.1 evaluates the regulated loop (cf.\ D8.1's generic cutoff dependence), D11.2 defines the renormalized coupling and derives the beta function (cf.\ D8.2's running from cutoff-independence), and D11.3 exhibits scheme dependence as coupling reparametrization (cf.\ P8.1's leading-coefficient universality). For a perturbative-QFT-style treatment of this mechanism in quantum mechanics (including the 2D delta interaction), see [ManuelTarrach1994PertRenQM].
For a standard discussion of delta-function potentials in two and three dimensions (and their renormalization issues), see [Jackiw1991DeltaPotentials].

Consider the two-dimensional contact interaction

$$
H
=
-\frac{\hbar^2}{2m}\Delta
+g\,\delta^{(2)}(x)
\quad \text{on }\mathbb R^2.
$$

The interaction is Dirac-supported and the naive continuum limit is ill-defined: loop integrals diverge logarithmically.

`Derivation D11.1 (Cutoff evaluation of the contact loop).`
Let \(E>0\) and write \(E=\hbar^2 k^2/(2m)\). The Lippmann--Schwinger equation yields an algebraic \(T\)-matrix

$$
T(E;\Lambda)
=
\frac{1}{g_B(\Lambda)^{-1}-I(E;\Lambda)},
$$

where the loop integral is the free resolvent at the origin with a wavevector cutoff \(|q|<\Lambda\):

$$
I(E;\Lambda)
=
\int_{|q|<\Lambda}\frac{d^2q}{(2\pi)^2}\,
\frac{1}{E-\frac{\hbar^2 q^2}{2m}+i0}
=
-\frac{m}{2\pi\hbar^2}\left[\ln\!\left(\frac{\Lambda^2}{k^2}\right)+i\pi\right]
+O\!\left(\frac{k^2}{\Lambda^2}\right).
$$

Thus the regulated theory contains a logarithmic divergence \(\sim -\frac{m}{2\pi\hbar^2}\ln\Lambda^2\).

`Derivation D11.2 (Renormalized coupling and beta function).`
Define a renormalized coupling at subtraction scale \(\mu\) by

$$
\frac{1}{g_R(\mu)}
\equiv
\frac{1}{g_B(\Lambda)}
+\frac{m}{2\pi\hbar^2}\ln\!\left(\frac{\Lambda^2}{\mu^2}\right).
$$

Substituting into \(T(E;\Lambda)\) cancels the explicit cutoff dependence and gives a finite amplitude:

$$
T(E)
=
\frac{1}{
\frac{1}{g_R(\mu)}
+\frac{m}{2\pi\hbar^2}\ln\!\left(\frac{\mu^2}{k^2}\right)
+ i\,\frac{m}{2\hbar^2}
}.
$$

Since \(\mu\) is arbitrary, physical predictions must satisfy \(dT/d\ln\mu=0\). This yields the RG equation

$$
\mu\frac{d}{d\mu}\left(\frac{1}{g_R(\mu)}\right)
=-\frac{m}{\pi\hbar^2},
\qquad
\beta(g_R)\equiv \mu\frac{d g_R}{d\mu}
=\frac{m}{\pi\hbar^2}\,g_R^2.
$$

This is the explicit "scale-compatibility vector field" promised by Section 8, obtained from the demand that the subtraction scale not affect the composed prediction. (For an alternative derivation via explicit Wilsonian shell integration — making the semigroup composition \(W_{\Lambda_1\to\Lambda_2}\circ W_{\Lambda\to\Lambda_1} = W_{\Lambda\to\Lambda_2}\) directly visible as an identity of momentum-shell integrals — cf.\ Derivation RG-D1.2a in the RG companion note.)

`Proposition P11.1 (Dimensional transmutation: an RG-invariant bound-state scale).`
For \(E<0\), write \(E=-\hbar^2\kappa^2/(2m)\). The bound state corresponds to a pole of \(T\), which occurs when

$$
\frac{1}{g_R(\mu)}
+\frac{m}{2\pi\hbar^2}\ln\!\left(\frac{\mu^2}{\kappa^2}\right)
=0.
$$

Define

$$
\kappa_\ast^2
\equiv
\mu^2\exp\!\left(\frac{2\pi\hbar^2}{m}\frac{1}{g_R(\mu)}\right).
$$

Using the RG equation for \(1/g_R(\mu)\), one checks \(d\kappa_\ast/d\mu=0\). Thus the renormalized delta interaction trades the regulator-dependent coupling for a physical scale \(\kappa_\ast\) (equivalently a bound-state energy \(E_B=\hbar^2\kappa_\ast^2/(2m)\)).

`Derivation D11.3 (Scheme dependence as rescaling of the transmutation scale).`
The subtraction defining \(g_R(\mu)\) is not unique: one may shift it by a finite constant \(C\) by defining

$$
\frac{1}{g_R^{(C)}(\mu)}
\equiv
\frac{1}{g_R(\mu)}+\frac{m}{2\pi\hbar^2}C.
$$

Differentiation in \(\ln\mu\) removes the constant, so the beta function is unchanged. However, the RG-invariant scale rescales:

$$
\kappa_{\ast}^{(C)\,2}
\equiv
\mu^2\exp\!\left(\frac{2\pi\hbar^2}{m}\frac{1}{g_R^{(C)}(\mu)}\right)
=e^{C}\,\kappa_\ast^2.
$$

Thus, in this one-scale model, “scheme dependence” is precisely the freedom to rescale the single physical scale. Fixing one physical datum (e.g. \(E_B\)) fixes \(\kappa_\ast\) and removes the ambiguity from predictions.

## 10.6 Regulated-Kernel Composition Witness (Euclidean Free Model)
Section 9.4 identifies the path-space formalism as an open vulnerability unless one can exhibit a regulated family with exact composition and controlled regulator removal. The following Gaussian witness supplies that structure in a model where all integrals are explicit.
For explicit kernel formulas in this subsection we use units \(m=\hbar=1\); operator-norm bounds below are unchanged up to the corresponding conventional rescalings.

`Derivation D12.1 (Exact composition with additive regulator update).`
For \(t>0\), \(\varepsilon>0\), define
\[
K_\varepsilon(x,y;t)
:=
\frac{1}{\bigl(4\pi(t+\varepsilon)\bigr)^{d/2}}
\exp\!\left[-\frac{|x-y|^2}{4(t+\varepsilon)}\right].
\]
Since \(K_\varepsilon(\cdot,\cdot;t)=K_0(\cdot,\cdot;t+\varepsilon)\), Gaussian convolution gives, for \(t_1,t_2>0\) and \(\varepsilon_1,\varepsilon_2>0\),
\[
\int_{\mathbb R^d} d^dz\;
K_{\varepsilon_1}(x,z;t_1)\,
K_{\varepsilon_2}(z,y;t_2)
=
K_{\varepsilon_1+\varepsilon_2}(x,y;t_1+t_2).
\]
Thus composition is exact inside the regulated family, with regulator flow law \(\varepsilon\mapsto\varepsilon_1+\varepsilon_2\).

`Proposition P12.1 (Controlled regulator removal and explicit failure mode).`
For fixed \(t>0\), \(K_\varepsilon(x,y;t)\to K_0(x,y;t)\) pointwise and in \(L^1_x\) as \(\varepsilon\to0^+\), so
\[
\lim_{\varepsilon_1,\varepsilon_2\to0^+}
\int d^dz\;K_{\varepsilon_1}(x,z;t_1)K_{\varepsilon_2}(z,y;t_2)
=
K_0(x,y;t_1+t_2),
\]
recovering the standard heat-kernel semigroup. A concrete failure mode is immediate: if \(t+\varepsilon\le 0\), the Gaussian normalization is undefined/non-integrable, and composition no longer closes in the admissible family. This gives a model-level realization of the manuscript's compatibility logic: closure requires explicit admissibility conditions on the refinement-regulator pair.

`Derivation D12.2 (First-order potential perturbation: composition closure to \(O(V)\)).`
Let \(V:\mathbb R^d\to\mathbb R\) be bounded, and define the first-order (in \(V\)) regulated kernel by Duhamel expansion:
\[
K_{\varepsilon,V}^{(1)}(x,y;t)
:=
K_\varepsilon(x,y;t)
-\int_0^t d\tau\int_{\mathbb R^d} d^dz\;
K_\varepsilon(x,z;t-\tau)\,V(z)\,K_\varepsilon(z,y;\tau).
\]
Using `Derivation D12.1` for the free part and retaining terms through \(O(V)\),
\[
\int d^dz\;K_{\varepsilon,V}^{(1)}(x,z;t)\,K_{\varepsilon,V}^{(1)}(z,y;s)
=K_{\varepsilon,V}^{(1)}(x,y;t+s)+O(V^2).
\]
The first-order term combines by splitting \([0,t+s]\) into \([0,t]\cup[t,t+s]\): in the second interval set \(\tau=t+\sigma\), use free-kernel composition to collapse intermediate integrations, and recover the same single-time-convolution structure at total time \(t+s\). Thus nontrivial potential data still fits the refinement-composition narrative at controlled order.

`Remark D12.2a (Failure mode for singular attractive potentials).`
The \(O(V)\) formula requires the space-time convolution integral to be finite. For distributional or too-singular attractive potentials (for example, bare contact interactions in dimensions where renormalization is required), the integral can diverge and \(K_{\varepsilon,V}^{(1)}\) is not well-defined without extra renormalization/boundary data. This is precisely the regime where the explicit RG treatment of Appendix 10.5 becomes necessary.

`Proposition P12.2 (Quantitative remainder and composition-defect bounds for bounded \(V\)).`
Let \(H_0=-\frac{\hbar^2}{2}\Delta\), \(T_0(t)=e^{-tH_0}\), and \(T_V(t)=e^{-t(H_0+V)}\) on \(L^2(\mathbb R^d)\), with \(V\) a bounded multiplication operator and \(M:=\|V\|_\infty\). Define the first-order Duhamel approximation
\[
T_V^{(1)}(t):=T_0(t)-\int_0^t T_0(t-\tau)\,V\,T_0(\tau)\,d\tau.
\]
Then:
1. **Remainder bound**
\[
\|T_V(t)-T_V^{(1)}(t)\|
\le e^{Mt}-1-Mt
\le \frac12 M^2 t^2 e^{Mt}.
\]
2. **Composition-defect bound (first-order approximation)**
\[
\|T_V^{(1)}(t)T_V^{(1)}(s)-T_V^{(1)}(t+s)\|
\le C\,M^2\,(t+s)^2 e^{M(t+s)}
\]
for a universal constant \(C\) (e.g. \(C=2\)).

Sketch: expand \(T_V\) by Duhamel to second order, bound iterated integrals with semigroup norms \(\|T_0(r)\|\le1\), \(\|T_V(r)\|\le e^{Mr}\), and use
\[
T_V^{(1)}(t)T_V^{(1)}(s)-T_V^{(1)}(t+s)
=\big(T_V^{(1)}(t)-T_V(t)\big)T_V^{(1)}(s)
+T_V(t)\big(T_V^{(1)}(s)-T_V(s)\big)
+\big(T_V(t+s)-T_V^{(1)}(t+s)\big).
\]
Thus `Derivation D12.2` has explicit quantitative control in the bounded-potential regime, not only formal \(O(V)\) bookkeeping.

`Derivation D12.3 (Exact nontrivial semigroup witness: Euclidean harmonic oscillator).`
For confining quadratic potential \(V(x)=\frac12\omega^2|x|^2\) with \(\omega>0\), the Euclidean kernel in \(\mathbb R^d\) is the Mehler form
\[
K_\omega(x,y;t)
=
\left(\frac{\omega}{2\pi\sinh(\omega t)}\right)^{d/2}
\exp\!\left[
-\frac{\omega}{2\sinh(\omega t)}
\Big((|x|^2+|y|^2)\cosh(\omega t)-2x\!\cdot\! y\Big)
\right].
\]
Gaussian integration in the intermediate variable gives, for \(t_1,t_2>0\),
\[
\int_{\mathbb R^d} d^dz\;K_\omega(x,z;t_1)K_\omega(z,y;t_2)
=K_\omega(x,y;t_1+t_2),
\]
using standard hyperbolic identities (notably \(\sinh(a+b)=\sinh a\cosh b+\cosh a\sinh b\) and the induced identity for \(\coth(a+b)\)). Thus we obtain an all-order, nontrivial composition witness (beyond free and first-order perturbative regimes).
Defining \(K_{\omega,\varepsilon}(x,y;t):=K_\omega(x,y;t+\varepsilon)\) with \(\varepsilon>0\), the same calculation yields additive regulator flow:
\[
\int d^dz\;K_{\omega,\varepsilon_1}(x,z;t_1)K_{\omega,\varepsilon_2}(z,y;t_2)
=K_{\omega,\varepsilon_1+\varepsilon_2}(x,y;t_1+t_2).
\]

`Remark D12.3a (Scope boundary for the exact benchmark).`
This exact closure witness is specific to confining quadratic potentials (\(\omega>0\)) in Euclidean time. Inverted/nonconfining cases require separate treatment and are outside the admissible class used here.

`Remark D12.3b (Sanity limits: free limit and short-time localization).`
Two immediate checks fix normalization and interpretation:
1. **Free limit \(\omega\to0\)**: using \(\sinh(\omega t)=\omega t+O((\omega t)^3)\), \(\cosh(\omega t)=1+O((\omega t)^2)\),
\[
K_\omega(x,y;t)\xrightarrow[\omega\to0]{}
\frac{1}{(4\pi t)^{d/2}}\exp\!\left(-\frac{|x-y|^2}{4t}\right)
=K_0(x,y;t).
\]
2. **Short-time limit \(t\to0^+\)**: \(K_\omega(\cdot,\cdot;t)\) concentrates to \(\delta\) in distributions, matching the semigroup initial condition.
These checks ensure `Derivation D12.3` is consistent with both the free witness (`D12.1`) and the standard heat-kernel normalization at short times.

# References

1. [Newton1687] Isaac Newton, *Philosophiae Naturalis Principia Mathematica* (1687), Book I (limit methods and central-force geometry). Reference access point: Newton Project and standard translated editions.
2. [Noether1918] Emmy Noether, "Invariante Variationsprobleme" (1918). English translation commonly used in modern mechanics references.
3. [Dirac1933] P. A. M. Dirac, "The Lagrangian in Quantum Mechanics," *Physikalische Zeitschrift der Sowjetunion* 3 (1933), 64–72. (Commonly cited as the earliest explicit path-integral style phase-weighting statement.)
4. [Feynman1948] R. P. Feynman, "Space-Time Approach to Non-Relativistic Quantum Mechanics," *Reviews of Modern Physics* 20 (1948), 367–387. DOI `10.1103/RevModPhys.20.367`. OA: Caltech author-repository PDF.
5. [Connes1994] Alain Connes, *Noncommutative Geometry* (Academic Press, 1994). ISBN `978-0-12-185860-5`.
6. [Landsman1998] N. P. Landsman, *Mathematical Topics Between Classical and Quantum Mechanics* (Springer, 1998), Springer Monographs in Mathematics. DOI `10.1007/978-1-4612-1680-3`. ISBN `978-0-387-98318-9`.
7. [ConnesKreimer2000] Alain Connes and Dirk Kreimer, "Renormalization in quantum field theory and the Riemann-Hilbert problem I," *Communications in Mathematical Physics* 210 (2000), 249–273. DOI `10.1007/s002200050779`.
8. [Brouder1999] Ch. Brouder, "Runge-Kutta methods and renormalization," arXiv:`hep-th/9904014` (2 Apr 1999).
9. [McLachlan2017] Robert I. McLachlan, Klas Modin, Hans Munthe-Kaas, Olivier Verdier, "Butcher series: A story of rooted trees and numerical methods for evolution equations," arXiv:`1512.00906` (v3, 27 Feb 2017).
10. [BoyaRivero1994Contact] Luis J. Boya and Alejandro Rivero, "Renormalization in 1-D Quantum Mechanics: contact interactions," arXiv:`hep-th/9411081` (v1, 11 Nov 1994).
11. [ManuelTarrach1994PertRenQM] Cristina Manuel and Rolf Tarrach, "Perturbative Renormalization in Quantum Mechanics," *Physics Letters B* 328 (1994), 113--118. arXiv:`hep-th/9309013` (v1, 2 Sep 1993). DOI `10.1016/0370-2693(94)90437-5`.
12. [Jackiw1991DeltaPotentials] R. Jackiw, "Delta-function potentials in two- and three-dimensional quantum mechanics," MIT-CTP-1937 (Jan 1991). Reprinted in *M.A.B. Bég Memorial Volume* (World Scientific, 1991), pp. 25–42. OA mirror: <https://www.physics.smu.edu/scalise/P6335fa21/notes/Jackiw.pdf>.
13. [VanVleck1928Correspondence] J. H. Van Vleck, "The Correspondence Principle in the Statistical Interpretation of Quantum Mechanics," *Proceedings of the National Academy of Sciences of the United States of America* 14(2) (1928), 178–188. DOI `10.1073/pnas.14.2.178`.
14. [deGosson2018ShortTimePropagators] Maurice A. de Gosson, "Short-Time Propagators and the Born–Jordan Quantization Rule," *Entropy* 20(11) (2018), 869. DOI `10.3390/e20110869`. OA: PubMed Central (PMCID: PMC 7512447).
15. [Rosten2012ERG] Oliver J. Rosten, "Fundamentals of the Exact Renormalization Group," *Physics Reports* 511 (2012), 177–272. arXiv:`1003.1366` (v4, 15 Feb 2012). DOI `10.1016/j.physrep.2011.12.003`.
16. [Velhinho2017InfDimMeasure] José Velhinho, "Topics of Measure Theory on Infinite Dimensional Spaces," *Mathematics* 5(3) (2017), 44. DOI `10.3390/math5030044`. OA: MDPI.
17. [TongQMLectures] David Tong, "Quantum Mechanics" (lecture notes, no DOI). OA: lecture-note PDF. (Contains \(Y_{l,m}(\theta,\phi)=P_{l,m}(\cos\theta)e^{im\phi}\) as simultaneous eigenstates of \(L^2\) and \(L_z\).)
18. [Nauenberg2003KeplerArea] Michael Nauenberg, "Kepler's Area Law in the Principia: Filling in some details in Newton's proof of Prop. 1," *Historia Mathematica* 30 (2003), 441–456. arXiv:`math/0112048`. DOI `10.1016/S0315-0860(02)00027-7`. (Defends Newton's continuum limit via Lemma 3; the polygonal construction has a well-defined limit parameterizing a continuous planar curve.)
19. [Pourciau2003] Bruce Pourciau, "Newton's Argument for Proposition 1 of the Principia," *Archive for History of Exact Sciences* 57 (2003), 267–311. DOI `10.1007/s00407-002-0062-x`. (Critically analyses the impulse assumption and identifies error-accumulation and planarity problems in Newton's limit argument.)
20. [Berkeley1734Analyst] George Berkeley, *The Analyst; or, A Discourse Addressed to an Infidel Mathematician* (Dublin/London, 1734). (Foundational critique of Newton's fluxions and Leibniz's infinitesimals — the "ghosts of departed quantities" objection to evanescent limits. Historical precursor to modern constructive refinement approaches.)
21. [Nauenberg1994SymplecticNewton] Michael Nauenberg, "Newton's early computational method for dynamics," *Archive for History of Exact Sciences* 46 (1994), 221–252. DOI `10.1007/BF01686278`. (The impulse equations correspond to a canonical/symplectic mapping — exact solutions of a Hamiltonian with impulsive forces. Discusses convergence and adaptive time-stepping.)
22. [Nauenberg2018GraphicalMethod] Michael Nauenberg, "Newton's graphical method for central force orbits," *American Journal of Physics* 86(10) (2018), 765–771. DOI `10.1119/1.5046424`. arXiv:`1810.05264`. (Explicitly identifies Newton's Proposition 1 construction as a first-order symplectic integrator; shows discrete energy conservation and time-reversal invariance. OA author copy: UCSC Emeriti.)
23. [LuizOliveira2026] Fabricio Souza Luiz and Marcos César de Oliveira, "Information Theory of Action: Reconstructing Quantum Dynamics from Inference over Action Space," arXiv:`2602.09984` (10 Feb 2026). (Independent information-theoretic reconstruction: composition in action space plus finite variance forces Gaussian kernels and an action-dimensional scale, via the same Lévy--Khintchine exclusion. Complex amplitudes derived from Cramér--Rao indistinguishability.)
24. [GoyalKnuthSkilling2010] Philip Goyal, Kevin H. Knuth, and John Skilling, "Origin of complex quantum amplitudes and Feynman's rules," *Physical Review A* **81**, 022109 (2010). arXiv:`0907.0909`. (Derives complex amplitudes, Feynman's sum and product rules, and the Born rule from composition of sequential measurement pairs plus continuity—a kinematic complement to the dynamical forcing in Proposition P4.2.)
25. [ReshetikhinTuraev1991] N. Yu. Reshetikhin and V. G. Turaev, "Invariants of 3-manifolds via link polynomials and quantum groups," *Inventiones Mathematicae* **103**, 547–598 (1991). DOI `10.1007/BF01239527`. (Constructs 3-manifold invariants from quantum groups at roots of unity; the quantization condition \(q = e^{2\pi i/(k+g^\vee)}\) is forced by unitarity and monoidal functoriality on bordisms.)
26. [Verlinde1988] Erik Verlinde, "Fusion rules and modular transformations in 2D conformal field theory," *Nuclear Physics B* **300**, 360–376 (1988). DOI `10.1016/0550-3213(88)90603-7`. (Derives fusion multiplicities \(N^{ij}_k\) from the modular S-matrix; non-negativity of fusion coefficients forces level quantization.)
27. [Witten1989] Edward Witten, "Quantum field theory and the Jones polynomial," *Communications in Mathematical Physics* **121**, 351–399 (1989). DOI `10.1007/BF01217730`. (Chern-Simons theory as 3D TQFT; level \(k \in \mathbb{Z}\) from \(\pi_3(G) = \mathbb{Z}\) gauge invariance; \(q = e^{2\pi i/(k+g^\vee)}\).)
28. [PathIntegralNormalization] A. Rivero and A.I.Scaffold, "Path-Integral Normalization: The d/2 Exponent as Composition Compatibility Datum," companion satellite paper in this series (2026). (Comprehensive treatment of the d/2 exponent across temporal composition, Van Vleck determinant, heat-kernel diffusion, renormalization thresholds, and Lévy-stable exclusion.)
29. [RCPFoundations] A. Rivero and A.I.Scaffold, "Refinement Compatibility Principle: Foundations," companion satellite paper in this series (2026). (Axiom system for RCP; three-channel forcing hierarchy; Krein Q-function transport; forward connections to all satellite papers.)
30. [TangentGroupoidBridge] A. Rivero and A.I.Scaffold, "Groupoid Composition and Quantization: The Pair-Groupoid Bridge," companion satellite paper in this series (2026). (Pair groupoid as sewing law; d/2 forced by Fourier multiplicativity + dimensional homogeneity; tangent groupoid as hbar-deformation; Wick rotation as A3.)
31. [Murakami1995] Hitoshi Murakami, "Quantum SO(3)-invariants dominate the SU(2)-invariant of Casson and Walker," *Math. Proc. Cambridge Philos. Soc.* **117** (1995), no. 2, 237–249. DOI `10.1017/S0305004100073084`. (Algebraic integrality of WRT-type SU(2)/SO(3) invariants at prime order roots of unity.)
32. [Habiro2008] Kazuo Habiro, "A unified Witten-Reshetikhin-Turaev invariant for integral homology spheres," *Invent. Math.* **171** (2008), no. 1, 1–81. DOI `10.1007/s00222-007-0071-0`. (Cyclotomic integrality: \(Z(M^3) \in \mathbb{Z}[\zeta_N, N^{-1}]\) for integral homology spheres.)
