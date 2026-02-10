# Can a Fermionic Field Generate a Central Potential? (Contact/Boundary-Condition Limits)

Goal: add a foundations-ready theme to the project’s research pool: whether (and in what sense) a **fermionic** field can generate an effective “central potential,” and how this relates to **contact interactions** / **boundary-condition parameterizations**.

This is a **blackboard note** (idea + derivation scaffold). It is not a citable source.

## 1) The clean definition of “a field generates a potential”
The standard derivation of a static potential is:
1. introduce a mediator field with a **linear coupling** to an external source \(J(x)\),
2. integrate out the mediator to obtain an effective action \(S_{\rm eff}[J]\),
3. read off the potential from the static, nonrelativistic limit (Fourier transform of the amplitude).

For a bosonic field \(\varphi\), the archetype is
\[
S[\varphi;J]=\int d^Dx\left(\frac12\,\varphi\,(\Box+m^2)\,\varphi + J\,\varphi\right).
\]
Integrating out \(\varphi\) yields
\[
S_{\rm eff}[J]\sim \frac12 \int J\,(\Box+m^2)^{-1}\,J,
\]
which in the static limit gives Yukawa/Coulomb-type central potentials (range set by the mediator mass).

## 2) Why a *fermionic* mediator does not directly give a classical potential
For a fermionic field \(\psi\), the linear source term has the form
\[
S[\psi;\eta,\bar\eta]=\int d^Dx\left(\bar\psi\,(i\slashed\partial-m)\,\psi + \bar\eta\,\psi + \bar\psi\,\eta\right),
\]
where \(\eta,\bar\eta\) are **Grassmann** sources.

Key point:
the “source that couples linearly to a fermion” is not an ordinary commuting function; it is Grassmann.
So the bosonic story “put in a classical charge density \(J(x)\) and get a classical potential” does **not** carry over verbatim.

Operational consequence for our purposes:
single-fermion exchange is not a clean mechanism for producing an ordinary central potential between commuting classical sources.

This is the right place to be skeptical about analogies like “spin–angle uncertainty limits range.” The obstruction is more basic: it is the source/field algebra and what counts as a classical background.

## 3) How fermions *do* affect potentials (three routes)
Even though the direct “fermion \(\Rightarrow\) classical potential” route is obstructed, fermions influence effective interactions in at least three standard ways:

### 3.1 Loop effects (integrating out fermions)
Integrating out fermions in a boson+fermion theory yields determinants (log det) that correct bosonic effective actions (vacuum polarization, running couplings, induced local terms).
This modifies boson-mediated potentials but is not “a fermion field mediates a potential” in the tree-level Yukawa sense.

### 3.2 Condensates / bilinears as effective bosons
Composite operators like \(\bar\psi\psi\) (scalar) or \(\bar\psi\gamma^\mu\psi\) (vector current) are bosonic.
If a regime admits a nonzero expectation value or a weakly fluctuating bosonic collective mode, then that collective excitation can mediate potentials.
In that case, the mediator is effectively bosonic (even if built from fermions).

### 3.3 Contact limits / EFT operators
At energies well below a heavy scale \(M\), exchange of heavy degrees of freedom often reduces to **local operators** (effective field theory).
In coordinate space these become **contact interactions**:
delta functions and derivatives of delta functions.

This is the route most directly relevant to the repo’s existing themes:
- point interactions in 1D as self-adjoint extensions (U(2) boundary conditions),
- renormalized delta interactions in 2D/3D,
- “diagonal support” and contact terms as delta kernels in the half-density kernel calculus.

In other words:
even if a fundamental UV description uses fields, the IR description can be “only boundary conditions / point-supported kernels,” but that is an **EFT/short-range limit**, not a new uncertainty principle.

## 4) What should we say about “only point-supported potentials are allowed”?
As stated, “only point-supported potentials are allowed” is too strong.
What we *can* say (and it matches the repo’s controlled-refinement style) is:

1. **Short-range physics** often collapses to contact terms at low resolution.
2. Contact terms are naturally represented as diagonal delta kernels (and derivatives) in the kernel calculus.
3. In singular cases (e.g. 2D delta), the contact coupling is not a fixed number but is defined by a renormalization condition, producing an RG-invariant scale and (often) a bound state.

So a refined conjecture to test is:
“If a would-be fermionic-mediated effect survives only through EFT reduction, then at sufficiently low energy it is captured by contact/boundary-condition data, possibly with RG running.”

## 5) “Bound states at the same point of space”
Contact interactions can and do generate bound states (notably in the renormalized 2D delta model).
But “in the same point of space” should be translated into a precise statement:
- the interaction is supported at a point (distributional kernel supported on the diagonal),
- the bound state is an \(L^2\) wavefunction with a short-distance boundary condition (or renormalized behavior) fixed by the contact data.

This is exactly the language used in the point-interaction and RG notes in this repo.

## 6) Minimal next derivation to make this theme concrete
If we promote this theme beyond a blackboard note, do one explicit calculation:
1. start from a low-energy local operator (four-fermion or current–current) and compute the Born scattering amplitude,
2. Fourier transform to show it is a delta potential plus derivative contact terms,
3. match the contact parameters to a self-adjoint extension / boundary-condition description in a simple setting (1D full line, or 3D s-wave point interaction),
4. connect to the RG story when the naive delta is ill-defined (2D/3D).

This would answer the “maybe only boundary conditions are allowed” idea in a controlled, falsifiable way.

