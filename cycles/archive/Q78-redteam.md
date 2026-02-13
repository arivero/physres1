# Q78 Red Team: Referee pass on C122

Date: 2026-02-13

## Failure modes

### 1. "Gravity-only coupling restriction" is unstated in the hypothesis chain
- Risk: PA-H2.6b references "gravity-only coupling restriction" but this is part of PA-D1.3's derivation, not a separately labeled hypothesis.
- Mitigation: PA-D1.3's title is "Gravity-only sieve: why d=4 is singled out if only G_d is used." The restriction is explicit in the derivation title. A separate label would be redundant.
