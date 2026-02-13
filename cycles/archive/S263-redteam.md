# S263 — Red Team

## Failure modes

1. **Overclaiming the Sommerfeld connection as novel.**
   The identity between the SR Coulomb orbit equation and Sommerfeld's 1916
   starting point is textbook material (e.g., Weinberg QFT I §1.1, Griffiths
   Introduction to Quantum Mechanics historical notes, Born "Atomic Physics").
   The draft Outlook item must not present this as a discovery.
   *Mitigation:* The draft says "is identical to the one Sommerfeld (1916)
   used" — presenting it as a historical fact, not a new result. The
   forward-pointing question ("which refinement-witness bounds survive
   semiclassical quantization?") is the new element, and it is phrased as
   a question, not a claim.

2. **Sommerfeld fine structure vs Dirac fine structure.**
   Sommerfeld's 1916 formula agrees with the Dirac result only to order
   (Z alpha)^4. At order (Z alpha)^6 and beyond, spin-orbit coupling and
   the Darwin term break the Sommerfeld degeneracy (n_r + n_phi omega
   vs the Dirac quantum numbers). The Outlook item says "reproduce the
   Dirac fine structure to order (Z alpha)^4" — this is correct but could
   confuse readers who know the exact Sommerfeld and exact Dirac formulas
   formally agree (both give E = mc^2[1 + (Z alpha)^2/(n - j - 1/2 +
   sqrt((j+1/2)^2 - (Z alpha)^2))^2]^{-1/2}, though with different
   quantum number interpretations).
   *Mitigation:* The "to order (Z alpha)^4" qualifier is the standard
   careful statement. A footnote could clarify the "accidental degeneracy"
   of the exact formulas if needed, but for an Outlook item this level of
   detail is unnecessary.

3. **Scope creep into quantum territory.**
   The paper is about classical SR orbits. A quantum Outlook item could
   make a referee ask "why not develop this here?"
   *Mitigation:* Outlook items are explicitly about *future* directions.
   Two sentences flagging a quantum connection, without developing it,
   are standard practice. The other two Outlook items similarly point to
   undeveloped directions (field theory, refinement spine).

4. **The quantized bound n_phi > Z alpha is trivially satisfied.**
   For Z <= 137, the condition n_phi >= 1 > Z alpha is automatically met.
   Only for superheavy nuclei (Z alpha ~ 1) does it become non-trivial.
   A reader might dismiss the bound as uninteresting.
   *Mitigation:* The draft Outlook item does not emphasize this bound
   specifically. It asks the broader question of which refinement-witness
   bounds survive quantization. The superheavy-atom regime where the
   bound becomes tight is a genuine research topic (cf. the "nuclear
   charge problem" Z > 137 in QED).

5. **Missing Sommerfeld reference in bibliography.**
   If this item is promoted, a citation to Sommerfeld (1916) will be
   needed. The original is: A. Sommerfeld, "Zur Quantentheorie der
   Spektrallinien," Annalen der Physik 51 (1916) 1-94, 125-167.
   A more accessible secondary source would be Weinberg QFT I §1.1 or
   Born "Atomic Physics" Ch. V.
   *Mitigation:* A B-cycle should accompany the C-cycle promotion to
   add the reference.

## Overall risk assessment
LOW. The recommended candidate is well-grounded in the paper's existing
results, correctly scoped as a forward pointer, and avoids overclaiming.
The main editorial risk is ensuring the "(Z alpha)^4" qualifier is
correctly stated, which it is.
