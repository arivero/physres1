# S83 Red Team: 2D delta resolvent — Van Vleck vs transmutation separation

Date: 2026-02-13

## Failure modes

### 1. T-matrix conventions vary in the literature
- Risk: the specific form T(E) = (2πℏ²/m)/(ln(κ/κ_*) + iπ/2) depends on conventions. Different references absorb factors differently.
- Mitigation: the key structural claim (T is scalar, G₀ is bi-half-density, they multiply) is convention-independent. The dimensional analysis [T] = length^d is robust. The specific formula references [ManuelTarrach1994PertRenQM].

### 2. Only d = 2 was computed
- Risk: the "for d=4, the same should hold" claim in Section 6 is unverified.
- Mitigation: the dimensional structure [G₀] = length^{-d}, [T] = length^d generalizes to any d. The Lippmann–Schwinger factorization is d-independent. The d=4 case would require a d=4 model with transmutation (e.g., Yang–Mills), which is beyond this S cycle's scope.

### 3. "Clean separation" may overstate
- Risk: for extended potentials, the Born series G = G₀ + G₀VG₀ + G₀VG₀VG₀ + ... doesn't factorize as neatly.
- Mitigation: acknowledged in the debate note. The delta potential is the clearest witness because it's exactly solvable with a scalar T-matrix. Extended potentials would require operator-valued T, complicating the half-density analysis.
