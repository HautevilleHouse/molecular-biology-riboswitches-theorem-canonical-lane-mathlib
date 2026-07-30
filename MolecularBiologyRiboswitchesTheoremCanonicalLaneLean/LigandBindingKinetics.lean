import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure LigandBindingKineticsPackage where
  ligandConcentration : Nat → ℝ
  bindingRate : ℝ
  unbindingRate : ℝ
  bindingAffinity : Prop
  kineticModelClosed : Prop

structure LigandBindingKineticsEvidence (L : LigandBindingKineticsPackage) where
  bindingRateClosed : L.bindingRate > 0
  unbindingRateClosed : L.unbindingRate > 0
  bindingAffinityClosed : L.bindingAffinity
  kineticModelClosed : L.kineticModelClosed

def LigandBindingKineticsClosed (L : LigandBindingKineticsPackage) : Prop :=
  L.bindingRate > 0 ∧ L.unbindingRate > 0 ∧ L.bindingAffinity ∧ L.kineticModelClosed

theorem ligand_binding_kinetics_closed_from_evidence (L : LigandBindingKineticsPackage) (E : LigandBindingKineticsEvidence L) :
    LigandBindingKineticsClosed L := by
  exact And.intro E.bindingRateClosed (And.intro E.unbindingRateClosed (And.intro E.bindingAffinityClosed E.kineticModelClosed))

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse