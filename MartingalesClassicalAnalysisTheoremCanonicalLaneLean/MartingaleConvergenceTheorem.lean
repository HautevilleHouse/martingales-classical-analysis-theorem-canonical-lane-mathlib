import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MartingaleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure MartingaleSpace where
  carrier : Type
  sigmaAlgebra : Set (Set carrier)
  probabilityMeasure : Measure carrier

structure MartingaleAdmittedObject where
  space : MartingaleSpace
  integrable : Prop
  adapted : Prop
  martingaleProperty : Prop
  conclusion : martingaleProperty

structure MartingaleConvergencePackage (A : AdmissibleClass) where
  existsLimit : Prop
  limitIntegrable : Prop
  convergenceInL1 : Prop
  convergenceAlmostSurely : Prop

structure MartingaleConvergenceEvidence {A : AdmissibleClass} (P : MartingaleConvergencePackage A) where
  existsLimitClosed : P.existsLimit
  limitIntegrableClosed : P.limitIntegrable
  convergenceInL1Closed : P.convergenceInL1
  convergenceAlmostSurelyClosed : P.convergenceAlmostSurely

def MartingaleConvergenceClosed {A : AdmissibleClass} (P : MartingaleConvergencePackage A) : Prop :=
  P.existsLimit ∧ P.limitIntegrable ∧ P.convergenceInL1 ∧ P.convergenceAlmostSurely

theorem martingale_convergence_closed_from_evidence {A : AdmissibleClass} (P : MartingaleConvergencePackage A) (E : MartingaleConvergenceEvidence P) : MartingaleConvergenceClosed P := by
  exact And.intro E.existsLimitClosed (And.intro E.limitIntegrableClosed (And.intro E.convergenceInL1Closed E.convergenceAlmostSurelyClosed))

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse