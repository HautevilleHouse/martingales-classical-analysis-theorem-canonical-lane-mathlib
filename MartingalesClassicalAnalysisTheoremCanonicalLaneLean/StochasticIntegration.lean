import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure StochasticIntegrationPackage {Ω : FilteredProbabilitySpace} (M : Martingale Ω) where
  integrableProcess : Type
  stochasticIntegral : Type
  itoIsometry : Prop
  martingalePreservation : Prop
  itoIsometryClosed : itoIsometry
  martingalePreservationClosed : martingalePreservation

structure StochasticIntegrationEvidence {Ω : FilteredProbabilitySpace} {M : Martingale Ω}
    (S : StochasticIntegrationPackage M) where
  itoIsometryClosed : S.itoIsometry
  martingalePreservationClosed : S.martingalePreservation

def StochasticIntegrationClosed {Ω : FilteredProbabilitySpace} {M : Martingale Ω}
    (S : StochasticIntegrationPackage M) : Prop :=
  S.itoIsometry ∧ S.martingalePreservation

theorem stochastic_integration_closed_from_evidence {Ω : FilteredProbabilitySpace} {M : Martingale Ω}
    (S : StochasticIntegrationPackage M) (E : StochasticIntegrationEvidence S) :
    StochasticIntegrationClosed S := by
  exact And.intro E.itoIsometryClosed E.martingalePreservationClosed

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse