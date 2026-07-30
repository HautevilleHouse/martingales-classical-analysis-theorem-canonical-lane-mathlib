import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure ConditionalExpectationPackage where
  probabilitySpace : Type u
  sigmaAlgebra : Type v
  integrable : Prop
  uniqueness : Prop
  existence : Prop

structure ConditionalExpectationEvidence (C : ConditionalExpectationPackage) where
  integrableClosed : C.integrable
  uniquenessClosed : C.uniqueness
  existenceClosed : C.existence

def ConditionalExpectationClosed (C : ConditionalExpectationPackage) : Prop :=
  C.integrable ∧ C.uniqueness ∧ C.existence

theorem conditional_expectation_closed_from_evidence (C : ConditionalExpectationPackage) (E : ConditionalExpectationEvidence C) : ConditionalExpectationClosed C := by
  exact And.intro E.integrableClosed (And.intro E.uniquenessClosed E.existenceClosed)

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse