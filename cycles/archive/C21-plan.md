# C21 Plan

## Goal
Tighten the “half-density \(\Rightarrow\) universal area scale” hypothesis ladder by making the **scale-supplier** options explicit: (i) analytic monomials in dimensionful couplings (H2.5 sieve) versus (ii) RG-generated invariant scales (dimensional transmutation). Make the \(d=4\) “area” point unavoidable *once the hypotheses are adopted*.

## Scope
1. In `papers/planck-area/main.md`, add one labeled derivation that:
   - states the general construction of an RG-invariant scale from a beta function,
   - shows how that scale can supply the required \(\text{length}^{d/2}\) scalarization constant when H2.4 holds and H2.5 is relaxed,
   - specializes to \(d=4\) to make the “area scale” interpretation explicit (without claiming it must equal \(L_P^2\) unless gravity-only assumptions are added).
2. Add a short “dimension bookkeeping” note clarifying which \(d\) is meant (configuration-manifold dimension vs spacetime dimension) so we do not silently mix conventions.
3. Rebuild `papers/planck-area/main.pdf` and delete `.aux`/`.log` artifacts after success.

## Acceptance Tests
1. `papers/planck-area/main.md` gains one labeled `Derivation` giving the RG-invariant scale formula and the \(d=4\) area specialization, plus a short clarification note on what “\(d\)” refers to.
2. `papers/planck-area/main.pdf` rebuilds without errors and the directory contains only `main.md`, `main.tex`, `main.pdf`.

