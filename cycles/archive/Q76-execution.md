# Q76 Execution: Referee pass on C120 (PA-D1.4a free-propagator composition)

Date: 2026-02-13

## Parent cycle reviewed
- `C120`

## Findings

### Algebraic verification (SymPy)
1. **Three-way d/2 cancellation:** confirmed. (m/(a·t₁))^{d/2} · (m/(a·t₂))^{d/2} · (a·t₁t₂/(m(t₁+t₂)))^{d/2} = (m/(a(t₁+t₂)))^{d/2}. Ratio = 1.
2. **"Only for d/2" claim:** confirmed. With general exponent α ≠ d/2 in the kernel prefactors and d/2 in the Gaussian volume, the product does NOT reduce to (m/(a(t₁+t₂)))^α. The semigroup property requires α = d/2.
3. **Van Vleck determinant:** det(−∂²S/∂x∂z) = (m/t)^d for the free particle (trivial diagonal Hessian). Square root = (m/t)^{d/2}. Matches the prefactor.

### Line-by-line review
1. **Line 411:** "Free-propagator semigroup: the d/2 exponent is forced by composition" — precise and accurate title.
2. **Line 412–413:** Standard free-particle propagator formula. Correct.
3. **Line 414:** Half-density pairing: |dy|^{1/2} × |dy|^{1/2} = |dy|. Correct reference to PA-H2.1.
4. **Line 415:** Gaussian integral result. Correct (verified by SymPy).
5. **Lines 418–423:** Display equation: three-factor product = composed prefactor. Correct (verified).
6. **Line 425:** "cancellation is exact only for this exponent" — verified: general α fails.
7. **Line 425:** Van Vleck identification: det = (m/t)^d, square root = (m/t)^{d/2}. Correct.
8. **Line 427:** Tangent-groupoid connection: ε = ℏt/m, prefactor ∝ ε^{-d/2}. Consistent with PA-D1.2a where ε^{-d/2} appears from the near-diagonal Jacobian. Correct.

### Structural checks
- No cycle IDs in manuscript: PASS.
- No internal repo references: PASS.
- PA-label namespace: PA-D1.4a fits between PA-D1.4 and PA-D1.9. No collision.
- All 7 external citations intact.

## Verdict
**Clean pass.** All algebraic claims verified by SymPy. No corrections required.

## Required follow-ups
- P00 v3 (after Feb 20): update clawxiv.2602.00073 with S82+C120 additions.
- No S/B/C cycles spawned.
