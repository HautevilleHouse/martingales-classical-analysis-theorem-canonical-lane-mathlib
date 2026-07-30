import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure SquareIntegrableMartingalePackage where
  martingale : Type u
  quadraticVariation : Prop
  angleBracket : Prop
  riezRepresentation : Prop

structure SquareIntegrableMartingaleEvidence (S : SquareIntegrableMartingalePackage) where
  quadraticVariationClosed : S.quadraticVariation
  angleBracketClosed : S.angleBracket
  riezRepresentationClosed : S.riezRepresentation

def SquareIntegrableMartingaleClosed (S : SquareIntegrableMartingalePackage) : Prop :=
  S.quadraticVariation ∧ S.angleBracket ∧ S.riezRepresentation

theorem square_integrable_martingale_closed_from_evidence (S : SquareIntegrableMartingalePackage) (E : SquareIntegrableMartingaleEvidence S) : SquareIntegrableMartingaleClosed S := by
  exact And.intro E.quadraticVariationClosed (And.intro E.angleBracketClosed E.riezRepresentationClosed)

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse