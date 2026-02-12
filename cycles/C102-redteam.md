# C102 Red-Team

## Attack 1: "F([•]) notation is nonstandard"
**Status:** Addressed.
The notation follows the Butcher B-series convention (see e.g. Hairer–Nørsett–
Wanner, §II.2) where F(τ) is the elementary differential associated to tree τ.
The bracket notation [•] for the chain tree and [•,•] for the branch tree is
standard in the numerical ODE literature. The companion paper (rg-fundamental)
cites [McLachlan2017] which uses equivalent notation.

## Attack 2: "C² is too weak — the O(h⁴) remainder needs C³"
**Status:** Noted but not a problem.
We only claim the O(h³) term is correct; the O(h⁴) remainder is absorbed into
big-O and its precise form is not used. Stating f ∈ C² is the minimal
assumption for the claimed expansion.

## Attack 3: "Definition should be earlier, not buried in a remark"
**Status:** Acceptable for current scope.
The paper's rooted-tree usage is confined to Remark D6.2a1 and Heuristic H6.2.
If future cycles expand the tree machinery, the definition should move
earlier. For now, defining at point of use is the simplest correct approach.

## Attack 4: "Inconsistency with rg-fundamental which says 'smooth f'"
**Status:** No real conflict.
"Smooth" (C^∞) in rg-fundamental is a stronger but compatible assumption.
The main paper is more precise: it states the minimal regularity needed (C²),
which is strictly better from a mathematical hygiene standpoint.
