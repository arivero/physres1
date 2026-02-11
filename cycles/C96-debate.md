# C96 Debate: Remove internal pointers vs keep traceability

Date: 2026-02-11

## Question
Should this dependent note retain explicit pointers to internal project artifacts (paths into `blackboards/` and other drafts), or should it be written as a standalone manuscript?

## Options
1. Keep explicit file paths for traceability within the repo.
2. Remove file paths; keep only publication-safe wording and self-contained remarks.

## Decision
Option 2.

## Rationale
File paths are repo-specific metadata and distract in rendered output. The note’s remarks are either self-contained or can reference “companion notes” without encoding repository structure into the manuscript text.

