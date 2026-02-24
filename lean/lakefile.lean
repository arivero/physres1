import Lake
open Lake DSL

package «PhysRes» where
  version := v"0.1.0"
  description := "Formal verification of theoretical physics proofs from 'From Newton to the Path Integral'"

require mathlib from git "https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_lib PhysRes where
  srcDir := "."

lean_exe physres_check where
  root := "Main"
