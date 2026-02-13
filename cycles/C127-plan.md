# C127 Plan: Fix Unicode escape in half-density-qft

Date: 2026-02-13

## Parent cycle (required)
- `Q81`: referee pass found Unicode escape on line 182.

## Goal
Replace `\u03b4` (Python/JSON Unicode escape) with actual `δ` character on line 182 of `papers/half-density-qft/main.md`.

## Allowed files
- `papers/half-density-qft/main.md`
- `papers/half-density-qft/main.tex` (rebuild)
- `papers/half-density-qft/main.pdf` (rebuild)

## Scope
One-character fix. No structural changes.
