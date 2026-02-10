# Action–Angle (Phase–Action) Indeterminacy in Central Potentials

Goal: add a foundations-ready theme to the project’s research pool: what becomes “undetermined” when we quantize an integrable central-force system in action–angle variables?

This is a **blackboard note** (idea + derivation scaffold). It is not a citable source.

## 1) What the “action–angle indeterminacy principle” should mean here
For an integrable Hamiltonian system with \(n\) degrees of freedom, action–angle variables \((I_i,\theta_i)\) exist (locally, and globally on tori under standard hypotheses), with canonical brackets
\[
\{I_i,\theta_j\}=\delta_{ij},\qquad \{I_i,I_j\}=0,\qquad \{\theta_i,\theta_j\}=0.
\]
The structural point for us is the same as number–phase in QM:
if a quantum state is sharp in the commuting “action” observables \(I_i\), then the conjugate angles \(\theta_i\) become delocalized.

As a slogan:
**discrete (or sharply specified) actions \(\Rightarrow\) indeterminate phases/angles.**

This is a more precise replacement for a loose “energy–time uncertainty” analogy:
range properties of potentials are not decided by uncertainty statements; but **which variables can be simultaneously sharp** is.

## 2) Central potentials: the clean conjugate pair is \((\phi,L_z)\)
For planar motion (or for the azimuthal sector of a 3D central problem), the canonical pair is
\[
\phi \quad\text{(angle)}\qquad\text{and}\qquad L_z \quad\text{(its conjugate action)}.
\]
Classically,
\[
\{\phi, L_z\}=1.
\]
Quantum mechanically, the safest way to avoid the “angle operator” pathology is to use the unitary phase variable
\[
E := e^{i\phi},
\]
for which the commutator with the generator is canonical:
\[
[L_z, E]=\hbar\,E.
\]

Immediate consequence (heuristic but robust in practice):
an eigenstate of \(L_z\) is maximally delocalized in \(\phi\).

Concrete witness: in a separation-of-variables basis for a central potential,
\[
\psi(r,\phi) \propto R(r)\,e^{im\phi},
\]
so \(|\psi|^2 \propto |R(r)|^2\) is **independent of \(\phi\)**. The azimuthal angle is uniformly distributed.

This is the simplest “central potential \(\Rightarrow\) angle indeterminacy in angular-momentum eigenstates” statement we can safely reuse in foundations prose.

## 3) Where “action–angle” enters beyond \((\phi,L_z)\)
For a general central potential in 3D, a standard action set is (schematically):
1. \(J_r := \frac{1}{2\pi}\oint p_r\,dr\) (radial action),
2. \(J_\theta\) and \(J_\phi=L_z\) for the angular sector (with \(L\) as a derived action-like invariant).

Quantization in the EBK/WKB sense typically yields discrete actions,
\[
J_i = \hbar\left(n_i+\alpha_i\right),
\]
and the conjugate angles become phase variables on the torus.

For our project, the main conceptual payload is:
**the refinement/composition story fixes how kernels compose; action–angle quantization fixes which conjugate “phases” are unavoidably delocalized in stationary states.**

## 4) “Undeterminacy” related to orbit orientation (periapsis angle)
In the plane, an additional geometric angle is the **argument of periapsis** (orientation of the major axis / apsidal line). In special integrable cases (Kepler, isotropic oscillator), additional constants of motion exist (Runge–Lenz-type structures), and quantum stationary states reflect that symmetry via degeneracies.

Heuristic bridge (to be made precise if promoted):
- if the quantum numbers fix the actions (energy + angular momentum data), then the orbit *phase* and *orientation* are not simultaneously sharp;
- localized “classical orbit” pictures correspond to **coherent superpositions** within degenerate subspaces, not to single stationary eigenstates.

This is aligned with the project’s repeated distinction:
“classical trajectory” appears as a **stationary-phase concentration / semiclassical packet**, not as an exact eigenstate object.

## 5) Connection points to existing repo material
1. `paper/main.md` already uses central-force refinement as the opening spine; the cleanest optional insertion is a short remark near the ordering/discretization discussion: angle variables on circles require periodicity/winding bookkeeping, and sharp angular momentum delocalizes angle.
2. `papers/relativistic-central-orbits/main.md` provides SR/GR orbit constraints; the action–angle theme can remain nonrelativistic at first.
3. `papers/rg-fundamental/main.md` and the point-interaction notes provide a separate “boundary conditions encode UV data” theme, which can later be compared against angle/action data as an *IR* parameterization.

## 6) Minimal promotion target (if we turn this into prose)
One compact, referee-safe statement to promote (either as a short appendix or as a companion note):

> In central potentials, the azimuthal angle \(\phi\) is canonically conjugate to \(L_z\); therefore an \(L_z\) eigenstate has uniform \(\phi\) distribution. In the integrable (action–angle) viewpoint, sharp actions imply delocalized conjugate angles, and classical orbit pictures correspond to coherent superpositions rather than single stationary eigenstates.

No extra claims about force range are needed to make this point.

