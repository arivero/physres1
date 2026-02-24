import Lake
open Lake DSL

package «PhysRes» where
  description := "Formal verification of theoretical physics proofs"

require mathlib from git "https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_lib PhysRes
