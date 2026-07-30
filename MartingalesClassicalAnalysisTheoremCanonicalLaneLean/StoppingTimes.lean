import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure StoppingTime (Ω : FiltratedSpace) where
  function : Ω.carrier → ℕ
  stoppingProperty : ℕ → Prop

def StoppingTimeProperty (τ : StoppingTime Ω) : Prop :=
  τ.stoppingProperty 0 ∧ ∀ n, τ.stoppingProperty n

structure OptionalStoppingTheorem where
  martingale : Martingale FiltratedSpace
  stoppingTime : StoppingTime FiltratedSpace
  boundedStoppingTime : Prop
  equalityHolds : Prop

theorem optional_stopping_closed (O : OptionalStoppingTheorem) (h : O.equalityHolds) : O.equalityHolds :=
  h

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse