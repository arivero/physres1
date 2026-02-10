# S22 Debate: Does \(\tau\) Act on \(\hbar\) or on Couplings (or Both)?

## Question
In standard Wilsonian RG, coarse-graining integrates out degrees of freedom and produces a flow of couplings \(g\mapsto g'\), while \(\hbar\) is fixed. In the 9803035 discussion, a “control” transformation also rescales regulator parameters.

## Working Resolution (for this repo)
Treat \(\tau\) as a map on a **parameter bundle** \(\theta\) that can include:
- couplings \(g\),
- normalization conventions (scalarization gauge),
- and an action-scale regulator parameter \(\eta\) (which becomes \(\hbar\) only after physical identification).

Then:
- in some models \(\tau\) acts only on couplings (fixed \(\eta\)),
- in other formulations it is cleaner to treat \(\eta\) as the running parameter and keep couplings fixed,
- but the invariant content is the existence of a compatibility family \(\tau_b\) making the refinement diagram commute.

This keeps the discussion compatible with the project thesis (“RG = refinement compatibility”) without committing to an unphysical “running of \(\hbar\)” claim.

