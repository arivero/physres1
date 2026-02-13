# Uehling potential: vacuum polarization as a concrete fermion-loop effect

## Context
Section 3.1 of the fermionic mediators satellite states that vacuum polarization
(a fermion loop in the photon propagator) modifies the effective coupling
α_eff(q²) = α/(1 − Π(q²)). This blackboard works out the coordinate-space
consequence: the Uehling potential.

## The vacuum polarization function
For a single fermion of mass m (electron), the one-loop photon self-energy is
(in the spacelike regime q² < 0, writing Q² = −q² > 0):

Π(Q²) = −(2α/π) ∫₀¹ dx x(1−x) ln[1 + Q²x(1−x)/m²]

For Q² << m²: Π(Q²) ≈ −(α/15π)(Q²/m²) + O(Q⁴/m⁴) → local operator C₂ q²
For Q² >> m²: Π(Q²) ≈ −(α/3π) ln(Q²/m²) → logarithmic running

## Uehling potential (coordinate space)
The modified Coulomb potential between charges Z₁e, Z₂e is:

V(r) = −Z₁Z₂α/r + V_Uehl(r)

where the Uehling correction is:

V_Uehl(r) = −(Z₁Z₂α/r) · (2α/3π) ∫₁^∞ du (1 + 1/(2u²))√(1 − 1/u²)/u² · e^{−2mr u}

### Short-distance limit (r << 1/m):
V_Uehl(r) ≈ −(Z₁Z₂α/r) · (2α/3π)[ln(1/(mr)) − 5/6 − γ_E + O(mr)]

The logarithmic correction at short distance reflects the running coupling.

### Long-distance limit (r >> 1/m):
V_Uehl(r) ≈ −Z₁Z₂α²/(4√π) · e^{−2mr}/(mr)^{3/2} · (1/r)

Exponentially suppressed: the fermion is "integrated out" at distances >> Compton wavelength.

## Structural lessons for the satellite

1. **Fermion → force path goes through a loop**: The electron never appears as a classical
   source; it modifies the photon propagator through quantum fluctuations. This is exactly
   the point of Section 3.1.

2. **Short-distance = local operators**: For Q² << m², the polarization function is analytic
   in Q²: Π ∝ C₂ Q² + C₄ Q⁴ + ... . These are exactly the contact operators of Section 4.
   The Uehling potential IS the coordinate-space face of the contact expansion.

3. **Long-distance = exponential suppression**: The fermion of mass m contributes corrections
   suppressed as e^{−2mr}. Below the fermion mass threshold, the correction is invisible.

4. **Observable consequence**: The Uehling potential shifts the hydrogen 2S energy relative
   to 2P (contributes to the Lamb shift). The 2S wavefunction has |ψ(0)|² ≠ 0 (sensitive
   to short distances), while 2P has |ψ(0)|² = 0.

## What to promote
An Example 3.2 after Section 3.1, giving the Uehling potential integral and its
two limiting forms. Emphasize: short distance = local/contact operators (bridging to
Section 4), long distance = exponentially suppressed (fermion decouples). Mention
Lamb shift as the observable consequence.

Keep to 4–5 lines in the satellite (compact example format).
