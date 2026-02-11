# S63 Debate: Must the compatibility statement include an explicit parameter-update map \(\tau\)?

Date: 2026-02-11

## Question
Is it enough to write RCP as “\(\mathcal O=\mathcal O\circ\mathcal C=\mathcal O\circ\mathcal Q=\mathcal O\circ\mathcal R\)”, or must we explicitly include parameter-updating (\(\theta\mapsto\tau(\theta)\)) to make it a real closure constraint rather than a tautology?

## Decision
Include the parameter update map explicitly (at least schematically).

## Rationale
Without an explicit update, the statement can collapse into “do the operation and then relabel the result as the same,” which hides where the real compatibility condition lives. Writing a map \(\tau\) makes the constraint falsifiable: closure can fail when no \(\theta'\) exists with \(\mathcal O_{h,\theta}=\mathcal O_{h,\theta'}\circ(\cdot)\).

