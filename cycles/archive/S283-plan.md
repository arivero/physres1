# S283 Plan: Worked Heat-Kernel Witness in Half-Density Language

Date: 2026-02-14
Parent: D26

## Goal
Produce a self-contained derivation that unifies the three threads identified in D26:
1. The half-density heat kernel \(\widetilde{K}(t;x,y)\) as a bi-half-density,
2. its \(t\to 0^+\) limit as the canonical identity kernel with \((4\pi t)^{-D/2}\) normalization,
3. the leading curvature correction \(a_1(x,x) = (\tfrac{1}{6}-\xi)R\) from the conjugation potential \(V(p) = \tfrac{1}{6}R\).

## Deliverable (keep bounded)
- Target: One coherent derivation (~1-2 pages) connecting identity kernel, heat kernel, conjugation potential, and D/2 pole structure.
- Output file(s):
  - `blackboards/5.md` (overwrite: previous topic "anomalies as composition defects" was assessed as thin/non-promotable in S210)
  - `notebooks/` (optional: append stabilized result if promotable)

## Where The Math Goes
- Detailed derivation in blackboard slot 5.
- Cycle files contain prompt, summary, and result pointers only.

## Allowed files
- `blackboards/`
- `notebooks/`
- `docs/research-log.md`
- `cycles/S283-*.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- `paper/notes/`, `papers/*/notes/`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Acceptance criteria
- A self-contained statement matching D26's acceptance criterion: "In the half-density convention, the canonical diagonal delta kernel and the small-\(t\) heat-kernel asymptotics are controlled by the same \(D/2\) exponent; the leading curvature potential is \(V=\tfrac{1}{6}R\), matching conformal coupling only at \(D=4\)."
- Plus: a precise "what is canonical vs what is scalarization" paragraph.
- Clear separation of universal results from conformal-class-specific ones.
