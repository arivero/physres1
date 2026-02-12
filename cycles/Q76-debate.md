# Q76 Debate: Referee pass on C120

Date: 2026-02-13

## Hard question
Is "cancellation is exact only for this exponent" too strong a claim? Could a different normalization convention restore the semigroup property with a different exponent?

## Resolution
The claim is precise as stated. The Gaussian integral volume factor is always (2πiℏt₁t₂/(m(t₁+t₂)))^{d/2} — this is a property of the d-dimensional Gaussian, not a convention. With kernel prefactors of exponent α ≠ d/2, the product is:

(m/(at₁))^α · (m/(at₂))^α · (at₁t₂/(m(t₁+t₂)))^{d/2}

which equals (m/(a(t₁+t₂)))^α only if α = d/2 (verified by SymPy). No renormalization of the kernel can change this: the Gaussian integral's volume factor is determined by the d-dimensional integration, not by the kernel's prefactor convention.

One could absorb different exponents by modifying the *composition rule* (e.g., inserting a measure factor), but that would break the half-density pairing mechanism, which is the whole point of the formalism.
