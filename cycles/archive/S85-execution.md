# S85 Execution: Wilsonian shell-integration beta function for 2D delta

Date: 2026-02-13

## Work performed

1. **Shell integral computation.** Evaluated the exact momentum-shell integral for the 2D delta:
   \(I_{\rm shell} = -(m/2\pi\hbar^2)\ln[(\Lambda^2 - k^2)/(\Lambda'^2 - k^2)]\).
   At threshold (\(k = 0\)): \(I_{\rm shell} = -(m/\pi\hbar^2)\ln(\Lambda/\Lambda')\), exact with no UV approximation.

2. **Wilsonian RG map.** Defined effective coupling at lower cutoff by matching the T-matrix functional form. The map \(W_{\Lambda\to\Lambda'}\) shifts \(1/g\) by \((m/\pi\hbar^2)\ln(\Lambda/\Lambda')\).

3. **Semigroup verification.** Checked \(W_{\Lambda_1\to\Lambda_2} \circ W_{\Lambda\to\Lambda_1} = W_{\Lambda\to\Lambda_2}\) — reduces to additivity of logarithms. SymPy confirms: residual = 0.

4. **Beta function.** Differentiated: \(\beta(g) = (m/\pi\hbar^2)\,g^2\). Matches Section 5.2 exactly.

5. **Section 6 connection.** Noted that the shell integral plays the role of the Schur complement from RG-D1.7, and that many \((g_B, \Lambda)\) pairs map to the same physics (non-invertibility ↔ dimensional transmutation).

## SymPy commands and output

```python
# Exact shell integral
I_shell = (m/(2*pi*hbar**2)) * (log(Lp**2 - k**2) - log(L**2 - k**2))
# UV expansion: -(m/(pi*hbar^2)) ln(Lambda/Lambda') + O(k^2)

# Semigroup check
ln(L0/L1) + ln(L1/L2) - ln(L0/L2) = 0  # confirmed
```

## Output file
- `blackboards/2026-02-13-wilsonian-shell-2d-delta.md`

## Discovery flag
**No.** Confirms existing result; makes semigroup structure explicit. No surprises.
