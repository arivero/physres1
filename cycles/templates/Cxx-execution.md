# Cxx Execution: <promotion wave title>

Date: YYYY-MM-DD

## Summary
- What changed in manuscripts (high level):
  - <bullet list>

## Work log
- <ordered bullets of edits and rationale>

## Diffstat
Paste output of:
```bash
scripts/paper-diffstat.sh --cached
```

## Guard checks (required before finalizing)
- No cycle IDs leaked into manuscripts:
  - `rg -n 'C[0-9]{2}' paper/main.md`
- Manuscript does not cite transcripts:
  - `rg -nF 'conv_patched' paper/main.md`

## Outputs
- Manuscripts edited:
  - <list>
- PDFs rebuilt (if applicable):
  - <list>

## In-scope completion checklist
(Copy items from Cxx-plan.md "In scope" section and mark each as ✓ or spawn Sxx)
□ <item 1>
  → Done: <evidence> OR Spawned: Sxx
□ <item 2>
  → Done: <evidence> OR Spawned: Sxx

## Spawned cycles
- `Qxx`: referee pass on this `Cxx`
- `Sxx` / `Bxx` / `Dxx`: <if needed>

