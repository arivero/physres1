# Cycles (Iteration System)

Cycles are planning/logging artifacts meant to survive restarts and keep work modular.
They are **not** citable sources.

## Guardrail (Manuscript Policy)
Cycle IDs (e.g. `C13`, `B02`, `S00`) are planning metadata only.
Do **not** place them in rendered manuscript content (`paper/main.md`, generated `.tex`, or PDF-visible text).

## Cycle Types
We use three independent numbered tracks:

1. **Content cycles** (`Cnn`): writing/derivation cycles that change manuscript text.
   - Typical outputs: `paper/main.md`, `papers/*/main.md`, and their rebuilt PDFs.

2. **Bibliography cycles** (`Bnn`): search/ingest/verify cycles for references.
   - Typical outputs: `paper/bibliography.md`, `sources/` captures, and `sources/pending-<Key>.md`.
   - Rule: never cite `conv_patched.md` (or any transcript) as a bibliography source.

3. **Study cycles** (`Snn`): exploratory “blackboard” work (scratch derivations, checks, toy computations).
   - Typical outputs: `blackboards/*.md` and/or `paper/notes/*.md`.
   - Promotion rule: only promote results into manuscripts once they are stable and (when needed) independently anchored.

These tracks are designed to be *interleaved*: between two `C` cycles it is normal to run a `B` cycle (to anchor a claim) or an `S` cycle (to explore a direction without committing prose).

## File Convention (per cycle)
Each cycle uses four files:
- `cycles/<ID>-plan.md`: goal, scope, acceptance tests.
- `cycles/<ID>-execution.md`: what changed, what was learned, status.
- `cycles/<ID>-debate.md`: one hard question + the current resolution.
- `cycles/<ID>-redteam.md`: failure modes + mitigations.

## Build Hygiene
After a successful TeX build, delete auxiliary files explicitly (never recursively), e.g.:
```bash
rm -f paper/main.aux paper/main.log paper/main.toc
rm -f papers/<paper>/main.aux papers/<paper>/main.log
```

