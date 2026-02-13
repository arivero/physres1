# Effective Range Expansion ↔ Contact EFT Connection

**Date:** 2026-02-13
**Target:** fermionic mediators satellite, Remark after Derivation 4.1

## The two languages

### EFT language (Section 4)
Low-energy amplitude expansion:
$$
\mathcal{A}(q) = C_0 + C_2 q^2 + O(q^4)
$$

Coordinate-space: $V(r) \propto C_0 \delta(r) - C_2 \nabla^2 \delta(r) + ...$

### Scattering theory language
In 3D, the s-wave scattering amplitude has the effective range expansion (ERE):
$$
k \cot \delta_0(k) = -\frac{1}{a} + \frac{r_0}{2} k^2 + O(k^4),
$$
where $a$ = scattering length and $r_0$ = effective range.

The scattering amplitude is:
$$
f_0(k) = \frac{1}{k \cot \delta_0 - ik} = \frac{-1}{1/a + ik - r_0 k^2/2 + ...}
$$

## Connection

At leading order, the Born approximation gives:
- $C_0$ determines $a$ (inverse scattering length)
- $C_2$ determines $r_0$ (effective range)

More precisely, in the EFT framework:
- $C_0$ → scattering length via $a = -mC_0/(4\pi\hbar^2)$ (at Born level; gets renormalized beyond Born)
- $C_2$ → effective range correction
- Each additional $C_{2n}$ maps to a shape parameter in the ERE

## Special cases in the paper

Examples 5.1 and 5.2 are the **zero effective range** ($r_0 = 0$) cases:
- Example 5.2 gives $f_0(k) = -a/(1+ika)$, which is exactly the ERE with $r_0 = 0$
- In EFT language: only the leading contact $C_0$ is present (no derivative contacts)

## What to promote

**Remark 4.2**: short paragraph connecting EFT contacts to ERE parameters.
Key message: the EFT expansion $C_0 + C_2 q^2 + ...$ is the momentum-space
equivalent of the effective range expansion. Examples 5.1/5.2 are the
leading-order ($C_0$ only) case.
