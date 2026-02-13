# S109 Red Team
Date: 2026-02-13
## Failure modes
1. **Factor-of-2 error in T-matrix**: writing m/(2πℏ²) instead of m/(πℏ²). Root cause: the 2D loop integral gives -(m/(2πℏ²))ln(Λ²/k²), and the ln(Λ²/k²) = 2ln(Λ/k) conversion was dropped. Caught by subagent.
2. **Sign error in dimensional transmutation exponent**: writing -πℏ²/(mg_R) instead of +πℏ²/(mg_R). Root cause: confused the sign convention for the cornerstone's D6.2 formula (which uses β = -cg²; negative sign in front of g²) with the 2D delta formula (which has β = +cg²; positive). Caught by subagent.
3. Lesson: sign and factor-of-2 errors in RG formulas are extremely common and hard to catch by inspection. Always verify against a full derivation or blackboard.
