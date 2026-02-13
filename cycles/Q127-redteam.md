# Q127 Red Team: What a referee would attack in Remarks 1.3 and 3.9

Date: 2026-02-13

## Likely referee objections

### Remark 1.3

- **Objection**: "Dedekind completion does extend beyond totally ordered sets -- the Dedekind-MacNeille completion works for any partially ordered set."
  - Mitigation: The remark's claim is narrower than the objection suggests: it says the cuts-of-Q construction (which is what produces the reals) relies on total order. The Dedekind-MacNeille completion for posets exists but produces a different kind of object (a complete lattice, not a field). If a referee insists, a parenthetical "(the Dedekind-MacNeille completion extends to posets, but loses the field structure)" would resolve it. Low priority.

- **Objection**: "The 'complementarity' claim -- different refinement paths converging to the same target -- is a general feature of category theory (universal properties / terminal objects). Why present it as novel?"
  - Mitigation: The paper does not claim novelty for this observation. The remark's function is expository: it shows that the paper's "uncuttable" framework subsumes a known mathematical phenomenon. No change needed, but if a referee presses, adding a one-sentence acknowledgment of universal properties would suffice.

### Remark 3.9

- **Objection**: "You cite 'Nelson's reconstruction (1973)' but the correct attribution for reconstruction from OS axioms is Osterwalder-Schrader (1973, 1975), not Nelson. Nelson's 1973 result is about Markov fields, a different (stronger) hypothesis."
  - Mitigation: This is the most concrete issue found. Replace "via Nelson's reconstruction (1973)" with "via the Osterwalder-Schrader reconstruction theorem (1973, 1975)" or cite both. Spawn an optional C cycle.

- **Objection**: "Cameron (1960) is cited in-text but not given a numbered reference, unlike Kac (1949) and Simon (1979). Inconsistent referencing."
  - Mitigation: The paper's convention appears to be that only references used as primary anchors get numbered entries. Cameron is a secondary supporting citation. If a referee objects, adding it to the reference list is trivial. Spawn an optional B cycle.

- **Objection**: "Saying 'the Minkowski path integral cannot be a measure' is too strong -- it cannot be a *sigma-additive* measure, but finitely additive measures or distribution-valued approaches exist."
  - Mitigation: The remark is already precise: it says Cameron proved "no countably additive measure" makes the integral work, and concludes "it cannot be a measure" -- where "measure" implicitly means sigma-additive, the standard mathematical usage. The statement is correct as written. If challenged, inserting "sigma-additive" before "measure" in the concluding sentence would make it bulletproof. Very low priority.
