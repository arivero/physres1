# Q77 Red Team: Referee pass on C121

Date: 2026-02-13

## Failure modes

### 1. Dimensional error slipped through S83 → C121 without SymPy check
- Risk: S83 blackboard note contained the error, and C121 promoted it directly.
- Mitigation: Q77 caught it before any external publication. Lesson: for dimensional claims in S cycles, always run SymPy verification before promoting to C.

### 2. The corrected PA-E5c is less quantitative
- Risk: the original PA-E5c had specific [G₀] = length^{-d} claims (wrong but specific); the corrected version avoids them, making it more qualitative.
- Mitigation: the qualitative version is more robust and still makes the key point (structural separation + κ_* provides length^{d/2}). The precise dimensional analysis of G₀ is available in the blackboard's errata section for anyone who wants it.
