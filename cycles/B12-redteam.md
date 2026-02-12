# B12 Red Team: Bibliography acquisition failure modes

Date: 2026-02-12

## Failure modes

### 1. ~~Groenewold1946 not acquired~~ — RESOLVED
- User provided University of Groningen OA link. Paper is out of copyright (1946); source file committed to repo.
- No-go theorem (§4.02, eqs. 4.12–4.13) verified: V' is self-contradictory for degree ≥ 3 (deficiency of order ℏ²).

### 2. Books (Connes1994, Landsman1998) remain PENDING_LIBRARY
- **Risk**: These are cited for general framing (noncommutative geometry, classical-quantum bridge) rather than specific theorems. Claims attributed to them are either well-known or independently supported.
- **Mitigation**: Keep `PENDING_LIBRARY`. Neither is blocking for current manuscript revisions. Acquire on library visit.
- **Severity**: Low.

### 3. Wilson1974 PDF includes extraneous preceding article
- **Risk**: Source file contains text from both the preceding article and Wilson's paper. Could cause confusion if cited by page number.
- **Mitigation**: The execution log identifies where Wilson's paper begins. The key content (Sections II, III.B, IV) is correctly captured. Future ingests should note the boundary.
- **Severity**: Negligible.

### 4. pdfminer extraction quality (OCR artifacts)
- **Risk**: pdfminer.six extracts text from embedded fonts, not OCR. Older scanned PDFs (Dirac1933, Moyal1949) may have garbled characters.
- **Mitigation**: Key formulas and section references have been verified by reading the extracted text. The execution log captures human-readable summaries. For precise equation verification, the original PDFs remain in `/tmp/b12-sources/` during the session.
- **Severity**: Low — summaries are accurate.

### 5. `sources/` is gitignored — content could be lost
- **Risk**: The ingested `.md` files in `sources/` will not be committed or persist after session.
- **Mitigation**: All key content summaries, section references, and structural observations are captured in `cycles/B12-execution.md`, which IS committed. The bibliography ledger records acquisition URLs for re-download. The user has been informed.
- **Severity**: Addressed.

## Items requiring physical library visit
The following items cannot be resolved online and require the user to visit a library:
1. ~~`[Groenewold1946ElementaryQM]`~~ — RESOLVED (OA from Univ. Groningen).
2. ~~`[Connes1994]`~~ — RESOLVED (author OA from alainconnes.org; tangent groupoid in Ch. II §5).
3. `[Landsman1998]` — N. P. Landsman, *Mathematical Topics Between Classical and Quantum Mechanics* (Springer, 1998). ISBN 978-0-387-98318-9. Check Springer institutional access.
