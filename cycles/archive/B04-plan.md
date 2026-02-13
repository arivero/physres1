# B04 Plan: Add a Standard OA Wilsonian/ERG Anchor for the \(\tau\)/Coarse-Graining Paragraph

## Goal
If we keep the \(\tau_b\) closure equation in the cornerstone manuscript, anchor the “coarse-graining semigroup / parameter flow” viewpoint with a standard, non-preprint (but OA via arXiv) reference.

## Scope
1. `paper/bibliography.md`
   - Add one key for an authoritative RG/ERG review with arXiv anchor and DOI.
2. `sources/` (untracked)
   - Ingest the arXiv PDF to Markdown via `skills/source-to-markdown`.
3. `paper/main.md`
   - Add a lightweight citation in Section 8.2 near the semigroup/\(\tau\) discussion.
4. Logs
   - Update `docs/research-log.md` and `cycles/index.md`.

## Acceptance Tests
1. The new bibliography key is OA (arXiv) and has DOI/journal-ref where available.
2. `paper/main.md` gains at least one citation for the general Wilsonian/ERG viewpoint (not only delta-QM anchors).
3. Guardrail scan: `rg -n 'C[0-9]{2}' paper/main.md` remains empty.

