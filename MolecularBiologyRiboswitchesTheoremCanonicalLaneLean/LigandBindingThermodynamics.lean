import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure LigandBindingThermodynamicsPackage where
  bindingAffinity : Type
  freeEnergyChange : Type
  equilibriumConstant : Type
  bindingSpecificity : Prop
  bindingAffinityClosed : bindingAffinity
  freeEnergyChangeClosed : freeEnergyChange
  equilibriumConstantClosed : equilibriumConstant
  bindingSpecificityClosed : bindingSpecificity

structure LigandBindingThermodynamicsEvidence (L : LigandBindingThermodynamicsPackage) where
  bindingAffinityClosed : L.bindingAffinity
  freeEnergyChangeClosed : L.freeEnergyChange
  equilibriumConstantClosed : L.equilibriumConstant
  bindingSpecificityClosed : L.bindingSpecificity

def LigandBindingThermodynamicsClosed (L : LigandBindingThermodynamicsPackage) : Prop :=
  L.bindingAffinity ∧ L.freeEnergyChange ∧ L.equilibriumConstant ∧ L.bindingSpecificity

theorem ligand_binding_thermodynamics_closed_from_evidence
    (L : LigandBindingThermodynamicsPackage)
    (E : LigandBindingThermodynamicsEvidence L) : LigandBindingThermodynamicsClosed L := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.freeEnergyChangeClosed
      (And.intro E.equilibriumConstantClosed E.bindingSpecificityClosed))

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse
