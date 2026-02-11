# S66 Red Team: Study failure modes

Date: 2026-02-11

## Failure modes
- Algebra/sign mistakes in the coefficient \(\tfrac14\):
  - Mitigation: keep a scalar SymPy check (done) and, if needed, check a second toy vector field.
- Hidden assumptions (autonomous ODE, smoothness):
  - Mitigation: state “smooth autonomous ODE” explicitly and keep the witness local/formal.
- Promotion becomes a B-series tutorial:
  - Mitigation: promote only the order-2 witness and defer full formalism to citations already present in the note.

