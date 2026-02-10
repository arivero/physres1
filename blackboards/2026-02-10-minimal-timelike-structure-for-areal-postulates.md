# Minimal timelike structure for areal postulates

Question: what is the minimal extra structure needed so a covariant areal postulate remains informative?

## 1) Three levels
Given orbital bivector
\[
M^{\mu\nu}=R^\mu p^\nu-R^\nu p^\mu,
\]
consider three data levels:

1. **No timelike direction provided**  
   Available scalars are frame-free invariants \(I_1=\frac12 M_{\mu\nu}M^{\mu\nu}\), \(I_2=\frac12 M_{\mu\nu}{}^\star M^{\mu\nu}\).  
   For circular planar branch (S30), these are too coarse for areal-rate data.

2. **A timelike unit field \(u^\mu\) is provided**  
   Define projector
   \[
   h(u)^\mu{}_\nu=\delta^\mu{}_\nu+\frac{u^\mu u_\nu}{c^2},
   \]
   projected bivector
   \[
   M_{(u)}^{\mu\nu}=h(u)^\mu{}_\alpha h(u)^\nu{}_\beta M^{\alpha\beta},
   \]
   and scalar
   \[
   \ell_{(u)}:=\frac1m\sqrt{\frac12\,M^{(u)}_{\mu\nu}M_{(u)}^{\mu\nu}}.
   \]
   This is covariant once \(u^\mu\) is specified.

3. **Source-anchored timelike direction \(u^\mu=U^\mu\)**  
   In central-source dynamics, \(U^\mu\) is already physical input (source worldline velocity), so this adds no extra independent field.

## 2) Operational meaning
In the rest frame of \(u^\mu\), \(\ell_{(u)}\) is specific spatial angular momentum magnitude.
For circular motion:
\[
\dot A_{\tau,u}=\frac{\ell_{(u)}}{2},
\]
where \(\tau_u\) is proper time along the \(u\)-congruence.
Coordinate-time areal rate in that frame is
\[
\dot A_{t,u}=\frac{\ell_{(u)}}{2\gamma_u},
\]
with \(\gamma_u\) from particle speed relative to \(u\).

So fixing \(\ell_{(u)}\) is the invariant primary statement; fixing \(\dot A_{t,u}\) is convention-dependent.

## 3) Minimal-structure rule for this project branch
For the current inverse-square central-source line:

- **Minimal acceptable structure:** source worldline \(U^\mu\).  
- **Preferred postulate variable:** \(\ell_{(U)}\) (equivalently \(\dot A_{\tau,U}\)).  
- **Interpretation:** coordinate-time areal rates are derived quantities, not fundamental postulate inputs.

This keeps covariance explicit and avoids introducing an arbitrary observer field \(u^\mu(x)\) unless needed by new physics.

