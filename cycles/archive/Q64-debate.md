# Q64 Debate: Should the stale blackboard reference in PA-H2.6a be fixed now?

Date: 2026-02-12

## Question
PA-H2.6a (planck-area line 154) references a pruned blackboard file. Should this be fixed in a follow-up C cycle?

## Recommendation
Not urgently. The derivation referenced is now self-contained in HD-D1.3 + HD-D1.3a in the half-density-qft paper. PA-H2.6a already points to "Derivation HD-D1.3 in `papers/half-density-qft/main.md`" (which is correct), alongside the stale blackboard path. A future hygiene C cycle could simply remove the stale blackboard path from that line, leaving only the valid HD-D1.3 reference. This is low priority — the blackboard reference is supplementary, not the primary pointer.
