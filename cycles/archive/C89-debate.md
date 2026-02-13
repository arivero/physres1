# C89 Debate: How much “angle operator” formalism belongs in this note?

Date: 2026-02-11

## Question
Should the dependent note discuss the self-adjoint angle-operator debate (domain issues, POVMs, etc.), or should it restrict itself to a unitary-variable/Fourier witness that avoids those subtleties?

## Options
1. Add an angle-operator mini-survey (more formal, but risks scope creep and citation burden).
2. Keep it referee-safe and bounded: use \(L_z=-i\hbar\partial_\phi\), the unitary \(E=e^{i\phi}\), and the Fourier-on-the-circle witness only.

## Decision
Option 2.

## Rationale
The goal is a foundations-facing clarification that is (i) explicit, (ii) standard, and (iii) not hostage to operator-domain controversies. The unitary-variable/Fourier witness already captures the operational content (“sharp \(L_z\)” gives uniform \(\phi\) distribution) and aligns with the project’s semiclassical/packet message.

## Consequences / Follow-ups
- If a referee later demands more formal anchoring, spawn a separate `B` + `S` pass focused specifically on angle/phase observables on \(S^1\), then promote in a future `C`.

