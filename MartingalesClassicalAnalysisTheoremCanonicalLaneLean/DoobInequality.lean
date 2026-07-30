import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure DoobInequalityPackage where
  submartingale : (ℕ → ℝ) → Prop
  maxInequality : Prop
  LpInequality : Prop
  convergenceTheorem : Prop

structure DoobInequalityEvidence (D : DoobInequalityPackage) where
  maxInequalityClosed : D.maxInequality
  LpInequalityClosed : D.LpInequality
  convergenceTheoremClosed : D.convergenceTheorem

def DoobInequalityClosed (D : DoobInequalityPackage) : Prop :=
  D.maxInequality ∧ D.LpInequality ∧ D.convergenceTheorem

theorem doob_inequality_closed_from_evidence (D : DoobInequalityPackage) (E : DoobInequalityEvidence D) : DoobInequalityClosed D := by
  exact And.intro E.maxInequalityClosed (And.intro E.LpInequalityClosed E.convergenceTheoremClosed)

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse