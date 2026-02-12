# Q65 Execution: Referee pass on C110

Date: 2026-02-12

## Checks performed

### 1. Claim accuracy
H1.2 says: "is precisely the symplectic Euler integrator applied to the separable Hamiltonian."
- Nauenberg 1994 (*Archive for History of Exact Sciences*): identifies impulse equations as "canonical/symplectic mapping — exact solutions of a Hamiltonian with impulsive forces." Supports the claim in historical language.
- Nauenberg 2018 (*Am. J. Phys.*): explicitly calls Newton's Prop 1 construction "a first-order symplectic integrator" with discrete energy conservation and time-reversal invariance. Direct support for the modern terminology.
- **Pass**: both citations accurately support the claim.

### 2. Citation format
The manuscript uses `[Key1] [Key2]` (space-separated bracket-keys) throughout: lines 14, 33, 622, 625, 730, 825, 981 all follow this pattern. C110's addition `[Nauenberg1994SymplecticNewton] [Nauenberg2018GraphicalMethod]` is consistent.
- **Pass**: format correct.

### 3. Bibliography entries
- `[Nauenberg1994SymplecticNewton]`: Michael Nauenberg, "Newton's early computational method for dynamics," *Archive for History of Exact Sciences* 46 (1994), 221–252. DOI `10.1007/BF01686278`. Correct.
- `[Nauenberg2018GraphicalMethod]`: Michael Nauenberg, "Newton's graphical method for central force orbits," *American Journal of Physics* 86(10) (2018), 765–771. DOI `10.1119/1.5046424`. arXiv:`1810.05264`. Correct.
- **Pass**: metadata accurate.

### 4. Side effects
Only line 224 changed (single-line edit adding one citation key). No surrounding text, labels, or cross-references affected.
- **Pass**: no side effects.

### 5. Guard checks
C110 verified: no cycle tags (`C[0-9]{2}`) or `conv_patched` in paper/main.md.
- **Pass**: clean.

## Verdict
**Clean pass.** No issues, no follow-up actions needed.
