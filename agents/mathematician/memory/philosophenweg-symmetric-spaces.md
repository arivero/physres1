# Symmetric Space Witnesses: Mathematical Notes (desk reflection, not walk)

## Key insight: V_HD on symmetric spaces

### The question
For which Riemannian manifolds is V_HD constant in geodesic polar coordinates?

### Rank-1 symmetric spaces
In geodesic polar coords on a rank-1 symmetric space, the radial density is:
rho_r(rho) = (sin rho)^a * (sin 2rho)^b   [compact]
rho_r(rho) = (sinh rho)^a * (sinh 2rho)^b  [non-compact]

where (a, b) are root multiplicities:
- S^d: (d-1, 0), alpha = (d-1)/2
- CP^n: (2(n-1), 1), alpha = (2n-2+2)/2 = n
- HP^n: (4(n-1), 3), alpha = (4n-4+6)/2 = 2n+1
- CaP^2: (8, 7), alpha = 11

V_HD constant in geodesic coords iff alpha(alpha-1) = 0 iff alpha in {0, 1}.

For S^d: alpha = (d-1)/2 = 1 iff d = 3. MATCHES known result.
For CP^n: alpha = n = 1 iff n = 1, i.e. CP^1 = S^2. But S^2 with alpha = 1/2 (spherical coords) has NON-constant V_HD.

Resolution: CP^1 uses different coordinates than S^2. The (a,b) = (0,1) parametrization for CP^1 gives rho_r = sin(2rho), hence alpha = (0+2)/2 = 1, and alpha(alpha-1) = 0. So V_HD IS constant in the CP^1 (Fubini-Study) geodesic chart. The apparent contradiction is because the standard spherical chart (theta, phi) for S^2 does NOT use the CP^1 geodesic parametrization.

LESSON: "V_HD constant" is a coordinate-chart property, not an intrinsic manifold property.

### Higher symmetric spaces
For CP^n (n >= 2): alpha = n >= 2, so alpha(alpha-1) > 0. V_HD is NOT constant.
For HP^n (any n): alpha = 2n+1 >= 3. NOT constant.
For CaP^2: alpha = 11. NOT constant.

So among rank-1 symmetric spaces, V_HD is constant in geodesic coords ONLY for:
- R^d (flat, trivially)
- S^3 (alpha = 1)
- H^3 (non-compact dual, alpha = 1)
- CP^1 in Fubini-Study coords (alpha = 1, isometric to S^2)

### General symmetric spaces (rank > 1)
For higher-rank symmetric spaces, geodesic polar coords are replaced by restricted root decomposition, and the formula becomes more complex. The radial density involves products over positive roots. The constancy condition becomes a system of equations on root multiplicities. This is a rich mathematical question but probably yields few additional cases.

### New formula V_HD(const) = -(d-1)R/(4d)
Only verified for CONSTANT-CURVATURE spaces (S^d, H^d). For other symmetric spaces, V_HD(const) may involve additional curvature invariants (Ricci components, not just scalar curvature). Need to check for CP^2.

### Potential for the paper
The observation that V_HD constant <=> alpha(alpha-1) = 0 is clean and can be stated as a proposition. The fact that this singles out d=3 among spheres is already in the paper (D9.1i §12.5). Extending to all rank-1 symmetric spaces would add: "Among rank-1 symmetric spaces in geodesic polar coordinates, V_HD is constant only for S^3, H^3, and their quotients." Worth a Remark D9.1k-bis or similar.
