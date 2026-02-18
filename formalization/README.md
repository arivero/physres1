# Lean 4 Formalization: RG-Lipschitz Theorem

## Overview

This directory contains a Lean 4 formalization of the RG-Lipschitz theorem:
the renormalization group mechanism yields a strictly superior replacement
for the classical Gronwall inequality.

## Setup

Requires Lean 4 and Mathlib:

```bash
# Install elan (Lean version manager)
curl -sSf https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh | sh

# Build the project
cd formalization/RGLipschitz
lake update
lake build
```

## Module structure

| File | Content | Status |
|---|---|---|
| `Basic.lean` | Core definitions (expansion functional, running Lipschitz constant) | Definitions only |
| `ControlMap.lean` | Control map tau_b, semigroup property, fixed point | **Proofs complete** |
| `SubAdditive.lean` | Sub-additivity of expansion functional, RG-Gronwall iterate | Mostly complete (1 sorry) |
| `Fekete.lean` | Fekete's lemma for subadditive sequences | Proof complete |
| `RGGronwall.lean` | Assembled RG-Gronwall inequality | **Proof complete** |
| `Examples.lean` | Rotating dissipation, control map iteration | Explicit computations |

## Mathematical content

See `paper/notes/rg-lipschitz.md` for the full mathematical development.

The key theorem: for a flow Phi_t with classical Lipschitz constant L_0,
the expansion functional mu(t) = ln ||D Phi_t|| is sub-additive, so the
asymptotic rate lambda_inf = lim mu(t)/t satisfies lambda_inf <= L_0.
The RG-Gronwall bound e^{lambda_inf t} is at least as tight as e^{L_0 t},
and strictly tighter for non-normal systems (rotation + dissipation).
