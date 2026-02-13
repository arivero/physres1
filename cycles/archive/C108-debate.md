# C108 Debate: Prefix scheme trade-offs

Date: 2026-02-12

## Question
Is the 2-letter prefix scheme (RG-, PA-, HD-) the right choice?

## Alternatives considered
1. **Longer prefixes** (e.g., `RGFund-`, `PlanckArea-`): more readable but makes label lines very long in the markdown source.
2. **Section-number offset** (e.g., companion labels start at Section 20): avoids prefix clutter but requires renumbering all section references.
3. **No fix** (defer indefinitely): saves effort but leaves ambiguity for any reader encountering both papers.

## Decision
2-letter prefixes are compact enough for markdown readability, unambiguous across the repo, and easily greppable. They follow the Q59 recommendation ("paper-specific prefix").

## What about other companion papers?
- `uncuttable-controlled-refinement`: no local labels (only a cross-reference to main paper's H0.2). No fix needed.
- `delta-objects`, `relativistic-central-orbits`, `action-angle-indeterminacy`, `fermionic-mediators-contact-limits`: no labels found. No fix needed.
- If future companions add labels, they should adopt a prefix from the start.
