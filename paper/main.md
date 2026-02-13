---
title: "From Newton to the Path Integral"
author: "Alejandro Rivero"
date: "2026"
abstract: |
  This paper develops a single structural thesis across classical and quantum theory: physically meaningful laws arise as controlled limits of composable local refinements. We begin with Newton’s polygonal approximation of central-force motion and its limit to continuous dynamics, then re-express the same logic in modern variational form through additive action functionals. We treat the path integral as a composition law over refined time slices, not as an isolated quantum postulate, and we frame deformation quantization and renormalization as two mathematically distinct control mechanisms for limit consistency. The narrative is constructive: each stage retains the previous one as a limiting or compatibility condition rather than replacing it. Within this architecture we reserve a dedicated role for point-like (Dirac-supported) probes in weak formulations of the action principle, emphasizing where they are mathematically valid and where regularization is mandatory. The result is a staged program from Newtonian limit methods to quantum amplitudes in which the classical equations are recovered as stationary limits of a broader compositional framework.
---

# 1. Introduction
The historical and technical problem addressed here is not merely "how to quantize," but "how to define a stable continuum theory from iterative refinement." The paper therefore treats Newtonian mechanics, action principles, path integration, deformation quantization, and renormalization as parts of one continuity problem.

The first anchor is Newton’s geometric method in central-force motion: replace a curve by a sequence of short segments, impose a local update rule, and pass to a limit while controlling what is meant by "vanishing" quantities. In modern language, the key object is not a smallest geometric piece but a refinement procedure with invariant content [Newton1687]. (A companion note, "Uncuttable as Controlled Refinement," develops this distinction: "uncuttable" means defined only via a refinement limit, not indivisible in the ontological sense.)

The second anchor is the action formulation. Action is additive under temporal partitioning, and that additivity is exactly the algebraic structure needed to compare coarse and fine descriptions. This creates the bridge to quantum composition: if local contributions compose multiplicatively while the underlying functional is additive, exponential weighting is structurally natural [Dirac1933] [Feynman1948].

The long-standing foundational tension can be phrased as a Zeno-style refinement paradox: a refinement description is an *infinite-limit* construction, and the limit is not automatically unique or even defined once the refined objects become singular (Dirac-supported probes, distributional derivatives) or once intermediate quantities diverge. Berkeley's critique of Newton's fluxions — the "ghosts of departed quantities" objection [Berkeley1734Analyst] — is an early articulation of this tension. Classical mechanics often hides it by treating "send the refinement parameter to zero" as an axiomatically legitimate operation. The program pursued here is instead: keep refinement explicit, isolate where limit-taking needs extra control, and treat **quantization** and **renormalization** as two distinct mechanisms for making refined composition stable when the naive Newtonian limit is not rigorous as written.

`Heuristic H0.2 (Concrete failure modes of naive refinement-to-zero).`
Three recurring obstructions that make "refine \(\to 0\)" nontrivial in practice are:
1. **Singular probes:** point-supported variations and corners/impulses force distributional weak forms (mollifiers and contact terms).
2. **Non-uniqueness:** refinement/composition can admit multiple classically equivalent but quantum-distinct schemes (ordering/discretization choices), requiring an explicit equivalence or control map. (Minimal witness: time-slicing \(H=pq\) can yield \(-\hat p\hat q\) vs \(-\hat q\hat p\), differing by \(O(\hbar)\); requiring unitarity selects a symmetric (half-density) convention.)
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
3. A semigroup-closure derivation showing the short-time normalization exponent \(t^{-d/2}\) is forced by composition (the “square-root Jacobian”).
4. A refinement-compatibility framing of renormalization in which RG invariance is the consistency condition demanded by divergent refinement limits.
5. A fully explicit “RG appears before QFT” computation (2D delta/contact interaction) included as an appendix-level witness.

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

So the areal law is independent of the inverse-power index \(n\) in \(\mathbf F=-(K/r^n)\hat{\mathbf r}\): \(n\) changes radial dynamics and orbit families, but not the areal-velocity conservation mechanism itself. (A companion note on relativistic central orbits examines what happens when the kinematics is Lorentz-compatible: the inverse-square case admits exact relativistic simplification, with bound orbits requiring \(L>K/c\).)

`Heuristic H1.1 (Impulse-to-continuous interpretation).`
The impulse model is a refinement scaffold for continuous forcing, not a literal claim that nature acts by discrete kicks. Its value is structural: invariants proven exactly at finite step survive controlled refinement.

`Remark H1.1a (Convergence of the polygonal construction).`
The passage from discrete polygonal orbits to a continuous trajectory is non-trivial: it depends on Newton's Lemma 3 (Book I, Section 1 of the *Principia*) and has been the subject of a scholarly debate. Nauenberg [Nauenberg2003KeplerArea] gives a modern reconstruction showing the polygonal construction has a well-defined continuum limit parameterizing a continuous planar curve; Pourciau [Pourciau2003] critically analyses the same limit and identifies conditions under which the impulse assumption requires additional care. For the purposes of this paper, the hedging in P1.1 ("whenever the limit exists in the standard differentiable sense") is sufficient: the structural content of the equal-area invariant at finite step is independent of the convergence subtleties.

`Heuristic H1.2 (Newton's scheme as a symplectic integrator).`
The kick-drift structure of Section 3.2 — update velocity by an impulse at the current position, then drift — is precisely the symplectic Euler integrator applied to the separable Hamiltonian \(H(\mathbf r,\mathbf p)=|\mathbf p|^2/(2m)+V(r)\) [Nauenberg1994SymplecticNewton] [Nauenberg2018GraphicalMethod]. The exact angular-momentum conservation (D1.1) is a consequence of two properties: the force is central (so each kick preserves \(\mathbf L\)), and the free drift is linear (so it also preserves \(\mathbf L\)). More broadly, the symplectic character of the map means it preserves the canonical 2-form \(\omega=d\mathbf p\wedge d\mathbf r\) at each finite step. While the method has the same first-order convergence rate as the explicit Euler scheme analyzed in Section 8.4, its step-doubling corrections are constrained to preserve the symplectic form — a finite-step analogue of the principle that renormalization counterterms must respect the symmetries of the theory.

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

Section 6 recovers the same “square-root Jacobian” in the dynamical setting: semigroup composition of short-time kernels forces the characteristic \(t^{-d/2}\) normalization (Derivation D4.1a).

In infinite-dimensional settings (paths), one is tempted to write "formal measures" supported on stationary-action trajectories. In this manuscript we treat such expressions as roadmap heuristics until they are regularized and made compatible with composition (Section 6); see also `Heuristic H0.2a`.
(A companion note on delta objects collects the finite-dimensional scaling computations — identity kernel, stationary-set concentration, point interactions as rank-one kernels — and traces the Van Vleck determinant as the propagator instance of the square-root Hessian.)

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
Under a conformal rescaling \(g=e^{2\sigma}\bar g\), the half-density conjugation produces a quadratic-gradient term \(\propto |\nabla\sigma|^2\) with universal coefficient \(D(4-D)/4\), hence it cancels at \(D=4\) (within the conformal class). This is an operator-simplicity filter (scale-neutral) and is independent of the coupling-dimension sieve discussed above.

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
The unique solution (up to an overall constant phase) is \(A(t)\propto t^{-d/2}\). Thus the exponent \(d/2\) is forced by semigroup composition: it is the half-density “square-root Jacobian” needed for refinement-stable kernel composition.
Imposing the delta initial condition as \(t\to0^+\) fixes the remaining normalization constant and forces \(\hbar\) into the prefactor (in standard flat-space scalar conventions, \(A(t)=(m/2\pi i\hbar t)^{d/2}\) up to phase).

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
2. \(\log W_k\) is additive in \(\Delta t_k\) to first order,

then, up to normalization and higher-order slicing corrections,

$$
\prod_{k=0}^{N-1}W_k
\propto
\exp\!\big(c_0\,S_N[q]\big),
$$

for a constant \(c_0\) with dimensions \([\text{action}]^{-1}\).

Choosing oscillatory quantum time evolution gives \(c_0=i/\hbar\), hence the standard phase factor \(\exp(iS_N/\hbar)\) [Dirac1933] [Feynman1948].

## 6.3 Ordering, Discretization, and Quantum Ambiguity
Different short-time discretizations (left/right/midpoint or more general \(\alpha\)-schemes) typically correspond to different operator orderings. In deformation language, this is the same ambiguity as choosing a star-product representative; these constructions agree in the classical limit but can differ at subleading quantum order [Landsman1998] [deGosson2018ShortTimePropagators].

`Heuristic H4.1 (Same classical limit, different quantum corrections).`
Two discretizations that differ by \(O(\Delta t)\) in each slice can produce equivalent classical equations while shifting \(O(\hbar)\) terms in quantum generators. Thus ordering is a controlled modeling choice, not a contradiction.

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

`Remark D4.2b (Delocalized angles in angular-momentum eigenstates).`
The stationary-phase mechanism explains how classical trajectories reappear in semiclassical packets. It does not imply that a single stationary eigenstate is a localized classical orbit. A simple witness occurs already in central potentials: in polar coordinates the azimuthal angle \(\phi\) is conjugate to \(L_z\), and separation of variables yields [TongQMLectures]
\[
\psi(r,\phi)=R(r)\,e^{im\phi}.
\]
Therefore
\[
|\psi(r,\phi)|^2=|R(r)|^2
\]
is independent of \(\phi\), i.e. the azimuthal angle is uniformly distributed in an \(L_z\) eigenstate. Localized "orbit phase" pictures correspond to coherent superpositions/wavepackets, consistent with the manuscript's use of stationary-phase concentration rather than "eigenstate \(=\) orbit" identification.
(A companion note on action-angle indeterminacy expands this observation to a second witness — the harmonic oscillator, where Fock states delocalize the orbit phase and coherent states spread across Fock modes — and formulates the general structure as an uncertainty relation between action and angle variables.)

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
For an early semiclassical/correspondence-principle anchor in the “Van Vleck” tradition, see [VanVleck1928Correspondence]. For a modern OA statement of the Van Vleck propagator/prefactor and the associated “Van Vleck density”, see [deGosson2018ShortTimePropagators].
An explicit finite-dimensional quadratic-elimination template (Schur complement) shows how mixed endpoint Hessians arise in time slicing; we omit it here.

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

This is the algebraic side of the same continuity narrative: quantization data are organized into equivalence classes compatible with one classical limit. Geometric deformation programs (including tangent-groupoid viewpoints) encode the same bridge from commutative classical data to noncommutative quantum products [Connes1994].

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

This example is included not to replace QFT renormalization, but to reinforce the paper's thesis with a clean model: renormalization is what you do when "refine and compare" is not automatically stable. The Butcher *group* concerns formal method composition, whereas Wilsonian coarse-graining is generally a *semigroup* because information is discarded at each coarse-graining step.
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
\([\partial_{\dot q}\mathcal L]^+_- =0\) (corner) or \(=J\) (impulse). This closes singular dynamics into composition.

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

5. **Section 7:** deformation products recover the Poisson bracket; ordering appears as deformation-equivalence choice. A complementary geometric resolution exists: half-density conjugation selects a canonical ordering for kinetic operators by eliminating the connection term (`Remark D9.1a`, Appendix \S\,10.2). (mixed: `Proposition`, `Derivation`, `Heuristic`) Boundary: formal/asymptotic deformation setting and scope of equivalence.

6. **Section 8:** RG appears as semigroup consistency under composed refinement; counterterms appear as refinement corrections. (mixed: `Proposition`, `Derivation`, `Heuristic`) Boundary: closure/truncation assumptions and regulator-scheme choice.

`Heuristic H7.1 (Programmatic interpretation).`
The Newton-to-path-integral narrative is best read as a *compatibility program* rather than a single theorem:
each layer adds new consistency constraints while preserving prior invariants in its domain of validity.

## 9.4 Residual Vulnerabilities
1. The path integral remains formal at full measure-theoretic level; constructive control is not provided here.
2. Deformation equivalence is stated at the structural level; explicit model-by-model operator-domain analysis is deferred.
3. RG flow is derived structurally; a fully explicit quantum-mechanical computation (2D contact interaction) is provided in Appendix 10.5, but a field-theory-level loop computation is not included.
4. Truncation closure in section 8 is identified but not benchmarked by an explicit truncation-error study.

These are not hidden defects; they are explicit scope boundaries. The manuscript now separates proven derivations from heuristic bridges, which was a core objective of the staged design.

## 9.5 Future Work
The present manuscript emphasizes explicit derivations at the level of mechanics and simple quantum models. Natural extensions include:
1. a field-theory loop computation in a fixed scheme, extending the quantum-mechanical RG witness of Appendix 10.5 to a genuine QFT setting,
2. upgrade the compact reader map into a consolidated diagram/figure for reader navigation,
3. a final notation/normalization pass tailored to the submission venue.

## 9.6 Conclusion
The paper’s central thesis is that “continuum laws” are most cleanly understood as *stable targets of controlled refinement*: finite-step invariants (Newton’s polygonal dynamics) persist through the action formulation, and action additivity is the algebraic structure that forces a consistent composition law. In the quantum setting, multiplicative composition together with local additivity makes exponential weighting structurally natural, and classical dynamics are recovered by stationary-phase concentration. Two further control mechanisms enter when naive refinement is not uniquely defined: deformation quantization organizes ordering/discretization choices into equivalence classes compatible with a common classical limit, and renormalization supplies the compatibility condition required when refinement limits diverge.

Throughout, the manuscript keeps refinement explicit, separates derivations from heuristics, and highlights the additional hypotheses needed for each continuum passage.

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
The half-density conjugation \(|g|^{1/4}\Delta_g|g|^{-1/4}\) eliminates this first-derivative ambiguity entirely: it selects the unique second-order operator with no connection term in the scalar picture, providing a geometric resolution of the ordering ambiguity for kinetic operators (cf.\ Derivation HD-D1.3 in the half-density companion note).

`Proposition P9.1 (Discretization-ordering equivalence class statement).`
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
Written this way, compatibility is falsifiable: closure can fail when no admissible \(\theta'\) exists. The manuscript’s simplest explicit witness is the free short-time kernel ansatz: demanding semigroup closure under time-slice composition fixes the normalization exponent \(A(t)\propto t^{-d/2}\) (Derivation D4.1a); choosing any other power breaks closure.

`Derivation D10.1 (Bridge to sections 3--8).`
1. **Partition compatibility** (\(\mathcal C_t\)): Sections 3--4 (area-law refinement; action/Noether bridge).
2. **Representation compatibility** (\(\mathcal Q_\hbar\)): Sections 6--7 (ordering/discretization choices with identical \(\hbar\to0\) limit).
3. **Scale compatibility** (\(\mathcal R_\Lambda\)): Section 8 (RG semigroup consistency).

Therefore the Newton-to-path-integral narrative is an implementation of RCP rather than a sequence of disconnected formalisms.

`Heuristic H10.1 (Foundational reading).`
RCP can be interpreted as a candidate foundational postulate: physical laws are those statements that survive controlled changes of partition, representation, and scale.

## 10.4 Appendix Summary
Appendix sections 10.1--10.3 close three technical gaps identified in Section 9:
1. explicit renormalization subtraction and running (10.1),
2. explicit ordering/discretization \(O(\hbar)\) shift with fixed classical limit (10.2),
3. explicit foundational compatibility principle unifying the full chain (10.3).

Appendix 10.5 supplies a fully worked quantum-mechanical RG computation (2D contact interaction) demonstrating divergence, subtraction, running coupling, dimensional transmutation, and scheme dependence in a concrete model.

These additions do not alter the thesis; they increase computational accountability of the existing chain.

## 10.5 Singular Contact Interaction as an Explicit RG Computation (2D Delta)
Section 8 argues that RG is the scale-compatibility condition required when refinement limits diverge. This appendix supplies a fully explicit example in a singular quantum-mechanical model where the continuum theory is defined only after a renormalization prescription is chosen. For a perturbative-QFT-style treatment of this mechanism in quantum mechanics (including the 2D delta interaction), see [ManuelTarrach1994PertRenQM].
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
18. [Berkeley1734Analyst] George Berkeley, *The Analyst; or, A Discourse Addressed to an Infidel Mathematician* (Dublin/London, 1734). (Foundational critique of Newton's fluxions and Leibniz's infinitesimals — the "ghosts of departed quantities" objection.)
19. [Nauenberg2003KeplerArea] Michael Nauenberg, "Kepler's Area Law in the Principia: Filling in some details in Newton's proof of Prop. 1," *Historia Mathematica* 30 (2003), 441–456. arXiv:`math/0112048`. DOI `10.1016/S0315-0860(02)00027-7`.
20. [Pourciau2003] Bruce Pourciau, "Newton's Argument for Proposition 1 of the Principia," *Archive for History of Exact Sciences* 57 (2003), 267–311. DOI `10.1007/s00407-002-0062-x`.
21. [Nauenberg1994SymplecticNewton] Michael Nauenberg, "Newton's early computational method for dynamics," *Archive for History of Exact Sciences* 46 (1994), 221–252. DOI `10.1007/BF01686278`.
22. [Nauenberg2018GraphicalMethod] Michael Nauenberg, "Newton's graphical method for central force orbits," *American Journal of Physics* 86(10) (2018), 765–771. DOI `10.1119/1.5046424`. arXiv:`1810.05264`.
