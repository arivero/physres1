# Blackboards (Exploratory Notes)

This folder is for "scratchpad" research: computations, conjectures, counterexamples,
and idea sketches that are not yet stable enough to live in a manuscript draft.

## Hard Limit: 7 Blackboards Maximum

A good mathematician uses the trash bin. This folder enforces a **strict cap of 7 files**
(excluding this README). When creating a new blackboard and the cap is reached, you **must
delete** at least one existing board before writing. Deletion criteria (in priority order):

1. **Already promoted** — content has been absorbed into `paper/notes/`, `paper/main.md`,
   or a follow-up draft (`papers/*/main.md`). Delete without hesitation.
2. **Superseded** — a newer blackboard covers the same ground more clearly. Delete the older one.
3. **Stale** — older than ~3 days with no sign of promotion or active use. Delete.
4. **Lowest priority** — if all boards are fresh and active, delete the one least aligned
   with the current top thread in `docs/research-state.md`.

Agents must check `ls blackboards/*.md | grep -v README | wc -l` before creating a new file
and enforce the cap.

## Rules
1. These notes are **not citable sources**.
2. They may reference `conv_patched.md` as an idea generator, but nothing here should be cited as evidence.
3. When an argument stabilizes, promote it into:
   - `paper/notes/` (for longer derivations supporting `paper/main.md`), or
   - a draft (`paper/main.md` or `papers/*/main.md`) with proper external citations as needed.
4. Promotion is the exit path. A blackboard that has been fully promoted should be deleted
   in the same commit that promotes it (or at the next cleanup pass).

## Naming
Prefer dated files:
- `YYYY-MM-DD-topic.md`

