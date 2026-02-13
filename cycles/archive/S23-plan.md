# S23 Plan: Momentum Point-Interactions Along the Path (Distinct from Point Potentials)

## Goal
Clarify (and keep separate) two “delta interaction” notions:
1. **Point potentials**: spatial contact terms like \(g\,\delta^{(d)}(x)\) in the Hamiltonian.
2. **Point interactions along the path**: distributional-in-time terms in the action/Euler–Lagrange equation that create **momentum jumps** (impulses) or corner matching conditions.

The user’s steering is that (2) is more central to “extremals + quantization” than (1).

## Scope
- Produce one blackboard note with:
  - a clean derivation: adding \(\int U(q(t))\delta(t-t_0)\,dt\) yields a momentum jump,
  - a short “dictionary” between:
    - delta forcing in the Euler–Lagrange equation,
    - boundary/corner conditions,
    - operator insertion / kick factors in a time-sliced amplitude,
  - one cautionary example involving \(\delta'\) showing how derivative-of-delta terms can create coordinate jumps or boundary terms (needs careful regularization).
- No manuscript edits in this cycle (promotion happens only if something genuinely new emerges).

## Acceptance Tests
1. The note contains a boxed jump-condition formula derived from weak Euler–Lagrange.
2. The note explicitly states why this is different from spatial point potentials.
3. Any use of \(\delta'\) is clearly labeled as distributional (pairing-defined) and not conflated with \(\delta(f')\).

## Planned Outputs
- `blackboards/2026-02-10-momentum-point-interactions-along-path.md`
- Cycle logs: `cycles/S23-{plan,debate,execution,redteam}.md`

