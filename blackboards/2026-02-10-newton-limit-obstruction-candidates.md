# Newton "Refinement-to-Zero" Limit: Candidate Obstructions That Motivate Quantization

Date: 2026-02-10  
Cycle: `S43`

## Goal
Enumerate precise mathematical *failure modes* of naive "refine \(\to 0\)" reasoning that are often hidden in classical mechanics, and record which ones plausibly motivate a nonzero deformation scale (the role played by \(\hbar\)) as a minimal stabilizer.

This is not a claim that Newtonian mechanics is inconsistent. It is a claim about **non-uniqueness / non-existence of certain refinement limits** once we insist on composition, singular probes, or infinite-dimensional configuration spaces.

## Candidate A: Derivative already has the "counterterm grammar"
The raw regulated object \(f(x+\varepsilon)/\varepsilon\) diverges as \(\varepsilon\to0\). The derivative exists only after local subtraction:
\[
\frac{f(x+\varepsilon)-f(x)}{\varepsilon}\to f'(x).
\]
This is already the regulate/subtract/limit grammar that later reappears as renormalization.

Status in repo: explicit in `papers/rg-fundamental/main.md` Section 3.

## Candidate B: Quantization is not uniquely fixed by the classical refinement scaffold
Time-slicing a composition law yields a family of discretizations (left/right/midpoint, etc.). These are all classically equivalent but can produce distinct quantum operators (ordering ambiguity). Thus the naive refinement-to-zero limit is **not unique** unless one supplies extra compatibility data (equivalence under conjugation, or a control map \(\tau\) selecting a stable scheme).

Status in repo: ordering/scheme language exists via control-map \(\tau\) and "nonunique short-time prescriptions" in `paper/main.md` Sections 6 and 8.

## Candidate C: No naive "Lebesgue measure" on path space (non-existence issue)
The formal symbol \(D\phi\) is not a standard countably additive translation-invariant measure on infinite-dimensional spaces. If one tries to interpret path integrals as ordinary integrals without specifying a limiting construction, the object is undefined.

The operational cure is exactly what the manuscript does: define kernels by finite refinement + composition + normalization constraints, then ask for regulator/partition stability (and accept scheme dependence where unavoidable).

Status in repo: implicit throughout the kernel-composition spine; could be stated more explicitly as a heuristic.

## Candidate D: Singular probes force distribution theory (and regularization)
Once we allow point-supported probes (Dirac deltas, their derivatives) or trajectories with corners/impulses, the Euler-Lagrange equations are distributional and naive pointwise reasoning fails.
The limit exists only after specifying a mollifier/regularization convention, and "contact terms" are an automatic byproduct.

Status in repo: weak-form/mollifier guardrails in `paper/main.md` Section 2 and the delta-objects note.

## Candidate E: Non-commutation of refinement and stationary-phase selection
In semiclassical limits, stationary phase produces determinant prefactors (half-density weights) and can change structure near caustics/multi-branch regimes. The "select the classical extremal" slogan is not a raw pointwise limit but an asymptotic statement whose invariance under refinement needs explicit control of prefactors and phases.

Status in repo: half-density prefactor story is developed in `paper/main.md` and expanded in `papers/planck-area/main.md`.

## Zeno Analogy (how it fits)
Newton's calculus resolves Zeno by providing a controlled meaning to an infinite refinement process (limits of sums, derivatives).
The present program treats quantization/renormalization as the analogous next step: controlled meaning for refinement limits when composition, singularities, or infinite-dimensionality prevent naive limit-taking.

## Promotion Candidate
Add one short labeled heuristic in `paper/main.md` near the new Zeno-style paragraph:
- list 2-3 concrete obstructions (ordering non-uniqueness; singular probes; divergent refinement),
- phrase quantum/renorm as *control mechanisms* for those failures.
