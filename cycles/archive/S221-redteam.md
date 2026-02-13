# S221 — Red Team

## Potential weaknesses
1. The claim "κ = α in scalarized form" needs care: the bound-state condition for the 2D delta potential is indeed κ = α (the transmutation scale defines the binding momentum). But the derivation is compressed — a referee might want to see the intermediate step (G₀(0,0;E) = m/(2πℏ²) ln(Λ/κ), setting 1 - gG₀ = 0 with g ~ 2πℏ²/(m ln(Λ/α)) gives ln(Λ/κ) = ln(Λ/α), hence κ = α).
2. The σ_* construction is conceptual rather than computational — it explains *what* scalarization means but doesn't show the scalarized kernel explicitly. This matches Section 5's stated goal ("organizing perspective, not a theorem").
