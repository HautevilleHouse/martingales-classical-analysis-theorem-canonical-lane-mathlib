import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MartingalesClassicalAnalysisTheoremCanonicalLaneLean.StochasticBasis

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure MartingaleRepresentationPackage {S : StochasticBasisPackage} where
  brownianMotion : Type u
  representationTheorem : Prop
  integrandExistence : Prop
  uniqueness : Prop

structure MartingaleRepresentationEvidence {S : StochasticBasisPackage} (M : MartingaleRepresentationPackage S) where
  representationTheoremClosed : M.representationTheorem
  integrandExistenceClosed : M.integrandExistence
  uniquenessClosed : M.uniqueness

def MartingaleRepresentationClosed {S : StochasticBasisPackage} (M : MartingaleRepresentationPackage S) : Prop :=
  M.representationTheorem ∧ M.uniqueness

theorem martingale_representation_closed_from_evidence {S : StochasticBasisPackage} (M : MartingaleRepresentationPackage S) (E : MartingaleRepresentationEvidence M) :
    MartingaleRepresentationClosed M := by
  exact And.intro E.representationTheoremClosed E.uniquenessClosed

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse