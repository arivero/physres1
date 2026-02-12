# C102 Plan

## Goal
Define the rooted-tree elementary-differential notation F([•]) and F([•,•]) on
first use in `paper/main.md`, and state the C² smoothness scope for the O(h³)
remark (Remark D6.2a1).

## Motivation
The rg-fundamental follow-up paper already defines this notation properly
(D1.0, line 92). The main paper used F([•,•]) in Remark D6.2a1 without
defining F or stating the required regularity. Q57 flagged both omissions.

## Steps
1. Read current Remark D6.2a1 in `paper/main.md` (~line 963).
2. Add inline definition: F([•]):=f'(y)[f(y)] (chain tree, O(h²)),
   F([•,•]):=f''(y)[f(y),f(y)] (branch tree, O(h³)).
3. Add f ∈ C² requirement for the O(h³) term; note that O(h²) only needs C¹.
4. Run diffstat and guard checks.
