# D21 Execution: Parallel D-track A — Manuscript integration strategy for threshold thread

Date: 2026-02-14

## Initial pass completed
1. Measured current `Remark P1.1a` span in `paper/main.md` (word/sentence count).
2. Drafted integration policy for future C-cycle use.

## Command log
- Command:
```bash
python3.12 - <<'PY'
import re
from pathlib import Path
text = Path('paper/main.md').read_text()
start = text.find('`Remark P1.1a')
end = text.find('`Heuristic H1.1', start)
chunk = text[start:end]
words = re.findall(r"[A-Za-z0-9_\\-\\+\\/=><]+", chunk)
sentences = [s for s in re.split(r'[.!?]+', chunk) if s.strip()]
print(f'words={len(words)}')
print(f'sentences={len(sentences)}')
PY
```
- Output summary: `words=118`, `sentences=6`.

## Proposed integration policy
1. Main-paper bridge remarks should target <=2 sentences unless fixing a correctness issue.
2. Keep derivation details and parameter maps in study notes/companion notes.
3. Any compression C-cycle must preserve four caveats: fixed-\(L\), asymptotic scope, mechanism separation, and marginal-coefficient caveat.

## Pending next action
- Decide whether to apply this policy immediately via `C300` or defer to a broader Section 3 readability pass.

## Iteration 2 (append-only): policy-to-action gate
1. Added quantitative trigger for readability-only promotion decisions.
2. Derived compression ratio from current remark body vs D2 candidate.

### Iteration 2 command
```bash
python3.12 - <<'PY'
current = 85
candidate = 34
reduction = (current-candidate)/current
print(f'reduction_fraction={reduction:.6f}')
print(f'reduction_percent={100*reduction:.2f}')
PY
```

### Iteration 2 output
- reduction fraction: `0.60` (60%).

### Integration gate proposal
Open readability-focused `C300` only if all are true:
1. compression gain >= 40%,
2. four-caveat checklist passes,
3. no new technical claims are introduced.

## Iteration 3 (append-only): quantitative tie-break policy
1. Integrated S275 iteration-5 outputs into D21 launch policy.
2. Added deterministic tie-break when multiple candidates pass gate.

### Iteration 3 command
```bash
python3.12 - <<'PY'
cands = {
  'D2': {'words': 34, 'coverage': 7, 'has_not_full': True, 'has_small_r': False},
  'D4plus': {'words': 31, 'coverage': 8, 'has_not_full': True, 'has_small_r': True}
}
current_words = 91
rows = []
for k,v in cands.items():
    reduction = (current_words - v['words'])/current_words
    gate_pass = reduction >= 0.40 and v['coverage'] >= 7 and v['has_not_full']
    rows.append((k, reduction, v['coverage'], v['has_small_r'], gate_pass))
for k,reduction,coverage,small_r,gate_pass in rows:
    print(f"{k}: reduction={100*reduction:.2f}% coverage={coverage}/8 small_r={small_r} gate_pass={gate_pass}")
best = sorted(rows, key=lambda x: (x[4], x[2], x[1], x[3]), reverse=True)[0][0]
print(f"recommended={best}")
PY
```

### Iteration 3 output summary
- `D2`: reduction `62.64%`, coverage `7/8`, gate pass `yes`.
- `D4plus`: reduction `65.93%`, coverage `8/8`, gate pass `yes`.
- tie-break recommendation: `D4plus`.

### Updated integration gate
Open readability-focused `C300` only if all are true:
1. compression gain >= 40%,
2. caveat coverage >= 7/8,
3. explicit non-classification caveat retained.
If multiple candidates pass, choose highest caveat coverage, then highest compression.

## Iteration 4 (append-only): integrated launch matrix
1. Consolidated branch outputs into one launch/defer matrix.
2. Confirmed that deferral is preference-driven (readability priority), not readiness-limited.

### Iteration 4 command
```bash
python3.12 - <<'PY'
checks = {
  'S275_candidate_ready': True,
  'S275_caveat_coverage_8of8': True,
  'S276_windowed_uniqueness_ready': True,
  'S277_decade_drift_gate_ready': True,
  'S278_windowed_drift_gate_ready': True,
  'D22_crosslink_required_for_C300': False,
  'correctness_defect_present': False,
}
readability_priority = False
mandatory_pass = (
  checks['S275_candidate_ready'] and
  checks['S275_caveat_coverage_8of8'] and
  not checks['correctness_defect_present']
)
open_c300 = mandatory_pass and readability_priority
print('mandatory_pass', mandatory_pass)
print('open_c300_now', open_c300)
for k,v in checks.items():
  print(f'{k}={v}')
PY
```

### Iteration 4 output summary
- `mandatory_pass = True`
- `open_c300_now = False` (because readability-priority flag is not active)

### Iteration 4 recommendation
- Keep `C300` deferred by policy preference.
- If readability priority becomes active, launch with `D4plus` as default candidate.

## Iteration 5 (append-only): default candidate style alignment
1. Adopted `S275` iteration-6 outcome as default promotion candidate.
2. Updated launch preference to use notation-compatible `D6_tex_compact` when C300 is opened.

### Iteration 5 recommendation
- `C300` launch (if readability-priority turns on): promote `D6_tex_compact` instead of earlier ASCII variant.

## Iteration 6 (append-only): cycle-boundary correction
- Accepted boundary correction: notation/promotion-readiness checks are `D/C` concerns.
- `D21` now owns this pre-promotion harmonization logic; `S275` remains technical-only.

## Iteration 7 (append-only): boundary correction (D excluded)
- Superseding clarification: editorial notation/style harmonization is not a `D` deliverable.
- `D` scope here is only launch triage logic; actual wording harmonization belongs to `C300` if/when opened.
- Exception: a TeX-mechanics discovery question can justify `D`/`S` exploration.

## Re-anchor addendum (2026-02-14): why D drift happened
- What happened: I used D21 to formalize readability/launch policy, which drifted from `D = Discovery` intent.
- Correction: mark D21's policy machinery as administrative trace only; no further D21 expansion unless a genuine novelty/discovery question is posed.
- Forward rule: use `D` only for novelty triage/hypothesis selection, not wording or workflow policy.

## Closure addendum (2026-02-14): close D21
- D21 contained launch/policy scaffolding rather than novelty triage.
- Closed to prevent further D-scope drift.
