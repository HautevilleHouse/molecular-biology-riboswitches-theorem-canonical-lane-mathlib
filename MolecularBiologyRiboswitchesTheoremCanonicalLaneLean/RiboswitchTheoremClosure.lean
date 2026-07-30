import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure RiboswitchMoleculePackage where
  sequence : String
  structure : Type
  ligand : Type
  function : Prop

structure RiboswitchAdmittedObject where
  molecule : RiboswitchMoleculePackage
  ligandBindingDomainClosed : Prop
  regulatorySwitchDomainClosed : Prop
  thermodynamicStabilityClosed : Prop
  kineticControlClosed : Prop
  evolutionaryConservationClosed : Prop

def RiboswitchWitnessClosed (O : RiboswitchAdmittedObject) : Prop :=
  O.ligandBindingDomainClosed ∧ O.regulatorySwitchDomainClosed ∧
  O.thermodynamicStabilityClosed ∧ O.kineticControlClosed ∧
  O.evolutionaryConservationClosed

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RiboswitchWitnessClosed (A.object : RiboswitchAdmittedObject)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedRiboswitchClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_riboswitch_endgame (A : AdmissibleClass) :
    ConstrainedRiboswitchClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse