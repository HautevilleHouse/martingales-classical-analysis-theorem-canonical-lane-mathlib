import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure Martingale (Ω : FilteredProbabilitySpace) where
  process : ℕ → Ω.carrier → ℝ
  integrable : ∀ n, Integrable (process n) Ω.probabilityMeasure
  martingaleProperty : ∀ n, ∀ s ≤ n, μ[process n | Ω.filtration s] = process s
  integrableTerm : ∀ n, Integrable (process n) Ω.probabilityMeasure
  martingalePropertyTerm : ∀ n, ∀ s ≤ n, μ[process n | Ω.filtration s] = process s

structure MartingaleEvidence {Ω : FilteredProbabilitySpace} (M : Martingale Ω) where
  integrableClosed : ∀ n, Integrable (M.process n) Ω.probabilityMeasure
  martingalePropertyClosed : ∀ n, ∀ s ≤ n, μ[M.process n | Ω.filtration s] = M.process s

def MartingaleClosed {Ω : FilteredProbabilitySpace} (M : Martingale Ω) : Prop :=
  (∀ n, Integrable (M.process n) Ω.probabilityMeasure) ∧
  (∀ n, ∀ s ≤ n, μ[M.process n | Ω.filtration s] = M.process s)

theorem martingale_closed_from_evidence {Ω : FilteredProbabilitySpace} (M : Martingale Ω)
    (E : MartingaleEvidence M) : MartingaleClosed M := by
  exact And.intro E.integrableClosed E.martingalePropertyClosed

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse