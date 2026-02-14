# Research Log

Chronological lab notebook for this repo.
This file is **not** a citable source; it can mention `conv_patched.md` only as an idea generator.

> **Context-saving rule:** This file keeps only the ~10 most recent entries.
> Older entries are in `docs/research-log-archive.md` (~3400 lines, ~420 entries).
> **Never read the archive** unless you need a specific historical entry.
> When this file exceeds ~100 lines, move older entries to the archive.

## Template (Copy for New Entries)

### YYYY-MM-DD
- Focus:
- Question:
- Work:
- Result:
- Sources touched (keys + status changes):
- Next:

## 2026-02-14 (S277 Iteration 4: generalized `Delta nu_b` gate)
- Extended kinetic mixed-regime drift from decade-only (`b=10`) to arbitrary scale factor `b`.
- Added closed-form peak-drift location `x_peak^2=b^{-2/3}+b^{-4/3}` and asymptotic safe-window estimates.
- Numeric validation shows strong high-`x` estimate accuracy and conservative low-`x` estimate behavior.
- Updated `blackboards/3.md` and promoted stabilized result to notebook memory.

## 2026-02-14 (D-task harvest: main paper + satellites)
- Read `paper/main.md` chapter-by-chapter and skimmed `paper/notes/*.md` and `papers/*/main.md` to extract physics-facing discovery targets (no manuscript edits).
- Opened new queued discovery cycles with concrete prompts + planned S-spawns:
  - `D23` (ordering vs unitarity in \(H=qp\)),
  - `D24` (delta-object dictionary; \(\delta(\delta S)\) audit),
  - `D25` (random impulses; Itô vs Stratonovich vs time slicing),
  - `D26` (heat kernel / half-density QFT witness),
  - `D27` (odd-\(d\) scalarization scale supplier vs transmutation),
  - `D28` (Newton polygonal convergence statement + failure mode).
- Updated `cycles/index.md` to list `D23`–`D28` as queued.
- Next: update cycle templates to reflect the numbered-blackboard + append-only-notebook conventions (templates currently mention dated blackboard filenames and `paper/notes/` for S-cycles).

## 2026-02-14 (Template refresh: blackboards/notebooks conventions)
- Updated cycle templates to make it explicit that math/derivations live in `blackboards/<0-6>.md` (optionally promoted to `notebooks/`), and that `D`/`S` are physics-only (no editorial drafting).
- Patched `cycles/templates/Dxx-{plan,execution}.md` to require S-witnesses with a named blackboard slot.
- Updated `cycles/templates/README.md` numbering note to allow 2+ digits (match `cycles/index.md` prefix style).
- Ignored macOS `.DS_Store` files via `.gitignore`.
