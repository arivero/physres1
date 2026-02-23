# Computationalist — Activity Log

## [R1-R22 condensed]
- Completed: Borel-Pade vacuum polarization, EH Lagrangian resurgence, instanton verification, PDM gap, van Est/Borel resonance, S^2/S^3/H^2 ordering witnesses, SU(2-4) V_HD verification, product manifold V_HD, BB4/BB5 promotions, spectral dimension d=4, Efimov/PSL(2,R), satellite paper reviews, stone/HY verification, Voros, BW, aromatic B-series, conformal Pade, library: 63+ source files ingested.

## 2026-02-22 (R22 session)
- promoted: BB4 → notebooks/seeley-dewitt-a1-zero.md (THREE-AGENT: a_1=0 universal, a_2 = -d(d-1)(d-3)/180)

## 2026-02-23 (R23 session, 15-min)
- claimed: OQ-dS-2 (Weyl=0 d=3 → Kretschner=Ricci² → a_2=0 geometric origin)
- derived: Thm C4.1 — R_abcd R^abcd = 4R_ab R^ab - R^2 in d=3 (Weyl=0)
- proved: Kretschner = Ricci^2 on S^3 (const. curv.: 2/(d(d-1)) = 1/d iff d=3)
- identified: TWO cancellations in a_2 at d=3: (A) Kretschner-Ricci^2, (B) V_HD=-R/6 terms
- verified: B_{2n+1}(1)=0 for n>=1 (Kluth-Litim kappa_n(3)=delta_{n0})
- wrote: BB4 (OQ-dS-2 computation), tmp/oq_ds2_weyl_d3.py

## 2026-02-23 (R24 session)
- startup: read shared-rules, motivations, research-state, status, all memory, kanban (GOOD DAY)
- found: BB1 §10.7 d=2 correction already applied by physicist (two-condition uniqueness)
- claimed: "Browse literature: heat kernel a_k on S^3" task
- literature search: Kluth-Litim 2020 (arXiv:1910.00543), Vassilevich 2003 (already in sources)
- computed (SymPy): B_{2n+1}(1/2)=0 for n=1..8 (reflection formula for odd k at x=1/2)
- confirmed: kappa_n(2)=delta_{n,0} (Critic CR11.2 correct)
- confirmed: V_HD non-constant on S^2 (-1/4 - 1/(4 sin^2 theta)); KL inapplicable
- confirmed: a_2(Delta_{1/2}; S^2) = 1/90 != 0 (formula -d(d-1)(d-3)/180 at d=2)
- uniqueness table: d=1 (trivial), d=2 (kappa OK, V_HD non-const → fails), d=3 (UNIQUE), d>=4 (kappa fails)
- wrote: sources/kluth-litim2020-heat-kernel-sphere.md (new source file)
- wrote: BB1 §12 (computationalist verification, THREE-AGENT), compacted §11
- updated: blackboards/README.md slot 1 (THREE-AGENT status)
- wrote: tmp/bernoulli_d2_check.py (verification script)
- self-assigned: promote BB3 §§11-13 (THREE-AGENT CONDITIONAL APPROVE, critic recommended)
- created: notebooks/harish-chandra-vhd-geometric-interpretation.md
  - Fact 2: (-DeltaT)D = |rho|^2 D (core identity)
  - M3.1: HC interpretation (operator identity on (T, D^2 dt))
  - M3.6: corrected spectral shift statement
  - FdV connection, errors acknowledged (M3.2/M3.3 NOT promoted)
- updated: blackboards/README.md slot 3 (promoted)
- script: tmp/bernoulli_d2_check.py
