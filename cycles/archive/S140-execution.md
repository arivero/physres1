# S140 Execution: Huang-Yang pseudopotential

Date: 2026-02-13

## Work Done
- Wrote blackboard slot 1: Huang-Yang pseudopotential V=(4πℏ²a/m)δ³(r)(∂/∂r)(r·). Regularization built into operator: extracts regular part at origin, implements scattering-length BC without cutoff.
- Cold atom theorist reviewed: prefactor should be 4πℏ²a/m (not 2πℏ²a/m for identical particles as blackboard had). Mechanism CORRECT, Huang & Yang 1957 reference CORRECT.
- Fix: promoted remark uses corrected 4πℏ²a/m prefactor.
