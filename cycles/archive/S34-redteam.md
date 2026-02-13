# S34 Redteam: Failure Modes

## Failure Modes
1. **Pseudo-testability:** claiming empirical relevance without specifying \(\mathbf n\), clock, and frame reconstruction.
2. **Kinematic/dynamic confusion:** mistaking \(\dot A_{\mathbf n}\) identity for force-law prediction.
3. **Data mismatch:** proposing observables unavailable in realistic measurement pipelines.

## Mitigations
1. Keep explicit three-item observability checklist.
2. Separate identity equations from torque-evolution equation.
3. Phrase predictions as conditional on reconstructed \((\mathbf r,\mathbf v)\) and chosen frame.

