import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisTheoremCanonicalLaneLean

structure FiltratedSpace where
  carrier : Type u
  sigmaAlgebra : carrier → Set (Set carrier)
  filtrationInitial : Prop
  filtrationIncreasing : Prop

def FiltrationComplete (F : FiltratedSpace) : Prop :=
  F.filtrationInitial ∧ F.filtrationIncreasing

structure Martingale (Ω : FiltratedSpace) where
  process : ℕ → Ω.carrier → ℝ
  adapted : ℕ → Prop
  integrable : ℕ → Prop
  martingaleProperty : ℕ → ℕ → Prop

def MartingaleCondition (M : Martingale Ω) (n m : ℕ) (h : n ≤ m) : Prop :=
  M.martingaleProperty n m

end MartingalesClassicalAnalysisTheoremCanonicalLaneLean
end HautevilleHouse