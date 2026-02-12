# DX02 Plan: Cross-thread probe — half-density bridge, conformal filter, and RCP scope

Date: 2026-02-12

## Goal
Divergent exploration: look for surprises, cross-thread connections, and framing stress-tests — without editing manuscripts or committing to a specific production target.

## Surprise inventory
- S72/C109 added Remark HD-D1.3a (half-density conjugation != Yamabe, != xi*R, D=4 conformal-class-specific). Was the "not xi*R" result genuinely surprising?
- The 2D delta half-density bridge (RG-H1.12 in rg-fundamental) is the only explicit bridge between threads 2/2b (half-density) and 3 (RG). It is NOT in the main paper. Is this a gap?
- Check `docs/anomalies.md` for accumulated signals.

## Cross-thread probe
- **Threads compared**: Thread 2/2b (half-density / Planck area) + Thread 3 (RG as fundamental)
- **Expected connection**: the RG transmutation scale (kappa_*) from the 2D delta interaction should be expressible as a half-density scalarization scale, making the bridge RG-H1.12 load-bearing.
- **Second probe**: Thread 2 (scalarization gauge freedom, PA-D1.7) + Thread 6 (ordering/discretization as equivalence class). Expected connection: both are "choice of representative with controlled freedom" — are they the same gauge freedom?

## Framing stress-test
- Does RCP (partition/representation/scale) account for the conformal D=4 cancellation?
- If not, is there a "simplicity filter" that complements RCP's "compatibility filter"?

## Candidate principle (if any)
- To be filled after exploration.

## Allowed files
- `docs/research-state.md` (principle evolution log, thread list)
- `docs/anomalies.md` (read + update)
- `docs/next-articles.md`
- `docs/research-log.md`
- `cycles/DX02-*.md`
- `cycles/index.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Expected spawns
- `S73` (optional): derive whether scalarization gauge freedom = ordering equivalence class in a toy model.
- `C110` (optional): if the half-density/RG bridge should be mentioned in the main paper, scope it.

## Acceptance criteria
- All four sections (surprise inventory, cross-thread probe, framing stress-test, candidate principle) filled in.
- `docs/anomalies.md` updated (new entries or "no new anomalies").
- `docs/research-state.md` principle evolution log reviewed; updated if warranted.
