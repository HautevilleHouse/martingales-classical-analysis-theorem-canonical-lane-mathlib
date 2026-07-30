import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure MartingaleMeasure where
  space : Type u
  sigmaAlgebra : Set (Set space)
  probabilityMeasure : Set space -> ℝ
  adaptedFiltration : Nat -> Set (Set space)
  integrableCondition : (Nat -> space -> ℝ) -> Prop
  martingaleProperty : (Nat -> space -> ℝ) -> Prop
  initialSigmaAlgebra : Set (Set space)
  filtrationCompatibility : ℕ → Prop

structure MartingaleMeasureEvidence (M : MartingaleMeasure) where
  sigmaAlgebraIsSigmaAlgebra : MeasurableSpace M.space
  probabilityMeasureIsProbability : IsProbabilityMeasure M.probabilityMeasure
  integrableConditionHolds : ∀ (X : Nat -> M.space -> ℝ), M.integrableCondition X
  martingalePropertyHolds : ∀ (X : Nat -> M.space -> ℝ), M.martingaleProperty X
  filtrationCompatibilityHolds : ∀ n : ℕ, M.filtrationCompatibility n

def MartingaleMeasureClosed (M : MartingaleMeasure) : Prop :=
  M.adaptedFiltration 0 = M.initialSigmaAlgebra ∧
  (∀ n, M.adaptedFiltration n ⊆ M.adaptedFiltration (n+1))

theorem martingale_measure_closed_from_evidence (M : MartingaleMeasure) (E : MartingaleMeasureEvidence M) : MartingaleMeasureClosed M := by
  refine And.intro ?_ ?_
  · rfl
  · intro n; rfl

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse