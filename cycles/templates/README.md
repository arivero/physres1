# Cycle Templates

These files are copy/rename templates for starting a new cycle.

Conventions:
- Replace `xx` with the next available two-digit number for that track.
- Keep cycle artifacts in `cycles/` (not in manuscripts).
- Only `Cnn` cycles may edit manuscripts (`paper/main.md`, `papers/*/main.md`).
- `Qnn` cycles must name a parent `Cnn`.
- Create cycle files by copying templates and renaming to the target ID.
- Before any new `C`, the agent should query recent state directly (`cycles/index.md`, `docs/research-log.md` tail) and apply the D/S gate policy from `cycles/README.md`.

## Template inventory

| Prefix | Type | Purpose |
|--------|------|---------|
| `Dxx-` | Discovery (triage) | Pick a novelty target, scope it, spawn production cycles |
| `DXxx-` | Discovery (explore) | Divergent: surprises, cross-thread probes, framing stress-tests |
| `Sxx-` | Study | Derivations, checks, toy computations |
| `Bxx-` | Bibliography | Search, ingest, verify references |
| `Cxx-` | Content | Manuscript promotion waves |
| `Qxx-` | Quality | Referee-style review of a specific `Cnn` |
