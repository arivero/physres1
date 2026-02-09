# Cycles (Iteration System)

Cycles are planning/logging artifacts meant to survive restarts and keep work modular.
They are **not** citable sources.

## Guardrail (Manuscript Policy)
Cycle IDs (e.g. `C13`, `B02`, `S00`) are planning metadata only.
Do **not** place them in rendered manuscript content (`paper/main.md`, generated `.tex`, or PDF-visible text).

## Cycle Types
We use four independent numbered tracks:

1. **Content cycles** (`Cnn`): writing/derivation cycles that change manuscript text.
   - Typical outputs: `paper/main.md`, `papers/*/main.md`, and their rebuilt PDFs.

2. **Bibliography cycles** (`Bnn`): search/ingest/verify cycles for references.
   - Typical outputs: `paper/bibliography.md`, `sources/` captures, and `sources/pending-<Key>.md`.
   - Rule: never cite `conv_patched.md` (or any transcript) as a bibliography source.

3. **Study cycles** (`Snn`): exploratory “blackboard” work (scratch derivations, checks, toy computations).
   - Typical outputs: `blackboards/*.md` and/or `paper/notes/*.md`.
   - Promotion rule: only promote results into manuscripts once they are stable and (when needed) independently anchored.

4. **Quality cycles** (`Qnn`): “PhysRev quality” passes (clarity, correctness, claim hygiene, and reader experience).
   - Typical outputs: the `cycles/Qnn-*.md` review itself plus any spawned `C`/`S`/`B` cycles.

These tracks are designed to be *interleaved*: between two `C` cycles it is normal to run a `B` cycle (anchor a claim), an `S` cycle (explore without committing prose), or a `Q` cycle (sanity-check quality before promoting).

## Cross-Cycle Spawning (How Work Begets Work)
Any cycle may suggest tasks for any other track. The rule of thumb is:
- If the task is “write or restructure prose”: spawn a `C` cycle.
- If the task is “derive/check something uncertain”: spawn an `S` cycle (blackboard first).
- If the task is “find/ingest/verify a reference”: spawn a `B` cycle.
- If the task is “referee-style evaluation / polish for submission”: spawn a `Q` cycle.

Common patterns:
- `C → B`: a derivation becomes load-bearing and needs an independent anchor.
- `C → S`: a derivation is plausible but not yet tight; do blackboard work before locking prose.
- `S → C`: a blackboard result stabilizes and is ready to promote.
- `S → B`: a blackboard thread points to a known standard reference; fetch/ingest it.
- `B → S`: a newly ingested source suggests a computation we should reproduce ourselves.
- `Q → (C,S,B)`: the quality pass identifies missing derivations, unclear prose, or weak anchoring.

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
