import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure StoppingTime where
  tau : ℕ → ℕ
  stoppingCondition : ∀ n, {ω | tau ω ≤ n} ∈ adaptedFiltration n

structure OptionalStoppingPackage where
  martingale : (ℕ → ℝ) → Prop
  stoppingTime : StoppingTime
  boundedCondition : Prop
  optionalStoppingTheorem : Prop
  stoppingTimeClosed : Prop

structure OptionalStoppingEvidence (O : OptionalStoppingPackage) where
  martingaleClosed : ∀ X, O.martingale X → True
  boundedConditionClosed : O.boundedCondition
  optionalStoppingTheoremClosed : O.optionalStoppingTheorem
  stoppingTimeClosed : O.stoppingTimeClosed

def OptionalStoppingClosed (O : OptionalStoppingPackage) : Prop :=
  O.optionalStoppingTheorem ∧ O.stoppingTimeClosed

theorem optional_stopping_closed_from_evidence (O : OptionalStoppingPackage) (E : OptionalStoppingEvidence O) : OptionalStoppingClosed O := by
  exact And.intro E.optionalStoppingTheoremClosed E.stoppingTimeClosed

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse