# Circular Uncertainty Relation for Action-Angle Pairs

Date: 2026-02-13
Cycle: S108

## Goal
Provide a quantitative uncertainty relation for the (φ, L_z) pair that avoids the self-adjoint angle-operator issue, using the unitary E = e^{iφ} already introduced in Section 2 of the satellite paper.

## Derivation

Starting from the commutation relation [L_z, E] = ℏE (Section 2 of the satellite), apply the Robertson uncertainty relation for operators A = L_z and B = E:

Var(A) · Var(B) ≥ (1/4)|⟨[A,B]⟩|²

Now Var(E) = ⟨E†E⟩ - |⟨E⟩|² = 1 - |⟨E⟩|² (since E†E = e^{-iφ}e^{iφ} = 1).

And |⟨[L_z, E]⟩|² = ℏ²|⟨E⟩|².

So:
Var(L_z) · (1 - |⟨e^{iφ}⟩|²) ≥ (ℏ²/4)|⟨e^{iφ}⟩|²

## Interpretation

Define the "circular concentration" R = |⟨e^{iφ}⟩| ∈ [0,1]:
- R = 0: uniform azimuthal distribution (maximally delocalized, as in an L_z eigenstate)
- R → 1: sharply concentrated around a preferred angle

And the "circular variance" V = 1 - R² ∈ [0,1]:
- V = 1: fully delocalized
- V → 0: sharply localized

The bound becomes: Var(L_z) ≥ (ℏ²/4) R²/V = (ℏ²/4) R²/(1-R²)

As localization increases (R → 1, V → 0), the angular-momentum variance must blow up.

## Wait — is this the correct Robertson inequality?

The standard Robertson inequality requires both A and B to be self-adjoint. But E is unitary, not self-adjoint! E has complex eigenvalues (on the unit circle), so it is NOT self-adjoint.

Actually, we can apply Robertson to the self-adjoint operators A = L_z and B = (E + E†)/2 = cos φ or B = (E - E†)/(2i) = sin φ.

For B = cos φ = (E + E†)/2:
[L_z, cos φ] = (1/2)[L_z, E + E†] = (1/2)(ℏE - ℏE†) = iℏ sin φ

Robertson: Var(L_z) · Var(cos φ) ≥ (ℏ²/4)|⟨sin φ⟩|²

For B = sin φ:
[L_z, sin φ] = [L_z, (E-E†)/(2i)] = (1/(2i))(ℏE + ℏE†) = -ℏ cos φ

Robertson: Var(L_z) · Var(sin φ) ≥ (ℏ²/4)|⟨cos φ⟩|²

These are both valid but less elegant than the E version.

Actually, let me reconsider. The Robertson inequality does apply to non-self-adjoint operators in a generalized form. For any operators A, B:
⟨ΔA†ΔA⟩⟨ΔB†ΔB⟩ ≥ |⟨ΔA†ΔB⟩|²

This is just Cauchy-Schwarz. For self-adjoint A = A†: ⟨ΔA†ΔA⟩ = ⟨(ΔA)²⟩ = Var(A).
For unitary E: ΔE = E - ⟨E⟩, and ⟨ΔE†ΔE⟩ = ⟨E†E⟩ - |⟨E⟩|² = 1 - |⟨E⟩|².

So by Cauchy-Schwarz:
Var(L_z) · (1 - |⟨E⟩|²) ≥ |⟨ΔL_z · ΔE⟩|²

Now ⟨ΔL_z · ΔE⟩ = ⟨L_z E⟩ - ⟨L_z⟩⟨E⟩.

Hmm, this doesn't directly give ℏ²|⟨E⟩|²/4. Let me think again.

Actually, the standard approach is to use:
|⟨ΔL_z · ΔE⟩|² ≥ |Im⟨ΔL_z · ΔE⟩|² = (1/4)|⟨[L_z, E]⟩|²

Wait, [L_z, E] = L_z E - E L_z. And:
⟨ΔL_z · ΔE⟩ = ⟨L_z E⟩ - ⟨L_z⟩⟨E⟩

And the commutator expectation:
⟨[L_z, E]⟩ = ⟨L_z E - E L_z⟩ = ⟨L_z E⟩ - ⟨E L_z⟩

For self-adjoint L_z: ⟨E L_z⟩ = ⟨L_z E†⟩* = ⟨L_z E†⟩*

Hmm, this is getting complicated. Let me use a cleaner approach.

The key identity (from Cauchy-Schwarz):
Var(L_z) · ⟨ΔE† ΔE⟩ ≥ |⟨ΔL_z ΔE⟩|²

And ⟨ΔL_z ΔE⟩ = ⟨(L_z - ⟨L_z⟩)(E - ⟨E⟩)⟩ = ⟨L_z E⟩ - ⟨L_z⟩⟨E⟩

The antisymmetric part gives:
⟨[ΔL_z, ΔE]⟩ = ⟨[L_z, E]⟩ = ℏ⟨E⟩

(since [L_z - ⟨L_z⟩, E - ⟨E⟩] = [L_z, E] = ℏE)

And |⟨ΔL_z ΔE⟩|² ≥ (1/4)|⟨[ΔL_z, ΔE]⟩|² = (ℏ²/4)|⟨E⟩|²

Wait, where does the 1/4 come from? The standard step: for any complex number z = ⟨ΔA ΔB⟩ with A self-adjoint:
z - z* = ⟨ΔA ΔB - ΔB† ΔA⟩ = ⟨[A, B] - [B†, A]⟩/... hmm this is getting messy for non-self-adjoint B.

Let me try a different, cleaner approach. Just use the direct computation.

For A = L_z (self-adjoint), B unitary:
|z|² ≥ |Im(z)|² where z = ⟨ΔA ΔB⟩.

Im(z) = (z - z*)/(2i).
z* = ⟨ΔB† ΔA⟩ (since A = A†).

z - z* = ⟨ΔA ΔB - ΔB† ΔA⟩ = ⟨ΔA ΔB⟩ - ⟨ΔB† ΔA⟩.

Hmm, ⟨ΔA ΔB⟩ - ⟨(ΔB)† ΔA⟩ = ⟨ΔA ΔB - ΔB† ΔA⟩.

But ΔB† = E† - ⟨E⟩*, so this is:
⟨(L_z - ⟨L_z⟩)(E - ⟨E⟩) - (E† - ⟨E⟩*)(L_z - ⟨L_z⟩)⟩
= ⟨L_z E - E† L_z⟩ - ⟨L_z⟩⟨E⟩ + ⟨E⟩*⟨L_z⟩ - ⟨L_z E⟩ + ⟨L_z⟩⟨E⟩ + ⟨E† L_z⟩ - ⟨E⟩*⟨L_z⟩
= ⟨L_z E - E† L_z⟩ - ⟨L_z E⟩ + ⟨E† L_z⟩

Hmm wait, this isn't simplifying cleanly. Let me just use the commutator [L_z, E] = ℏE more directly.

Actually, I think the cleanest approach is:

Var(L_z) ≥ ℏ²|⟨E⟩|²/(4(1-|⟨E⟩|²))

This follows from the Cauchy-Schwarz inequality applied in a slightly different way. Let me just state the result and verify it for the known cases.

Actually, you know what, I think the cleaner approach for the paper is to just use the self-adjoint version with cos φ and sin φ, which are both self-adjoint and give clean Robertson relations:

Var(L_z) · Var(cos φ) ≥ (ℏ²/4)⟨sin φ⟩²
Var(L_z) · Var(sin φ) ≥ (ℏ²/4)⟨cos φ⟩²

Adding these:
Var(L_z) · (Var(cos φ) + Var(sin φ)) ≥ (ℏ²/4)(⟨sin φ⟩² + ⟨cos φ⟩²) = (ℏ²/4)|⟨E⟩|²

Now Var(cos φ) + Var(sin φ) = ⟨cos²φ⟩ - ⟨cos φ⟩² + ⟨sin²φ⟩ - ⟨sin φ⟩²
= ⟨cos²φ + sin²φ⟩ - (⟨cos φ⟩² + ⟨sin φ⟩²) = 1 - |⟨E⟩|²

So we get:
Var(L_z) · (1 - |⟨E⟩|²) ≥ (ℏ²/4)|⟨E⟩|²

This derivation is clean and only uses the standard Robertson inequality for self-adjoint operators! Let me use this approach.

## Verification for L_z eigenstate

For |m⟩: ⟨E⟩ = ⟨m|e^{iφ}|m⟩ = 0 (since e^{iφ}|m⟩ = |m+1⟩). So |⟨E⟩|² = 0, and the bound gives Var(L_z) · 1 ≥ 0, which is trivially satisfied (Var(L_z) = 0). ✓

## Verification for Dirichlet kernel
As computed above: |⟨E⟩|² = (2M/(2M+1))², Var(L_z) = ℏ²M(M+1)/3.
The bound becomes satisfied with large margin. ✓

## Candidate text

Insert as Section 4.1 (or as a Proposition/Remark after Example 4.1):

```
`Proposition 4.2 (Circular uncertainty relation).`
For any state on the circle, define the circular concentration \(R=|\langle e^{i\phi}\rangle|\in[0,1]\). Adding the Robertson inequalities for the two self-adjoint pairs \((L_z,\cos\phi)\) and \((L_z,\sin\phi)\) — using \([L_z,\cos\phi]=i\hbar\sin\phi\) and \([L_z,\sin\phi]=-\hbar\cos\phi\) — gives
\[
\mathrm{Var}(L_z)\cdot(1-R^2)\ge\frac{\hbar^2}{4}\,R^2.
\]
When \(R=0\) (uniform distribution, as in an \(L_z\) eigenstate) the bound is trivial. As \(R\to1\) (sharply localized angle) the bound forces \(\mathrm{Var}(L_z)\to\infty\): angular localization requires spreading across many \(m\)-modes. This quantifies the Fourier tradeoff of Section 4 without invoking a self-adjoint angle operator.
```
