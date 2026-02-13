# Q67 Plan: Referee pass on C112 (Remark D6.2a-sg)

Date: 2026-02-12

## Parent cycle (required)
- `C112`: added Remark D6.2a-sg (semigroup law and beta function for general step-refinement) to Section 8.4.

## Goal
Referee-pass the C112 manuscript changes for correctness, clarity, claim hygiene, and reader experience.

## Allowed files
- `cycles/Q67-*.md` only

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- `blackboards/`, `paper/notes/`
- `paper/bibliography.md`, `sources/`

## Checklist
- Formula verification: τ_b(a) = a/b + (b-1)/(2b) against blackboard derivation.
- Special cases: b=1 (identity), b=2 (matches D6.2a).
- Semigroup law: algebraic verification of τ_b ∘ τ_c = τ_{bc}.
- Beta function: infinitesimal expansion yields β(a) = 1/2 - a.
- Claim boundaries: "not merely an analogy" — is this justified?
- Cross-reference to H6.2: accurate?
- Notation consistency with D6.2a.
- Placement: logical position between D6.2a and D6.2a1.

## Acceptance criteria
- A concrete list of edits to do next, expressed as spawned `S/B/C/D` cycles (not direct edits).
