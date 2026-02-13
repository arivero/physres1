# C40 Red Team

## Failure Modes
1. Adding too much semiclassical/Van Vleck commentary and bloating Section 6.4.
2. Accidentally inserting cycle labels into `paper/main.md` (policy violation).

## Mitigations
- Add exactly one sentence, purely as a pointer.
- Run the `rg -n 'C[0-9]{2}' paper/main.md` check before committing.

