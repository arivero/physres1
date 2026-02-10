# Contact-Flow Data-Space Map Across 1D/2D/3D

Date: 2026-02-10  
Cycle: `S40`

## Goal
Bridge the weak-derivative/contact-term mechanism to the existing 1D/2D/3D contact-interaction RG comparison by identifying the *compatibility data space* in each dimension.

## Core Point
The same compatibility requirement ("predictions stable under scale/composition changes") acts on different effective data objects by dimension:
- a higher-dimensional parameter space in \(1\)D (full contact family),
- a single transmutation scale in \(2\)D,
- a single low-energy scattering parameter in \(3\)D s-wave contact reduction.

## Compact Map
| Dimension | Short-distance/contact descriptor | Minimal compatibility data | RG face |
|---|---|---|---|
| \(1\)D | point interaction as boundary/connection condition at \(x=0\) | matrix-valued boundary data (U(2) family on full line) | flow on a nontrivial parameter manifold with richer fixed-point set |
| \(2\)D | logarithmic contact singularity | one scale \(\kappa_\ast\) (or \(R\)) from dimensional transmutation | logarithmic running of a marginal coupling |
| \(3\)D | contact encoded by low-energy matching | one scattering length \(a\) (for s-wave contact branch) | fixed-point structure in dimensionless coupling parameterizations |

## Link to Weak-Derivative Story
The weak identity
\[
\int \frac{p(t+\varepsilon)-p(t)}{\varepsilon}\eta(t)\,dt
\to \langle \dot p,\eta\rangle
\]
shows that local subtraction plus limit generates contact terms. Cross-dimensionally, what changes is not this grammar, but the geometry of the data being flowed/renormalized.

## Promotion Candidate
Add one concise remark near Section 5.8 in `papers/rg-fundamental/main.md`:
1. same compatibility grammar across dimensions,
2. dimension-dependent data-space complexity explains why \(1\)D can have richer fixed-point families while \(2\)D/\(3\)D contact branches are often effectively one-parameter.
