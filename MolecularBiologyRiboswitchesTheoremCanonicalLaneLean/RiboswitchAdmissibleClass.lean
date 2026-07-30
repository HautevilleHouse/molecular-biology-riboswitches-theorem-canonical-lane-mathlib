import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure RiboswitchAdmittedObject where
  riboswitchType : Type
  ligandIdentified : Prop
  conformationSwitchingVerified : Prop
  geneRegulationFunctional : Prop
  conclusion : ligandIdentified ∧ conformationSwitchingVerified ∧ geneRegulationFunctional

structure RiboswitchAdmissibleClass where
  object : RiboswitchAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def riboswitchAdmittedClosure (A : RiboswitchAdmissibleClass) : Prop :=
  let O := A.object
  (O.ligandIdentified ∧ O.conformationSwitchingVerified ∧ O.geneRegulationFunctional) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse
