# Q77 Execution: Referee pass on C121 (Remark PA-E5c)

Date: 2026-02-13

## Parent cycle reviewed
- `C121` (original version) and correction

## Findings

### Dimensional error found and corrected
The original PA-E5c claimed [G₀] = length^{-d}. SymPy + manual verification showed this is wrong for the resolvent (energy-domain Green function): the correct dimension in ℏ = c = 1 is [G₀] = length^{-(d-1)}, not length^{-d}. The time-domain propagator has [K] = length^{-d}, but the resolvent picks up an extra factor of length from the Fourier transform in time.

**Actions taken:**
1. Rewrote PA-E5c to avoid specific [G₀] claims, focusing on the structural half-density pairing mechanism (which is correct regardless of unit conventions).
2. Added Errata section (Section 7) to the blackboard note documenting the error.

### Corrected PA-E5c review
Line-by-line:
1. "the half-density mechanism is the same as in PA-D1.4a" — correct. The |dy|^{1/2} × |dy|^{1/2} = |dy| pairing is structural.
2. "T-matrix is a scalar at the contact vertex containing κ_*" — correct [ManuelTarrach1994PertRenQM].
3. "half-density structure (geometric) and transmutation scale (dynamical) enter through independent factors" — correct. Lippmann–Schwinger factorization.
4. "κ_*^{-1} has dimension length^{d/2} for d=2" — correct: [κ_*^{-1}] = length, and d/2 = 1 for d = 2.
5. "For d=4: Λ_*^{-d/2} = Λ_*^{-2} = area" — correct dimensional prediction (not verified in a specific d=4 model).

### Structural checks
- No cycle tags: PASS
- No internal references: PASS
- PA-label namespace: PA-E5c follows PA-E5b, no collision.
- Build: 23 pages, clean.

## Verdict
**Pass with correction.** The original C121 had a dimensional error that was caught and fixed during this Q cycle. The corrected PA-E5c is clean.

## Required follow-ups
- None (error already corrected).
