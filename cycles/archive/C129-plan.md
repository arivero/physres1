# C129 Plan: Fix encoding and paths in delta-objects

Date: 2026-02-13

## Parent cycle (required)
- `Q83`: referee pass found Unicode escapes, internal paths, empty metadata.

## Goal
Fix all Q83 encoding/path/metadata issues:
1. Replace 7 lines of Unicode escapes with actual characters.
2. Replace 3 internal file paths with generic references.
3. Fill YAML metadata.

## Allowed files
- `papers/delta-objects/main.md`
- `papers/delta-objects/main.tex` (rebuild)
- `papers/delta-objects/main.pdf` (rebuild)
