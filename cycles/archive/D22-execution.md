# D22 Execution: Parallel D-track B — Cross-thread linkage opportunities

Date: 2026-02-14
Status: In Progress

## Initial pass completed
1. Scanned `paper/main.md` for natural insertion points connecting Section 3 threshold bridge to global compatibility framing.
2. Identified two plausible anchor locations:
   - Section 9 overview bullet around `Section 3` recap.
   - Appendix 10.3/10.4 compatibility-map summary where examples are enumerated.
3. Performed first triage decision: defer cross-thread insertion for now.

## Command evidence
- `rg` scan over central-force, threshold, and RCP map terms found existing concentrated anchors at:
  - `Remark P1.1a` (Section 3),
  - Section 9 overview bullets,
  - Section 10.3/10.4 compatibility-map summaries.

## Current recommendation
- **No immediate cross-thread promotion.**
- Reason: current threshold material is already dense in Section 3, and new links risk architectural noise unless introduced during a dedicated Section 9/10 readability pass.

## Pending next action
- If selected, draft one <=2 sentence cross-link candidate and test whether it improves navigation without adding conceptual load.

## Iteration 2 (append-only): concrete cross-link candidate drafting
1. Reviewed Section 9.1 and Appendix 10.4 navigation blocks as potential low-friction insertion points.
2. Drafted candidate <=2 sentence cross-link:
   - "Section 3's threshold bridge (`Remark P1.1a`) is a local asymptotic witness that complements, rather than enlarges, the global compatibility map of Section 9.1. It sharpens one central-force branch while leaving RCP's three-track architecture unchanged."

### Iteration 2 recommendation
- Keep this candidate parked in D22 until a dedicated Section 9 readability/navigation pass is opened.

## Iteration 3 (append-only): bounded navigation gate
1. Quantified candidate load using word count, sentence count, and lexical novelty against Section 9.1 context.
2. Selected a bounded candidate (`X2`) and kept deferral policy.

### Iteration 3 command
```bash
python3.12 - <<'PY'
import re
from pathlib import Path
text = Path('paper/main.md').read_text()
anchor = '## 9.1 End-to-End Claim Graph'
ctx = text[text.find(anchor):text.find(anchor)+1700].lower()
ctxset = set(re.findall(r"[a-z0-9_\\-]+", ctx))

cands = {
'X1': "Section 3's threshold bridge (Remark P1.1a) is a local asymptotic witness that complements, rather than enlarges, the global compatibility map of Section 9.1. It sharpens one central-force branch while leaving RCP's three-track architecture unchanged.",
'X2': "Remark P1.1a in Section 3 is a local exponent-comparator witness for the partition track and does not define a fourth compatibility track. Read it as one example node under Remark P7.1a."
}
for k,t in cands.items():
    norm=t.replace('P1.1a','P1_1a').replace('P7.1a','P7_1a').replace('9.1','9_1')
    words=re.findall(r"[A-Za-z0-9_\\-]+", norm)
    sents=[s for s in re.split(r'(?<=[.!?])\\s+', norm) if s.strip()]
    new=[w.lower() for w in words if w.lower() not in ctxset]
    nov=len(new)/len(words)
    passes=(len(words)<=35 and len(sents)<=2 and 0.25<=nov<=0.45)
    print(f'{k}: words={len(words)} sents={len(sents)} novelty={nov:.3f} pass={passes}')
PY
```

### Iteration 3 output summary
- `X1`: `words=36`, `sents=2`, `novelty=0.639`, `pass=False`.
- `X2`: `words=31`, `sents=2`, `novelty=0.355`, `pass=True`.

### Iteration 3 recommendation
- Keep `X2` as the parked cross-link candidate.
- Continue defer-until-readability-pass policy (no immediate C-cycle trigger from D22).

## Re-anchor addendum (2026-02-14)
- Prior candidate-sentence filtering work is reclassified as editorial/navigation prep, not discovery.
- D22 is now narrowed to a discovery-only conceptual question (new relation vs no new relation).

## Closure addendum (2026-02-14): discovery verdict and close
- Discovery question tested: does the threshold-bridge thread imply a genuinely new conceptual relation in the RCP architecture?
- Verdict: **No new relation established** in this pass; it remains a local witness already compatible with existing partition-track framing.
- D22 closed.
