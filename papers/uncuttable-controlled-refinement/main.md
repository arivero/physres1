---
title: "\"Uncuttable\" as Controlled Refinement"
author: "Alejandro Rivero"
date: "2026"
abstract: |
  This note fixes a meaning of "uncuttable" aligned with the refinement-compatibility thesis of the cornerstone manuscript.
  Here **uncuttable** does not mean "indivisible." It means: the quantity of interest is not determined by any *finite* dissection alone; it is a **limit object** whose definition requires a refinement rule and a comparison structure across refinements.
  
  The point is structural and mathematical: once a theory is built from composable local pieces, the continuum theory is the stable target of a refinement limit, and extra control data may be required for that limit to exist or be unique.
---

# 1. Definition
Call a quantity \(Q\) **uncuttable** (in this note's sense) if:
1. there exists a family of finite approximants \(Q_N\) produced by a finite dissection/refinement scheme of depth \(N\), but
2. the value of interest is not any finite \(Q_N\); it is a controlled limit \(Q=\lim_{N\to\infty}Q_N\), and
3. specifying the *rule of refinement* and the *comparison across refinements* is part of the definition of \(Q\).

The historical resonance is deliberate. The Greek \(\acute\alpha\tau o\mu o\varsigma\) ("a-tomos," uncuttable) was coined by Leucippus and Democritus to denote indivisible substance — matter that cannot be divided further. The shift proposed here is from ontology to procedure: what is "uncuttable" is not a smallest piece of stuff, but a limit object that no single finite dissection captures. The indivisibility is not in the substance but in the definition: you cannot "cut" the limit into finitely many pieces and recover it without specifying how the pieces are to be reassembled and refined.

This is the ordinary situation in analysis: finite partitions approximate, but the object is defined by a limiting procedure together with hypotheses that ensure convergence/uniqueness.

# 2. Toy model: an integral is already a refinement limit
Let \(f:[a,b]\to\mathbb R\). A prototypical refinement family is a partition
\(P_N=\{a=t_0<\cdots<t_N=b\}\) with mesh \(\|P_N\|:=\max_k(t_{k+1}-t_k)\to 0\).
Define the Riemann-sum approximants
\[
Q_N:=\sum_{k=0}^{N-1} f(\xi_k)\,(t_{k+1}-t_k),
\qquad \xi_k\in[t_k,t_{k+1}].
\]
In good cases, \(Q_N\to \int_a^b f(t)\,dt\) as \(\|P_N\|\to 0\), and the limit is independent of the tags \(\xi_k\). But this is not a tautology: the limit can fail to exist or can depend on the refinement rule unless hypotheses are stated.

A concrete failure case appears already in calculus. Consider the difference quotient \(f(x+\varepsilon)/\varepsilon\): for each finite \(\varepsilon\), the quantity diverges as \(\varepsilon\to 0\). The "refinement limit" exists only after subtracting a counterterm \(f(x)/\varepsilon\), yielding the derivative \(f'(x)\). The subtraction is part of the definition of the limit — without it, the refinement procedure does not converge. This is the simplest model of renormalization: a "cut" at finite \(\varepsilon\) is not the answer; the answer requires a controlled \(\varepsilon\to 0\) limit with explicit subtraction rules.

In the present program, this is the basic moral:
finite cuts approximate, but the value is defined by **controlled refinement**.

## 2.5 Worked example: the derivative as a renormalized refinement limit

The paragraph above describes the difference-quotient subtraction informally. We now make it explicit as a minimal model of renormalization.

`Example 2.1 (Derivative as counterterm-subtracted limit).`
Let \(f:\mathbb{R}\to\mathbb{R}\) be differentiable at \(x\). The naive "refinement" approximant at scale \(\varepsilon\) is
\[
R(\varepsilon):=\frac{f(x+\varepsilon)}{\varepsilon}.
\]
This diverges as \(\varepsilon\to 0\) whenever \(f(x)\neq 0\). To extract a finite limit, subtract a counterterm:
\[
R_{\mathrm{ren}}(\varepsilon):=\frac{f(x+\varepsilon)-f(x)}{\varepsilon}.
\]
Now \(\lim_{\varepsilon\to 0}R_{\mathrm{ren}}(\varepsilon)=f'(x)\), which is finite and independent of the "regulator" \(\varepsilon\). The structure is:

1. **Regulated quantity**: \(R(\varepsilon)\), finite for each \(\varepsilon>0\) but divergent as \(\varepsilon\to 0\).
2. **Counterterm**: \(f(x)/\varepsilon\), which absorbs the divergence.
3. **Renormalized observable**: \(f'(x)\), the \(\varepsilon\)-independent limit.

This is formally identical to the pattern in perturbative renormalization: a bare quantity diverges as the regulator is removed, but a systematic subtraction yields a finite, physically meaningful result. The subtraction rule is not ad hoc; it is forced by the requirement that the result depend smoothly on the data and be independent of the regulator.

`Remark 2.2 (Higher-order counterterms).`
If \(f\) is \(C^n\), the Taylor expansion
\[
f(x+\varepsilon)=f(x)+f'(x)\varepsilon+\tfrac{1}{2}f''(x)\varepsilon^2+\cdots+\tfrac{1}{n!}f^{(n)}(x)\varepsilon^n+o(\varepsilon^n)
\]
provides a systematic tower of subtractions, one per order. Removing terms through order \(k-1\) and dividing by \(\varepsilon^k\) gives the \(k\)-th Taylor coefficient \(f^{(k)}(x)/k!\) plus vanishing corrections — or equivalently, dividing by \(\varepsilon^k/k!\) recovers the derivative \(f^{(k)}(x)\) itself. Each order is a "counterterm-subtracted refinement limit" — the analog of loop-by-loop renormalization in QFT.

`Remark 2.3 (Euler–Maclaurin: correction tower for the Riemann sum).`
The same pattern applies to the integral approximation itself. The Euler–Maclaurin formula expresses the error of the left-point Riemann sum as a systematic expansion in the mesh size \(h=(b-a)/N\):
\[
\sum_{k=0}^{N-1}f(a+kh)\,h = \int_a^b f(t)\,dt + \sum_{j=1}^{p}\frac{B_j}{j!}\,h^j\,\bigl[f^{(j-1)}(b)-f^{(j-1)}(a)\bigr] + O(h^{p+1}),
\]
where \(B_j\) are Bernoulli numbers (\(B_1=-\tfrac12,\;B_2=\tfrac16,\;B_3=0,\ldots\)). Each correction involves a power of the mesh (the "regulator"), multiplied by endpoint derivatives (boundary data). The leading correction \(j=1\) converts the left-point sum into the trapezoidal rule; the \(j=2\) term adds an endpoint-derivative correction that raises the order to \(O(h^4)\). This is the interval counterpart of Remark 2.2's single-point tower: there the subtractions were local (Taylor coefficients at \(x\)); here they are boundary-localized (endpoint derivatives of \(f\)).

`Remark 2.4 (Richardson extrapolation: subtracting leading errors across refinement levels).`
Given an approximation family \(Q(h)=Q+c_1 h^p+O(h^{p+1})\), the combination \(R(h)=(2^p\,Q(h/2)-Q(h))/(2^p-1)\) eliminates the leading error term without knowledge of \(c_1\) — only the exponent \(p\) is needed. Iterating at mesh sizes \(h, h/2, h/4,\ldots\) produces a triangular tableau (Romberg) that peels off one order of correction per column, mirroring the counterterm tower of Remark 2.2. Applied to the trapezoidal rule (whose even-power error expansion follows from Remark 2.3 with \(B_{2k+1}=0\) for \(k\ge1\)), the first Richardson step (\(p=2\)) yields Simpson's rule; the second (\(p=4\)) yields Boole's rule — each time eliminating the next Euler–Maclaurin correction without computing endpoint derivatives. The structural parallel to minimal subtraction in dimensional regularization is precise: the exponent \(p\) plays the role of the pole order, and the subtraction procedure is universal — independent of the specific integrand.

# 3. Dynamics: action, stationarity, and the need for control data
The cornerstone manuscript uses the same template in mechanics.
Given a partition of time, the discrete action
\[
S_N[q]=\sum_k \mathcal L\!\left(q_k,\frac{q_{k+1}-q_k}{\Delta t_k},t_k\right)\Delta t_k
\]
is a finite refinement approximant. The continuum action \(S[q]=\int \mathcal L\,dt\) is a refinement limit.

Two "uncuttable" features appear immediately when one pushes beyond smooth classical paths:
1. **Singular probes and corners:** stationarity must be interpreted in weak/distributional form; point-supported variations require mollification.
2. **Non-uniqueness of refinement schemes:** different discretization conventions (even if classically equivalent) can produce distinct refined objects unless an equivalence or control map is specified.

These are exactly the obstructions discussed in the cornerstone manuscript: the point is not indivisible atoms, but limit control.

In the quantum setting, the "uncuttable" character becomes sharper. The path-integral amplitude
\[
K(q_f,t_f;q_i,t_i)=\int \prod_{k=1}^{N-1}dq_k\;\prod_{k=0}^{N-1}K_\Delta(q_{k+1},q_k;t_k)
\]
is a product of short-time kernels composed over a time partition of depth \(N\). No finite \(N\) gives the exact propagator; the propagator is the \(N\to\infty\) refinement limit. Crucially, the control parameter \(\hbar\) enters the short-time kernels as \(\exp(iS_\Delta/\hbar)\), and different discretization conventions (left-point, midpoint, symmetric) can produce distinct \(O(\hbar)\) corrections even though they share the same classical \(\hbar\to 0\) limit [FeynmanHibbs1965]. Thus the quantum amplitude is doubly "uncuttable": it requires both a refinement rule (time-slicing prescription) and a comparison/equivalence structure (ordering convention or half-density normalization) before the limit is well-defined.

`Example 3.1 (Non-uniqueness of refinement: \(\alpha\)-ordering).`
For the classical Hamiltonian \(H(q,p)=qp\), different time-slicing prescriptions — evaluating position at \(q_\alpha=(1-\alpha)q_k+\alpha q_{k+1}\) in each slice — produce different quantum operators:
\[
\hat H_\alpha=\alpha\hat q\hat p + (1-\alpha)\hat p\hat q = \hat p\hat q + \alpha\,i\hbar.
\]
At \(\alpha=0\) (prepoint): \(\hat p\hat q\). At \(\alpha=1/2\) (midpoint/Weyl): \(\tfrac12(\hat q\hat p+\hat p\hat q)\). At \(\alpha=1\) (postpoint): \(\hat q\hat p\). All three share the classical limit \(H=qp\) as \(\hbar\to0\), but they are distinct quantum objects. The "uncuttable" message: the continuum quantum Hamiltonian is not determined by any single finite time-slicing; it requires specifying the refinement convention \(\alpha\) as part of the definition.

`Remark 3.2 (Stochastic counterpart: Itô versus Stratonovich).`
The same refinement non-uniqueness appears in stochastic calculus. For a Wiener process \(W_t\), the stochastic integral \(\int f(W_t)\,dW_t\) can be defined using left-point (Itô) or midpoint (Stratonovich) evaluation in the Riemann sums:
\[
\text{Itô:}\;\sum_k f(W_{t_k})\,\Delta W_k,\qquad
\text{Stratonovich:}\;\sum_k f\!\left(\tfrac{W_{t_k}+W_{t_{k+1}}}{2}\right)\Delta W_k.
\]
Both converge as mesh \(\to 0\) (for \(f\in C^2\)), but to different limits related by \(\int f(W)\circ dW = \int f(W)\,dW + \tfrac12\int f'(W)\,dt\) [Oksendal2003]. The correction \(\tfrac12 f'\,dt\) arises because Brownian paths have non-zero quadratic variation (\(\sum(\Delta W_k)^2\to T\neq 0\)); for paths of bounded variation, the quadratic variation vanishes and all evaluation-point prescriptions agree. This parallels Example 3.1: the ordering correction \(\alpha\,i\hbar\) vanishes when \(\hbar\to 0\) (smooth classical paths), but is unavoidable at finite \(\hbar\). Both cases instantiate the "uncuttable" pattern: when paths are rough enough, the refinement prescription becomes part of the definition.

`Remark 3.3 (Trotter product formula as a refinement theorem).`
The mathematical backbone of the path-integral refinement limit is the Trotter product formula: for self-adjoint operators \(A\) and \(B\) with \(A+B\) essentially self-adjoint on a common dense domain,
\[
e^{t(A+B)}=\lim_{N\to\infty}\left(e^{tA/N}\,e^{tB/N}\right)^N.
\]
In the path-integral context, \(A=-i\hat T/\hbar\) (kinetic) and \(B=-i\hat V/\hbar\) (potential), so each factor is a free propagation or a potential phase-kick at one time slice. The formula states that the exact propagator is a refinement limit of \(N\)-fold compositions — and that this limit converges, with total error \(O(1/N)\). The symmetric (Suzuki–Trotter) splitting \(e^{tA/(2N)}e^{tB/N}e^{tA/(2N)}\) reduces the total error to \(O(1/N^2)\) by canceling the leading Baker–Campbell–Hausdorff commutator \([A,B]\) contribution at each step. This is the "uncuttable" pattern in operator-algebraic form: no finite product equals \(e^{t(A+B)}\), and the rate of convergence depends on controlling the non-commutativity of the pieces [FeynmanHibbs1965].

`Remark 3.4 (Symplectic integrators: structural compatibility at finite resolution).`
The symmetric Trotter splitting is the operator form of the Störmer–Verlet (leapfrog) integrator. The discrete map is *exactly* symplectic at every finite \(N\): it preserves the Poisson brackets (or, quantum-mechanically, unitarity) not just asymptotically but at each approximation level. Backward error analysis shows that the numerical flow is the exact flow of a nearby "shadow Hamiltonian" \(\tilde H = H + O(\Delta t^2)\), which is conserved exactly along the discrete orbit; the original \(H\) oscillates with amplitude \(O(\Delta t^2)\) without secular drift. Higher-order symplectic splittings (Yoshida, Forest–Ruth) systematically cancel further Baker–Campbell–Hausdorff commutators, paralleling the counterterm tower of Remark 2.2. This is refinement compatibility made precise: the approximants at every level carry a structural invariant (symplecticity) that the continuum limit inherits.

`Remark 3.5 (Adiabatic limit: Berry phase as geometric refinement correction).`
The adiabatic theorem is another instance of the same refinement pattern. A slowly varying Hamiltonian \(H(t/T)\) with \(T\to\infty\) has instantaneous eigenstates as its finite approximants; the exact evolution is the refinement limit, controlled by the gap condition (energy gaps bounded away from zero). Diabatic transitions are suppressed as \(T\to\infty\), but a geometric correction survives exactly: the Berry phase \(\gamma_n = i\oint\langle n|\nabla_R n\rangle\cdot dR\), which is the holonomy of a U(1) connection on the eigenstate bundle over parameter space. This is the "extra structure" of Section 4 in geometric dress — a connection datum that no local approximant captures, yet persists through the refinement limit and can be topologically quantized.

`Remark 3.6 (WKB approximation: \(\hbar\)-refinement with connection-formula control data).`
The WKB ansatz \(\psi(x)=A(x)\exp(iS(x)/\hbar)\) generates a formal expansion of \(S\) in powers of \(\hbar\), with the leading term satisfying the Hamilton–Jacobi equation (classical mechanics) and each subsequent order adding a quantum correction — a refinement family indexed by truncation depth. At classical turning points, the WKB amplitude \(A\propto 1/\sqrt{p(x)}\) diverges: the local approximation breaks down, and a connection formula (obtained by matching to an Airy solution) is needed to relate oscillatory and evanescent regions. This connection formula is the "control data" for the global WKB solution, and the requirement that the wavefunction be single-valued around a closed orbit produces the Bohr–Sommerfeld quantization condition \(\oint p\,dq=(n+\tfrac12\mu)\,\hbar\), where \(\mu\) is the Maslov index counting turning points — a topological invariant that, like the Berry phase in Remark 3.5, no local WKB expansion can determine.

# 4. Outlook: refinement compatibility as "the extra structure"
In the companion papers, the "extra structure" used to control refinement limits is made explicit:
- half-densities make kernel composition coordinate-free without hidden measure choices,
- control maps \(\tau\) encode how parameters must flow under refinement to maintain stability,
- renormalization is the compatibility rule when naive refinement limits diverge.

This note is therefore a small conceptual bridge: it isolates an early, analysis-level instance of the same meta-problem that reappears in quantization and in QFT.

# References

1. [FeynmanHibbs1965] Richard P. Feynman and Albert R. Hibbs, *Quantum Mechanics and Path Integrals*, McGraw-Hill, 1965. (Path integral as refinement limit of time-sliced amplitudes; foundational treatment.)
2. [Oksendal2003] Bernt Øksendal, *Stochastic Differential Equations: An Introduction with Applications*, 6th ed., Springer, 2003. ISBN `978-3-540-04758-2`. DOI `10.1007/978-3-642-14394-6`. (Standard textbook on Itô vs Stratonovich integrals and their relationship; used in uncuttable satellite for Remark 3.2.)
