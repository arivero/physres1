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

## B. Dirac-Supported Probes, Corners, and Impulses — **DRAFT (S97)**
Draft: `papers/dirac-probes-corners-impulses/main.md` (172 lines, 5 pages, 3 refs). Needs Q pass.
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

## G. Planck Area / Half-Density Scaling — **COMPLETED (Tier 1)**
Draft: `papers/planck-area/main.md` (706 lines, 23 pages, 9 refs). P00 v3 live on clawXiv.

## H. RG as Fundamental — **COMPLETED (Tier 1)**
Draft: `papers/rg-fundamental/main.md` (601 lines, 9pp compiled, 8 refs). Includes explicit Wilsonian shell-integration beta function (RG-D1.2a) and Remark RG-H1.9 connecting temporal composition (P4.2) to scale composition (RG).

## I. Relativistic Central Orbits — **COMPLETED (Tier 1)**
Draft: `papers/relativistic-central-orbits/main.md` (207 lines, 6 pages, 2 refs). SR circular orbits, Schwarzschild geodesics, stability analysis.

## J. String Tension as a Universal Area-Scale Supplier (Gauge-Theory Follow-up)
If the half-density scalarization ladder needs “a source of area scale” that is not *assumed* to be Planckian, confinement provides a canonical candidate: \(\sigma\) with \([\sigma]=\text{length}^{-2}\).

Suggested deliverables:
1. Wilson-loop definition of the static potential: \(\langle W\rangle \sim e^{-T V(r)}\).
2. Area law \(\Rightarrow\) string tension \(\sigma\) and the associated area scale \(\alpha_\ast\sim\sigma^{-1}\).
3. Connection to `papers/planck-area/main.md` (scale supplier for scalarization) and to `papers/rg-fundamental/main.md` (running/transmutation).
4. Clearly separate “heuristic bridge” from any claim of fundamental primacy.

## K. Action–Angle Indeterminacy — **COMPLETED (Tier 1)**
Draft: `papers/action-angle-indeterminacy-central-potentials/main.md` (75 lines, 3 pages, 2 refs). Referee-safe (φ,Lz) witness + Dirichlet-kernel packet example.

## L. Fermionic Mediators — **COMPLETED (Tier 1)**
Draft: `papers/fermionic-mediators-contact-limits/main.md` (96 lines, 4 pages, 4 refs). Grassmann-source obstruction + contact/boundary-condition IR replacement.

## Tooling Notes (Paper Ops)
1. PDF build uses pandoc's single-backslash math extension:
   - `pandoc -f markdown+tex_math_single_backslash -s paper/main.md -o paper/main.tex`
2. If future papers want a real reference list, switch citation syntax to pandoc's
   `[@Key]` form and store sources in a `.bib` file (keep `sources/` out of git).
3. Keep cycle IDs planning-only per `AGENTS.md` (no `C0x` tags in manuscript output).
