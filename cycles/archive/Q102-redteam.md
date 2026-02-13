# Q102 Red Team
Date: 2026-02-13
## Failure modes
1. **Subagent false positive (fermionic mediators)**: The skeptical referee subagent incorrectly derived β = -(m/πℏ²)g_R² from Jackiw's equations, when the correct sign is positive. Root cause: algebraic error in the chain -(1/g²)β = -(m/πℏ²) → β = +(m/πℏ²)g_R², not -(m/πℏ²)g_R². Lesson: subagent review catches real errors in content, but the main agent must cross-check subagent claims against known-good derivations (the cornerstone's own D11.2) before acting on them. "Trust but verify" applies to subagent reviews too.
