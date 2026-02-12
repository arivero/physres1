# B12 Red Team: Bibliography acquisition failure modes

Date: 2026-02-12

## Failure modes

### 1. Groenewold1946 not acquired — does this block anything?
- **Risk**: Groenewold–van Hove theorem is referenced in the deformation quantization discussion (Section 7). Without the primary source, the claim relies on secondary descriptions.
- **Mitigation**: The theorem statement is well-known and reproduced in many secondary sources (including Landsman1998 and standard QM textbooks). The manuscript labels its use as attribution, not as proof. Mark `PENDING_LIBRARY` and acquire on next library visit.
- **Severity**: Low — not a load-bearing gap.

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
1. `[Groenewold1946ElementaryQM]` — Physica 12 (1946), 405–460. Check university library for bound Physica volumes or ScienceDirect institutional access.
2. `[Connes1994]` — Alain Connes, *Noncommutative Geometry* (Academic Press, 1994). ISBN 978-0-12-185860-5. (Note: a partial OA version may exist on Connes' personal website — worth checking.)
3. `[Landsman1998]` — N. P. Landsman, *Mathematical Topics Between Classical and Quantum Mechanics* (Springer, 1998). ISBN 978-0-387-98318-9. Check Springer institutional access.
