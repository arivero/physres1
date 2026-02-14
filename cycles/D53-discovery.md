# D53 Discovery: Is the identity limit (A2) derivable from composition (A1)?

Date: 2026-02-14
Parent: D49+D50 (P4.2 axiom reduction chain)

## Novelty target
Determine if (I) [identity limit: K(x,y;t) → δ(x-y) as t→0] can be derived
from (C) [composition: K_t ∘ K_s = K_{t+s}] plus regularity, reducing P4.2
to a single-axiom theorem.

## Background
D50 showed (D) derives from (C) + setup. D29 showed exponential weight derives
from (C). D37 showed iε derives from (C). Current P4.2' has 2 axioms (C, I) + setup.
If (I) also derives from (C), the theorem becomes single-axiom.

## Key analysis

### Semigroup theory perspective
A one-parameter family {K_t}_{t>0} satisfying K_t ∘ K_s = K_{t+s} is an
operator semigroup. The C₀ (strongly continuous) property — K_t → Id as t→0
in the strong operator topology — is an **additional axiom** in functional analysis.
Non-C₀ semigroups exist (e.g., translation semigroup on L^∞).

### What (C) alone forces for kernels on ℝ^d
From the D49-D50 chain, composition (C) + physical setup forces:
1. Gaussian form: K_t(x,y) = A(t) exp(iB(t)(x-y)²) [D29: exponential uniqueness]
2. B(t) = m/(2ℏt) [from composition integral matching]
3. A(t) = (m/2πiℏt)^{d/2} [D50: dimensional consistency from ∫K dz = K]
4. iε regulator: unique [D37]

Given this explicit form, the t→0 limit:
K_t(x,y) = (m/2πiℏt)^{d/2} exp(im(x-y)²/2ℏt) → δ(x-y)

is a **standard distributional theorem** (nascent delta / Fresnel integral
concentration). The proof: for any test function φ(y),
∫ K_t(x,y) φ(y) dy → φ(x) as t→0 by stationary phase.

### Verdict
**YES, conditionally.** The identity limit (I) is derivable from:
- Composition (C) — which forces the explicit Gaussian form
- Physical setup — which provides ℝ^d, mass m, action-based dynamics
- **Regularity** — K_t(x,y) is continuous in t for t>0 (needed to exclude
  pathological non-C₀ semigroups)

The regularity condition is NOT an independent physical assumption — it follows
from the explicit kernel formula forced by (C).

### Subtlety: what (I) actually contributes
In the D49 per-axiom decomposition, A2 (identity limit) forces exactly one
conclusion: the κ→0 obstruction (classical limit doesn't exist as a smooth
kernel). But this conclusion also follows from the explicit kernel form forced
by (C): as κ→0, (m/2πiκt)^{d/2} exp(imS/κ) oscillates wildly — no distributional
limit exists.

So A2's contribution is **vacuous** given A1 + setup.

### Impact for P4.2'
P4.2 reduces to: **one axiom (composition) + physical setup**.

The composition law K_t ∘ K_s = K_{t+s}, applied to action-based kernels on ℝ^d
with dimensional parameter m, forces ALL nine P4.2 conclusions:
- d/2 exponent, exponential weight, iε prescription (from composition alone)
- [K]=L^{-d}, Lévy exclusion, continuum time (from composition + setup)
- κ→0 obstruction (from explicit form)
- identity limit (from explicit form)
- κ=ℏ identification (from dimensional analysis of the forced form)

## Success criteria met
1. ✓ Identity limit derivable from composition + setup + regularity
2. ✓ Regularity is automatic (not independent) for the forced kernel form
3. ✓ P4.2 reduces to single-axiom theorem (composition is the master axiom)

## Novelty assessment
**MODERATE (structural clarification).** The mathematical facts (C₀ semigroup
theory, Gaussian kernel → delta) are textbook. The novelty is the **logical
closure**: showing the entire P4.2 theorem chain collapses to a single axiom.
This strengthens the "composition is the master axiom" thesis from D49.

## Spawned cycles
None required. Result strengthens the existing notebook (rcp-axiom-structure-analysis).
Consider updating S303 (Theorem P4.2') to reflect single-axiom form.
