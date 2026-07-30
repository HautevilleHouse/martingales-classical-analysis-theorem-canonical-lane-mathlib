import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure DoobInequalitiesPackage {A : AdmissibleClass} (M : MartingaleConvergencePackage A) where
  maximalInequality : Prop
  quadraticVariationInequality : Prop
  convexInequality : Prop

structure DoobInequalitiesEvidence {A : AdmissibleClass} {M : MartingaleConvergencePackage A} (D : DoobInequalitiesPackage M) where
  maximalInequalityClosed : D.maximalInequality
  quadraticVariationInequalityClosed : D.quadraticVariationInequality
  convexInequalityClosed : D.convexInequality

def DoobInequalitiesClosed {A : AdmissibleClass} {M : MartingaleConvergencePackage A} (D : DoobInequalitiesPackage M) : Prop :=
  D.maximalInequality ∧ D.quadraticVariationInequality ∧ D.convexInequality

theorem doob_inequalities_closed_from_evidence {A : AdmissibleClass} {M : MartingaleConvergencePackage A} (D : DoobInequalitiesPackage M) (E : DoobInequalitiesEvidence D) : DoobInequalitiesClosed D := by
  exact And.intro E.maximalInequalityClosed (And.intro E.quadraticVariationInequalityClosed E.convexInequalityClosed)

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse