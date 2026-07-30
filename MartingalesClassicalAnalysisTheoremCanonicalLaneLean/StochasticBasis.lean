import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure StochasticBasisPackage where
  probabilitySpace : Type u
  filtration : Type v
  adaptedProcesses : Prop
  sigmaAlgebra : Prop
  conditionalExpectation : Type w
  martingaleProperty : Prop

structure StochasticBasisEvidence (S : StochasticBasisPackage) where
  probabilitySpaceClosed : S.probabilitySpace
  filtrationClosed : S.filtration
  adaptedProcessesClosed : S.adaptedProcesses
  sigmaAlgebraClosed : S.sigmaAlgebra
  martingalePropertyClosed : S.martingaleProperty

def StochasticBasisClosed (S : StochasticBasisPackage) : Prop :=
  S.adaptedProcesses ∧ S.martingaleProperty

theorem stochastic_basis_closed_from_evidence (S : StochasticBasisPackage) (E : StochasticBasisEvidence S) :
    StochasticBasisClosed S := by
  exact And.intro E.adaptedProcessesClosed E.martingalePropertyClosed

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse