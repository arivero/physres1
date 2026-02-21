# Philosophenweg: Stone-von Neumann failure at Stage 3+ (deep reflection)
## 2026-02-21, solo walk, ~20 min

### Core insight: Forcing requires uniqueness, and uniqueness degrades with categorical level

**Stage 2 (QM):** Stone-von Neumann. ONE irrep of CCR per value of hbar.
Composition forces a UNIQUE kernel form. P4.2 is clean because representation is unique.

**Stage 3 (rational CFT):** No SvN. But Verlinde formula gives FINITELY MANY simple
objects in the modular tensor category. Forcing still works but yields finite set, not unique answer.
Level k is forced to be integer by fusion non-negativity.

**Stage 3.5 (WZW):** Highest-weight classification of affine Lie algebras at level k.
COUNTABLY MANY finite collections of representations.

**Stage 4 (TQFT):** Reshetikhin-Turaev. q = root of unity forced by cobordism+unitarity.
MTC classification is finite for each root. Classification exists but requires maximal hypotheses.

**Pattern:** Each stage has a classification theorem, but classifies increasingly structured objects
(number -> finite set -> parameterized family -> categorical structure).
Each classification requires additional hypotheses beyond (C).

### Why the chain may terminate at Stage 4

Two independent arguments:
1. **Mathematical (this walk):** No clean classification theorem beyond MTC's.
   Douglas-Reutter (fusion 2-categories) is far less complete.
   Forcing requires classification; classification requires finiteness conditions.
   The mathematical machinery runs out of steam.

2. **Physical (critic's observation):** Composition presupposes background time.
   Gravity dynamicizes time. The physical framework for "compose over time" breaks.

Both arguments are valid and independent. The mathematical argument is more fundamental
(it does not require physics of gravity; it is about the structure of classification theorems).

### Implications for P9.3

1. Forcing chain is mathematically honest as stated.
2. Domain narrowing is a feature, not a defect — reflects SvN failure.
3. Critic's cherry-picking concern (sev-2) has clean answer: not arbitrary selection
   but natural restriction to the class admitting uniqueness theorems.
4. Paper should acknowledge domain narrowing explicitly.

### Draft remark text (for possible P9.3 annotation)

"The forcing power of composition degrades with categorical level because the uniqueness
theorems that underpin it (Stone-von Neumann at Stage 2, Verlinde at Stage 3,
Reshetikhin-Turaev at Stage 4) classify progressively more structured — and
restrictively defined — objects. This is not a limitation of the RCP framework
but an intrinsic feature of the mathematical landscape: forcing requires classification,
and classification requires finiteness conditions that narrow the domain."

### Open question

Is there a mathematical theorem that unifies the degradation?
Conjecture: the relevant invariant is the dimension of the space of states.
- dim = finite (QM): unique representation.
- dim = countable (rational CFT): finite classification.
- dim = uncountable (general QFT): no classification.
This connects to the folklore that "there is no Hilbert space for QFT" — which is
exactly the Stone-von Neumann failure in different language.
