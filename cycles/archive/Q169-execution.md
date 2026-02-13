# Q169 -- Execution

## 1. Mathematical verification of Remark 3.2b

### 1a. Precession parameter consistency
Remark 3.2 (line 91-96) defines the orbit equation with
omega^2 := 1 - K^2/(c^2 L^2). Remark 3.2b references "the precession
parameter omega^2 = 1 - K^2/(c^2 L^2)". Consistent. PASS.

### 1b. Fine structure constant substitution
Starting from omega^2 = 1 - K^2/(c^2 L^2) with K = Ze^2/(4 pi eps_0)
and L = k hbar.

The fine structure constant: alpha = e^2/(4 pi eps_0 hbar c), so
K = Z alpha hbar c.

Then:
  K^2/(c^2 L^2) = (Z alpha hbar c)^2 / (c^2 (k hbar)^2)
                 = Z^2 alpha^2 hbar^2 c^2 / (c^2 k^2 hbar^2)
                 = Z^2 alpha^2 / k^2

Therefore omega = sqrt(1 - Z^2 alpha^2 / k^2). PASS.

### 1c. Sommerfeld energy formula
The stated formula is:
  E_{n_r,k} = mc^2 (1 + alpha^2 Z^2 / (n_r + k omega)^2)^{-1/2}

The standard Sommerfeld fine structure formula (1916) is:
  E = mc^2 / sqrt(1 + (Z alpha)^2 / (n_r + sqrt(k^2 - Z^2 alpha^2))^2)

Note that k omega = k sqrt(1 - Z^2 alpha^2/k^2) = sqrt(k^2 - Z^2 alpha^2).

So the denominator (n_r + k omega)^2 = (n_r + sqrt(k^2 - Z^2 alpha^2))^2,
and the two expressions are identical. PASS.

### 1d. Dirac reinterpretation
The parenthetical "(with k -> j + 1/2)" refers to the well-known result
that Sommerfeld's formula with azimuthal quantum number k gives the same
energy levels as the Dirac equation when k is replaced by j + 1/2 (total
angular momentum quantum number). This is the "Sommerfeld puzzle" or
"accidental degeneracy." The statement is correct and appropriately terse
for a parenthetical. PASS.

### 1e. Tone check
The remark says "is precisely the quantity Sommerfeld used" (attribution,
not novelty claim) and "the classical orbit equation is thus the backbone"
(modest framing). No overclaiming detected. PASS.

## 2. Outlook item 3

Text: "apply semiclassical quantization (Remark 3.2b) to ask which of the
admissibility, stability, and critical-exponent bounds derived here survive
or sharpen in the transition from classical orbits to discrete energy levels."

- References Remark 3.2b correctly: the semiclassical route is established
  in Remark 3.2b, and the Outlook asks the forward question (do bounds
  survive quantization?). The two serve different rhetorical functions.
- Well-scoped: specific enough (names the bounds), open enough (does not
  pre-answer). Consistent with existing items 1 (field theory) and 2
  (refinement spine).
- "Three natural extensions" matches the three items. PASS.

## 3. Reference formatting

[3] Sommerfeld1916FineStructure: Author, title in quotes, journal
    Ann. Phys. (Leipzig) 51 (1916) 1-94, 125-167, parenthetical
    description. Format consistent with [1] and [2]. PASS.

[4] Bertrand1873ClosedOrbits: Author, title in French (appropriate for
    the original), journal C. R. Acad. Sci. Paris 77 (1873) 849-853,
    parenthetical description. Format consistent. PASS.

Both references are foundational primary sources. Citation style matches
existing references [1]-[2] (author, title, arXiv/journal, parenthetical
annotation).

## 4. Citation in Remark 3.2a

Line 106: "Bertrand's theorem [Bertrand1873ClosedOrbits] states that..."
The citation is placed correctly. The theorem was previously stated without
a citation, so this is an improvement. PASS.

## 5. Scope and consistency checks

- No cycle tags (C/S/Q labels) in manuscript text. PASS.
- No transcript citations (conv_patched). PASS.
- Line count 286, well within PLB 6pp limit (~315 lines). PASS.
- Internal numbering: References [1]-[4] numbered sequentially. PASS.
- The Remark numbering 3.2b follows 3.2a, consistent with existing
  scheme (3.1, 3.1a, 3.1b, 3.2, 3.2a, 3.2b). PASS.
- No inconsistency between Remark 3.2b's claim and the rest of the paper.
  The remark builds on omega^2 from Remark 3.2 and applies it to a
  different physical context (hydrogen vs. gravity), which is a clean
  extension. PASS.

## 6. Minor observations (non-blocking)

a. The Sommerfeld energy formula uses alpha^2 Z^2 in the numerator.
   Some textbooks write Z^2 alpha^2. The paper uses alpha^2 Z^2 which is
   algebraically identical and follows Sommerfeld's original ordering.
   Not an issue.

b. The phrase "exact Dirac spectrum" is historically loaded. Strictly, the
   Dirac spectrum also includes effects beyond Sommerfeld (e.g., Lamb shift
   is absent in both). However, by "exact Dirac spectrum" the remark means
   the eigenvalues of the Dirac equation (not QED corrections), which is
   the standard usage. Acceptable.

c. One could add a caveat that the Sommerfeld-Dirac agreement is
   "accidental" (it fails for the Darwin term, g-factor, etc.). However,
   for a 3-sentence remark, this level of detail is unnecessary. The
   parenthetical "(with k -> j+1/2)" sufficiently flags the subtlety.

## Verdict

**PASS.** All four changes are mathematically correct, internally consistent,
properly attributed, and within page budget. No required fixes.
