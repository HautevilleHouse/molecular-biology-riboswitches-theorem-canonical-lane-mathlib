import MolecularBiologyRiboswitchesTheoremCanonicalLaneLean.RiboswitchAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure KineticModelPackage where
  transcriptionRate : Prop
  foldingRate : Prop
  ligandBindingRate : Prop
  conformationalSwitching : Prop
  terminationEfficiency : Prop

structure KineticModelEvidence (M : KineticModelPackage) where
  transcriptionRateClosed : M.transcriptionRate
  foldingRateClosed : M.foldingRate
  ligandBindingRateClosed : M.ligandBindingRate
  conformationalSwitchingClosed : M.conformationalSwitching
  terminationEfficiencyClosed : M.terminationEfficiency

def KineticModelClosed (M : KineticModelPackage) : Prop :=
  M.transcriptionRate ∧ M.foldingRate ∧ M.ligandBindingRate ∧ M.conformationalSwitching ∧ M.terminationEfficiency

theorem kinetic_model_closed_from_evidence (M : KineticModelPackage) (E : KineticModelEvidence M) :
    KineticModelClosed M := by
  exact And.intro E.transcriptionRateClosed
    (And.intro E.foldingRateClosed
      (And.intro E.ligandBindingRateClosed
        (And.intro E.conformationalSwitchingClosed E.terminationEfficiencyClosed)))

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse