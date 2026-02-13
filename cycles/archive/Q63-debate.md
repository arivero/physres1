# Q63 Debate: Should Q cycles fix parent C's omissions directly?

Date: 2026-02-12

## Question
Should a Q cycle apply corrective fixes (like the 2 missed bare labels), or should it only record findings and spawn a follow-up C cycle?

## Recommendation
For trivially mechanical fixes (adding a known prefix to 2 inline references), applying them directly in the Q cycle is the right call. The alternative — spawning a separate C109 cycle for 2 character insertions — adds process overhead without value. The key guardrail is that the Q cycle's execution log documents exactly what was changed and why, maintaining the audit trail.

For substantive corrections (rewording claims, restructuring sections, adding derivations), a Q cycle should spawn a dedicated C/S/B cycle instead.
