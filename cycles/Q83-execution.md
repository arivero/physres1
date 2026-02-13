# Q83 Execution: Referee pass on delta-objects

Date: 2026-02-13

## Findings

### 1. Unicode escapes — NEEDS FIX (7 lines)
Lines 44, 45, 52, 60, 79, 98, 104 contain `\u03b4` (δ), `\u2207` (∇), `\u2013` (–) escapes in section headings and body text. These will produce garbled output in PDF.

Full list:
- Line 44: `\u03b4(\u2207f)` → `δ(∇f)`
- Line 45: `\u03b4(f')` → `δ(f')`
- Line 52: `\u03b4(f')` and `\u03b4'` → `δ(f')` and `δ'`
- Line 60: `\u03b4'` → `δ'`
- Line 79: `\u03b4(\u2207f)` → `δ(∇f)`
- Line 98: `\u03b4` and `\u03b4'` and `\u2013` → `δ`, `δ'`, `–`
- Line 104: `\u2013` → `–`

### 2. Internal file paths — NEEDS FIX (3 lines)
- Line 14: `paper/main.md` → generic "the cornerstone manuscript"
- Line 77: `blackboards/2026-02-10-difference-quotients-counterterms-and-delta-prime.md` → remove or make generic
- Line 106: `blackboards/2026-02-10-distribution-theory-for-extremals.md` → remove or make generic

### 3. Empty YAML metadata — NEEDS FIX
Lines 3-4: `author: []`, `date: ""` — should be filled.

### 4. No bibliography — NEEDS B CYCLE
131 lines, no References section. Publications.md correctly identifies this gap.
Key candidates for citation:
- Schwartz kernel theorem: Hörmander [Hormander2003]
- Half-density framework: Bates–Weinstein [BatesWeinstein1997]
- Stationary phase: standard textbook (Hörmander, Stein)
- Point interactions: Albeverio et al. [AlbeverioGesztesyHoeghKrohnHolden1988] (canonical reference)
- Van Vleck determinant: Morette [Morette1951] or DeWitt

### 5. Notation — CLEAN
- Uses d for dimension (consistent with delta-objects context, distinct from D in other papers). ✓
- Half-density notation |Ω|^{1/2} consistent with Bates–Weinstein. ✓
- Schwartz kernel K, scalarization f. ✓

### 6. Mathematics — CLEAN
- Section 1: Schwartz kernel theorem for half-densities. ✓
- Section 2: δ^{(d)}(εv) = ε^{-d}δ^{(d)}(v) and |dy|^{1/2} = ε^{d/2}|dv|^{1/2} → ε^{-d/2}. ✓
- Section 3.1: δ(f'(x)) = Σ δ(x-x_i)/|f''(x_i)|. Standard. ✓
- Section 3.1a: clear distinction between δ(f') and δ'. ✓
- Section 3.1b: point-splitting limit of δ'. ✓
- Section 3.2: multi-dimensional generalization with |det Hess|. ✓
- Section 3.3: stationary phase amplitude ∝ 1/√|det Hess|. ✓
- Section 3.4: distributional Euler–Lagrange. ✓
- Section 4: rank-one kernel V = g|0⟩⟨0|. ✓
- Section 5: scalarization scale argument. ✓

### 7. Reader flow — GOOD
Clean progression: framework → identity kernel → stationary set → point interactions → scales → outlook.

## Tier assessment
**NOT YET Tier 1.** Needs:
1. **C129**: fix Unicode escapes (7 lines), internal paths (3 lines), YAML metadata.
2. **B19**: add bibliography (at least 3-4 references).
After these two cycles, a follow-up Q pass can assess Tier 1.

## Recommended follow-up
1. **C129**: fix encoding and paths.
2. **B19**: add bibliography.
3. **Q84**: follow-up referee pass after B19.
