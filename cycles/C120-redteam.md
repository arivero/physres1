# C120 Red Team: Promote S82 free-propagator computation into planck-area Section 4

Date: 2026-02-13

## Failure modes

### 1. Display equation formatting
- Risk: the centered display equation in PA-D1.4a uses `$$` syntax; different pandoc versions may handle this inconsistently.
- Mitigation: tested with pandoc 2.14.2. Compiles clean. The `$$` is already used elsewhere in the same file (PA-D1.4, PA-D1.5).

### 2. "Concrete witness" is only flat space
- Risk: a reviewer could dismiss the example as trivial since det(∂²S/∂x∂z) = (m/t)^d · I is diagonal and constant.
- Mitigation: the derivation explicitly notes this is the Van Vleck determinant "in disguise" and that the mechanism is generic. The flat-space example is a witness, not the full claim. Open Problem #1 asks for "a concrete groupoid or kernel model" — this satisfies that request.

### 3. Section 4 length growth
- Risk: Section 4 was already substantial; adding 18 lines may feel heavy.
- Mitigation: PA-D1.4a is self-contained and can be skipped without loss. It follows the same pattern as PA-D1.9 (square-root delta normalization) — a concrete worked example after an abstract statement.
