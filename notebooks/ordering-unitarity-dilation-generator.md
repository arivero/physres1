# Ordering vs Unitarity: Dilation Generator Family

Cycles: D23, S280
Date: 2026-02-14

## Setup

From Derivation D4.1b, the alpha-discretized Hamiltonian for H(q,p)=qp is:

  H_alpha = alpha * q_hat * p_hat + (1-alpha) * p_hat * q_hat = p_hat * q_hat + alpha * i * hbar.

In the position representation on L^2(R, dq), with p_hat = -i*hbar*d/dq:

  p_hat * q_hat * psi(q) = -i*hbar * d/dq(q*psi) = -i*hbar*(psi + q*psi'),

so:

  H_alpha * psi = -i*hbar*(psi + q*psi') + alpha*i*hbar*psi = -i*hbar*(q*psi' + (1-alpha)*psi).

**Mapping to dilation generator:** Writing H_alpha = -i*hbar*(q*d/dq + c) with c = 1-alpha.

- alpha = 0 (prepoint): c = 1, operator is -i*hbar*(q*d/dq + 1) = p_hat * q_hat.
- alpha = 1/2 (midpoint/Weyl): c = 1/2, operator is -i*hbar*(q*d/dq + 1/2).
- alpha = 1 (postpoint): c = 0, operator is -i*hbar*q*d/dq = q_hat * p_hat.

## Symmetry Defect Computation

**Domain:** u, v in C_c^infty(R\{0}) (smooth, compactly supported away from q=0).

**Inner product:** <u,v> = integral of conj(u(q)) * v(q) dq over R.

Compute <u, H_alpha v>:

  <u, H_alpha v> = -i*hbar * integral[ conj(u) * (q*v' + (1-alpha)*v) dq ].

For the q*v' term, integrate by parts (boundary terms vanish by compact support):

  integral[ conj(u) * q * v' dq ] = - integral[ v * d/dq(q*conj(u)) dq ]
                                    = - integral[ v * (conj(u) + q*conj(u)') dq ].

Substituting:

  <u, H_alpha v> = -i*hbar * [ -integral[v*(conj(u) + q*conj(u)') dq] + (1-alpha)*integral[conj(u)*v dq] ]
                 = i*hbar * integral[v*conj(u) dq] + i*hbar * integral[v*q*conj(u)' dq]
                   - i*hbar*(1-alpha) * integral[conj(u)*v dq]
                 = i*hbar*alpha * integral[conj(u)*v dq] + i*hbar * integral[q*conj(u)'*v dq].

Meanwhile, the adjoint:

  <H_alpha u, v> = conj(<v, H_alpha u>)
                 = conj( -i*hbar * integral[conj(v)*(q*u' + (1-alpha)*u) dq] )
                 = i*hbar * integral[ v*(q*conj(u)' + (1-alpha)*conj(u)) dq ].

**Symmetry defect:**

  <u, H_alpha v> - <H_alpha u, v> = i*hbar*alpha*<u,v> - i*hbar*(1-alpha)*<u,v>
                                   = i*hbar*(2*alpha - 1)*<u,v>.

**Result:** H_alpha is symmetric on this domain if and only if alpha = 1/2.

## Cross-Check via Commutator Algebra

Write:

  H_alpha = p_hat*q_hat + alpha*i*hbar
          = (1/2)*(q_hat*p_hat + p_hat*q_hat) + (alpha - 1/2)*i*hbar.

The Weyl-symmetric part (1/2)*(q_hat*p_hat + p_hat*q_hat) is formally symmetric by
construction. The remainder is (alpha - 1/2)*i*hbar, which is anti-Hermitian unless
alpha = 1/2. This gives the same defect:

  H_alpha - H_alpha^dagger = 2*(alpha - 1/2)*i*hbar = i*hbar*(2*alpha - 1).

## Essential Self-Adjointness: Domain Dependence

The symmetry computation is domain-independent (holds on any domain where integration
by parts has no boundary terms). Essential self-adjointness is further:

### Case 1: R_+ (half-line)

The dilation group U(s)*psi(q) = e^{s/2}*psi(e^s*q) is strongly continuous and unitary
on L^2(R_+, dq). (The e^{s/2} prefactor preserves the L^2(dq) norm.) By Stone's theorem,
the generator

  A = -i*hbar * [d/ds]_{s=0} U(s) = -i*hbar*(q*d/dq + 1/2) = H_{1/2}

is essentially self-adjoint on any core for U(s).

### Case 2: R (full line)

On C_c^infty(R\{0}), the symmetric operator H_{1/2} has deficiency indices (1,1).
The deficiency equation H_{1/2}^* psi = +/- i*psi has distributional solutions
psi_+/-(q) ~ |q|^{-1/2 -/+ 1/hbar} near q=0. The matching across q=0 creates
a one-parameter family of self-adjoint extensions parameterized by a phase linking
the R_- and R_+ sectors.

## What Is Really Doing The Selecting

Three logically nested requirements:

1. **Symmetry** (H = H^dagger on a dense domain): forces alpha = 1/2. This is
   the *minimal* requirement and the one directly visible in the formal calculation.

2. **Essential self-adjointness** (unique self-adjoint extension): depends on the
   configuration space. Holds automatically on R_+; requires a boundary condition
   choice on R.

3. **Unitarity of the propagator** (exp(-it*H/hbar) is unitary): equivalent to
   self-adjointness by Stone's theorem. Strictly stronger than symmetry.

The manuscript's "unitarity selects midpoint" is correct but compressed: unitarity
requires self-adjointness, which requires symmetry, which forces alpha = 1/2. The
midpoint selection is already decided at the symmetry level.

## Safe Claim

For the alpha-discretization family H_alpha = p_hat*q_hat + alpha*i*hbar of the
classical symbol H=qp, formal symmetry in L^2(R, dq) requires alpha = 1/2
(midpoint/Weyl), with symmetry defect i*hbar*(2*alpha - 1) for general alpha.

## Scope Disclaimer

Essential self-adjointness (and hence unitarity of the generated group) additionally
depends on the configuration space: it holds on R_+ via the dilation group, but on R
the singularity at q=0 creates a one-parameter family of self-adjoint extensions.
