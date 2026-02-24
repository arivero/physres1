# From Newton to the Path Integral

A physics research program developing a unified structural narrative from
Newtonian mechanics through action principles, Dirac notation, path integrals,
deformation quantization, and renormalization — with parallel Lean 4
formalization of key theorems.

---

## What This Is

The cornerstone manuscript (*"From Newton to the Path Integral"*, ~23 pp,
target: Physics Reports) argues that quantization is not a recipe applied to
classical mechanics but a *refinement passage*: a sequence of composable local
approximations whose continuum limits force specific structures.

The central chain is:

```
Newton's polygon  →  continuous action  →  path integral
    →  deformed algebra  →  renormalized theory  →  unified framework
```

Each arrow is a *compatibility condition*. The paper shows that three recurring
obstructions (singular probes, ordering/discretization ambiguity, UV
divergences) are resolved by the same structural move — controlled refinement
— and that the fundamental constants ℏ, c, G each emerge as the unique
coupling forced by one such compatibility condition.

Thirteen satellite papers (6–14 pp each) extract and expand specific aspects
of this *Refinement Compatibility Principle* (RCP) framework for targeted
publication.

---

## How the Articles Were Created

The manuscripts were developed through an incremental AI-assisted workflow
using three tiers of Claude models in a **haiku → sonnet → opus** pipeline:

- **Haiku** (Claude's fastest model) produced rapid first drafts and
  exploratory iterations, enabling high-throughput generation of candidate
  arguments, section outlines, and worked examples.

- **Sonnet** (Claude's balanced model) refined structure, ensured
  mathematical consistency, resolved cross-references between sections, and
  integrated feedback from internal review cycles.

- **Opus** (Claude's most capable model) performed final deep review: style
  tightening, Lean-vs-markdown consistency audits, and prose compression to
  meet journal page limits.

This tiered pipeline allowed broad exploration at low cost while concentrating
the most capable model on quality-critical decisions.

---

## Repository Structure

```
physres1/
│
├── paper/                        # Cornerstone manuscript
│   ├── main.md                   # Full paper (Pandoc markdown + LaTeX math)
│   ├── main.tex / main.pdf       # Compiled versions
│   ├── sections/                 # Section-by-section source files
│   │   ├── section01_introduction.md
│   │   ├── section02_notation.md
│   │   ├── section03_newtonian.md
│   │   ├── section04_action.md
│   │   ├── section05_dirac.md
│   │   ├── section06_composition.md
│   │   ├── section07_deformation.md
│   │   ├── section08_renormalization.md
│   │   ├── section09_unified.md
│   │   └── section10_appendices.md
│   ├── notes/                    # Working notes and sanity checks
│   ├── reviews/                  # Referee reports and responses
│   └── bibliography.md           # Citation keys
│
├── papers/                       # Satellite papers (full submissions)
│   └── measurement-composition/  # Example with referee rounds
│
├── docs/                         # Jekyll site (GitHub Pages)
│   ├── index.md
│   ├── main-paper/main.pdf
│   └── <satellite>/main.md       # One subdirectory per satellite
│
├── lean/                         # Lean 4 formalization
│   ├── lakefile.lean
│   ├── PhysRes/
│   │   ├── Core.lean
│   │   ├── CompositionLaw.lean
│   │   ├── DeformationQuantization.lean
│   │   ├── Renormalization.lean
│   │   ├── MainPaper/            # Section-by-section Lean files
│   │   └── Satellites/           # Lean files for satellite results
│   └── README.md                 # Build instructions and theorem status
│
├── notebooks/                    # Exploratory calculation notes
├── blackboards/                  # Shared working space for agent reasoning
├── meta/                         # Kanban, publication tracking, research state
├── pub-track/                    # Submission records (sent/, rejected/)
├── agents/                       # Agent memory and shared protocols
├── sources/                      # Ingested reference documents
└── scripts/                      # Compilation and utility scripts
```

---

## Lean 4 Formalization

The `lean/` directory contains machine-checked verification of key theorems,
built with [Mathlib4](https://github.com/leanprover-community/mathlib4).

The paper distinguishes between theorems that are **fully proved** in Lean and
those carrying `sorry` placeholders pending completion of the formal argument.

### Proved theorems (selected)

| Lean theorem | Paper reference | Content |
|---|---|---|
| `necessity_of_action_scale` | P4.2 | ℏ is dimensionally forced by composition |
| `exponential_form_forced` | P4.1 | W[path] ∝ exp(iS/ℏ) from algebra |
| `semigroup_normalization` | D4.1 | t^{−d/2} from refinement closure |
| `renormalized_observable_limit` | P6.1 | Observable independence from scheme |
| `flow_generator_from_refinement` | P6.2 | β-function from semigroup |
| `classical_compatibility` | P5.1 | ℏ→0 limit recovery |

### Proof sketches (sorry placeholders)

Several theorems require analytic tools not yet fully available in Mathlib:

- Infinite-product measures for genuine path integrals
- Distributional calculus for Dirac delta limits
- Differential geometry for the Van Vleck bi-half-density result
- Spectral theory for curved-space examples

CI runs `lake build` on every push via `.github/workflows/lean-check.yml`.

To build locally:

```bash
cd lean/
lake build
```

---

## Satellite Papers

Thirteen companion papers develop specific RCP channels:

| Channel | Papers |
|---|---|
| Partition (temporal composition) | path-integral-normalization, rooted-tree-bookkeeping, dirac-probes-corners-impulses |
| Representation (ordering equivalence) | ordering-equivalence, half-density-qft |
| Scale (renormalization group) | rg-fundamental, rcp-foundations, delta-objects |
| Classical foundations | relativistic-central-orbits, action-angle-indeterminacy |
| Geometric/half-density | planck-area, half-density-qft |

See `papers/README.md` for the full cross-reference network and publication
status. The `planck-area` paper has been posted to clawXiv (2602.00073).

---

## Compilation

Papers are written in Pandoc-compatible markdown with inline LaTeX math.

```bash
pandoc -f markdown+tex_math_single_backslash -s paper/main.md -o paper/main.pdf
```

Page estimates (elsarticle 3p twocolumn):

```bash
bash scripts/count-pages.sh
```
