# S290 Plan: Half-density vs Moyal ordering comparison

Date: 2026-02-14
Parent: D35
Track: Study (technical calculation)

## Goal
Compare half-density conjugation (Section 10.2) with Moyal product (Section 7) for a test symbol to determine if they conflict or are complementary.

## Context from Haiku search (sources/)
**Key tension identified** (agent abb762e):
- **de Gosson**: Born-Jordan vs Weyl give **observably different results** for L² → NOT pure gauge freedom
- **Rivero**: Different orderings are related by star product choice, **same classical limit** → equivalent
- **Missing piece**: Is half-density the universal framework that makes orderings equivalent?

**Sources:**
- de Gosson (2018): (ℓ²)_W - (ℓ²)_BJ = (1/2)ℏ², argues Born-Jordan is "correct" from path integral
- Groenewold (1946): Quantization correspondence problem
- Rivero (0302285): Discretization ↔ ordering ↔ star product
- Carroll (9712019): Ordering ambiguity in covariant derivatives (parallel to QM)

## Specific task
Test symbol: **H = p²/(2m) + V(q)**

**Three quantization prescriptions:**
1. **Half-density conjugation** (Section 10.2, Derivations D9.1d-e):
   - Upgrade ψ → ψ̃ = |g|^{1/4}ψ
   - Kinetic: -ℏ²/(2m) Δ_g (Laplace-Beltrami, no connection term)
   - Potential: V̂ = ?

2. **Weyl ordering** (Section 7, Moyal product):
   - Kinetic: -ℏ²/(2m) ∂²
   - Corrections from [q^a, p^b] commutators?

3. **Born-Jordan ordering** (de Gosson):
   - Differs from Weyl by O(ℏ) for non-linear symbols
   - Path integral gives Born-Jordan naturally

**Key questions:**
1. For flat space (g_ij = δ_ij), does half-density → Weyl or Born-Jordan?
2. For curved space, do Weyl/Born-Jordan generalize? Or is half-density the unique natural extension?
3. Do the three prescriptions differ for p²/(2m) + V(q), or is this a special case where all agree?
4. If they agree for this symbol, what's the simplest symbol where they differ?

## In scope
1. Compute half-density kinetic operator explicitly
2. Compute Moyal (Weyl) operator for p²/(2m)
3. Identify O(ℏ) differences (if any)
4. Test case: H = qp (from notebook ordering-unitarity, D23/S280 showed α=1/2 selection)
5. Verdict: Half-density = Weyl? Half-density = Born-Jordan? Or independent?

## Out of scope
- Full star-product calculation for arbitrary symbols (use existing Moyal formulas)
- Curved-space Moyal product (no canonical definition)
- Field theory extension (defer)

## Technical approach
Flat space first:
- Half-density: |g|^{1/4} = 1, so ψ̃ = ψ
- Kinetic: Δ = ∂², so -ℏ²/(2m)∂² (matches standard)
- This seems to give Weyl?

But wait: Section 10.2 claims "eliminates connection term" — connection is zero in flat space anyway!

Need to check:
1. Flat space: Is there any difference between half-density and Weyl for p²/(2m)?
2. Curved space: Does half-density → unique prescription while Weyl → ambiguous?

## Acceptance tests
1. Explicit operator formula for half-density p²/(2m) + V(q) on flat ℝ^d
2. Explicit operator formula for Weyl p²/(2m) + V(q)
3. Identify differences (if any)
4. Verdict for D35: Tension real / apparent / scope-dependent

## Blackboard target
Slot 3 (overwrite central-force threshold content if S270-S278 thread is dormant)
