# S236 — Execution

Derived the dim-reg translation:
1. Proper-time integral for a_n: ∫₀^∞ t^{n-D/2} e^{-m²t} dt = Γ(n+1-D/2) / m^{2(n+1-D/2)}
2. Γ(n+1-D/2) has a simple pole when D = 2(n+1), i.e., D-2n = 2.
3. For general D near 2(n+1): Γ(n+1-D/2) ~ 2/(D-2(n+1)) × (residue).
4. Mapping: cutoff Λ^{D-2n} ↔ dim-reg pole 1/(D/2-n-1) at D=2(n+1).
5. Mass (n=0): both give divergence at D=2. Wave function (n=1): D=4.

Target: Remark HD-D5.3b, +3 lines after HD-D5.3a.
