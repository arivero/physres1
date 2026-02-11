# Next Articles Roadmap (Builds on This Paper + `conv_patched.md`)

This repository's manuscript (`paper/main.md`) is the *publishable* artifact.
This file is an internal roadmap for follow-up papers and is **not** a citable source.

## Non-Citable Input Note
Some prompts below are extracted from `conv_patched.md` (brainstorming / drafting log).
Use them only as idea generators; do not cite them as evidence or as bibliography.

## A. RCP as a Standalone Foundations Paper
Current paper introduces the Refinement Compatibility Principle (RCP) as a unifier.
A follow-up can upgrade it from an "appendix-level principle" to a main theorem-like
framework with explicit examples.

Suggested deliverables:
1. A formal definition of partition/representation/scale compatibility as commuting
   diagrams (composition laws and equivalence relations).
2. A minimal list of axioms that recover the paper's chain as special cases.
3. Worked examples:
   - Classical mechanics (Noether + weak Euler-Lagrange).
   - Quantum mechanics (ordering changes as equivalence/gauge).
   - A toy RG flow (single coupling) with explicit semigroup generator.

## B. Dirac-Supported Probes, Corners, and Impulses (Rigorous Variational Note)
Spin out Section 5 into a short, sharp note that focuses on what is actually
mathematically legal when "Dirac deltas probe extrema."

Suggested deliverables:
1. Weak Euler-Lagrange derivation with minimal functional-analytic assumptions.
2. Mollifier-based point-probing lemma stated as a theorem with hypotheses.
3. Weierstrass-Erdmann corner conditions + impulse jump laws with clear separation
   of "unforced corner" vs "delta forcing."
4. One worked model (e.g., delta-kick forcing, delta potential, or piecewise smooth
   trajectory with matching) to anchor the formalism.

## C. Ordering/Discretization as an Equivalence Class (Beyond the Linear Example)
Section 10.2 gives the simplest \(f(q)p\) example; a follow-up should add at least
one nontrivial symbol family where the correction structure is richer.

Suggested deliverables:
1. A small library of "ordering pairs" that share the same classical limit but differ
   at \(O(\\hbar)\) and \(O(\\hbar^2)\).
2. A statement of equivalence as a conjugation/gauge transform on star products.
3. A single coherent narrative that ties time-slicing prescriptions to the algebraic
   equivalence relation (without leaning on "strict deformation" as the main framing).

## D. Rooted Trees as the Common Bookkeeping Language (Butcher <-> RG)
The current paper mentions the Butcher group/rooted trees as a structural analogy.
The follow-up should make this the primary technical content.

Suggested deliverables:
1. A careful "dictionary section" mapping:
   - B-series / method composition,
   - rooted-tree Hopf algebra,
   - subtraction/recursion patterns in perturbative renormalization.
2. One explicit computation on each side:
   - an RK composition coefficient identity (step-doubling),
   - a simple counterterm recursion (toy divergent integral or 1-loop diagram).
3. A clear statement of what is analogy vs what is literal equivalence, and where
   semigroup vs group structure matters.

## E. Tangent-Groupoid Bridge Paper (Use Carefully)
`conv_patched.md` contains extensive tangent-groupoid + quantization discussion.
If pursued, keep the framing compatible with the project's preference to avoid
"strict deformation" as the headline concept.

Suggested deliverables:
1. A clean explanation of "kernels/pair groupoid -> tangent/cotangent objects" as a
   refinement/limit story.
2. A short technical lemma showing how scaling interacts with composition at the
   groupoid level (what must be rescaled after composing arrows).
3. One worked example that reproduces a familiar star product or short-time kernel.

## F. Renormalization: From Template to Real Computation
Section 10.1 is a template; a follow-up should do at least one real calculation.

Suggested deliverables:
1. Pick one target: \(\\phi^4\\) in 4D (1-loop), a quantum-mechanical singular model,
   or a zero-dimensional QFT toy model.
2. Show the semigroup property explicitly in the chosen renormalization scheme.
3. Record scheme dependence cleanly (what changes vs what is invariant).

## G. Planck Area / Half-Density Scaling (Draft in `papers/planck-area/`)
Goal: make the “Planck-length pivot” precise at the kernel/composition level by treating amplitudes as half-densities and tracking what scale is required to normalize them.

Suggested deliverables:
1. A concrete half-density composition model (kernel calculus) showing why normalization requires a \(\text{length}^{d/2}\) scale.
2. Specialize to \(d=4\) to isolate a universal area scale candidate and connect it to Planck area.
3. Anchor example: Planck areal speed and the inverse-square \(D=4\) cancellation story, cleanly separated into proposition vs heuristic [RiveroAreal] [RiveroSimple].

## H. RG as Fundamental (Draft in `papers/rg-fundamental/`)
Goal: elevate RG from “technical afterword” to a foundational compatibility principle within the main paper’s refinement/composition framework.

Suggested deliverables:
1. One explicit model computation producing a nontrivial beta function (not just the log-template), with a clear statement of scheme dependence.
2. A precise semigroup vs group discussion (coarse-graining vs reversible composition).
3. A rooted-tree dictionary section that is explicit about what is analogy vs literal equivalence [Brouder1999] [ConnesKreimer2000] [McLachlan2017].

## I. Relativistic Central Orbits (SR/GR Follow-up)
`conv_patched.md` contains a self-contained thread on SR/GR circular-orbit admissibility and stability under central forces (and the GR photon-sphere/impact-parameter story).
This is outside the cornerstone paper’s scope but can be a clean dependent note.

Suggested deliverables:
1. SR worldline action with a central potential; effective potential reduction.
2. Circular-orbit conditions and stability; special simplifications for inverse-square.
3. GR geodesic reduction (Schwarzschild as baseline); circular orbits + photon sphere via effective potential.
4. A short bridge back to the project spine: “areal invariants survive refinement, while relativistic kinematics adds admissibility bounds.”

## J. String Tension as a Universal Area-Scale Supplier (Gauge-Theory Follow-up)
If the half-density scalarization ladder needs “a source of area scale” that is not *assumed* to be Planckian, confinement provides a canonical candidate: \(\sigma\) with \([\sigma]=\text{length}^{-2}\).

Suggested deliverables:
1. Wilson-loop definition of the static potential: \(\langle W\rangle \sim e^{-T V(r)}\).
2. Area law \(\Rightarrow\) string tension \(\sigma\) and the associated area scale \(\alpha_\ast\sim\sigma^{-1}\).
3. Connection to `papers/planck-area/main.md` (scale supplier for scalarization) and to `papers/rg-fundamental/main.md` (running/transmutation).
4. Clearly separate “heuristic bridge” from any claim of fundamental primacy.

## K. Action–Angle Indeterminacy for Central Potentials (Foundations Note)
Central potentials are integrable and admit action–angle variables. Quantization makes actions discrete (or sharply specifiable), and the conjugate angles become delocalized—this is the number–phase theme in a mechanics setting.

Status: drafted as a dependent note in `papers/action-angle-indeterminacy-central-potentials/` (referee-safe \((\phi,L_z)\) witness + explicit Fourier packet example).

Suggested deliverables:
1. Define action–angle variables for a central potential and identify the clean canonical pair \((\phi,L_z)\) (and the radial action \(J_r\)).
2. State a minimal, referee-safe “indeterminacy” claim: in an \(L_z\) eigenstate, \(\phi\) is uniformly distributed; sharp actions imply delocalized conjugate angles.
3. Work one example explicitly (separation of variables; \(\psi\propto e^{im\phi}\) gives uniform \(\phi\)).
4. Optional semiclassical bridge: show how the path integral on a circle encodes periodicity via winding sectors and how this interfaces with the project’s refinement/composition viewpoint.

Seed blackboard: `blackboards/2026-02-10-action-angle-indeterminacy-central-potentials.md`.

## L. Fermionic Mediators, Central Potentials, and Contact/Boundary-Condition Limits
Bosonic exchange yields textbook central potentials via linear couplings to classical sources. Fermionic fields are Grassmann-valued, so the “classical source \(\Rightarrow\) potential” derivation does not transplant directly; however, fermions can still induce effective interactions via loops, condensates, and EFT contact limits.

Status: drafted as a dependent note in `papers/fermionic-mediators-contact-limits/` (Grassmann-source obstruction + contact/boundary-condition IR replacement).

Suggested deliverables:
1. Precisely state what “a fermionic field generates a potential” would mean, and why linear sourcing requires Grassmann sources (hence no ordinary classical potential from single-fermion exchange between commuting charges).
2. Identify the physically meaningful routes: loop-induced corrections, bosonic collective modes from fermion bilinears, and low-energy contact operators.
3. Do one explicit EFT-to-QM match: derive a delta/derivative-delta potential from a local operator and interpret it as point interaction / boundary-condition data (with RG running when needed).
4. Connect to existing repo witnesses: 1D point interactions (U(2) boundary conditions), 2D delta renormalization and dimensional transmutation, and “contact terms = diagonal delta kernels”.

Seed blackboard: `blackboards/2026-02-10-fermionic-mediators-central-potentials-and-contact-limits.md`.

## Tooling Notes (Paper Ops)
1. PDF build uses pandoc's single-backslash math extension:
   - `pandoc -f markdown+tex_math_single_backslash -s paper/main.md -o paper/main.tex`
2. If future papers want a real reference list, switch citation syntax to pandoc's
   `[@Key]` form and store sources in a `.bib` file (keep `sources/` out of git).
3. Keep cycle IDs planning-only per `AGENTS.md` (no `C0x` tags in manuscript output).
