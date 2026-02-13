# C285 — Red Team

## Attack 1: Sommerfeld connection is textbook-level, adds no value
The identification omega = sqrt(1 - Z^2 alpha^2/k^2) is standard in history-of-physics
courses. Why include it?
**Mitigation:** The remark does not claim novelty. It connects the paper's orbit equation
to a famous physical result, showing the equation is not merely a pedagogical exercise.
The "backbone" phrasing is deliberately modest.

## Attack 2: Scope creep into quantum territory
The paper is about classical SR orbits. Mentioning quantization and Dirac spectrum
risks confusing the scope.
**Mitigation:** The remark is framed as a historical note, not a quantum derivation.
The paper already crosses scope boundaries (SR paper discussing GR Schwarzschild orbits).
One quantum-historical remark is stylistically consistent.

## Attack 3: The Sommerfeld-Dirac puzzle deserves more discussion
Saying "reproduces the exact Dirac spectrum (with k → j + 1/2)" is too terse for
the subtlety involved.
**Mitigation:** For a 3-sentence remark, a parenthetical flagging the quantum-number
reinterpretation is sufficient. The Sommerfeld puzzle is not the paper's topic; the
remark only needs to establish the mathematical connection.

## Attack 4: Bertrand 1873 reference is French-language primary source
Most readers cannot read 19th-century French mathematical prose.
**Mitigation:** The theorem is well-known and needs no derivation from the original.
The citation is for attribution, not reading. This is standard practice for
classical results (like citing Newton's Principia).

## Attack 5: Outlook item 3 overlaps with Remark 3.2b
Both mention Sommerfeld and quantization.
**Mitigation:** The Remark gives the mathematical identification; the Outlook
item asks the forward question (which bounds survive quantization?). They serve
different rhetorical functions: observation vs. research agenda.

## No blockers. All changes technically sound.
