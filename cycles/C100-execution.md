# C100 Execution: unify elementary-differential notation in step-halving witnesses

Date: 2026-02-11

## Summary
- What changed in manuscripts (high level):
  - unified Jacobian-action notation to \(f'(y)[v]\) in the step-halving / step-doubling witnesses,
  - added an explicitly-scoped \(O(h^3)\) next-term discrepancy remark and identified the order-3 branch rooted tree term.

## Work log
- Updated `paper/main.md` Section 8.4 (`Derivation D6.2a`) to use action notation \(f'(y)[f(y)]\) in the ansatz family and step-halving comparison.
- Updated `papers/rg-fundamental/main.md` Section 4.1 witness to:
  - remove the remaining \(f'(y)f(y)\) display shorthand,
  - add the next discrepancy term \(\tfrac{h^3}{16}f''(y)[f(y),f(y)]\) as a one-line rooted-tree follow-up.
- Rebuilt the affected PDFs from the regenerated TeX.

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
  - `paper/main.md`
  - `papers/rg-fundamental/main.md`
- PDFs rebuilt (if applicable):
  - `paper/main.pdf`
  - `papers/rg-fundamental/main.pdf`

## Spawned cycles
- `Q57`: referee pass on this `C100`

