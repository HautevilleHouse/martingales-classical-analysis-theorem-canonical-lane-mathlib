import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure QuadraticVariationPackage where
  localMartingale : (ℕ → ℝ) → Prop
  quadraticVariationProcess : (ℕ → ℝ) → Prop
  bracketProperty : Prop
  orthogonalityProperty : Prop

structure QuadraticVariationEvidence (Q : QuadraticVariationPackage) where
  quadraticVariationProcessClosed : ∀ X, Q.localMartingale X → Q.quadraticVariationProcess X
  bracketPropertyClosed : Q.bracketProperty
  orthogonalityPropertyClosed : Q.orthogonalityProperty

def QuadraticVariationClosed (Q : QuadraticVariationPackage) : Prop :=
  (∀ X, Q.localMartingale X → Q.quadraticVariationProcess X) ∧ Q.bracketProperty ∧ Q.orthogonalityProperty

theorem quadratic_variation_closed_from_evidence (Q : QuadraticVariationPackage) (E : QuadraticVariationEvidence Q) : QuadraticVariationClosed Q := by
  exact And.intro E.quadraticVariationProcessClosed (And.intro E.bracketPropertyClosed E.orthogonalityPropertyClosed)

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse