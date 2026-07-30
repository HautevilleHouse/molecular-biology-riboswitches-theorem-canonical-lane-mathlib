import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure FreeEnergyLandscape where
  foldedState : Prop
  unfoldedState : Prop
  activationBarrier : Prop
  foldingRate : Prop

structure LigandInducedStabilization where
  boundStateEnergy : Prop
  unboundStateEnergy : Prop
  bindingFreeEnergy : Prop
  stabilizationMagnitude : Prop

structure ThermodynamicStabilityEvidence where
  energyLandscapeClosed : FreeEnergyLandscape → Prop
  stabilizationClosed : LigandInducedStabilization → Prop

def ThermodynamicStabilityClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem thermodynamic_stability_closed (A : AdmissibleClass) :
    ThermodynamicStabilityClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse
