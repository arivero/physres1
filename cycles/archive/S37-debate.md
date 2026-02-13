# S37 Debate: What Error Threshold Triggers Nonlinear Methods?

## Question
When should we insist on Monte Carlo/unscented propagation instead of Jacobian linearization?

## Current Resolution
Use a practical trigger:
- if quick pilot MC differs from linear \(\sigma\) by more than a few percent, or posterior skewness is visible, switch to nonlinear propagation.

