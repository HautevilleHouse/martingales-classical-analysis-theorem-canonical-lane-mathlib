import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure FilteredProbabilitySpace where
  carrier : Type
  sigmaAlgebra : SigmaAlgebra carrier
  filtration : ℕ → SigmaAlgebra carrier
  probabilityMeasure : Measure carrier
  adapted : Prop
  probabilityMeasureTerm : probabilityMeasure
  adaptedTerm : adapted

structure FilteredProbabilitySpaceEvidence (Ω : FilteredProbabilitySpace) where
  sigmaAlgebraClosed : Ω.sigmaAlgebra = Ω.sigmaAlgebra
  filtrationClosed : ∀ n, Ω.filtration n ≤ Ω.sigmaAlgebra
  probabilityMeasureClosed : IsProbabilityMeasure Ω.probabilityMeasure

def FilteredProbabilitySpaceClosed (Ω : FilteredProbabilitySpace) : Prop :=
  Ω.adapted ∧ IsProbabilityMeasure Ω.probabilityMeasure

theorem filtered_probability_space_closed_from_evidence (Ω : FilteredProbabilitySpace)
    (E : FilteredProbabilitySpaceEvidence Ω) : FilteredProbabilitySpaceClosed Ω := by
  exact And.intro Ω.adaptedTerm E.probabilityMeasureClosed

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse