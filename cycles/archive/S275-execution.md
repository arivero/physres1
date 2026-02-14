# S275 Execution: Compression candidates for possible C300

Date: 2026-02-14
Status: Completed

## Work completed
1. Added three candidate compressed sentences (technical, bridge-first, scope-first) to `paper/notes/main-paper-threshold-bridge-sanity-grid.md`.
2. Added recommendation: combine bridge-first statement with short scope tail if `C300` opens.
3. Ran compactness comparison (word/character counts) for the candidate set.

## Command log
- Command:
```bash
python3.12 - <<'PY'
candidates = {
    'A': 'For power-law attraction with fixed L and asymptotic kinetic degree Ekin~p^nu, the small-r threshold is qcrit=nu+1; at equality, coefficient data controls the marginal sign.',
    'B': 'The Newton-to-SR shift (3->2) follows from qcrit=nu+1 under fixed-L asymptotic power laws, while inverse-square dimensional identity is a separate mechanism.',
    'C': 'Use qcrit=nu+1 only as an asymptotic comparator for shared power-law regimes, not as a full orbit-classification theorem.'
}
for k,v in candidates.items():
    words = len(v.split())
    chars = len(v)
    print(f'{k}: words={words}, chars={chars}')
PY
```
- Output summary:
  - A: 24 words / 173 chars
  - B: 20 words / 157 chars
  - C: 17 words / 121 chars

## Discovery flag
- `yes` — a two-sentence B+C blend is likely the best readability/correctness tradeoff for any future C-cycle revision.

## Iteration 2 (same ID; deeper caveat audit)
1. Ran a coverage-matrix check over candidate sentences against required caveats.
2. Updated `paper/notes/main-paper-threshold-bridge-sanity-grid.md` with a matrix and refined blend recommendation.

### Iteration 2 command
```bash
python3.12 - <<'PY'
candidates = {
    'A': 'For power-law attraction with fixed L and asymptotic kinetic degree Ekin~p^nu, the small-r threshold is qcrit=nu+1; at equality, coefficient data controls the marginal sign.',
    'B': 'The Newton-to-SR shift (3->2) follows from qcrit=nu+1 under fixed-L asymptotic power laws, while inverse-square dimensional identity is a separate mechanism.',
    'C': 'Use qcrit=nu+1 only as an asymptotic comparator for shared power-law regimes, not as a full orbit-classification theorem.'
}
checks = {
    'fixed-L': ['fixed L', 'fixed-L'],
    'asymptotic': ['asymptotic'],
    'mechanism-separation': ['separate mechanism', 'separate', 'distinct'],
    'marginal-caveat': ['marginal', 'equality', 'scope']
}
for k, text in candidates.items():
    t = text.lower()
    print(k)
    for ck, variants in checks.items():
        ok = any(v.lower() in t for v in variants)
        print(f'  {ck}: {"yes" if ok else "no"}')
PY
```

### Iteration 2 output summary
- A: misses mechanism-separation.
- B: misses marginal caveat.
- C: misses fixed-\(L\) and mechanism-separation.

Conclusion: best compressed promotion candidate is B + a short marginal tail from A.

## Iteration 3 (same ID; full blended sentence drafting)
1. Drafted a full two-sentence blend and a compact variant.
2. Measured compactness and caveat coverage to select a default candidate.

### Iteration 3 commands
```bash
python3.12 - <<'PY'
text = (
    'The Newton-to-SR shift (3->2) follows from qcrit=nu+1 under fixed-L asymptotic power laws, while inverse-square dimensional identity is a separate mechanism. '
    'At the marginal exponent, coefficient data controls the leading sign, so this is an asymptotic comparator rather than a full orbit-classification theorem.'
)
checks = {
    'fixed-L': ['fixed L', 'fixed-L'],
    'asymptotic': ['asymptotic'],
    'mechanism-separation': ['separate mechanism', 'separate', 'distinct'],
    'marginal-caveat': ['marginal', 'equality', 'coefficient']
}
print(f'words={len(text.split())}, chars={len(text)}')
lt = text.lower()
for k, variants in checks.items():
    print(f'{k}: {"yes" if any(v.lower() in lt for v in variants) else "no"}')
PY
```

```bash
python3.12 - <<'PY'
texts = {
  'D1': 'The Newton-to-SR shift (3->2) follows from qcrit=nu+1 under fixed-L asymptotic power laws, while inverse-square dimensional identity is a separate mechanism. At the marginal exponent, coefficient data controls the leading sign, so this is an asymptotic comparator rather than a full orbit-classification theorem.',
  'D2': 'Newton-to-SR shift (3->2) follows from qcrit=nu+1 for fixed-L asymptotic power laws; inverse-square dimensional identity is separate. At marginality, coefficients set the leading sign, so this is an asymptotic comparator, not a full orbit theorem.'
}
for k,t in texts.items():
  print(f'{k}: words={len(t.split())}, chars={len(t)}')
PY
```

### Iteration 3 output summary
- Full blend (D1) preserves all caveats but is longer (42 words).
- Compact blend (D2) keeps key caveats with better compactness (34 words).
- D2 selected as default candidate for any future readability-focused C-cycle.

## Iteration 4 (same ID; readability delta quantification)
1. Compared current manuscript remark body against D2 using simple sentence/word metrics.
2. Recorded explicit compression benefit to justify any optional readability C-cycle.

### Iteration 4 command
```bash
python3.12 - <<'PY'
import re
current = ('For attractive power-law F(r)=K/r^q, fixed angular momentum L, and high-momentum kinetic asymptotic E_kin(p)~a p^nu, one has p~L/r as r->0. Hence the centrifugal barrier scales as r^{-nu} while the attraction scales as r^{-(q-1)}, giving threshold q_crit=nu+1. This recovers the Newtonian/SR shift (nu=2=>q_crit=3, nu=1=>q_crit=2) in one line. The criterion is a fixed-L, small-r asymptotic statement and is distinct from the separate inverse-square dimensional identity mechanism (where K/L has velocity units and yields v=K/L in SR circular analysis).')
d2 = ('Newton-to-SR shift (3->2) follows from qcrit=nu+1 for fixed-L asymptotic power laws; inverse-square dimensional identity is separate. At marginality, coefficients set the leading sign, so this is an asymptotic comparator, not a full orbit theorem.')

def stats(text):
    words = re.findall(r"[A-Za-z0-9_\\-\\+\\/=><]+", text)
    sentences = [s for s in re.split(r'[.!?]+', text) if s.strip()]
    avg_len = len(words)/len(sentences)
    return len(words), len(sentences), avg_len

for name, text in [('current', current), ('d2', d2)]:
    w,s,a = stats(text)
    print(f'{name}: words={w}, sentences={s}, avg_words_per_sentence={a:.2f}')
PY
```

### Iteration 4 output summary
- Current remark body: ~85 words / 4 sentences.
- D2 candidate: ~34 words / 2 sentences.
- Interpretation: D2 is a substantial readability compression with caveat retention; still optional until a readability-focused C-cycle is requested.

## Iteration 5 (same ID; formula-explicit compression stress test)
1. Ran a stricter 8-caveat lexical audit on `current`, `D2`, `D4`, and `D4plus`.
2. Updated `blackboards/3.md` with the matrix and recommendation.
3. Promoted stabilized outcome to `notebooks/central-force-threshold-bridge.md`.

### Iteration 5 command
```bash
python3.12 - <<'PY'
import re
cands={
'D2':'Newton-to-SR shift (3->2) follows from qcrit=nu+1 for fixed-L asymptotic power laws; inverse-square dimensional identity is separate. At marginality, coefficients set the leading sign, so this is an asymptotic comparator, not a full orbit theorem.',
'D4':'Fixed-L, small-r asymptotics p~L/r imply qcrit=nu+1, yielding Newton/SR 3->2. This bridge is separate from inverse-square dimensional identity; at marginality, coefficients decide the leading sign.',
'D4plus':'Fixed-L, small-r asymptotics p~L/r imply qcrit=nu+1, yielding Newton/SR 3->2. This bridge is separate from inverse-square dimensional identity; at marginality coefficients decide sign, so it is not a full orbit theorem.'
}
checks={
'fixed-L':[r'fixed[- ]l', r'fixed angular momentum l'],
'small-r':[r'small[- ]r', r'r->0'],
'asymptotic':[r'asymptotic'],
'qcrit-formula':[r'qcrit\\s*=\\s*nu\\+1'],
'mechanism-separation':[r'inverse-square dimensional identity', r'separate'],
'marginal-coeff':[r'marginal', r'coefficient'],
'newton-sr-map':[r'3->2'],
'not-full-theorem':[r'not a full orbit theorem', r'not.*full orbit']
}
for n,t in cands.items():
    words=len(re.findall(r"[A-Za-z0-9_\\-\\+\\/=><]+",t))
    low=t.lower()
    cov=sum(int(any(re.search(p,low) for p in pats)) for pats in checks.values())
    print(f'{n}: words={words}, coverage={cov}/8')
PY
```

### Iteration 5 output summary
- `D2`: 34 words, coverage `7/8`.
- `D4`: 25 words, coverage `7/8`.
- `D4plus`: 31 words, coverage `8/8`.

### Iteration 5 decision
- New default compression candidate is `D4plus` (higher caveat completeness and better compactness than `D2`).
- `C300` remains optional and readability-driven; no correctness defect forces immediate promotion.

## Iteration 5 correction addendum (metric fix)
The `72.53%` reduction value corresponds to `D4` (25 words), not `D4plus` (31 words).
Correct baseline comparison against 91 words:
- `D2`: `62.64%`
- `D4plus`: `65.93%`

## Iteration 6 (same ID; notation/style compatibility gate)
1. Compared compressed candidates for caveat coverage plus manuscript notation compatibility.
2. Selected a TeX-ready default candidate for eventual C-cycle promotion.

### Iteration 6 command
```bash
python3.12 - <<'PY'
import re
cands={
'D4plus_ascii':"Fixed-L, small-r asymptotics p~L/r imply qcrit=nu+1, yielding Newton/SR 3->2. This bridge is separate from inverse-square dimensional identity; at marginality coefficients decide sign, so it is not a full orbit theorem.",
'D5_tex':"At fixed \\(L\\) and small \\(r\\), \\(p\\sim L/r\\) gives \\(q_{\\mathrm{crit}}=\\nu+1\\), yielding Newton/SR \\(3\\to2\\). This bridge is separate from the inverse-square dimensional-identity mechanism; at marginality coefficients set the sign, so it is not a full orbit theorem.",
'D6_tex_compact':"Fixed \\(L\\), small-\\(r\\) asymptotics \\(p\\sim L/r\\) give \\(q_{\\mathrm{crit}}=\\nu+1\\), hence Newton/SR \\(3\\to2\\). This is separate from inverse-square dimensional identity; at marginality coefficients set sign, so it is not a full orbit theorem."
}
checks={
'fixed-L':[r'fixed[- ]\\?\(l\\?\)?',r'fixed l',r'fixed \\(l\\)'],
'small-r':[r'small[- ]\\?\(r\\?\)?',r'small[- ]r',r'r->0'],
'asymptotic':[r'asymptotic'],
'qcrit-formula':[r'q_\\{\\mathrm\\{crit\\}\\}=\\nu\\+1',r'qcrit=nu\\+1'],
'mechanism-separation':[r'inverse-square dimensional identity',r'dimensional-identity mechanism',r'separate'],
'marginal-coeff':[r'marginal',r'coefficient'],
'newton-sr-map':[r'3\\to2',r'3->2'],
'not-full-theorem':[r'not a full orbit theorem',r'not.*full orbit']
}
for k,t in cands.items():
    words=len(re.findall(r"[A-Za-z0-9_\\-]+",t))
    low=t.lower()
    cov=sum(int(any(re.search(p,low) for p in ps)) for ps in checks.values())
    print(f'{k}: words={words}, coverage={cov}/8')
PY
```

### Iteration 6 output summary
- `D4plus_ascii`: `36` words, `7/8`.
- `D5_tex`: `44` words, `7/8`.
- `D6_tex_compact`: `40` words, `8/8`.

### Iteration 6 decision
- Default candidate updated to `D6_tex_compact` (notation-compatible and caveat-complete).

## Iteration 7 (same ID; classification correction)
- Reclassified the prior notation/style readiness pass as out-of-scope for `S`.
- `S275` keeps only technical validation duties (caveat retention, regime-scope correctness, quantitative compression checks).
- Editorial/manuscript-notation harmonization is transferred to `D21` (launch policy) and future `C300` (actual promotion).
