import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure RiboswitchMechanismPackage where
  ligandBinding : LigandBindingKineticsPackage
  conformation : RiboswitchConformationPackage
  thermodynamics : ThermodynamicStabilityPackage
  regulation : RegulatoryOutcomePackage
  mechanismCoupled : Prop

structure RiboswitchMechanismEvidence (M : RiboswitchMechanismPackage) where
  ligandBindingClosed : LigandBindingKineticsClosed M.ligandBinding
  conformationClosed : RiboswitchConformationClosed M.conformation
  thermodynamicsClosed : ThermodynamicStabilityClosed M.thermodynamics
  regulationClosed : RegulatoryOutcomeClosed M.regulation
  mechanismCoupledClosed : M.mechanismCoupled

def RiboswitchMechanismClosed (M : RiboswitchMechanismPackage) : Prop :=
  LigandBindingKineticsClosed M.ligandBinding ∧
  RiboswitchConformationClosed M.conformation ∧
  ThermodynamicStabilityClosed M.thermodynamics ∧
  RegulatoryOutcomeClosed M.regulation ∧
  M.mechanismCoupled

theorem riboswitch_mechanism_closed_from_evidence (M : RiboswitchMechanismPackage) (E : RiboswitchMechanismEvidence M) :
    RiboswitchMechanismClosed M := by
  exact And.intro E.ligandBindingClosed (
    And.intro E.conformationClosed (
      And.intro E.thermodynamicsClosed (
        And.intro E.regulationClosed E.mechanismCoupledClosed)))

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse