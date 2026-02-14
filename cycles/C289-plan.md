# C289 Plan: Cross-package promotion wave for main paper

Date: 2026-02-14

## Goal
Promote substantial technical content across the Section 9 package queue so the manuscript moves beyond roadmap labels into concrete derivations.

## Target manuscripts
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Replace `WP-*` labels with plain "Package" labels to avoid notation confusion.
- Add a compact compatibility map block in Section 9 (Package E starter).
- Add one explicit truncation-window derivation in Section 8.6 (Package D starter).
- Add one fixed-scheme one-loop QFT witness in Appendix 10.1 (Package C starter).
- Add one explicit regulated-kernel composition derivation in a new appendix subsection (Package A starter).

Out of scope:
- New references ingestion or bibliography-ledger edits.
- Companion-paper expansions.
- Full constructive path-space measure theory.

## Acceptance criteria
- `paper/main.md` gets a substantial derivation-heavy expansion.
- At least three package starters are promoted as numbered statements/derivations.
- Diffstat recorded in `cycles/C289-execution.md`.
- Guard checks pass for `paper/main.md`.
