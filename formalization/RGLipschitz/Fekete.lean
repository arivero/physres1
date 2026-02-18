/-
# RG-Lipschitz: Fekete's Lemma

Fekete's lemma states that for a subadditive sequence `a : ℕ → ℝ`,
the limit `lim_{n→∞} a(n)/n` exists and equals `inf_{n≥1} a(n)/n`.

In the RG-Lipschitz framework, this gives the existence of the asymptotic
expansion rate λ_∞ and the bound λ_∞ ≤ L(T) for all T > 0.

This is the key result that makes the RG-improved Gronwall inequality possible:
the sub-additive structure (from flow composition) forces the existence of a
well-defined asymptotic rate that is at least as good as any finite-scale bound.
-/

/-! ## Fekete's lemma for sequences -/

/-- A sequence `a : ℕ → ℝ` is subadditive if `a(m + n) ≤ a(m) + a(n)`. -/
def SubadditiveSeq (a : ℕ → ℝ) : Prop :=
  ∀ m n : ℕ, a (m + n) ≤ a m + a n

/-- Fekete's lemma: for a subadditive sequence,
    `lim_{n→∞} a(n)/n = inf_{n≥1} a(n)/n`.

    We state the upper bound direction first, which is what we need for RG-Gronwall:
    for all `n ≥ 1` and all `k ≥ 1`, `a(nk)/(nk) ≤ a(k)/k`. -/
theorem fekete_upper_bound (a : ℕ → ℝ) (ha : SubadditiveSeq a) :
    ∀ k : ℕ, 0 < k → ∀ n : ℕ, a (n * k) ≤ n * a k := by
  intro k hk n
  induction n with
  | zero => simp
  | succ n ih =>
    calc a ((n + 1) * k)
        = a (n * k + k) := by ring_nf
      _ ≤ a (n * k) + a k := ha (n * k) k
      _ ≤ n * a k + a k := by linarith
      _ = (n + 1) * a k := by ring

/-- Corollary: `a(nk)/(nk) ≤ a(k)/k` for all `n, k ≥ 1`.
    This is the RG domination: the running average at any scale `k`
    dominates the running average at all larger multiples. -/
theorem fekete_running_avg_bound (a : ℕ → ℝ) (ha : SubadditiveSeq a)
    (k : ℕ) (hk : 0 < k) (n : ℕ) (hn : 0 < n) :
    a (n * k) / (n * k) ≤ a k / k := by
  have hnk_pos : (0 : ℝ) < ↑(n * k) := by positivity
  have hk_pos : (0 : ℝ) < ↑k := by positivity
  rw [div_le_div_iff hnk_pos hk_pos]
  calc ↑k * a (n * k)
      ≤ ↑k * (↑n * a k) := by
        apply mul_le_mul_of_nonneg_left
        · exact_mod_cast fekete_upper_bound a ha k hk n
        · linarith
    _ = ↑(n * k) * a k := by push_cast; ring

/-! ## Application to the expansion functional -/

/-- For a Lipschitz flow with expansion functional `μ(t)`, the sequence
    `n ↦ μ(n·T)` is subadditive for any `T > 0`.
    Therefore, `μ(nT)/(nT) ≤ μ(T)/T`, and `λ_∞ ≤ L(T)` for all `T`. -/

/-- The discrete expansion sequence at step `T`: `a(n) = μ(n·T)`. -/
-- In practice, one would specialize from the continuous subadditive μ
-- to the discrete subsequence. The proof is a direct consequence of
-- SubAdditive.expansion_subadditive applied iteratively.

/-! ## Connection to the RG-Gronwall inequality -/

/-- Putting Fekete together with the flow Lipschitz bounds:
    For any reference scale T > 0, the long-time expansion satisfies
      ‖Φ_{nT}(x) - Φ_{nT}(y)‖ ≤ ‖x - y‖ · K(T)^n
    where K(T) is the Lipschitz constant at scale T.
    Taking logs: μ(nT) ≤ n · μ(T), so L(nT) ≤ L(T).
    Taking inf over T: λ_∞ ≤ L(T) for all T.
    This is the RG-Gronwall inequality. -/
-- The full proof combines SubAdditive.rg_gronwall_iterate with the
-- Fekete bounds above. See RGGronwall.lean for the assembled statement.
