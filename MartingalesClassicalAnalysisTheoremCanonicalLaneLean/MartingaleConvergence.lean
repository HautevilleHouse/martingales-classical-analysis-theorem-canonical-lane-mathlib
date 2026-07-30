import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure MartingaleConvergencePackage where
  martingaleSequence : (ℕ → ℝ) → Prop
  upcrossingInequality : Prop
  almostSureConvergence : Prop
  L1Convergence : Prop

structure MartingaleConvergenceEvidence (M : MartingaleConvergencePackage) where
  upcrossingInequalityClosed : M.upcrossingInequality
  almostSureConvergenceClosed : M.almostSureConvergence
  L1ConvergenceClosed : M.L1Convergence

def MartingaleConvergenceClosed (M : MartingaleConvergencePackage) : Prop :=
  M.upcrossingInequality ∧ M.almostSureConvergence ∧ M.L1Convergence

theorem martingale_convergence_closed_from_evidence (M : MartingaleConvergencePackage) (E : MartingaleConvergenceEvidence M) : MartingaleConvergenceClosed M := by
  exact And.intro E.upcrossingInequalityClosed (And.intro E.almostSureConvergenceClosed E.L1ConvergenceClosed)

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse