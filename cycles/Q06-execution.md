# Q06 Execution

## Review Target
`papers/rg-fundamental/main.md` after the C38 3D sign/prefactor fix.

## Checks Performed
1. Verified §5.8.1 and §5.9 both use \(I_3(E;\Lambda)=-\frac{m}{\pi^2\hbar^2}\Lambda - i\,\frac{m}{2\pi\hbar^2}k + \cdots\) (same sign and prefactors).
2. Searched for any remaining occurrences of the old \(+i\,\frac{m}{2\pi\hbar^2}k\) term (none found).
3. Confirmed the displayed 3D scattering-length parameterization in §5.8.1 is consistent with the corrected sign and the note’s “\(T\) up to conventions” stance.

## Findings
1. **Consistency restored:** the 3D imaginary sign now matches the stated \(+i0\) rule and is consistent between the dimension-comparison section and the convention map.
2. **No downstream contradictions found:** only the intended two locations contain the 3D on-shell imaginary term.
3. **Normalization remains intentionally flexible:** the “up to conventions” language is appropriate for this draft’s structural thesis.

## Action Queue
- None required for correctness. Optional later improvement: add a single sentence clarifying how the overall \(T\)-matrix normalization relates to the more common \(4\pi\hbar^2/m\) convention in 3D scattering (purely reader-facing).

## Status
Completed.

