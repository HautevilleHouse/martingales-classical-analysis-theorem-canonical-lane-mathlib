import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure StoppingTimePackage where
  filtration : Type u
  stoppingTime : Prop
  optionalStopping : Prop
  doobOptionalSampling : Prop
  applications : Prop

structure StoppingTimeEvidence (S : StoppingTimePackage) where
  stoppingTimeClosed : S.stoppingTime
  optionalStoppingClosed : S.optionalStopping
  doobOptionalSamplingClosed : S.doobOptionalSampling
  applicationsClosed : S.applications

def StoppingTimeClosed (S : StoppingTimePackage) : Prop :=
  S.stoppingTime ∧ S.optionalStopping ∧ S.doobOptionalSampling ∧ S.applications

theorem stopping_time_closed_from_evidence (S : StoppingTimePackage) (E : StoppingTimeEvidence S) : StoppingTimeClosed S := by
  exact And.intro E.stoppingTimeClosed (And.intro E.optionalStoppingClosed (And.intro E.doobOptionalSamplingClosed E.applicationsClosed))

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse