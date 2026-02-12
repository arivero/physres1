# C113 Red Team: Failure modes for Section 9 signaling edits

Date: 2026-02-12

## Failure modes

- **Over-referencing: parenthetical citations clutter the claim graph**
  - Mitigation: each addition is a single parenthetical or sentence, not a paragraph. The claim graph remains a concise summary list. The additions provide concrete witnesses without expanding the structure.

- **Section 9.3 sentence is too strong: implies half-density "solves" ordering**
  - Mitigation: the sentence says "complementary geometric resolution" and "selects a canonical ordering for kinetic operators" — this is precisely scoped to the quadratic-symbol case (D9.1a). It does not claim half-density resolves all ordering ambiguities.

- **Appendix section reference "§10.2" may shift if sections are reorganized**
  - Mitigation: the reference is to a named block (`Remark D9.1a`) as well as a section number, providing redundancy. If the section number changes, the block name still locates the content.
