# Symplectic integrators as refinement-compatible methods

## Context
Remark 3.3 (uncuttable satellite) presents the Trotter product formula as a
refinement theorem. The symmetric Suzuki-Trotter splitting has O(1/N²) error.
This blackboard explores: Trotter splittings ARE symplectic integrators.

## Key observation
For H = T(p) + V(q), the time-evolution operator e^{−iHt/ℏ} preserves the
symplectic structure (it is a canonical transformation). The Trotter splitting

  e^{−iVΔt/(2ℏ)} e^{−iTΔt/ℏ} e^{−iVΔt/(2ℏ)}

is the **symplectic Störmer-Verlet (leapfrog) integrator** written in operator form.

At each finite N, the discrete map is EXACTLY symplectic (preserves the
Poisson bracket / commutation relations). This is a stronger statement than
just convergence: the approximants at every level carry the correct structural
invariant.

## Classical version: Störmer-Verlet
For separable H = T(p) + V(q) = p²/2m + V(q):

  p_{1/2} = p_n − (Δt/2) V'(q_n)           [half kick]
  q_{n+1} = q_n + (Δt/m) p_{1/2}            [full drift]
  p_{n+1} = p_{1/2} − (Δt/2) V'(q_{n+1})   [half kick]

This map is:
1. **Symplectic**: preserves det(∂(q,p)/∂(q₀,p₀)) = 1 at every step.
2. **Time-reversible**: swapping (q,p,Δt) → (q,−p,−Δt) gives the inverse map.
3. **Second-order**: local error O(Δt³), global error O(Δt²).

## Shadow Hamiltonian
The discrete symplectic map is NOT the flow of H, but it IS the exact flow of
a nearby "shadow Hamiltonian":

  H̃ = H + Δt² [H₃] + Δt⁴ [H₅] + ...

where [H_{2k+1}] are commutator corrections computable from BCH. The shadow
Hamiltonian is conserved exactly by the numerical flow, so the energy error
is bounded for all time (does not grow secularly).

## "Uncuttable" interpretation
1. The exact evolution e^{−iHt/ℏ} is the refinement limit N→∞.
2. At each finite N, the discrete evolution is NOT the exact propagator, but
   it preserves the structural invariant (symplecticity/unitarity).
3. The shadow Hamiltonian gives a "nearby" exact statement at each level.
4. Higher-order splittings (Yoshida, Forest-Ruth) systematically cancel more
   BCH commutators — the analog of higher-order counterterms.

This is refinement compatibility in action: the discrete approximants are
not arbitrary; they carry structural consistency (symplecticity) at every
level, and the refinement limit inherits this structure.

## What to promote
A Remark 3.4 after Remark 3.3 (Trotter), stating that the symmetric
Trotter splitting is the symplectic Verlet integrator, preserving symplectic
structure at every finite N. The shadow Hamiltonian provides an exact conservation
law at each approximation level. Keep to 3–4 lines.
