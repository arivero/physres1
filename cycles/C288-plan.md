# C288 Plan: Main-paper unfreezing wave (task-driven Section 9 rewrite)

Date: 2026-02-14

## Goal
Edit `paper/main.md` with a substantive, task-oriented promotion that turns the current stable-but-generic closing section into an executable technical queue.

## Target manuscripts
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Rewrite `Section 9.4` to pair each residual vulnerability with a minimal closure target.
- Rewrite `Section 9.5` from generic future-work bullets into concrete work packages with explicit deliverables and pass criteria.
- Keep thesis and existing derivations unchanged; improve actionability and editorial momentum.

Out of scope:
- New bibliography ingestion.
- New appendices or companion-paper edits.
- Any claim that requires new external sources.

## Acceptance criteria
- `paper/main.md` changes by paragraph-level additions/rewrites (not micro-edits).
- New Section 9 closing blocks are concrete enough to spawn subsequent C/S/B tasks without reinterpretation.
- Diffstat recorded in `cycles/C288-execution.md`.
- Guard checks pass: no cycle IDs in manuscript, no transcript mentions.
