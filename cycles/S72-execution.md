# S72 Execution: Half-density conjugation vs conformal Laplacian — scope of the D=4 cancellation

Date: 2026-02-12

## Work performed
1. **Algebraic verification** of the D(4-D)/4 coefficient in HD-D1.3 by explicit chain-rule expansion (4 steps: first derivative, flat Laplacian, conformal correction, combine). All three coefficient groups confirmed:
   - grad(sigma).grad(psi): -D + (D-2) = -2 ✓
   - laplacian(sigma): -D/2 ✓
   - |grad(sigma)|^2: D^2/4 - D(D-2)/2 = D(4-D)/4 ✓

2. **Comparison with Yamabe operator**: the half-density conjugation acts on weight D/2, while the Yamabe operator acts on weight (D-2)/2. All three coefficient groups differ. They are genuinely distinct operators.

3. **Can the potential be xi*R?**: no. Matching the laplacian(sigma) coefficient gives xi = D/(4(D-1)), but the |grad sigma|^2 coefficient then has a remainder D/2 that doesn't vanish for any D. The half-density potential is NOT a curvature coupling.

4. **General-metric scope**: the D=4 cancellation is conformal-class-specific. In the general-metric formulation, the potential is V = |nabla(omega)|^2_g - Delta_g(omega) with omega = (1/4)ln|g|, and the partial cancellation at D=4 relies on the conformal structure (Christoffels proportional to grad(sigma)).

## Artifacts produced
- `blackboards/2026-02-12-half-density-conformal-D4.md`: full derivation with summary table

## Commands run (if any)
SymPy verification was attempted but blocked by sandbox restrictions. All algebra verified by hand (step-by-step chain-rule expansion, cross-checked by dimensional analysis and limiting cases D=2,3,4,6).

## Result
Three clear structural findings now stable enough to cite from PA-H2.6a or HD-D1.3:
1. Half-density conjugation != Yamabe operator (different conformal weights).
2. Half-density potential != xi*R for any xi (remainder D/2).
3. D=4 cancellation is conformal-class-specific.

PA-H2.6a's characterization of this as an "independent D=4 filter" is validated and sharpened.

## Promotion candidate (copyable block)
A remark suitable for promotion into papers/half-density-qft/main.md (after HD-D1.3):

> `Remark HD-D1.3a (Half-density conjugation is distinct from conformal coupling).`
> The conjugated Laplacian tilde_Delta = |g|^{1/4} Delta_g |g|^{-1/4} acts on half-density weight D/2, while the Yamabe operator Y = -Delta_g + (D-2)/(4(D-1)) R acts on conformal weight (D-2)/2. The half-density potential (zeroth-order terms in the conformal expansion) cannot be written as xi*R for any single value of xi: matching the laplacian(sigma) coefficient gives xi = D/(4(D-1)), but the |grad sigma|^2 coefficient then has a residual mismatch of D/2. In particular, the D=4 cancellation of the |grad sigma|^2 term in tilde_Delta is a property of the half-density weight, not of conformal invariance.

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **no**
- The three findings (distinct from Yamabe, not xi*R, conformal-class-specific) were implicit in the existing HD-D1.3 derivation but had not been explicitly verified or recorded. No anomaly.

## Spawned cycles
- `C109` (when ready): promote Remark HD-D1.3a into `papers/half-density-qft/main.md`
- No B cycle needed (the Yamabe/conformal Laplacian comparison uses standard differential geometry, no independent source required).
