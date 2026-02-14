# B33 Red Team

Date: 2026-02-14

## Failure modes

### 1. Books are PENDING_LIBRARY, not acquired
**Objection:** The bibliography policy prefers OA first; marking as PENDING without attempting sci-hub violates user-approved fallback protocol.
**Mitigation:** User memory states sci-hub.kvnp.top is approved for paywalled sources. However, these are comprehensive textbooks (600+ pages each), not individual papers. Institutional library access is the appropriate route for textbooks. PENDING_LIBRARY is correct status.

### 2. Partial chapter PDFs exist but not recorded in sources/
**Objection:** If author PDFs exist for intro/selected chapters, should we ingest those?
**Mitigation:** For citation purposes, we only need the bibliographic metadata and theorem numbers, not the full text. Partial PDFs don't give us the specific theorems (IX.3.1, II.3.6). Full text via library is preferable. Defer ingestion unless a specific theorem derivation is needed for red-team verification.

### 3. No spawned follow-up to actually insert citations into manuscript
**Objection:** B33 added bibliography entries but didn't update the manuscript to cite them.
**Mitigation:** Q183 recommended B33 as a bibliography task, not a manuscript-edit task. The citation insertion is a future C-cycle micro-edit (optional). Current state: bibliography is complete, manuscript has generic wording, no blocker for acceptance.

## Post-execution assessment
All failure modes are acceptable. B33 achieved its goal (add bibliographic metadata). Citation insertion into manuscript text is deferred to future optional C-wave.
