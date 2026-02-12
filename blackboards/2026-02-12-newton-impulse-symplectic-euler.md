# Newton's Impulse Model as Symplectic Euler (S69 Blackboard)

Date: 2026-02-12
Status: promotion candidate for Section 3 or Section 8 remark

## 1. Identification

Section 3.2 defines Newton's discrete model as:
1. **Kick** (impulse at position r_k):
   $$v_k^+ = v_k^- + \frac{\Delta t}{m}\,F(\mathbf r_k), \qquad F(\mathbf r_k) = \frac{J_k}{\Delta t}\hat{\mathbf r}_k$$
2. **Drift** (free inertial motion with updated velocity):
   $$\mathbf r_{k+1} = \mathbf r_k + \Delta t\,\mathbf v_k^+$$

The standard **symplectic Euler** (also: semi-implicit Euler, kick-drift leapfrog) for a separable Hamiltonian \(H(\mathbf r,\mathbf p)=T(\mathbf p)+V(\mathbf r)\) with \(T=|\mathbf p|^2/(2m)\) is:
1. \(\mathbf p_{k+1} = \mathbf p_k - \Delta t\,\nabla V(\mathbf r_k)\) — momentum kick
2. \(\mathbf r_{k+1} = \mathbf r_k + \Delta t\,\nabla_{\mathbf p} T(\mathbf p_{k+1}) = \mathbf r_k + \frac{\Delta t}{m}\,\mathbf p_{k+1}\) — position drift

Setting \(\mathbf p = m\mathbf v\) and \(-\nabla V = \mathbf F\), these are identical.

**Conclusion:** Newton's polygonal construction (Book I, Prop. I) is literally the symplectic Euler integrator applied to the central-force Hamiltonian.

## 2. Why angular momentum is exactly conserved

The exact conservation of \(\mathbf L = \mathbf r \times \mathbf p\) at each finite step (D1.1) follows from two properties:
- **At kick:** \(\Delta\mathbf L = \mathbf r_k \times \Delta\mathbf p = \mathbf r_k \times \mathbf F(\mathbf r_k)\,\Delta t = 0\) because the force is central (\(\mathbf F \parallel \mathbf r\)).
- **At drift:** \(\mathbf L_{k+1} = m\,\mathbf r_{k+1} \times \mathbf v_{k+1}^- = m(\mathbf r_k + \mathbf v_k^+\Delta t)\times \mathbf v_k^+ = m\,\mathbf r_k \times \mathbf v_k^+ = \mathbf L_k^+\).

This is already proven as D1.1 in the manuscript. The symplectic perspective adds: the map preserves the canonical 2-form \(\omega = d\mathbf p \wedge d\mathbf r\) **exactly** at each step. Angular-momentum conservation is a consequence of:
1. Symplecticity of the map (preserves phase-space structure), plus
2. Rotational symmetry of the Hamiltonian (L generates rotations, which commute with H).

For any symplectic integrator applied to a rotationally symmetric Hamiltonian, \(\mathbf L\) is conserved exactly (it is a quadratic first integral, and symplectic maps preserve quadratic invariants for linear maps — here the argument is slightly more subtle for nonlinear maps but holds for the kick-drift factorization because each factor separately preserves L).

## 3. Connection to Section 8 (step-doubling / rooted trees)

Section 8.4 uses the **explicit (non-symplectic) Euler** map \(E_h(y) = y + hf(y)\) to exhibit step-doubling discrepancies and rooted-tree structure.

Key contrast:
| Property | Explicit Euler (§8.4) | Symplectic Euler (§3.2) |
|---|---|---|
| Preserves symplectic form | No | Yes (exactly) |
| Angular momentum conservation | Approximate (O(h) error per step) | Exact (for central forces) |
| Step-doubling discrepancy | O(h²) unconstrained | O(h²) but constrained to preserve ω |
| Rooted-tree expansion | All trees appear | Only "symplectic" trees appear |

The structural bridge is:
- **Both** methods exhibit step-doubling discrepancies (neither is exact beyond order 1).
- **Both** have rooted-tree expansions for those discrepancies.
- **But:** the symplectic Euler's corrections are **constrained** — they must preserve the symplectic form. This is analogous to how QFT counterterms must preserve gauge invariance (Ward identities constrain the renormalization).

This gives a clean narrative for the manuscript:
> Newton's original refinement scheme is already "gauge-compatible" (symplectic). Its order errors still exist — refinement still produces discrepancies — but the corrections are constrained by geometric structure. This is a micro-model for the general pattern: symmetries constrain the allowed counterterms.

## 4. Promotion candidate (one-paragraph remark)

For Section 3.3 or Section 8.4, after the existing text:

> The discrete model of Section 3.2 is precisely the symplectic Euler integrator (kick-drift factorization) applied to the central-force Hamiltonian. The exact angular-momentum conservation (D1.1) is a consequence of the map's symplecticity combined with the rotational symmetry of the Hamiltonian. While the symplectic Euler shares the same O(h) local truncation error as the explicit Euler of Section 8.4, its step-doubling corrections are constrained to preserve the canonical 2-form — a finite-step analogue of the principle that renormalization counterterms must respect the symmetries of the theory.

## References
- Nauenberg (1994): explicitly identifies Newton's impulse scheme as a canonical/symplectic map.
- Hairer, Lubich, Wanner, *Geometric Numerical Integration* (Springer, 2006): standard reference for symplectic integrators and their conservation properties.
