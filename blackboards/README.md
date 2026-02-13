# Blackboards (Exploratory Notes)

This folder is for "scratchpad" research: computations, conjectures, counterexamples,
and idea sketches that are not yet stable enough to live in a manuscript draft.

## Hard Limit: 7 Blackboards (0–6)

Blackboards are numbered **0.md through 6.md** — no content hints in filenames.
Max **300 lines** per blackboard. Blackboards can be edited (unlike notebooks).
When all 7 slots are occupied and a new topic is needed, **overwrite** the least
relevant slot. Deletion criteria (in priority order):

1. **Already promoted** — content has been absorbed into a manuscript. Overwrite freely.
2. **Superseded** — a newer board covers the same ground. Overwrite the older one.
3. **Stale** — no sign of active use. Overwrite.
4. **Lowest priority** — least aligned with the current top thread.

## Rules
1. The blackboards are **not citable sources**.
2. They may reference idea logs, but nothing here should be cited as evidence.
3. When an argument stabilizes, it exits the blackboard via one of two paths:
   - **To a manuscript** (via a `Cnn` cycle): content is promoted directly into
     `paper/main.md` or `papers/*/main.md`. Use this when the material is
     ready for publication prose.
   - **To a notebook** (`notebooks/`): the primary exit for stable material
     that is **not yet aimed at a specific paper section**. Append the
     blackboard content to the appropriate notebook. This is the default
     exit when no `C` cycle is imminent — notebooks are memory, blackboards
     are scratch.
   - **To paper notes** (`paper/notes/`, `papers/*/notes/`): use sparingly,
     only when the material directly supports a specific manuscript section
     as a detailed derivation or expansion. Paper notes feed `P` cycles.
4. Promotion is the exit path. Once fully promoted (to paper, notebook, or
   notes), a slot is free for reuse.

## Slot Index (update when overwriting)
| Slot | Topic | Status |
|------|-------|--------|
| 0 | Minimal RCP axiom set analysis (open Q#2) | Active (S211) |
| 1 | Self-adjoint extensions / point interactions (delta §4) | Active |
| 2 | Caustics / Maslov index / metaplectic resolution | Active (S213) |
| 3 | Why D=10,11,26 don't bark (special dimensions) | Active (S214) |
| 4 | RCP + contact universality constraints | Active (S207) |
| 5 | Anomalies as half-density composition defects (open Q#5) | Active (S210) |
| 6 | Non-perturbative contact expansion (Padé) | Active (S208) |
