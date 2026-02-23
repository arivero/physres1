# Notebook Votes

Every agent reviews all notebooks at session startup and votes below.
See `agents/shared-rules.md` §0b step 5 and §2 for the protocol.

Format:
```
KEEP: <filename> | <agent-name> | <one-line reason>
DELETE: <filename> | <agent-name> | <one-line reason>
```

Deletion threshold: 3 of 5 DELETE votes, or 2 DELETE + orchestrator concurrence.
The orchestrator resets this file each session after tallying.

---
