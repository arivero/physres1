# S218 — Debate: HD-QFT expansion targets

## Q: Should Example HD-D4.3 go in Section 4 or Section 2?
**A:** Section 4 — it's a propagator example, not an identity-kernel example.
Section 2's HD-D1.1a already has the Gaussian normalization witness; adding
a propagator there would blur the section boundary.

## Q: Is the ε ~ |x-y|² identification too hand-wavy?
**A:** It's heuristic but standard in physics. The rigorous chain is:
heat kernel K(t;x,y) with t = diffusion time, evaluated at coincidence
gives K(t;x,x) ~ (4πt)^{-D/2}. The off-diagonal exponential factor
exp(-|x-y|²/(4t)) makes the identification ε = 2t = |x-y|²/(-2 ln(...))
exact in the saddle-point sense. The remark says "dimensional behavior,"
which is appropriately weak.

## Q: Should we note the D=2 logarithmic divergence?
**A:** Not in the paper — it's a tangent. The Γ(D/2-1) pole at D=2
just means the propagator is log|x-y| in 2D, which is standard. The
paper's audience knows this.

## Q: Is the proper-time cutoff direction correct?
**A:** UV momentum cutoff Λ corresponds to IR proper-time cutoff 1/Λ².
Heat kernel e^{-k²t} suppresses k > 1/√t, so small t = high momenta.
The divergent integral ∫_0^{Λ⁻²} t^{-D/2} dt captures the UV part.
