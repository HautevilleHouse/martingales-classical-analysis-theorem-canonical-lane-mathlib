import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure MartingaleTransform where
  baseMartingale : Martingale FiltratedSpace
  predictableProcess : ℕ → ℝ
  transformedProcess : ℕ → ℝ
  transformProperty : Prop

def MartingaleTransformClosed (T : MartingaleTransform) : Prop :=
  T.transformProperty

theorem martingale_transform_from_evidence (T : MartingaleTransform) (h : T.transformProperty) : MartingaleTransformClosed T :=
  h

structure QuadraticVariation where
  martingale : Martingale FiltratedSpace
  quadraticVariation : ℕ → ℝ
  variationProperty : Prop

def QuadraticVariationClosed (Q : QuadraticVariation) : Prop :=
  Q.variationProperty

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse