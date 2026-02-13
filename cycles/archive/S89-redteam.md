# S89 Red Team
Date: 2026-02-13
## Failure modes
### 1. Power-law assumption
- Risk: D4.1a assumes A(t) is a power law. Are there non-power-law solutions?
- Mitigation: The functional equation A(t+s) = A(t)A(s)(ts/(t+s))^{d/2} combined with measurability constraints forces the power-law form. The paper's "up to an overall constant phase" qualifier handles the multiplicative constant. For the composition law to hold continuously, the exponent must be -d/2.
### 2. Phase factor in real-time convention
- The "phase" factor in the convolution is handled by analytic continuation from the heat kernel or by the i0 prescription. The paper flags this explicitly ("interpreting the Gaussian integral in Euclidean time and then analytically continuing"). This is standard.
