# S68 Debate: which order-3 tree appears in Euler step-doubling?

Date: 2026-02-11

## Question
At order \(h^3\), does the Euler step-doubling discrepancy produce only the branch-tree term \(f''(f,f)\), or does it also generate the chain-tree term \(f'(f'(f))\)?

## Working answer
Only the branch-tree term appears in the step-doubling discrepancy through \(O(h^3)\): it comes directly from the quadratic Taylor term \(\tfrac12 f''(y)[\delta,\delta]\) with \(\delta=\tfrac{h}{2}f(y)\). The chain-tree term \(f'(f'(f))\) appears in the exact-flow expansion but not in this specific Euler-vs-Euler comparison at this order.

## Next check
Confirm in a scalar toy model (SymPy series) and keep the promotion remark explicitly scoped to “Euler step-doubling discrepancy,” not “exact flow”.

