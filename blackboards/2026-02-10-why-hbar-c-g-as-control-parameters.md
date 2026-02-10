# Why \(\hbar\), \(c\), and \(G\) Appear: Constants as Control Parameters for Limit Compatibility

Date: 2026-02-10  
Cycle: `S55`

## Purpose
Record a foundations-level interpretation aligned with the repo's core thesis:
physical laws are controlled limits of composable refinements, and the "unreasonable effectiveness" of a few constants can be read as the need for **control parameters** that make distinct continuum limits compatible.

This note is heuristic: it is not claiming these constants are logically deducible without empirical input.

## 1. Three limits as three compatibilities
There are three familiar limiting procedures that sit naturally inside the refinement program:

1. **Classical limit**: \(\hbar\to 0\).
   - In the manuscript: stationary phase/concentration recovers extremals from the oscillatory weight \(e^{iS/\hbar}\).
   - Control role: \(\hbar\) is the scale that turns the additive action into a multiplicative composition weight while keeping interference meaningful.

2. **Galilean/Newtonian limit**: \(c\to\infty\).
   - Structural reading: \(c\) controls how time and space scales are compared (Lorentz vs Galilean refinement compatibility).
   - Control role: \(c\) is the conversion constant that makes "one action" compatible with both temporal and spatial refinements across frames (proper time vs coordinate time); \(1/c\) is a deformation parameter away from Newtonian kinematics.

3. **No-backreaction / fixed-geometry limit**: \(G\to 0\).
   - Structural reading: \(G\) controls the coupling between matter/energy and geometric degrees of freedom.
   - Control role: \(G\) is the universal coupling with length dimension that converts energy scales into curvature/length scales (e.g. Schwarzschild radius \(r_s\sim GM/c^2\)); combined with \(\hbar\) and \(c\) it yields the Planck scale where quantum and gravitational refinements meet.

These are naturally treated as *control knobs* in a staged construction: different corners of the \((\hbar,1/c,G)\) parameter space correspond to different compatibility regimes.

## 2. How this fits the "Newton-limit paradox" framing
Our Introduction now makes explicit that naive refinement-to-zero can fail by:
- non-existence (no Lebesgue measure on path space),
- non-uniqueness (ordering/discretization schemes),
- divergence (need subtraction/flow).

The constants can be read as minimal inputs that stabilize these failures in different contexts:
- \(\hbar\) stabilizes composition in the quantization step (and provides the deformation parameter for noncommutativity).
- \(c\) stabilizes the relativity step by enforcing a single causal/metric comparison of temporal vs spatial refinements.
- \(G\) stabilizes the gravity step by fixing how energy density backreacts on geometry, supplying the universal length scale needed when half-density scalarization is made universal (especially in \(D=4\)).

## 3. Promotion target (for `C81`)
Add a short heuristic block in `paper/main.md` Introduction (near the refinement-obstruction heuristics):
state that \(\hbar\), \(c\), and \(G\) play the role of control parameters for three different continuum-limit compatibilities (\(\hbar\to0\), \(c\to\infty\), \(G\to0\)).

