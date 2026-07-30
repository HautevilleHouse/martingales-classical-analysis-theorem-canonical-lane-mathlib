import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MartingalesClassicalAnalysisTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObjectClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse