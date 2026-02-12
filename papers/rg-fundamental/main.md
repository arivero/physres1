---
title: "Renormalization Group as a Fundamental Compatibility Principle"
author: []
date: ""
abstract: |
  This note develops the viewpoint that the renormalization group (RG) is a *compatibility condition* forced by any definition of a continuum theory as a regulator-independent limit of composed refinements. The core claim is structural: once a theory is defined by composing local pieces across refinement steps, regulator dependence is unavoidable in intermediate objects, and RG invariance is the demand that the composed predictions remain stable. A simple calculus analogy makes the point vivid: even defining the derivative can be written in the pattern “regulate \(\to\) subtract a local divergence \(\to\) fix a scheme by a normalization condition \(\to\) take a limit”. We connect this perspective to rooted-tree bookkeeping (Butcher group) and the Hopf-algebra formulation of perturbative renormalization [Brouder1999] [ConnesKreimer2000] [McLachlan2017].
---

# 1. Scope
Dependent follow-up to `paper/main.md`, focusing on:
1. RG as “scale-compatibility” within the Refinement Compatibility Principle (RCP) perspective.
2. Why RG is semigroup-like (information loss under coarse-graining).
3. A minimal worked analogy (difference quotients) showing “counterterm subtraction = taking a derivative”.

# 2. RG as Composition Consistency
`Proposition P1.1 (Semigroup compatibility).`
Let \(W_{\Lambda\to\mu}\) map effective data at cutoff \(\Lambda\) to effective data at scale \(\mu\). If refinement/coarse-graining is composable,
\(W_{\kappa\to\mu}\circ W_{\Lambda\to\kappa}=W_{\Lambda\to\mu}\),
then an infinitesimal generator exists under differentiability assumptions, yielding beta functions as the differential form of scale-compatibility.

This is the main manuscript’s Section 8 claim restated as a “fundamental” postulate: a theory is well-defined only if it survives composed changes of scale.

# 3. A Calculus Micro-Model: Derivative as Counterterm Subtraction
Let \(f\) be smooth and consider \(\varepsilon\to 0^+\). The quantities \(f(x+\varepsilon)/\varepsilon\) and \(f(x)/\varepsilon\) individually diverge as \(1/\varepsilon\), but their difference is finite:

$$
\frac{f(x+\varepsilon)}{\varepsilon}-\frac{f(x)}{\varepsilon}
=\frac{f(x+\varepsilon)-f(x)}{\varepsilon}
\xrightarrow{\varepsilon\to0} f'(x).
$$

`Heuristic H1.1 (Interpretation as renormalization).`
View \(f(x)/\varepsilon\) as a local counterterm subtracting the divergence of \(f(x+\varepsilon)/\varepsilon\). The renormalized limit is the derivative \(f'(x)\).

To make the divergence explicit, expand by Taylor:
\[
\frac{f(x+\varepsilon)}{\varepsilon}
=\frac{f(x)}{\varepsilon}+f'(x)+O(\varepsilon).
\]
So one may start from the regulated operator \(D_\varepsilon f(x):=f(x+\varepsilon)/\varepsilon\) and subtract a counterterm proportional to \(f(x)\).

`Heuristic H1.1a (Finite ambiguity and renormalization condition).`
More generally, subtract
\[
\left(\frac{1}{\varepsilon}+z_0\right)f(x),
\]
which yields the finite limit \(f'(x)-z_0 f(x)\). A normalization condition fixes the scheme: the ordinary calculus axiom \(D(1)=0\) forces \(z_0=0\).

`Remark H1.1b (Contact-term / distribution version).`
The same “regulated difference quotient \(\to\) new local object” pattern appears at the level of distributions. In the sense of distributions,
\[
\frac{\delta(x+\varepsilon)-\delta(x)}{\varepsilon}\xrightarrow[\varepsilon\to 0]{}\delta'(x),
\qquad \langle\delta',\varphi\rangle=-\varphi'(0).
\]
This is a minimal toy prototype of how point-splitting limits generate contact terms (often involving derivatives of \(\delta\)) in field-theoretic identities. For details and sign conventions, see `blackboards/2026-02-10-difference-quotients-counterterms-and-delta-prime.md`.

`Remark H1.1c (Weak variational-derivative version).`
The same grammar appears in Euler-Lagrange weak form. For \(p(t)\in L^1_{\rm loc}\) and \(\eta\in C_c^\infty\),
\[
\int \frac{p(t+\varepsilon)-p(t)}{\varepsilon}\,\eta(t)\,dt
=
\int p(t)\,\frac{\eta(t-\varepsilon)-\eta(t)}{\varepsilon}\,dt
\xrightarrow[\varepsilon\to 0]{}
\langle \dot p,\eta\rangle.
\]
So the distributional derivative is again obtained by regulated local subtraction before the limit. If \(p\) has a jump \(p_+-p_-\) at \(t_0\), then \(\dot p=(p_+-p_-)\delta(t-t_0)\), making the contact term explicit in the weak Euler-Lagrange equation.

# 4. Rooted Trees: Bookkeeping for Composed Refinements
Runge–Kutta composition and perturbative renormalization share rooted-tree combinatorics. Butcher’s group organizes method composition, while the Hopf-algebra approach organizes subtraction/recursion patterns in renormalization [Brouder1999] [McLachlan2017] [ConnesKreimer2000].

`Heuristic H1.2 (One compatibility story, two domains).`
The shared tree bookkeeping suggests that “RG is fundamental” can be understood as: whenever you define a theory by iterating/composing local approximations, you must control the discrepancy between “two steps” and “one step”. That discrepancy is the counterterm/correction data, and the RG is the law governing how those corrections change with scale.

## 4.1 Worked witness: Euler step-doubling and the first rooted tree
Even before QFT, the “two steps vs one step” discrepancy can be computed explicitly in a toy refinement problem.
This gives a checkable instance of the rooted-tree bookkeeping slogan, without introducing the full B-series formalism.

`Derivation D1.0 (Two half-steps vs one coarse step).`
Consider the autonomous ODE \(y'=f(y)\) on \(\mathbb R^n\), with smooth \(f\).
Define the explicit Euler one-step map \(E_h(y):=y+h\,f(y)\).
Then composing two half-steps gives
\[
E_{h/2}\!\circ E_{h/2}(y)
=y+\frac{h}{2}f(y)+\frac{h}{2}f\!\Big(y+\frac{h}{2}f(y)\Big)
=y+h f(y)+\frac{h^2}{4}\,f'(y)[f(y)]+\frac{h^3}{16}\,f''(y)[f(y),f(y)]+O(h^4),
\]
where \(f'(y)\) is the Jacobian (derivative), and \(f'(y)[v]\) denotes its action on a vector \(v\). Likewise \(f''(y)[v,w]\) denotes the bilinear second derivative.
Therefore the leading step-doubling discrepancy is
\[
E_{h/2}\!\circ E_{h/2}(y)-E_h(y)=\frac{h^2}{4}\,f'(y)[f(y)]+\frac{h^3}{16}\,f''(y)[f(y),f(y)]+O(h^4).
\]
In rooted-tree language, the leading term is the order-2 elementary differential associated to the length-2 chain tree \([\bullet]\), i.e. \(F([\bullet])=f'(y)[f(y)]\), and the next term is the order-3 branch tree \([\bullet,\bullet]\) with \(F([\bullet,\bullet])=f''(y)[f(y),f(y)]\). (The \(O(h^2)\) term requires \(f\in C^1\); the \(O(h^3)\) term requires \(f\in C^2\).)

`Remark D1.0a (Modified equation: “effective data runs with the scale \(h\)”).`
If one seeks a step-size-dependent vector field \(f_h=f+h g+O(h^2)\) whose *exact* time-\(h\) flow agrees with Euler through \(O(h^2)\), then the exact-flow expansion gives
\[
\Phi_h^{(f_h)}(y)
=y+h f_h(y)+\frac{h^2}{2}\,f_h'(y)[f_h(y)]+O(h^3)
=y+h f(y)+h^2\Big(g(y)+\frac12 f'(y)[f(y)]\Big)+O(h^3),
\]
so matching \(E_h(y)=y+h f(y)\) forces \(g(y)=-\tfrac12 f'(y)[f(y)]\).
Thus even this toy refinement problem exhibits “running” of effective data with the refinement scale \(h\).

# 5. Worked Singular QM Model: The 2D Delta Potential
The cleanest “RG appears before QFT” example is the contact (delta) interaction in two spatial dimensions. The point is not that this is the most physical model; it is that:
1. the interaction is Dirac-supported (singular),
2. the naive continuum limit is ill-defined,
3. a renormalization prescription plus RG invariance *defines* the theory.

For a standard overview of delta-function potentials in two and three dimensions, see [Jackiw1991DeltaPotentials]. For a compact treatment that explicitly parallels QFT-style renormalization in a two-dimensional delta interaction (and also treats the Aharonov–Bohm case), see [ManuelTarrach1994PertRenQM]. The derivation below matches the same logarithmic short-distance divergence and dimensional transmutation scale, up to conventions for normalization and for where one places scheme-dependent constants. For a complementary Wilson–Kogut-style RG study of contact interactions in \(1\)D quantum mechanics (including a scaling analysis on the full line), see [BoyaRivero1994Contact]. The \(2\)D delta model below is chosen because it is the simplest setting where the contact coupling is marginal and the renormalization produces genuine logarithmic running and dimensional transmutation.

For a compact normalization sheet of the cutoff loop integrals in \(1\)D/\(2\)D/\(3\)D (aligned with this note’s conventions, including the \(+i0\) imaginary parts), see `blackboards/2026-02-10-contact-loop-integrals-1d-2d-3d.md`.

## 5.1 Setup
Consider \(H = -\frac{\hbar^2}{2m}\Delta + g\,\delta^{(2)}(x)\) on \(\mathbb R^2\).
At the level of formal perturbation theory, the contact interaction generates momentum integrals that diverge logarithmically.

The Lippmann–Schwinger equation for the \(T\)-matrix reads

$$
T(E) = g + g\,I(E)\,T(E),
$$

where the divergent loop integral is the free resolvent at the origin,

$$
I(E)=\langle 0 | (E-H_0+i0)^{-1} |0\rangle
=\int \frac{d^2q}{(2\pi)^2}\,\frac{1}{E-\frac{\hbar^2 q^2}{2m}+i0}.
$$

`Derivation D1.1 (Cutoff evaluation of the loop integral).`
Introduce a wavevector cutoff \(|q|<\Lambda\) and write \(E=\hbar^2 k^2/(2m)\) for \(E>0\).
Then

$$
I(E;\Lambda)
=\frac{1}{2\pi}\int_0^\Lambda \frac{q\,dq}{E-\frac{\hbar^2 q^2}{2m}+i0}
=-\frac{m}{2\pi\hbar^2}\left[\ln\!\left(\frac{\Lambda^2}{k^2}\right)+i\pi\right]
+O\!\left(\frac{k^2}{\Lambda^2}\right).
$$

The key feature is the logarithmic divergence \(\sim -\frac{m}{2\pi\hbar^2}\ln \Lambda^2\).

## 5.2 Renormalized Coupling and RG Equation
For a contact interaction the \(T\)-matrix is algebraic:

$$
T(E;\Lambda) = \frac{1}{g_B(\Lambda)^{-1}-I(E;\Lambda)}.
$$

Define the renormalized coupling at scale \(\mu\) by subtracting the logarithmic divergence:

$$
\frac{1}{g_R(\mu)}
\equiv
\frac{1}{g_B(\Lambda)}
+\frac{m}{2\pi\hbar^2}\ln\!\left(\frac{\Lambda^2}{\mu^2}\right).
$$

`Derivation D1.2 (Finite \(T\)-matrix and beta function).`
Substituting the definition of \(g_R(\mu)\) into \(T(E;\Lambda)\) and using the expression for \(I(E;\Lambda)\) gives a cutoff-independent amplitude:

$$
T(E)
=\frac{1}{
\frac{1}{g_R(\mu)}
-\frac{m}{2\pi\hbar^2}\ln\!\left(\frac{k^2}{\mu^2}\right)
+ i\,\frac{m}{2\hbar^2}
}.
$$

Physical quantities cannot depend on the arbitrary subtraction scale \(\mu\), so impose \(dT/d\ln\mu=0\). Since \(\frac{d}{d\ln\mu}\ln(k^2/\mu^2)=-2\), this yields the RG equation in the unambiguous form

$$
\mu\frac{d}{d\mu}\left(\frac{1}{g_R(\mu)}\right)
=-\frac{m}{\pi\hbar^2}.
$$

Equivalently,

$$
\beta(g_R)\equiv \mu\frac{d g_R}{d\mu}
=\frac{m}{\pi\hbar^2}\,g_R^2.
$$

The semigroup/composition property is explicit in the integrated flow:

$$
\frac{1}{g_R(\mu_2)}
=\frac{1}{g_R(\mu_1)}-\frac{m}{\pi\hbar^2}\ln\!\left(\frac{\mu_2}{\mu_1}\right).
$$

## 5.3 Dimensional Transmutation via the Bound State
For \(E<0\) write \(E=-\hbar^2\kappa^2/(2m)\) with \(\kappa>0\). Analytic continuation removes the \(i\pi\) term and the pole condition \(T(E)^{-1}=0\) becomes

$$
\frac{1}{g_R(\mu)}
+\frac{m}{2\pi\hbar^2}\ln\!\left(\frac{\mu^2}{\kappa^2}\right)=0.
$$

`Proposition P1.2 (RG-invariant scale from the delta interaction).`
Define

$$
\kappa_\ast^2
\equiv
\mu^2\exp\!\left(\frac{2\pi\hbar^2}{m}\frac{1}{g_R(\mu)}\right).
$$

Using the RG equation for \(1/g_R(\mu)\), the quantity \(\kappa_\ast\) is independent of \(\mu\). The scattering amplitude can be rewritten purely in terms of \(\kappa_\ast\):

$$
T(E)
=\frac{2\pi\hbar^2/m}{\ln(\kappa_\ast^2/k^2)+i\pi}.
$$

Thus the renormalized delta interaction trades the bare coupling for a physical scale \(\kappa_\ast\) (equivalently a bound-state energy \(E_B=\hbar^2\kappa_\ast^2/(2m)\)).

## 5.4 Scheme Dependence: What Changes vs What Is Invariant
The subtraction condition defining \(g_R(\mu)\) is not unique: one may add a finite constant to the definition. For example, define an alternative coupling \(g_R^{(C)}\) by

$$
\frac{1}{g_R^{(C)}(\mu)}
\equiv
\frac{1}{g_B(\Lambda)}
+\frac{m}{2\pi\hbar^2}\left[\ln\!\left(\frac{\Lambda^2}{\mu^2}\right)+C\right]
=\frac{1}{g_R(\mu)}+\frac{m}{2\pi\hbar^2}C,
$$

with fixed dimensionless \(C\).

`Derivation D1.3 (Scheme dependence as coupling reparametrization).`
Differentiating with respect to \(\ln\mu\) removes the constant \(C\), so the RG equation for \(1/g_R(\mu)\) and the beta function \(\beta(g_R)\) are unchanged by this finite subtraction shift.

The mapping between the running coupling and the RG-invariant scale does change:

$$
\kappa_{\ast}^{(C)\,2}
\equiv
\mu^2\exp\!\left(\frac{2\pi\hbar^2}{m}\frac{1}{g_R^{(C)}(\mu)}\right)
=e^{C}\,\kappa_\ast^2.
$$

Thus, in this one-scale model, scheme dependence is exactly a rescaling of the dimensional transmutation scale. Once one physical datum is used to fix \(\kappa_\ast\) (equivalently \(E_B\)), all predictions are scheme-independent.

## 5.5 Bubble Chains as Ladder Trees (Explicit Recursion)
The contact interaction has a particularly transparent perturbative structure:

$$
T(E;\Lambda)
=\frac{g_B(\Lambda)}{1-g_B(\Lambda)\,I(E;\Lambda)}
=\sum_{n\ge 0} g_B(\Lambda)^{n+1}\,I(E;\Lambda)^n.
$$

Each term corresponds to a “bubble-chain” diagram. Its divergence structure is the simplest possible: repeated insertions of the same logarithmically divergent loop.

`Derivation D1.4 (Perturbative counterterm cancellation through order \(g_R^2\)).`
Write
\(I(E;\Lambda)=I_{\mathrm{div}}(\Lambda)+I_{\mathrm{fin}}(E;\mu)\) with \(I_{\mathrm{div}}(\Lambda)=-\frac{m}{2\pi\hbar^2}\ln(\Lambda^2/\mu^2)\) and \(I_{\mathrm{fin}}(E;\mu)=-\frac{m}{2\pi\hbar^2}\ln(\mu^2/k^2)-i\frac{m}{2\hbar^2}\).
From the renormalization condition,
\(g_B = g_R + g_R^2 I_{\mathrm{div}} + O(g_R^3)\).
Then, expanding \(T=g_B+g_B^2 I+O(g_B^3)\) gives

$$
T
=g_R
+g_R^2\big(I_{\mathrm{div}}+I_{\mathrm{fin}}\big)
+g_R^2(-I_{\mathrm{div}})
+O(g_R^3)
=g_R+g_R^2 I_{\mathrm{fin}}+O(g_R^3),
$$

so the cutoff divergence cancels explicitly at this order. Higher orders cancel similarly because the series is geometric.

`Heuristic H1.3 (Rooted-tree/Hopf-algebra view, toy-level).`
In the Connes–Kreimer Hopf algebra of rooted trees, ladder (linear) trees model iterated insertions of a single primitive divergence. For the ladder tree \(L_n\) with \(n\) vertices, admissible cuts yield a deconcatenation coproduct

$$
\Delta L_n
=
L_n\otimes 1
+1\otimes L_n
+\sum_{k=1}^{n-1} L_{n-k}\otimes L_k,
$$

and the antipode recursion generates the alternating subtraction pattern (e.g. \(S(L_1)=-L_1\), \(S(L_2)=-L_2+L_1^2\), \(S(L_3)=-L_3+2L_1L_2-L_1^3\)). This is the algebraic skeleton underlying the Bogoliubov counterterm recursion in perturbative renormalization [ConnesKreimer2000] and the rooted-tree bookkeeping emphasized in the Runge–Kutta/RG bridge literature [Brouder1999] [McLachlan2017].

## 5.6 Why This Supports “RG Is Definitional”
This model is the precise analog of the calculus micro-model in Section 3:
1. The regulated object \(I(E;\Lambda)\) diverges.
2. A local counterterm (here the subtraction defining \(g_R(\mu)\)) removes the divergence.
3. RG invariance (\(\mu\)-independence) enforces a flow law and produces a cutoff-free theory.

In short: in a singular interaction, “the theory” is the triple (regularization, subtraction condition, RG invariance). The RG is not an afterthought; it is the compatibility condition that makes the refinement limit meaningful.

## 5.7 Point Interactions as Short-Distance Boundary Conditions (Where the Scale Lives)
The renormalized \(2\)D contact interaction can be understood without momentum cutoffs:
it can be formulated as a boundary condition at the removed point \(r=0\) (a self-adjoint extension parameter). This makes the “scale from a point” intuition explicit.
For a perturbative-QFT-style presentation of this mechanism in the delta model, including the explicit short-distance logarithm, see [ManuelTarrach1994PertRenQM].

`Proposition P1.4 (Point interaction parameterizes a length scale).`
For the free Hamiltonian on \(\mathbb R^2\setminus\{0\}\), admissible s-wave states can be characterized near \(r=0\) by an asymptotic expansion
\(\psi(r)=A\ln r + B + o(1)\).
A \(2\)D point interaction is (equivalently) the choice of a boundary condition relating \(A\) and \(B\), e.g.
\(B=A\ln R\), or
\(\psi(r)=A\ln(r/R)+o(1)\)
for some length scale \(R>0\).

`Derivation D1.5 (Bound state scale from the \(K_0\) short-distance expansion).`
Consider a bound state \(E=-\hbar^2\kappa^2/(2m)\) with \(\kappa>0\). For \(r>0\) the equation is free:
\((\Delta-\kappa^2)\psi=0\).
The s-wave solution decaying at infinity is
\(\psi(r)=A\,K_0(\kappa r)\).
As \(r\to0\),
\(K_0(z)=-\ln(z/2)-\gamma+O(z^2)\),
so
\[
\psi(r)=A\Big[-\ln r-\ln(\kappa/2)-\gamma\Big]+o(1)
=A\ln\!\Big(\frac{R}{r}\Big)+o(1),
\qquad
R\equiv \frac{2e^{-\gamma}}{\kappa}.
\]
Thus the boundary-condition parameter \(R\) is equivalent to the bound-state scale \(\kappa\), i.e. the physical transmutation scale \(\kappa_\ast\) in Section 5.3 can be taken as \(\kappa_\ast = 2e^{-\gamma}/R\) up to conventions.

`Heuristic H1.6 (Scheme dependence is the constant in “\(\ln r\)”).`
The only ambiguity in the short-distance matching is the additive constant accompanying \(\ln r\) (here \(-\ln(\kappa/2)-\gamma\)). Changing that finite constant is exactly the finite-subtraction freedom of Section 5.4, and it rescales the physical length/energy scale (\(R\), \(\kappa_\ast\)) without changing the beta function.

## 5.8 Contact Interactions Across Dimensions: 1D vs 2D vs 3D
The \(2\)D delta is singled out above because its coupling is marginal and produces a clean log-running and transmutation scale. But contact interactions exist in all dimensions, and comparing \(1\)D/\(2\)D/\(3\)D is a good sanity-check on the “RG = compatibility” thesis: the dimension controls which kind of divergence (or boundary-condition flow) appears.

`Proposition P1.6 (Canonical dimension of the delta coupling).`
In \(d\) spatial dimensions, the contact potential \(V(x)=g\,\delta^{(d)}(x)\) requires \([g]=\text{length}^{d-2}\) (in \(\hbar=c=1\) units), because \([\delta^{(d)}]=\text{length}^{-d}\) and the kinetic term sets \([E]=\text{length}^{-2}\).
Thus:
1. \(d=1\): \([g]=\text{length}^{-1}\) (the natural dimensionless combination at momentum scale \(\mu\) is \(g/\mu\)),
2. \(d=2\): \([g]=\text{length}^{0}\) (marginal; logarithms),
3. \(d=3\): \([g]=\text{length}^{+1}\) (the natural dimensionless combination at momentum scale \(\mu\) is \(\mu g\); cutoff schemes show power divergences).

`Heuristic H1.8a (Same compatibility grammar, different data-space complexity).`
Across \(1\)D/\(2\)D/\(3\)D contact branches, the compatibility principle is the same, but the object being flowed is not:
1. in \(1\)D (full-line contact family), scale acts on a higher-dimensional boundary-condition manifold (U(2)-type data),
2. in \(2\)D, the marginal log branch is effectively captured by one transmutation scale (\(\kappa_\ast\) or \(R\)),
3. in \(3\)D s-wave contact reduction, low-energy data are effectively one-parameter (scattering length \(a\)).
This helps explain why fixed-point structure can be richer in \(1\)D without changing the underlying "RG as compatibility" thesis.

### 5.8.1 The 3D delta: scattering length and (Wilsonian) fixed points
In \(3\)D, the loop integral \(I(E)\) diverges linearly with a momentum cutoff. With \(E=\hbar^2k^2/(2m)\) and \(|q|<\Lambda\),
\[
I_{3D}(E;\Lambda)
=\int \frac{d^3q}{(2\pi)^3}\,\frac{1}{E-\frac{\hbar^2 q^2}{2m}+i0}
=-\frac{m}{\pi^2\hbar^2}\Lambda
-i\,\frac{m}{2\pi\hbar^2}k
+O\!\left(\frac{k^2}{\Lambda}\right).
\]
So
\[
T(E;\Lambda)=\frac{1}{g_B(\Lambda)^{-1}-I_{3D}(E;\Lambda)}
\]
is cutoff-dependent unless one trades \(g_B(\Lambda)\) for a physical parameter.
A standard choice is to define a renormalized coupling at threshold (equivalently a scattering length \(a\)) by fixing \(T(0)\):
\[
\frac{1}{T(0)}\equiv \frac{m}{2\pi\hbar^2}\,\frac{1}{a}
\quad\Longleftrightarrow\quad
\frac{1}{g_B(\Lambda)}+\frac{m}{\pi^2\hbar^2}\Lambda
=\frac{m}{2\pi\hbar^2}\,\frac{1}{a}.
\]
Then the renormalized amplitude takes the universal one-parameter form
\[
T(E)=\frac{2\pi\hbar^2/m}{\frac{1}{a}+ik},
\]
up to conventions for the overall normalization of \(T\).
This is the standard “scattering length parameterization” of the contact interaction in 3D; see also [Jackiw1991DeltaPotentials] for the delta-potential lore and convention comparisons.

`Heuristic H1.9 (3D “no log” does not mean “no RG”).`
Because the divergence is power-like, a minimal-subtraction style scheme can hide running. But in a Wilsonian parameterization with a dimensionless coupling (roughly \( \hat g(\Lambda)\propto \Lambda g_B(\Lambda)\)), the flow can exhibit fixed points corresponding to \(a=0\) (free/transparent) and \(a=\infty\) (unitarity). The point for this note is structural: even when running is not logarithmic, a compatibility condition still controls how the effective description must change with scale.

### 5.8.2 The 1D line: U(2) contact family and richer fixed-point set
In \(1\)D, the pure \(\delta(x)\) interaction is already a well-defined self-adjoint Hamiltonian and does not require a UV subtraction to make scattering finite. However, the *space of all* contact interactions on the full line is richer: it is naturally parameterized by boundary conditions at the origin (a self-adjoint extension of the free Hamiltonian on \(\mathbb R\setminus\{0\}\)); see, for example, [BonneauFarautValent2001SAE] and the point-interaction “connection condition” formulation in [TsutsuiFulopCheon2002Connection]. Scaling then acts nontrivially on that boundary-condition parameter space.

One convenient description is in terms of the (dimensionless) cutoff-\(a\) scattering matrix \(\tilde S_{\tilde k,a}\) as a function of \(\tilde k=ak\). A Wilson--Kogut style scaling transformation acts by
\[
\tilde S^{(t)}_{\tilde k}=T^t[\tilde S]_{\tilde k}=\tilde S_{e^{-t}\tilde k},
\]
so fixed points are exactly **constant** unitary matrices satisfying the usual 1D constraints (unitarity and \(S_{-k}=Q S_k^\dagger Q\) with \(Q\) swapping left/right channels). Boya--Rivero show that this yields a nontrivial fixed-point set (including a circle of fixed points in the time-reversal-invariant sector) and that familiar contact interactions (\(\delta\), \(\delta'\), decoupled half-lines) sit on trajectories connecting these fixed points [BoyaRivero1994Contact]. The underlying “U(2) family of point interactions” classification is standard and can be anchored independently via the self-adjoint extension and connection-condition literature [BonneauFarautValent2001SAE] [TsutsuiFulopCheon2002Connection].

`Heuristic H1.10 (Why 1D looks “more complicated”).`
The lesson is not that \(1\)D is “more renormalizable”; it is that the relevant notion of RG data for point interactions is the boundary-condition parameter space. In \(2\)D the same “scale from a point” reappears as a single transmutation scale. In \(1\)D, because the full contact family is larger (U(2) rather than a one-parameter subset), the scaling flow can have a correspondingly richer fixed-point structure.

`Heuristic H1.11 (Fixed points as quantization rules in finite volume).`
In one dimension, a contact interaction is boundary data at a point, and RG fixed points are precisely the **scale-invariant** boundary conditions (energy-independent \(S\)-matrices). When the system is placed in a finite box (or on a circle), boundary/scattering data become **quantization conditions** for the allowed momenta. Thus fixed points naturally correspond to simple “quantization rules” (linear spectra up to constant phase shifts), while departures from the fixed point appear as scale-dependent phase shifts.

`Derivation D1.6a (Robin (interpolating) boundary condition gives a quantization condition).`
Consider a free particle on the interval \([0,L]\) with the left-endpoint Robin (interpolating) boundary condition
\(\psi'(0)=\lambda\,\psi(0)\),
and (for simplicity) a Dirichlet boundary at the right endpoint,
\(\psi(L)=0\).
For energy \(E=\hbar^2k^2/(2m)\), the general solution is \(\psi(x)=A\sin(kx)+B\cos(kx)\).
The Dirichlet condition gives \(A\sin(kL)+B\cos(kL)=0\), hence \(B=-A\tan(kL)\).
The left-endpoint boundary condition gives \(A k=\lambda B\), so
\[
k=-\lambda\,\tan(kL),
\qquad\text{equivalently}\qquad
\tan(kL)=-\frac{k}{\lambda}.
\]
This is a quantization rule: the allowed \(k\) are the roots of the displayed equation.
Equivalently, writing \(\delta(k):=\arctan(k/\lambda)\), one has the familiar “phase-shift quantization” form
\[
kL+\delta(k)=n\pi,
\qquad n\in\mathbb Z,
\]
so the boundary condition is encoded as a momentum-dependent phase shift.
At the scale-invariant endpoints \(\lambda=\infty\) (Dirichlet at \(0\)) and \(\lambda=0\) (Neumann at \(0\)), one recovers the familiar fixed-point spectra
\[
\lambda=\infty:\; k_n=\frac{n\pi}{L},
\qquad
\lambda=0:\; k_n=\frac{(n+\tfrac12)\pi}{L},
\]
up to the usual \(n\in\mathbb N\) conventions.
More general point interactions (including the full U(2) family on the line) act similarly: they change the phase relation at the defect, hence shift the finite-volume quantization condition by a phase.

`Derivation D1.6b (Scaling of the Robin (interpolating) parameter).`
The Robin (interpolating) boundary condition \(\psi'(0)=\lambda\,\psi(0)\) interpolates between Neumann (\(\lambda=0\)) and Dirichlet (\(|\lambda|=\infty\)) at the endpoint, and already encodes the engineering dimension of \(\lambda\): since \(\psi'\) carries one inverse length compared to \(\psi\), one has \([\lambda]=\text{length}^{-1}\).
Equivalently, under a spatial dilation \(x\mapsto b x\) with \(b>0\), the derivative scales as \(\partial_x \mapsto b^{-1}\partial_x\), so preserving the *form* of the boundary condition forces
\[
\lambda \mapsto \lambda(b)=b^{-1}\lambda.
\]
If we parameterize the same statement by a momentum/energy scale \(\mu\sim 1/\ell\), then the dimensionless coupling \(\hat\lambda(\mu):=\lambda/\mu\) obeys the purely engineering beta function
\[
\beta_{\hat\lambda}(\mu):=\mu\frac{d\hat\lambda}{d\mu}=-\hat\lambda.
\]
The fixed points are \(\hat\lambda=0\) (Neumann, \(\psi'(0)=0\)) and \(\hat\lambda=\infty\) (Dirichlet, \(\psi(0)=0\)); general finite \(\lambda\) interpolates between them as one changes the probing scale.
This is not a loop-induced running: it is the RG action of scaling on boundary-condition parameters.

`Example E1.1 (1D \(\delta\) scattering: transparent vs reflective endpoints).`
Consider \(H=-\frac{\hbar^2}{2m}\frac{d^2}{dx^2}+g\,\delta(x)\) on the full line.
For an incoming plane wave from the left,
\(\psi(x)=e^{ikx}+r(k)e^{-ikx}\) for \(x<0\) and \(\psi(x)=t(k)e^{ikx}\) for \(x>0\).
Continuity at \(x=0\) and the derivative jump condition
\(\psi'(0^+)-\psi'(0^-)=\frac{2mg}{\hbar^2}\psi(0)\)
give
\[
t(k)=\frac{1}{1+i\,\kappa/k},\qquad r(k)=\frac{-i\,\kappa/k}{1+i\,\kappa/k},
\qquad \kappa:=\frac{mg}{\hbar^2}.
\]
Thus the scattering depends only on the dimensionless ratio \(\kappa/k\) (equivalently \(\kappa/\mu\) at scale \(\mu\sim k\)). The endpoint behaviors are:
1. \(k\gg \kappa\) (UV/short distance): \(t(k)\to 1\), \(r(k)\to 0\) (transparent fixed point),
2. \(k\ll \kappa\) (IR/long distance): \(t(k)\to 0\), \(r(k)\to -1\) (perfect reflection fixed point).
In this sense the “RG flow of the \(S\)-matrix” is simply the statement that, for a dimensionful contact strength, changing the probing scale moves one along a trajectory between scale-invariant endpoint matrices.

## 5.9 Convention Map: Measures, Loop Integrals, and Scheme Constants
The \((2\pi)^d\) factors and the finite constants in the logarithms are the usual source of “same result up to conventions” confusion. In this note we fix the conventions as follows:
we define the loop integral (free resolvent at the origin) by
\[
I_d(E;\Lambda)
=\int_{|q|<\Lambda}\frac{d^dq}{(2\pi)^d}\,
\frac{1}{E-\frac{\hbar^2 q^2}{2m}+i0},
\]
and we define the (scalar) \(T\)-matrix by the algebraic Lippmann–Schwinger form
\[
T(E;\Lambda)=\frac{1}{g_B(\Lambda)^{-1}-I_d(E;\Lambda)}.
\]

Reminder: we use \( \frac{1}{x+i0}=\mathrm{PV}\frac{1}{x}-i\pi\delta(x)\), so the on-shell imaginary part of \(I_d\) carries the minus sign.

With \(E=\hbar^2k^2/(2m)\) (\(E>0\)) and \(\Lambda\gg k\), these definitions give:
\[
I_2(E;\Lambda)
=-\frac{m}{2\pi\hbar^2}\left[\ln\!\left(\frac{\Lambda^2}{k^2}\right)+i\pi\right]
+O\!\left(\frac{k^2}{\Lambda^2}\right),
\]
\[
I_3(E;\Lambda)
=-\frac{m}{\pi^2\hbar^2}\Lambda
-i\,\frac{m}{2\pi\hbar^2}k
+O\!\left(\frac{k^2}{\Lambda}\right).
\]

Finally, the finite constant accompanying the logarithm is a scheme choice:
adding a fixed constant \(C\) to the subtraction condition does not change the beta function, but it rescales the RG-invariant transmutation scale \(\kappa_\ast^2\mapsto e^{C}\kappa_\ast^2\) (hence the boundary-condition length \(R\sim 1/\kappa_\ast\) rescales by \(R\mapsto e^{-C/2}R\)). The universal content is the existence of the single scale, not its convention-dependent normalization.

`Heuristic H1.12 (Point interaction as a rank-one half-density kernel).`
Formally, a point interaction is the rank-one operator \(V=g\,|0\rangle\langle0|\), so its Schwartz kernel is supported at coincident points. In the coordinate-free half-density kernel calculus, this is naturally written as the bi-half-density distribution
\[
K_V(x,y)=g\;\delta^{(d)}(x)\,\delta^{(d)}(y)\,|dx|^{1/2}|dy|^{1/2}.
\]
This makes explicit what is convention and what is physics: the delta kernel is canonical as a half-density object (no background measure chosen), while any scalar representative requires a scalarization choice; RG-invariant scales (like \(\kappa_\ast\) in the 2D delta model) are candidates to supply such scalarization scales only after adding a universality hypothesis.

# 6. Semigroup vs Group: What Is (Not) Invertible
The phrase “renormalization group” hides two different notions:
1. an information-losing *coarse-graining map* on descriptions of the system, and
2. the induced *flow* of a chosen parameterization (couplings) needed to keep predictions stable.

`Proposition P1.3 (Coarse-graining is a semigroup).`
Let \(W_{\Lambda\to\mu}\) be the operation “integrate out modes between \(\mu\) and \(\Lambda\)” acting on the space of effective descriptions (e.g. effective actions). Then:
1. \(W_{\Lambda\to\Lambda}=\mathrm{id}\),
2. \(W_{\kappa\to\mu}\circ W_{\Lambda\to\kappa}=W_{\Lambda\to\mu}\) for \(\Lambda\ge\kappa\ge\mu\).

So \(W\) is a semigroup under composition.

`Heuristic H1.4 (Why it is not a group).`
In general there is no inverse \(W_{\mu\to\Lambda}\) that reconstructs the UV degrees of freedom that were discarded in coarse-graining. Many distinct UV theories can flow to the same IR effective description. This non-invertibility is the structural reason semigroup language is more accurate than group language at the level of coarse-graining maps.

`Heuristic H1.5 (Why coupling “running” can look invertible anyway).`
If one restricts attention to a finite-dimensional ansatz for the effective description (a truncation to finitely many couplings), then the RG flow becomes an ordinary differential equation for those couplings. Such flows can often be integrated “up” or “down” in scale given initial data, but this mathematical reversibility should not be confused with physical invertibility of coarse-graining. It is an artifact of restricting to (and assuming closure of) a low-dimensional manifold of descriptions.

## 6.1 A Fully Explicit Coarse-Graining Map: Gaussian Integration (Schur Complement)
This toy model is deliberately “too simple” in the same way the difference quotient is “too simple”: it makes the semigroup structure and non-invertibility *visible*.

`Derivation D1.7 (Exact coarse-graining in a quadratic model).`
Let \(x\) be “IR” and \(y\) be “UV”, and consider the quadratic action
\[
S(x,y)=\frac12\left(a\,x^2+2b\,x y+c\,y^2\right),
\qquad c>0.
\]
Define coarse-graining by integrating out \(y\):
\[
e^{-S_{\mathrm{eff}}(x)/\hbar}
\equiv
\int_{\mathbb R} dy\; e^{-S(x,y)/\hbar}.
\]
Completing the square gives
\[
S(x,y)
=\frac12\left(a-\frac{b^2}{c}\right)x^2+\frac{c}{2}\left(y+\frac{b}{c}x\right)^2,
\]
so
\[
S_{\mathrm{eff}}(x)=\frac12\left(a-\frac{b^2}{c}\right)x^2
+\frac{\hbar}{2}\ln c
+\text{(constant)}.
\]
The flow of the quadratic coupling is therefore
\(a\mapsto a_{\mathrm{eff}}=a-b^2/c\):
the Schur complement of the UV block.

`Proposition P1.5 (Semigroup property as associativity of integration).`
For a positive definite quadratic form on \((x,y,z)\), define the coarse-graining map \(W\) by integrating out a chosen subset of variables. Then
\[
W_{(y,z)\to x}=W_{y\to x}\circ W_{z\to (x,y)},
\]
because the integrals are iterated applications of Fubini’s theorem (and, in the quadratic case, correspond algebraically to nested Schur complements of the Hessian matrix).

`Heuristic H1.7 (Non-invertibility is concrete: many UV completions, one IR).`
The effective parameter \(a_{\mathrm{eff}}=a-b^2/c\) does not determine the UV data \((a,b,c)\). Infinitely many triples \((a,b,c)\) give the same \(a_{\mathrm{eff}}\). This is the simplest explicit witness that coarse-graining is generally not invertible.

`Heuristic H1.8 (Stationary phase link: coarse-graining = extremize + fluctuations).`
In this quadratic model, integrating out \(y\) is equivalent to:
1. solving the UV Euler–Lagrange equation \(\partial_y S=b x+c y=0\), giving \(y_\ast=-(b/c)x\);
2. substituting \(y_\ast\) into \(S\), yielding the classical effective action \(\frac12(a-b^2/c)x^2\);
3. multiplying by the fluctuation determinant factor \(\sim c^{-1/2}\) (the \(\frac{\hbar}{2}\ln c\) term).

Thus even the simplest exact coarse-graining step already splits into “extremal selection” plus a one-loop prefactor, matching the main manuscript’s stationary-phase narrative.

# 7. Conclusion and Outlook
This note argues for a simple foundational reading: whenever a continuum theory is defined by composing local refinement steps, *scale compatibility* is not optional. Regulator dependence appears in intermediate objects, and RG invariance is the condition that composed predictions are stable under changes of scale.

The micro-models used here are deliberately elementary (difference quotients, Gaussian elimination, and contact interactions), but they already exhibit the three structural features emphasized by the main manuscript: (i) composition/semigroup structure at the level of coarse-graining, (ii) parameter flow as the compatibility data needed to compare descriptions across scale, and (iii) dimensional transmutation as the replacement of regulator-dependent couplings by RG-invariant physical scales.

Natural extensions include adding one explicit Wilsonian fixed-point computation in a standard QFT example, and sharpening the rooted-tree bookkeeping discussion into a compact “dictionary section” that separates literal identities from analogy.

# References

1. [ConnesKreimer2000] Alain Connes and Dirk Kreimer, "Renormalization in quantum field theory and the Riemann-Hilbert problem I," *Communications in Mathematical Physics* 210 (2000), 249–273. DOI `10.1007/s002200050779`.
2. [Brouder1999] Ch. Brouder, "Runge-Kutta methods and renormalization," arXiv:`hep-th/9904014` (2 Apr 1999).
3. [McLachlan2017] Robert I. McLachlan, Klas Modin, Hans Munthe-Kaas, Olivier Verdier, "Butcher series: A story of rooted trees and numerical methods for evolution equations," arXiv:`1512.00906` (v3, 27 Feb 2017).
4. [BoyaRivero1994Contact] Luis J. Boya and Alejandro Rivero, "Renormalization in 1-D Quantum Mechanics: contact interactions," arXiv:`hep-th/9411081` (v1, 11 Nov 1994).
5. [ManuelTarrach1994PertRenQM] Cristina Manuel and Rolf Tarrach, "Perturbative Renormalization in Quantum Mechanics," *Physics Letters B* 328 (1994), 113--118. arXiv:`hep-th/9309013` (v1, 2 Sep 1993). DOI `10.1016/0370-2693(94)90437-5`.
6. [BonneauFarautValent2001SAE] Guy Bonneau, Jacques Faraut, and Galliano Valent, "Self-adjoint extensions of operators and the teaching of quantum mechanics," *American Journal of Physics* 69 (2001), 322–331. arXiv:`quant-ph/0103153`. DOI `10.1119/1.1328351`.
7. [TsutsuiFulopCheon2002Connection] Izumi Tsutsui, Tamás Fülöp, and Taksu Cheon, "Connection Conditions and the Spectral Family under Singular Potentials," arXiv:`quant-ph/0209110` (v1, 20 Sep 2002).
8. [Jackiw1991DeltaPotentials] R. Jackiw, "Delta-function potentials in two- and three-dimensional quantum mechanics," MIT-CTP-1937 (Jan 1991). Reprinted in *M.A.B. Bég Memorial Volume* (World Scientific, 1991), pp. 25–42. OA mirror: <https://www.physics.smu.edu/scalise/P6335fa21/notes/Jackiw.pdf>.
