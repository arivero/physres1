# DXxx Plan: <exploration / cross-thread probe>

Date: YYYY-MM-DD

## Goal
Divergent exploration: look for surprises, cross-thread connections, and framing stress-tests — without editing manuscripts or committing to a specific production target.

## Surprise inventory
- What unexpected result appeared in recent S/C/Q cycles?
- What computation failed or gave a result we didn't predict?
- (Check `docs/anomalies.md` for accumulated signals.)

## Cross-thread probe
- Pick two threads from `docs/research-state.md` that "should" be related.
- State the expected connection in one sentence.
- Can you write one equation or diagram that relates quantities from both threads?

## Framing stress-test
- Does the current North Star (RCP / refinement compatibility) still account for everything we've found?
- What is the hardest case for the current framing?
- State one way the framing could be *wrong* or *incomplete*.

## Candidate principle (if any)
- One-sentence statement of something that might be a new principle (not just a new computation).
- If none: state explicitly "no new candidate this round" (this is fine).

## Allowed files
- `docs/research-state.md` (principle evolution log, thread list)
- `docs/anomalies.md` (read + update)
- `docs/next-articles.md`
- `docs/research-log.md`
- `cycles/DXxx-*.md`
- `cycles/index.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Expected spawns
- `Sxx` (optional): a derivation probing the cross-thread connection or anomaly.
- `Dxx` (triage): if a new production target emerges, spawn a standard D-triage to scope it.

## Acceptance criteria
- All four sections above (surprise inventory, cross-thread probe, framing stress-test, candidate principle) are filled in — even if the answer is "nothing new."
- `docs/anomalies.md` is updated (new entries added or existing entries resolved/promoted).
- `docs/research-state.md` principle evolution log is reviewed; updated if warranted.

