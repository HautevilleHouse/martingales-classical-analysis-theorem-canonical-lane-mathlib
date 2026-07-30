import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure MartingaleRepresentationPackage {A : AdmissibleClass} (D : DoobInequalitiesPackage (MartingaleConvergencePackage A)) where
  basisExists : Prop
  representationUnique : Prop
  stochasticIntegralRepresentation : Prop

structure MartingaleRepresentationEvidence {A : AdmissibleClass} {D : DoobInequalitiesPackage (MartingaleConvergencePackage A)} (R : MartingaleRepresentationPackage D) where
  basisExistsClosed : R.basisExists
  representationUniqueClosed : R.representationUnique
  stochasticIntegralRepresentationClosed : R.stochasticIntegralRepresentation

def MartingaleRepresentationClosed {A : AdmissibleClass} {D : DoobInequalitiesPackage (MartingaleConvergencePackage A)} (R : MartingaleRepresentationPackage D) : Prop :=
  R.basisExists ∧ R.representationUnique ∧ R.stochasticIntegralRepresentation

theorem martingale_representation_closed_from_evidence {A : AdmissibleClass} {D : DoobInequalitiesPackage (MartingaleConvergencePackage A)} (R : MartingaleRepresentationPackage D) (E : MartingaleRepresentationEvidence R) : MartingaleRepresentationClosed R := by
  exact And.intro E.basisExistsClosed (And.intro E.representationUniqueClosed E.stochasticIntegralRepresentationClosed)

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse