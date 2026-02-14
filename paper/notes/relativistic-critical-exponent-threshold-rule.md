# Relativistic Critical-Exponent Threshold Rule

Date: 2026-02-14

## Goal
Derive a compact rule that explains the Newtonian/SR shift in critical exponent for bound central orbits under power-law attraction.

## Setup
Assume attractive force magnitude
\[
F(r)=\frac{K}{r^q},\quad K>0,
\]
so the potential scales as
\[
U(r)\sim -\frac{K}{(q-1)r^{q-1}}\propto -r^{-(q-1)}.
\]
For fixed angular momentum \(L\), near \(r\to 0\) one has tangential momentum scaling
\[
p\sim \frac{L}{r}.
\]
Assume high-momentum kinetic asymptotic degree \(\nu\):
\[
E_{\mathrm{kin}}(p)\sim a p^{\nu},\quad a>0.
\]
Then the centrifugal barrier scales as
\[
E_{\mathrm{barrier}}(r)\sim a\left(\frac{L}{r}\right)^{\nu}\propto r^{-\nu}.
\]

## Threshold logic
Bound-orbit exclusion of fall-to-center requires the short-distance positive barrier to dominate the attractive singularity:
\[
r^{-\nu} \text{ dominates } r^{-(q-1)} \iff \nu > q-1.
\]
Hence the critical exponent is
\[
\boxed{q_{\mathrm{crit}}=\nu+1.}
\]
- If \(q<q_{\mathrm{crit}}\): barrier dominates, admissible bound structure can exist.
- If \(q>q_{\mathrm{crit}}\): attraction dominates, fall-to-center tendency.
- If \(q=q_{\mathrm{crit}}\): marginal case, model-dependent threshold behavior.

## Instantiations
1. Newtonian mechanics: \(E_{\mathrm{kin}}\sim p^2/(2m)\Rightarrow \nu=2\), so
\[
q_{\mathrm{crit}}=3.
\]
2. Special-relativistic ultrarelativistic asymptotic: \(E_{\mathrm{kin}}\sim pc\Rightarrow \nu=1\), so
\[
q_{\mathrm{crit}}=2.
\]
This reproduces the observed one-unit drop discussed in the relativistic satellite.

## Separation from the q=2 dimensional identity
The threshold rule above is an asymptotic fixed-\(L\) mechanism. It is distinct from the separate algebraic fact that \(q=2\) is the unique power for which \(K/L\) has velocity units and yields the exact identity \(v=K/L\) in the SR circular condition. Both mechanisms coincide numerically at \(q=2\) in SR, but they are structurally independent.

## Sanity check command
```bash
python3.12 - <<'PY'
vals = {"Newton": 2, "SR": 1}
for k,v in vals.items():
    print(f"{k}: nu={v}, qcrit={v+1}")
PY
```

Expected output:
- `Newton: nu=2, qcrit=3`
- `SR: nu=1, qcrit=2`
