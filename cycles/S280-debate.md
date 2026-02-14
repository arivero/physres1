# S280 Debate: Is symmetry or unitarity the operative selector?

Date: 2026-02-14

## Question
The manuscript says "requiring unitarity selects a symmetric (half-density) convention." But the computation shows that formal symmetry alone selects \(\alpha=1/2\). Is "unitarity" an overclaim, or is it a harmless shorthand?

## Working answer
Symmetry of the generator (\(\hat H = \hat H^\dagger\) on a dense domain) is the direct algebraic selector. Unitarity of the propagator (\(e^{-it\hat H/\hbar}\) preserves norms) requires essential self-adjointness, which is strictly stronger and depends on domain/boundary data. In the \(H=qp\) example, symmetry alone suffices to pin \(\alpha=1/2\); self-adjointness is then an additional requirement that is automatically satisfied on \(\mathbb{R}_+\) but requires a boundary condition choice on \(\mathbb{R}\).

So "unitarity selects midpoint" is not wrong in practice (unitarity certainly requires symmetry, which forces midpoint), but the precise statement is: "symmetry of the generator selects midpoint; unitarity additionally requires a self-adjoint realization, which depends on the configuration-space topology." The manuscript's informal phrasing is acceptable as a heuristic bullet if scoped by "in the standard scalar \(L^2\) picture."

## Next check
Verify by explicit computation (SymPy or Lean) that the symmetry defect formula has no sign errors. (Deferred: the hand computation is clean and matches the D9.1b periodic-domain pattern.)
