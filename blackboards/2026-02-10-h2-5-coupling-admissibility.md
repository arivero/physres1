# Blackboard: H2.5 Needs an “Admissible Couplings” Rule (and Why Analyticity Is the Invariant Version)

Date: 2026-02-10

## Purpose
The Planck-area draft uses H2.5 (“no fractional powers of couplings”) as a *dimension sieve* that can single out \(d=4\) under a gravity-only assumption. But H2.5 is only meaningful if we state what counts as a “coupling” and what does not.

This note clarifies:
1. why “no fractional powers” is coordinate dependent unless reformulated as perturbative analyticity,
2. why we must **exclude** scheme/scale conventions (\(\mu\), cutoff \(\Lambda\), field rescalings) from the coupling set, and
3. how adding extra dimensionful couplings (\(\Lambda_d\), \(\alpha'\)) changes what dimensions are “sieved” without changing the half-density facts.

No external sources are needed; this is hypothesis hygiene.

## 1. Two non-equivalent readings of “no fractional powers”
The phrase “no fractional powers of couplings” hides two different constraints:

### (A) Integrality / monomial sieve (H2.5a)
We restrict the universal normalization constant \(C\) to monomials in admitted couplings:
\[
C=\prod_i g_i^{n_i},\qquad n_i\in\mathbb Z,
\]
and impose the dimension equation \([C]=\text{length}^{d/2}\).
This is computationally sharp (it becomes a Diophantine condition), but it is **not coordinate invariant**:
if we allow ourselves to adjoin a new symbol \(\tilde g:=g^{1/2}\), then an expression that used a “forbidden root” becomes a monomial in \(\tilde g\).

### (B) Perturbative analyticity sieve (H2.5b)
We instead demand that the dependence of \(C\) on couplings be analytic at a distinguished weak-coupling point (typically the free theory).
Analyticity is stable under **analytic** coupling redefinitions, and it excludes adjoining non-analytic functions like \(g^{1/2}\) near \(g=0\).

Working conclusion: if we want H2.5 to be an invariant “filter” rather than a coordinate artifact, the analyticity reading (H2.5b) is the safer backbone, with H2.5a as a computational proxy once the coupling coordinates are fixed.

## 2. What must be excluded: \(\mu\), cutoffs, and scalarization gauges
Even if we adopt analyticity, the dimension sieve becomes vacuous unless we fix what symbols are allowed as inputs.

### 2.1 Scheme/scale parameters are *not* couplings
- The renormalization scale \(\mu\) and a regulator/cutoff \(\Lambda\) are bookkeeping devices; they are not universal constants of the theory.
- Allowing \(\mu\) (or \(\Lambda\)) as an “admitted coupling” trivially solves the dimension equation by \(C\sim \mu^{-d/2}\) (or \(C\sim\Lambda^{-d/2}\)).

So any “universal constant built from couplings” must explicitly exclude \(\mu\), \(\Lambda\), and other scheme parameters.

### 2.2 Scalarization gauges are representational, not physical
Choosing a reference half-density \(\sigma_\ast\) (or a density \(\rho_\ast=\sigma_\ast^2\)) is a *representation choice*.
Its overall constant scale \(L_\ast^{d/2}\) is exactly what the Planck-area hypothesis ladder tries to constrain.
So \(L_\ast\) cannot be admitted as a “coupling” without collapsing the argument into a tautology.

## 3. Proposed admissibility rule (tentative but actionable)
To make H2.5 meaningful we can adopt:

`Rule A (Admissible couplings).`
The “admitted couplings” are the independent parameters that appear as coefficients of local operators in the bare/UV action *after fixing a canonical normalization convention for fields* (e.g. kinetic terms normalized in the standard way), and we mod out only by **analytic** reparametrizations near a distinguished base point (“weak coupling”).

Under Rule A:
1. \(\mu\), \(\Lambda\), and finite-subtraction constants are excluded (scheme conventions).
2. Field rescalings that change coefficients are fixed by the chosen normalization convention.
3. Adjoining \(\tilde g=g^{1/2}\) is disallowed if it is non-analytic at the base point.

This rule does not remove all ambiguity, but it makes explicit what was previously implicit.

## 4. How the sieve depends on the admitted coupling set (keep filters separate)
The half-density facts force a \(\text{length}^{d/2}\) constant if we insist on dimensionless scalar representatives. The “special dimension” conclusions depend entirely on what couplings we admit as universal inputs.

### 4.1 Gravity-only sieve
If the only admitted dimensionful universal coupling is \(G_d\) with \([G_d]=\text{length}^{d-2}\), then:
- under the strict monomial/integrality sieve, matching \(\text{length}^{d/2}\) without fractional powers forces \(d=4\),
- under analyticity at \(G_d=0\), the same conclusion holds if we also demand that \(C\) be built without introducing any additional reference scale.

### 4.2 Gravity + cosmological constant
If we also admit \(\Lambda_d\) with \([\Lambda_d]=\text{length}^{-2}\), then analytic monomials of the form
\(C\sim G_d\,\Lambda_d^{m}\) exist with \(m=d/4-1\) whenever \(d\) is divisible by \(4\) and \(m\ge 0\).
So allowing \(\Lambda_d\) changes the sieve outcome; \(d=4\) becomes “the minimal divisible-by-4 case” rather than “the unique case”.

### 4.3 Gravity + string tension
If we admit a string tension \(\alpha'\) with \([\alpha']=\text{length}^2\), then \(\alpha'^{d/4}\) supplies \(\text{length}^{d/2}\) when \(d\) is divisible by \(4\), independently of gravity. This provides a universal *area* source but does not single out \(d=4\) by itself.

Working conclusion: “\(d=4\Rightarrow\) area” is robust once a \(\text{length}^{d/2}\) constant exists, but “only \(d=4\) works” is a *gravity-only + admissibility* claim.

## 5. Relation to the transmutation branch (keep it separate)
Dimensional transmutation produces an RG-invariant scale \(\Lambda_\ast\) from (typically) a dimensionless coupling, and then one can set \(C\sim \Lambda_\ast^{-d/2}\).
This supplies a scale without monomial/analytic dependence in the naive coupling and therefore lives **outside** H2.5b in the sense used in the Planck-area draft.

The transmutation branch is important for “RG is fundamental”, but it does not act as a dimension sieve in the same way.

## 6. Promotion candidates
1. **For `papers/planck-area/main.md`:** after `Heuristic H2.7`, add a short paragraph making explicit that H2.5a is coordinate dependent, while H2.5b (analyticity near a base point) is the invariant form; then state Rule A as the intended “what counts as a coupling” convention.
2. **For `papers/planck-area/main.md`:** add one sentence to the branch summary clarifying that the “\(d=4\) uniqueness” result is conditional on a *gravity-only admissibility choice* (excluding \(\Lambda_d\), \(\alpha'\), etc.).
3. **For `docs/research-state.md`:** optionally add a one-line reminder that “coupling admissibility” is a separate hypothesis knob, so we do not mix it with half-density facts or RG transmutation.

