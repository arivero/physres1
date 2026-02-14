# C311 Execution: Strengthen RCP Section 10 with Crown Witnesses

Date: 2026-02-14

## Summary
- What changed in manuscripts (high level):
  - Strengthened Section 10.3 (RCP) to cite P4.2 and H6.3 as crown witnesses
  - Added Remark D10.1c: consolidates witnesses for all three RCP channels
  - Updated partition track to include P4.2 as terminal node

## Work log
1. Delegated to Opus agent (a604924): review Section 10 integration with P4.2/H6.3
2. Opus found asymmetry: forward refs exist (P4.2b→P10.1, H6.3→P10.1) but no back-refs
3. Applied three recommended edits:
   - Edit A (line 1511): upgraded witness from D4.1a to P4.2 as "strongest constructive witness"
   - Edit B (after line 1521): added Remark D10.1c consolidating crown witnesses for partition/representation/scale channels
   - Edit C (line 1142): added P4.2 to partition track terminal node
4. Created bidirectional reference network: Section 10 now harvests the crown jewels

## In-scope completion checklist
✓ Strengthen witness sentence in D10.1a to cite P4.2
  → Done: Edit A replaces "simplest witness (D4.1a)" with "strongest constructive witness (P4.2)"
✓ Add consolidation remark for all three RCP channels
  → Done: Edit B adds D10.1c with partition/representation/scale witnesses
✓ Update partition track in Section 9 to include P4.2
  → Done: Edit C adds P4.2 as terminal node
✓ Complete bidirectional reference network
  → Done: forward refs (P4.2b, H6.3) + back refs (D10.1a, D10.1c) now complete

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

