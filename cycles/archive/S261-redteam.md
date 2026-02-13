# S261 Red Team: Capture conditions across Newton/SR/GR refinement hierarchy

## Factual checks

1. **SR capture at L=K/c.** Correct. Section 3.1 line 79: L<K/c means the
   effective potential plunges to -infinity. The particle reaches r=0.

2. **GR ISCO at L=2sqrt(3)M.** Correct. Remark 4.3b, line 188.

3. **GR actual capture/plunge threshold at L=4M.** This needs care. The value
   L=4M corresponds to the *unstable* circular orbit at r=4M (from
   L^2 = Mr^2/(r-3M) at r=4M: L^2=16M^2, so L=4M). A particle with L=4M
   and E slightly above V_eff(r=4M) will plunge. But this is the angular
   momentum of the *marginally bound* orbit (E=1, r=4M), not a universal
   "capture threshold" in the same sense as the SR L=K/c.

   The actual GR capture condition is energy-dependent: for given L, there is
   a maximum of V_eff, and if E^2 exceeds it, the particle plunges. There is
   no single L threshold for capture independent of E. So the user's suggestion
   of L=4M as "the" GR capture threshold is an oversimplification.

   **The execution correctly avoided making this claim** by focusing on
   stability (ISCO) rather than capture.

4. **Newtonian: no capture for q=2.** Correct. For q<3, the centrifugal
   barrier r^{-2} dominates the potential r^{-(q-1)} as r->0, preventing
   fall to center.

5. **Ratio ell_ISCO/ell_SR = 2sqrt(3).** Already in Remark 4.3g. Correct.

## Logical check on "not worth promoting"

The execution's reasoning is sound: the paper already contains the pieces, a
consolidation remark would be redundant, and the Outlook should point forward
not backward. The recommendation to revisit if the spine concept is developed
is reasonable.

## One gap

The execution does not discuss whether the **GR existence threshold** (as
opposed to stability threshold) can be compared with the SR one. In GR, there
is no clean existence threshold analogous to L>K/c: even with L=0 there exist
radial plunge orbits. The SR fall-to-center is to r=0 (a physical singularity
of the potential), while in GR the "fall" is to r=2M (the horizon), which is a
coordinate singularity. This asymmetry makes the three-level comparison less
clean than it first appears, which is an additional reason the execution is
right not to promote.
