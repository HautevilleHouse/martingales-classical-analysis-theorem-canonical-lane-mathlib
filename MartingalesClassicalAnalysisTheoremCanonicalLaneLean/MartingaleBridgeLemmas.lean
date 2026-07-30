import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConditionalExpectationClosed A.object ∧ StoppingTimeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro (by sorry) (by sorry)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse