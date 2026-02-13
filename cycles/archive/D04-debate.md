# D04 Debate: Should we chase blocked publisher PDFs in this environment?

Date: 2026-02-11

## Question
Given that some publisher endpoints (e.g. APS) are Cloudflare-challenged here, is it still worth attempting OA ingestion for key anchors like `Feynman1948`, or should we accept `PENDING` and plan for later local ingestion?

## Current position
Attempt one OA route per key (publisher page + one alternate legal mirror if known). If access is blocked by bot challenges or DNS restrictions, stop early and keep the ledger honest (`PENDING`), noting the failure mode in the cycle log.

## What would change my mind?
- If multiple independent OA routes repeatedly fail for network/anti-bot reasons, switch strategy: rely on lawful local PDFs outside this environment rather than spending cycles on brittle fetch attempts.

